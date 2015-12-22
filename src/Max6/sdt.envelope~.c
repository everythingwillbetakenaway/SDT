/** \file sdt.envelope~.c
 * Max external for signal envelope tracking.
 *
 * \author Stefano Baldan (stefanobaldan@iuav.it)
 *
 * This file is part of the 'Sound Design Toolkit' (SDT)
 * Developed with the contribution of the following EU-projects:
 * 2001-2003 'SOb' http://www.soundobject.org/
 * 2006-2009 'CLOSED' http://closed.ircam.fr/
 * 2008-2011 'NIW' http://www.niwproject.eu/
 * 2014-2017 'SkAT-VG http://www.skatvg.eu/
 *
 * Contacts: 
 * 	stefano.papetti@zhdk.ch
 * 	stefano.dellemonache@gmail.com
 *  stefanobaldan@iuav.it
 *
 * Complete list of authors (either programmers or designers):
 * 	Federico Avanzini (avanzini@dei.unipd.it)
 *	Nicola Bernardini (nicb@sme-ccppd.org)
 *	Gianpaolo Borin (gianpaolo.borin@tin.it)
 *	Carlo Drioli (carlo.drioli@univr.it)
 *	Stefano Delle Monache (stefano.dellemonache@gmail.com)
 *	Delphine Devallez
 *	Federico Fontana (federico.fontana@uniud.it)
 *	Laura Ottaviani
 *	Stefano Papetti (stefano.papetti@zhdk.ch)
 *	Pietro Polotti (pietro.polotti@univr.it)
 *	Matthias Rath
 *	Davide Rocchesso (roc@iuav.it)
 *	Stefania Serafin (sts@media.aau.dk)
 *  Stefano Baldan (stefanobaldan@iuav.it)
 *
 * The SDT is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * The SDT is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with the SDT; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *****************************************************************************/

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "SDT/SDTCommon.h"
#include "SDT/SDTFilters.h"

typedef struct _envelope {
  t_pxobject ob;
  SDTEnvelope *envelope;
  double attack, release;
} t_envelope;

static t_class *envelope_class = NULL;

void *envelope_new(t_symbol *s, long argc, t_atom *argv) {
  t_envelope *x;
  
  x = (t_envelope *)object_alloc(envelope_class);
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    x->envelope = SDTEnvelope_new();
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void envelope_free(t_envelope *x) {
  dsp_free((t_pxobject *)x);
  SDTEnvelope_free(x->envelope);
}

void envelope_assist(t_envelope *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) {
    sprintf(s, "(signal): Input\n"
               "Object attributes and messages (see help patch)");
  } 
  else {
      sprintf(s, "(signal): Signal envelope");
  }
}

void envelope_attack(t_envelope *x, void *attr, long ac, t_atom *av) {
  x->attack = atom_getfloat(av);
  SDTEnvelope_setAttack(x->envelope, 0.001 * x->attack);
}

void envelope_release(t_envelope *x, void *attr, long ac, t_atom *av) {
  x->release = atom_getfloat(av);
  SDTEnvelope_setRelease(x->envelope, 0.001 * x->release);
}

t_int *envelope_perform(t_int *w) {
  t_envelope *x = (t_envelope *)(w[1]);
  t_float *in = (t_float *)(w[2]);
  t_float *out = (t_float *)(w[3]);
  int n = (int)w[4];
  
  while (n--) {
    *out++ = (float)SDTEnvelope_dsp(x->envelope, *in++);
  }
  return w + 5;
}

void envelope_dsp(t_envelope *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTEnvelope_setAttack(x->envelope, 0.001 * x->attack);
  SDTEnvelope_setRelease(x->envelope, 0.001 * x->release);
  dsp_add(envelope_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void envelope_perform64(t_envelope *x, t_object *dsp64, double **ins, long numins, double **outs,
                        long numouts, long sampleframes, long flags, void *userparam) {
  t_double *in = ins[0];
  t_double *out = outs[0];
  int n = sampleframes;
  
  while (n--) {
    *out++ = SDTEnvelope_dsp(x->envelope, *in++);
  }
}

void envelope_dsp64(t_envelope *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTEnvelope_setAttack(x->envelope, 0.001 * x->attack);
  SDTEnvelope_setRelease(x->envelope, 0.001 * x->release);
  object_method(dsp64, gensym("dsp_add64"), x, envelope_perform64, 0, NULL);
}

int C74_EXPORT main(void) {	
  t_class *c = class_new("sdt.envelope~", (method)envelope_new, (method)envelope_free,
                         (long)sizeof(t_envelope), 0L, A_GIMME, 0);
  class_addmethod(c, (method)envelope_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)envelope_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)envelope_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "attack", 0, t_envelope, attack);
  CLASS_ATTR_DOUBLE(c, "release", 0, t_envelope, release);
  
  CLASS_ATTR_FILTER_MIN(c, "attack", 0.0);
  CLASS_ATTR_FILTER_MIN(c, "release", 0.0);
  
  CLASS_ATTR_ACCESSORS(c, "attack", NULL, (method)envelope_attack);
  CLASS_ATTR_ACCESSORS(c, "release", NULL, (method)envelope_release);
  
  CLASS_ATTR_ORDER(c, "attack", 0, "1");
  CLASS_ATTR_ORDER(c, "release", 0, "2");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  envelope_class = c;

  return 0;
}
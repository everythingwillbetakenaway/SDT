/** \file sdt.windcavity~.c
 * Max external for the simulation of gases into resonant cavities.
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
#include "SDT/SDTGases.h"

typedef struct _windcavity {
  t_pxobject ob;
  SDTWindCavity *cavity;
  double length, diameter;
} t_windcavity;

static t_class *windcavity_class = NULL;

void *windcavity_new(t_symbol *s, long argc, t_atom *argv) {
  t_windcavity *x = (t_windcavity *)object_alloc(windcavity_class);
  long maxDelay;
  
  if (x) {
    dsp_setup((t_pxobject *)x, 1);
    outlet_new(x, "signal");
    if (argc > 0 && atom_gettype(&argv[0]) == A_LONG) {
      maxDelay = atom_getlong(&argv[0]);
    }
    else {
      maxDelay = 48000;
    }
    x->cavity = SDTWindCavity_new(maxDelay);
    attr_args_process(x, argc, argv);
  }
  return (x);
}

void windcavity_free(t_windcavity *x)  {
	dsp_free((t_pxobject *)x);
    SDTWindCavity_free(x->cavity);
}

void windcavity_assist(t_windcavity *x, void *b, long m, long a, char *s) {
  if (m == ASSIST_INLET) { //inlet
    sprintf(s, "(signal): Wind speed [0.0 ~ 1.0]\n"
               "length (float): Cavity length, in m\n"
               "diameter (float): Cavity diameter, in m\n");
  } 
  else {
    sprintf(s, "(signal): Output");
  }
}

void windcavity_length(t_windcavity *x, void *attr, long ac, t_atom *av) {
  x->length = atom_getfloat(av);
  SDTWindCavity_setLength(x->cavity, x->length);
}

void windcavity_diameter(t_windcavity *x, void *attr, long ac, t_atom *av) {
  x->diameter = atom_getfloat(av);
  SDTWindCavity_setDiameter(x->cavity, x->diameter);
}

t_int *windcavity_perform(t_int *w) {
  t_windcavity *x = (t_windcavity *)(w[1]);
  t_float *inL = (t_float *)(w[2]);
  t_float *outL = (t_float *)(w[3]);
  int n = (int)w[4];
	
  while (n--) {
    SDTWindCavity_setWindSpeed(x->cavity, *inL++);
    *outL++ = (float)SDTWindCavity_dsp(x->cavity);
  }

  return w + 5;
}

void windcavity_dsp(t_windcavity *x, t_signal **sp, short *count) {
  SDT_setSampleRate(sp[0]->s_sr);
  SDTWindCavity_setLength(x->cavity, x->length);
  SDTWindCavity_setDiameter(x->cavity, x->diameter);
  dsp_add(windcavity_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

void windcavity_perform64(t_windcavity *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam) {
  t_double *inL = ins[0];
  t_double *outL = outs[0];
  int n = sampleframes;
  
  while (n--) {
    SDTWindCavity_setWindSpeed(x->cavity, *inL++);
    *outL++ = SDTWindCavity_dsp(x->cavity);
  }
}

void windcavity_dsp64(t_windcavity *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags) {
  SDT_setSampleRate(samplerate);
  SDTWindCavity_setLength(x->cavity, x->length);
  SDTWindCavity_setDiameter(x->cavity, x->diameter);
  object_method(dsp64, gensym("dsp_add64"), x, windcavity_perform64, 0, NULL);
}

int C74_EXPORT main(void)
{	
  t_class *c = class_new("sdt.windcavity~", (method)windcavity_new, (method)windcavity_free, (long)sizeof(t_windcavity), 0L, A_GIMME, 0);

  class_addmethod(c, (method)windcavity_dsp, "dsp", A_CANT, 0);
  class_addmethod(c, (method)windcavity_dsp64, "dsp64", A_CANT, 0);
  class_addmethod(c, (method)windcavity_assist, "assist", A_CANT, 0);
  
  CLASS_ATTR_DOUBLE(c, "length", 0, t_windcavity, length);
  CLASS_ATTR_DOUBLE(c, "diameter", 0, t_windcavity, diameter);
  
  CLASS_ATTR_FILTER_MIN(c, "length", 0.000001);
  CLASS_ATTR_FILTER_MIN(c, "diameter", 0.000001);
  
  CLASS_ATTR_ACCESSORS(c, "length", NULL, (method)windcavity_length);
  CLASS_ATTR_ACCESSORS(c, "diameter", NULL, (method)windcavity_diameter);
	
  CLASS_ATTR_ORDER(c, "length", 0, "1");
  CLASS_ATTR_ORDER(c, "diameter", 0, "2");
  
  class_dspinit(c);
  class_register(CLASS_BOX, c);
  windcavity_class = c;

  return 0;
}


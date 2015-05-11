/** \file SDTMotor.h
 * Physically informed sound synthesis model of a combustion engine. 
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

#ifndef SDT_MOTOR_H
#define SDT_MOTOR_H

typedef struct SDTMotor SDTMotor;

extern SDTMotor *SDTMotor_new(long maxDelay);
extern void SDTMotor_free(SDTMotor *x);
extern double SDTMotor_getIntake(SDTMotor *x);
extern double SDTMotor_getVibrations(SDTMotor *x);
extern double SDTMotor_getExhaust(SDTMotor *x);
extern void SDTMotor_setFilters(SDTMotor *x, double damp, double dc);
extern void SDTMotor_setRpm(SDTMotor *x, double f);
extern void SDTMotor_setThrottle(SDTMotor *x, double f);
extern void SDTMotor_setFourStroke(SDTMotor *x);
extern void SDTMotor_setTwoStroke(SDTMotor *x);
extern void SDTMotor_setNCylinders(SDTMotor *x, int i);
extern void SDTMotor_setCylinderSize(SDTMotor *x, double f);
extern void SDTMotor_setCompressionRatio(SDTMotor *x, double f);
extern void SDTMotor_setSparkTime(SDTMotor *x, double f);
extern void SDTMotor_setAsymmetry(SDTMotor *x, double f);
extern void SDTMotor_setBackfire(SDTMotor *x, double f);
extern void SDTMotor_setIntakeSize(SDTMotor *x, double f);
extern void SDTMotor_setExtractorSize(SDTMotor *x, double f);
extern void SDTMotor_setExhaustSize(SDTMotor *x, double f);
extern void SDTMotor_setExpansion(SDTMotor *x, double f);
extern void SDTMotor_setMufflerSize(SDTMotor *x, double f);
extern void SDTMotor_setMufflerFeedback(SDTMotor *x, double f);
extern void SDTMotor_setOutletSize(SDTMotor *x, double f);
extern void SDTMotor_dsp(SDTMotor *x, double *outs);

#endif
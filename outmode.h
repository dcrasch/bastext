/* outmode.h
 * $Id$
 */

#ifndef __OUTMODE_H
#define __OUTMODE_H

#include "tokenize.h"

void txt2bas(const char *infile, basic_t force, int t64mode);
void txt2prg(const char *infile, FILE *output,basic_t force);

#endif

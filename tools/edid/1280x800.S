/*
   800x600.S: EDID data set for standard 800x600 60 Hz monitor

   Copyright (C) 2011 Carsten Emde <C.Emde@osadl.org>
   Copyright (C) 2014 Linaro Limited

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
*/

/* EDID */
#define VERSION 1
#define REVISION 3

/* Display */
#define CLOCK 83500 /* kHz */
#define XPIX 1280
#define YPIX 800
#define XY_RATIO XY_RATIO_16_9
#define XBLANK 128
#define YBLANK 10
#define XOFFSET 32
#define XPULSE 80
#define YOFFSET 3
#define YPULSE 6
#define DPI 96
#define VFREQ 60 /* Hz */
#define TIMING_NAME "Linux WXGA"
/* #define ESTABLISHED_TIMING1_BITS 0x01 Bit 0: 1280x800 @ 60Hz */
#define HSYNC_POL 0
#define VSYNC_POL 0

#include "edid.S"

/*!
   $Id: all_shared.h,v 1.5 2002/09/08 18:35:10 bartosz Exp $ 

   @file all_shared.h
   @brief utility functions header, shared along all os source

   (c) osFree Project 2002, <http://www.osFree.org>
   for licence see licence.txt in root directory, or project website

   @author Bartosz Tomasik <bart2@asua.org.pl>
   @author JMA <jma@jma.se>
*/

#ifndef _ALL_SHARED_H_
#define _ALL_SHARED_H_


#undef __cdecl  /* 06/07/2002: fix for Toolkit libc headers */

#include "all_dlist.h"
#include "all_messageids.h"	// message id's
#include "all_pathmanipulation.h"
#include "all_performrecursiveaction.h" 
#include "all_querycurrentdisk.h" 
#include "all_queryfsname.h"
#include "all_messages.h"

#endif /* _ALL_SHARED_H_ */

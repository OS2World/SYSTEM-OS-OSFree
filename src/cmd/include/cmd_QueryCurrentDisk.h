/*!
   $Id: cmd_QueryCurrentDisk.h,v 1.2 2002/05/08 07:40:24 2001 Exp $ 
   
   @file cmd_querycurrentdisk.c
  
   @brief utility function header,shared along all command line tools

   (c) osFree Project 2002, <http://www.osFree.org>
   for licence see licence.txt in root directory, or project website

   @author Bartosz Tomasik <bart2@asua.org.pl>
*/

#ifndef _CMD_QUERYCURRENTDISK_H_
#define _CMD_QUERYCURRENTDISK_H_

#include <osfree.h>

APIRET cmd_QueryCurrentDisk(PSZ pszDiskName,ULONG *available);

#endif /* _CMD_QUERYCURRENTDISK_H_ */

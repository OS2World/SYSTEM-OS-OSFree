/*!
   $Id: cmd_setcurrentdisk.c,v 1.1 2002/09/08 18:31:44 bartosz Exp $ 
   
   @file cmd_setcurrentdisk.c
   
   @brief utility function for setting current disk, shared along all command
   line tools

   (c) osFree Project 2002, <http://www.osFree.org>
   for licence see licence.txt in root directory, or project website

   @author Bartosz Tomasik <bart2@asua.org.pl>
*/

#define INCL_DOSFILEMGR
#define INCL_DOSERRORS
#include <osfree.h>

#include <cmd_shared.h> /* comand line tools' shared functions and defines */

/*!
  Sets current disk - simple wrapper for DosSetDefaultDisk, with error 
  displaying support

  @param disk    disk number, where 1 - A, 2 - B and so on...

  @return
    0 - completed successfully
    rc from DosSetDefaultDisk, when error occured
*/
int cmd_SetCurrentDisk(int disk)
{
 ULONG rc;

 rc=DosSetDefaultDisk(disk);
 if (rc) 
  cmd_ShowSystemMessage(rc,0);
 return rc;
};

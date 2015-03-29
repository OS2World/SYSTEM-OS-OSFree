/*!
   $Id: cmd_QueryFSName.h,v 1.2 2002/05/08 07:40:25 2001 Exp $ 
  
   @file cmd_queryfsname.h  
 
   @brief cmd_QueryFSName utility function header, 
   shared along all command line tools

   (c) osFree Project 2002, <http://www.osFree.org>
   for licence see licence.txt in root directory, or project website

   @author Bartosz Tomasik <bart2@asua.org.pl>
*/

#ifndef _CMD_QUERYFSNAME_H_
#define _CMD_QUERYFSNAME_H_

#include <osfree.h>

APIRET cmd_QueryFSName(PSZ pszGivenDriveName,PSZ pszFSName);

#endif /* _CMD_QUERYFSNAME_H_ */

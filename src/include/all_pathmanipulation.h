/*!
   $Id: all_pathmanipulation.h,v 1.2 2002/09/08 18:35:10 bartosz Exp $ 
  
   @file all_pathmanipulation.h
   
   @brief path manipulation helper functions header
   shared along all code

   (c) osFree Project 2002, <http://www.osFree.org>
   for licence see licence.txt in root directory, or project website

   @author Bartosz Tomasik <bart2@asua.org.pl>
*/

#ifndef _ALL_PATHMANIPULATION_H_
#define _ALL_PATHMANIPULATION_H_

char* all_GetDirFromPath(char *fileMask);
char * all_GetFileFromPath(char *fileMask);
char *all_GetFullPathForFile(char *file);
int all_GetCurrentPath(int disk, char **ppath);

#endif /* _ALL_PATHMANIPULATION_H_ */

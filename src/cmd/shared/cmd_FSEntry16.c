/*!
   $Id: cmd_FSEntry16.c,v 1.2 2002/05/08 07:46:28 2001 Exp $ 
   
   @file cmd_FSEntry16.c
   @brief workaround for Watcom's behaviour/bug when calling 16bit dynamically
   loaded entrypoints, sumplementary for cmd_ExecFSEntry

   (c) osFree Project 2002, <http://www.osFree.org>
   for licence see licence.txt in root directory, or project website

   @author Michael Neceasek <MichalN@prodigy.net>
*/

unsigned short _pascal FSENTRY16(void *funcptr, short argc, char **argv, 
                                 char **envp)
{
    unsigned short _pascal (*func16)();

    func16 = funcptr;

    return func16(argc, argv, envp);
};


/* REXX ***************************************************************
* Test of date(option_out,date,option_in
* Change Activity:
* 07.11.2004 Walter Pachl - generated for Thomas Schneider
**********************************************************************/
Parse Source source
Parse Version version
cnt.=0
oid='pachl.txt'
'erase' oid
Call lineout oid,'Running DATET on' date() time()
Call lineout oid,'source='source 'version='version
Call chk date('B','719163','B'),'719163'
Call chk date('B','2','D'),'731581'
Call chk date('B','02/01/70','E'),'719163'
Call chk date('B','2 Jan 1970','N'),'719163'
Call chk date('B','70/01/02','O'),'719163'
Call chk date('B','19700102','S'),'719163'
Call chk date('B','98745','T'),'719163'
Call chk date('B','01/02/70','U'),'719163'
Call chk date('D','719163','B'),'2'
Call chk date('D','2','D'),'2'
Call chk date('D','02/01/70','E'),'2'
Call chk date('D','2 Jan 1970','N'),'2'
Call chk date('D','70/01/02','O'),'2'
Call chk date('D','19700102','S'),'2'
Call chk date('D','98745','T'),'2'
Call chk date('D','01/02/70','U'),'2'
Call chk date('E','719163','B'),'02/01/70'
Call chk date('E','2','D'),'02/01/04'
Call chk date('E','02/01/70','E'),'02/01/70'
Call chk date('E','2 Jan 1970','N'),'02/01/70'
Call chk date('E','70/01/02','O'),'02/01/70'
Call chk date('E','19700102','S'),'02/01/70'
Call chk date('E','98745','T'),'02/01/70'
Call chk date('E','01/02/70','U'),'02/01/70'
Call chk date('M','719163','B'),'January'
Call chk date('M','2','D'),'January'
Call chk date('M','02/01/70','E'),'January'
Call chk date('M','2 Jan 1970','N'),'January'
Call chk date('M','70/01/02','O'),'January'
Call chk date('M','19700102','S'),'January'
Call chk date('M','98745','T'),'January'
Call chk date('M','01/02/70','U'),'January'
Call chk date('N','719163','B'),'2 Jan 1970'
Call chk date('N','2','D'),'2 Jan 2004'
Call chk date('N','02/01/70','E'),'2 Jan 1970'
Call chk date('N','2 Jan 1970','N'),'2 Jan 1970'
Call chk date('N','70/01/02','O'),'2 Jan 1970'
Call chk date('N','19700102','S'),'2 Jan 1970'
Call chk date('N','98745','T'),'2 Jan 1970'
Call chk date('N','01/02/70','U'),'2 Jan 1970'
Call chk date('O','719163','B'),'70/01/02'
Call chk date('O','2','D'),'04/01/02'
Call chk date('O','02/01/70','E'),'70/01/02'
Call chk date('O','2 Jan 1970','N'),'70/01/02'
Call chk date('O','70/01/02','O'),'70/01/02'
Call chk date('O','19700102','S'),'70/01/02'
Call chk date('O','98745','T'),'70/01/02'
Call chk date('O','01/02/70','U'),'70/01/02'
Call chk date('S','719163','B'),'19700102'
Call chk date('S','2','D'),'20040102'
Call chk date('S','02/01/70','E'),'19700102'
Call chk date('S','2 Jan 1970','N'),'19700102'
Call chk date('S','70/01/02','O'),'19700102'
Call chk date('S','19700102','S'),'19700102'
Call chk date('S','98745','T'),'19700102'
Call chk date('S','01/02/70','U'),'19700102'
Call chk date('T','719163','B'),'86400'
Call chk date('T','2','D'),'1073001600'
Call chk date('T','02/01/70','E'),'86400'
Call chk date('T','2 Jan 1970','N'),'86400'
Call chk date('T','70/01/02','O'),'86400'
Call chk date('T','19700102','S'),'86400'
Call chk date('T','98745','T'),'86400'
Call chk date('T','01/02/70','U'),'86400'
Call chk date('U','719163','B'),'01/02/70'
Call chk date('U','2','D'),'01/02/04'
Call chk date('U','02/01/70','E'),'01/02/70'
Call chk date('U','2 Jan 1970','N'),'01/02/70'
Call chk date('U','70/01/02','O'),'01/02/70'
Call chk date('U','19700102','S'),'01/02/70'
Call chk date('U','98745','T'),'01/02/70'
Call chk date('U','01/02/70','U'),'01/02/70'
Call chk date('W','719163','B'),'Friday'
Call chk date('W','2','D'),'Friday'
Call chk date('W','02/01/70','E'),'Friday'
Call chk date('W','2 Jan 1970','N'),'Friday'
Call chk date('W','70/01/02','O'),'Friday'
Call chk date('W','19700102','S'),'Friday'
Call chk date('W','98745','T'),'Friday'
Call chk date('W','01/02/70','U'),'Friday'
Call chk date('B','727202','B'),'727202'
Call chk date('B','6','D'),'731585'
Call chk date('B','06/01/92','E'),'727202'
Call chk date('B','6 Jan 1992','N'),'727202'
Call chk date('B','92/01/06','O'),'727202'
Call chk date('B','19920106','S'),'727202'
Call chk date('B','694668345','T'),'727202'
Call chk date('B','01/06/92','U'),'727202'
Call chk date('D','727202','B'),'6'
Call chk date('D','6','D'),'6'
Call chk date('D','06/01/92','E'),'6'
Call chk date('D','6 Jan 1992','N'),'6'
Call chk date('D','92/01/06','O'),'6'
Call chk date('D','19920106','S'),'6'
Call chk date('D','694668345','T'),'6'
Call chk date('D','01/06/92','U'),'6'
Call chk date('E','727202','B'),'06/01/92'
Call chk date('E','6','D'),'06/01/04'
Call chk date('E','06/01/92','E'),'06/01/92'
Call chk date('E','6 Jan 1992','N'),'06/01/92'
Call chk date('E','92/01/06','O'),'06/01/92'
Call chk date('E','19920106','S'),'06/01/92'
Call chk date('E','694668345','T'),'06/01/92'
Call chk date('E','01/06/92','U'),'06/01/92'
Call chk date('M','727202','B'),'January'
Call chk date('M','6','D'),'January'
Call chk date('M','06/01/92','E'),'January'
Call chk date('M','6 Jan 1992','N'),'January'
Call chk date('M','92/01/06','O'),'January'
Call chk date('M','19920106','S'),'January'
Call chk date('M','694668345','T'),'January'
Call chk date('M','01/06/92','U'),'January'
Call chk date('N','727202','B'),'6 Jan 1992'
Call chk date('N','6','D'),'6 Jan 2004'
Call chk date('N','06/01/92','E'),'6 Jan 1992'
Call chk date('N','6 Jan 1992','N'),'6 Jan 1992'
Call chk date('N','92/01/06','O'),'6 Jan 1992'
Call chk date('N','19920106','S'),'6 Jan 1992'
Call chk date('N','694668345','T'),'6 Jan 1992'
Call chk date('N','01/06/92','U'),'6 Jan 1992'
Call chk date('O','727202','B'),'92/01/06'
Call chk date('O','6','D'),'04/01/06'
Call chk date('O','06/01/92','E'),'92/01/06'
Call chk date('O','6 Jan 1992','N'),'92/01/06'
Call chk date('O','92/01/06','O'),'92/01/06'
Call chk date('O','19920106','S'),'92/01/06'
Call chk date('O','694668345','T'),'92/01/06'
Call chk date('O','01/06/92','U'),'92/01/06'
Call chk date('S','727202','B'),'19920106'
Call chk date('S','6','D'),'20040106'
Call chk date('S','06/01/92','E'),'19920106'
Call chk date('S','6 Jan 1992','N'),'19920106'
Call chk date('S','92/01/06','O'),'19920106'
Call chk date('S','19920106','S'),'19920106'
Call chk date('S','694668345','T'),'19920106'
Call chk date('S','01/06/92','U'),'19920106'
Call chk date('T','727202','B'),'694656000'
Call chk date('T','6','D'),'1073347200'
Call chk date('T','06/01/92','E'),'694656000'
Call chk date('T','6 Jan 1992','N'),'694656000'
Call chk date('T','92/01/06','O'),'694656000'
Call chk date('T','19920106','S'),'694656000'
Call chk date('T','694668345','T'),'694656000'
Call chk date('T','01/06/92','U'),'694656000'
Call chk date('U','727202','B'),'01/06/92'
Call chk date('U','6','D'),'01/06/04'
Call chk date('U','06/01/92','E'),'01/06/92'
Call chk date('U','6 Jan 1992','N'),'01/06/92'
Call chk date('U','92/01/06','O'),'01/06/92'
Call chk date('U','19920106','S'),'01/06/92'
Call chk date('U','694668345','T'),'01/06/92'
Call chk date('U','01/06/92','U'),'01/06/92'
Call chk date('W','727202','B'),'Monday'
Call chk date('W','6','D'),'Tuesday'
Call chk date('W','06/01/92','E'),'Monday'
Call chk date('W','6 Jan 1992','N'),'Monday'
Call chk date('W','92/01/06','O'),'Monday'
Call chk date('W','19920106','S'),'Monday'
Call chk date('W','694668345','T'),'Monday'
Call chk date('W','01/06/92','U'),'Monday'
Call chk date('B','730178','B'),'730178'
Call chk date('B','60','D'),'731639'
Call chk date('B','29/02/00','E'),'730178'
Call chk date('B','29 Feb 2000','N'),'730178'
Call chk date('B','00/02/29','O'),'730178'
Call chk date('B','20000229','S'),'730178'
Call chk date('B','951794745','T'),'730178'
Call chk date('B','02/29/00','U'),'730178'
Call chk date('D','730178','B'),'60'
Call chk date('D','60','D'),'60'
Call chk date('D','29/02/00','E'),'60'
Call chk date('D','29 Feb 2000','N'),'60'
Call chk date('D','00/02/29','O'),'60'
Call chk date('D','20000229','S'),'60'
Call chk date('D','951794745','T'),'60'
Call chk date('D','02/29/00','U'),'60'
Call chk date('E','730178','B'),'29/02/00'
Call chk date('E','60','D'),'29/02/04'
Call chk date('E','29/02/00','E'),'29/02/00'
Call chk date('E','29 Feb 2000','N'),'29/02/00'
Call chk date('E','00/02/29','O'),'29/02/00'
Call chk date('E','20000229','S'),'29/02/00'
Call chk date('E','951794745','T'),'29/02/00'
Call chk date('E','02/29/00','U'),'29/02/00'
Call chk date('M','730178','B'),'February'
Call chk date('M','60','D'),'February'
Call chk date('M','29/02/00','E'),'February'
Call chk date('M','29 Feb 2000','N'),'February'
Call chk date('M','00/02/29','O'),'February'
Call chk date('M','20000229','S'),'February'
Call chk date('M','951794745','T'),'February'
Call chk date('M','02/29/00','U'),'February'
Call chk date('N','730178','B'),'29 Feb 2000'
Call chk date('N','60','D'),'29 Feb 2004'
Call chk date('N','29/02/00','E'),'29 Feb 2000'
Call chk date('N','29 Feb 2000','N'),'29 Feb 2000'
Call chk date('N','00/02/29','O'),'29 Feb 2000'
Call chk date('N','20000229','S'),'29 Feb 2000'
Call chk date('N','951794745','T'),'29 Feb 2000'
Call chk date('N','02/29/00','U'),'29 Feb 2000'
Call chk date('O','730178','B'),'00/02/29'
Call chk date('O','60','D'),'04/02/29'
Call chk date('O','29/02/00','E'),'00/02/29'
Call chk date('O','29 Feb 2000','N'),'00/02/29'
Call chk date('O','00/02/29','O'),'00/02/29'
Call chk date('O','20000229','S'),'00/02/29'
Call chk date('O','951794745','T'),'00/02/29'
Call chk date('O','02/29/00','U'),'00/02/29'
Call chk date('S','730178','B'),'20000229'
Call chk date('S','60','D'),'20040229'
Call chk date('S','29/02/00','E'),'20000229'
Call chk date('S','29 Feb 2000','N'),'20000229'
Call chk date('S','00/02/29','O'),'20000229'
Call chk date('S','20000229','S'),'20000229'
Call chk date('S','951794745','T'),'20000229'
Call chk date('S','02/29/00','U'),'20000229'
Call chk date('T','730178','B'),'951782400'
Call chk date('T','60','D'),'1078012800'
Call chk date('T','29/02/00','E'),'951782400'
Call chk date('T','29 Feb 2000','N'),'951782400'
Call chk date('T','00/02/29','O'),'951782400'
Call chk date('T','20000229','S'),'951782400'
Call chk date('T','951794745','T'),'951782400'
Call chk date('T','02/29/00','U'),'951782400'
Call chk date('U','730178','B'),'02/29/00'
Call chk date('U','60','D'),'02/29/04'
Call chk date('U','29/02/00','E'),'02/29/00'
Call chk date('U','29 Feb 2000','N'),'02/29/00'
Call chk date('U','00/02/29','O'),'02/29/00'
Call chk date('U','20000229','S'),'02/29/00'
Call chk date('U','951794745','T'),'02/29/00'
Call chk date('U','02/29/00','U'),'02/29/00'
Call chk date('W','730178','B'),'Tuesday'
Call chk date('W','60','D'),'Sunday'
Call chk date('W','29/02/00','E'),'Tuesday'
Call chk date('W','29 Feb 2000','N'),'Tuesday'
Call chk date('W','00/02/29','O'),'Tuesday'
Call chk date('W','20000229','S'),'Tuesday'
Call chk date('W','951794745','T'),'Tuesday'
Call chk date('W','02/29/00','U'),'Tuesday'
Call chk date('B','731887','B'),'731887'
Call chk date('B','308','D'),'731887'
Call chk date('B','03/11/04','E'),'731887'
Call chk date('B','3 Nov 2004','N'),'731887'
Call chk date('B','04/11/03','O'),'731887'
Call chk date('B','20041103','S'),'731887'
Call chk date('B','1099452345','T'),'731887'
Call chk date('B','11/03/04','U'),'731887'
Call chk date('D','731887','B'),'308'
Call chk date('D','308','D'),'308'
Call chk date('D','03/11/04','E'),'308'
Call chk date('D','3 Nov 2004','N'),'308'
Call chk date('D','04/11/03','O'),'308'
Call chk date('D','20041103','S'),'308'
Call chk date('D','1099452345','T'),'308'
Call chk date('D','11/03/04','U'),'308'
Call chk date('E','731887','B'),'03/11/04'
Call chk date('E','308','D'),'03/11/04'
Call chk date('E','03/11/04','E'),'03/11/04'
Call chk date('E','3 Nov 2004','N'),'03/11/04'
Call chk date('E','04/11/03','O'),'03/11/04'
Call chk date('E','20041103','S'),'03/11/04'
Call chk date('E','1099452345','T'),'03/11/04'
Call chk date('E','11/03/04','U'),'03/11/04'
Call chk date('M','731887','B'),'November'
Call chk date('M','308','D'),'November'
Call chk date('M','03/11/04','E'),'November'
Call chk date('M','3 Nov 2004','N'),'November'
Call chk date('M','04/11/03','O'),'November'
Call chk date('M','20041103','S'),'November'
Call chk date('M','1099452345','T'),'November'
Call chk date('M','11/03/04','U'),'November'
Call chk date('N','731887','B'),'3 Nov 2004'
Call chk date('N','308','D'),'3 Nov 2004'
Call chk date('N','03/11/04','E'),'3 Nov 2004'
Call chk date('N','3 Nov 2004','N'),'3 Nov 2004'
Call chk date('N','04/11/03','O'),'3 Nov 2004'
Call chk date('N','20041103','S'),'3 Nov 2004'
Call chk date('N','1099452345','T'),'3 Nov 2004'
Call chk date('N','11/03/04','U'),'3 Nov 2004'
Call chk date('O','731887','B'),'04/11/03'
Call chk date('O','308','D'),'04/11/03'
Call chk date('O','03/11/04','E'),'04/11/03'
Call chk date('O','3 Nov 2004','N'),'04/11/03'
Call chk date('O','04/11/03','O'),'04/11/03'
Call chk date('O','20041103','S'),'04/11/03'
Call chk date('O','1099452345','T'),'04/11/03'
Call chk date('O','11/03/04','U'),'04/11/03'
Call chk date('S','731887','B'),'20041103'
Call chk date('S','308','D'),'20041103'
Call chk date('S','03/11/04','E'),'20041103'
Call chk date('S','3 Nov 2004','N'),'20041103'
Call chk date('S','04/11/03','O'),'20041103'
Call chk date('S','20041103','S'),'20041103'
Call chk date('S','1099452345','T'),'20041103'
Call chk date('S','11/03/04','U'),'20041103'
Call chk date('T','731887','B'),'1099440000'
Call chk date('T','308','D'),'1099440000'
Call chk date('T','03/11/04','E'),'1099440000'
Call chk date('T','3 Nov 2004','N'),'1099440000'
Call chk date('T','04/11/03','O'),'1099440000'
Call chk date('T','20041103','S'),'1099440000'
Call chk date('T','1099452345','T'),'1099440000'
Call chk date('T','11/03/04','U'),'1099440000'
Call chk date('U','731887','B'),'11/03/04'
Call chk date('U','308','D'),'11/03/04'
Call chk date('U','03/11/04','E'),'11/03/04'
Call chk date('U','3 Nov 2004','N'),'11/03/04'
Call chk date('U','04/11/03','O'),'11/03/04'
Call chk date('U','20041103','S'),'11/03/04'
Call chk date('U','1099452345','T'),'11/03/04'
Call chk date('U','11/03/04','U'),'11/03/04'
Call chk date('W','731887','B'),'Wednesday'
Call chk date('W','308','D'),'Wednesday'
Call chk date('W','03/11/04','E'),'Wednesday'
Call chk date('W','3 Nov 2004','N'),'Wednesday'
Call chk date('W','04/11/03','O'),'Wednesday'
Call chk date('W','20041103','S'),'Wednesday'
Call chk date('W','1099452345','T'),'Wednesday'
Call chk date('W','11/03/04','U'),'Wednesday'
Call chk date('B','713263','B'),'713263'
Call chk date('B','311','D'),'731890'
Call chk date('B','07/11/53','E'),'749788'
Call chk date('B','7 Nov 1953','N'),'713263'
Call chk date('B','53/11/07','O'),'749788'
Call chk date('B','19531107','S'),'713263'
Call chk date('B','-509661255','T'),'713264'
Call chk date('B','11/07/53','U'),'749788'
Call chk date('D','713263','B'),'311'
Call chk date('D','311','D'),'311'
Call chk date('D','07/11/53','E'),'311'
Call chk date('D','7 Nov 1953','N'),'311'
Call chk date('D','53/11/07','O'),'311'
Call chk date('D','19531107','S'),'311'
Call chk date('D','-509661255','T'),'312'
Call chk date('D','11/07/53','U'),'311'
Call chk date('E','713263','B'),'07/11/53'
Call chk date('E','311','D'),'06/11/04'
Call chk date('E','07/11/53','E'),'07/11/53'
Call chk date('E','7 Nov 1953','N'),'07/11/53'
Call chk date('E','53/11/07','O'),'07/11/53'
Call chk date('E','19531107','S'),'07/11/53'
Call chk date('E','-509661255','T'),'08/11/53'
Call chk date('E','11/07/53','U'),'07/11/53'
Call chk date('M','713263','B'),'November'
Call chk date('M','311','D'),'November'
Call chk date('M','07/11/53','E'),'November'
Call chk date('M','7 Nov 1953','N'),'November'
Call chk date('M','53/11/07','O'),'November'
Call chk date('M','19531107','S'),'November'
Call chk date('M','-509661255','T'),'November'
Call chk date('M','11/07/53','U'),'November'
Call chk date('N','713263','B'),'7 Nov 1953'
Call chk date('N','311','D'),'6 Nov 2004'
Call chk date('N','07/11/53','E'),'7 Nov 2053'
Call chk date('N','7 Nov 1953','N'),'7 Nov 1953'
Call chk date('N','53/11/07','O'),'7 Nov 2053'
Call chk date('N','19531107','S'),'7 Nov 1953'
Call chk date('N','-509661255','T'),'8 Nov 1953'
Call chk date('N','11/07/53','U'),'7 Nov 2053'
Call chk date('O','713263','B'),'53/11/07'
Call chk date('O','311','D'),'04/11/06'
Call chk date('O','07/11/53','E'),'53/11/07'
Call chk date('O','7 Nov 1953','N'),'53/11/07'
Call chk date('O','53/11/07','O'),'53/11/07'
Call chk date('O','19531107','S'),'53/11/07'
Call chk date('O','-509661255','T'),'53/11/08'
Call chk date('O','11/07/53','U'),'53/11/07'
Call chk date('S','713263','B'),'19531107'
Call chk date('S','311','D'),'20041106'
Call chk date('S','07/11/53','E'),'20531107'
Call chk date('S','7 Nov 1953','N'),'19531107'
Call chk date('S','53/11/07','O'),'20531107'
Call chk date('S','19531107','S'),'19531107'
Call chk date('S','-509661255','T'),'19531108'
Call chk date('S','11/07/53','U'),'20531107'
Call chk date('T','713263','B'),'-509673600'
Call chk date('T','311','D'),'1099699200'
Call chk date('T','07/11/53','E'),'2646086400'
Call chk date('T','7 Nov 1953','N'),'-509673600'
Call chk date('T','53/11/07','O'),'2646086400'
Call chk date('T','19531107','S'),'-509673600'
Call chk date('T','-509661255','T'),'-509587200'
Call chk date('T','11/07/53','U'),'2646086400'
Call chk date('U','713263','B'),'11/07/53'
Call chk date('U','311','D'),'11/06/04'
Call chk date('U','07/11/53','E'),'11/07/53'
Call chk date('U','7 Nov 1953','N'),'11/07/53'
Call chk date('U','53/11/07','O'),'11/07/53'
Call chk date('U','19531107','S'),'11/07/53'
Call chk date('U','-509661255','T'),'11/08/53'
Call chk date('U','11/07/53','U'),'11/07/53'
Call chk date('W','713263','B'),'Saturday'
Call chk date('W','311','D'),'Saturday'
Call chk date('W','07/11/53','E'),'Friday'
Call chk date('W','7 Nov 1953','N'),'Saturday'
Call chk date('W','53/11/07','O'),'Friday'
Call chk date('W','19531107','S'),'Saturday'
Call chk date('W','-509661255','T'),'Sunday'
Call chk date('W','11/07/53','U'),'Friday'
Call chk date('B','713628','B'),'713628'
Call chk date('B','311','D'),'731890'
Call chk date('B','07/11/54','E'),'750153'
Call chk date('B','7 Nov 1954','N'),'713628'
Call chk date('B','54/11/07','O'),'750153'
Call chk date('B','19541107','S'),'713628'
Call chk date('B','-478125255','T'),'713629'
Call chk date('B','11/07/54','U'),'750153'
Call chk date('D','713628','B'),'311'
Call chk date('D','311','D'),'311'
Call chk date('D','07/11/54','E'),'311'
Call chk date('D','7 Nov 1954','N'),'311'
Call chk date('D','54/11/07','O'),'311'
Call chk date('D','19541107','S'),'311'
Call chk date('D','-478125255','T'),'312'
Call chk date('D','11/07/54','U'),'311'
Call chk date('E','713628','B'),'07/11/54'
Call chk date('E','311','D'),'06/11/04'
Call chk date('E','07/11/54','E'),'07/11/54'
Call chk date('E','7 Nov 1954','N'),'07/11/54'
Call chk date('E','54/11/07','O'),'07/11/54'
Call chk date('E','19541107','S'),'07/11/54'
Call chk date('E','-478125255','T'),'08/11/54'
Call chk date('E','11/07/54','U'),'07/11/54'
Call chk date('M','713628','B'),'November'
Call chk date('M','311','D'),'November'
Call chk date('M','07/11/54','E'),'November'
Call chk date('M','7 Nov 1954','N'),'November'
Call chk date('M','54/11/07','O'),'November'
Call chk date('M','19541107','S'),'November'
Call chk date('M','-478125255','T'),'November'
Call chk date('M','11/07/54','U'),'November'
Call chk date('N','713628','B'),'7 Nov 1954'
Call chk date('N','311','D'),'6 Nov 2004'
Call chk date('N','07/11/54','E'),'7 Nov 2054'
Call chk date('N','7 Nov 1954','N'),'7 Nov 1954'
Call chk date('N','54/11/07','O'),'7 Nov 2054'
Call chk date('N','19541107','S'),'7 Nov 1954'
Call chk date('N','-478125255','T'),'8 Nov 1954'
Call chk date('N','11/07/54','U'),'7 Nov 2054'
Call chk date('O','713628','B'),'54/11/07'
Call chk date('O','311','D'),'04/11/06'
Call chk date('O','07/11/54','E'),'54/11/07'
Call chk date('O','7 Nov 1954','N'),'54/11/07'
Call chk date('O','54/11/07','O'),'54/11/07'
Call chk date('O','19541107','S'),'54/11/07'
Call chk date('O','-478125255','T'),'54/11/08'
Call chk date('O','11/07/54','U'),'54/11/07'
Call chk date('S','713628','B'),'19541107'
Call chk date('S','311','D'),'20041106'
Call chk date('S','07/11/54','E'),'20541107'
Call chk date('S','7 Nov 1954','N'),'19541107'
Call chk date('S','54/11/07','O'),'20541107'
Call chk date('S','19541107','S'),'19541107'
Call chk date('S','-478125255','T'),'19541108'
Call chk date('S','11/07/54','U'),'20541107'
Call chk date('T','713628','B'),'-478137600'
Call chk date('T','311','D'),'1099699200'
Call chk date('T','07/11/54','E'),'2677622400'
Call chk date('T','7 Nov 1954','N'),'-478137600'
Call chk date('T','54/11/07','O'),'2677622400'
Call chk date('T','19541107','S'),'-478137600'
Call chk date('T','-478125255','T'),'-478051200'
Call chk date('T','11/07/54','U'),'2677622400'
Call chk date('U','713628','B'),'11/07/54'
Call chk date('U','311','D'),'11/06/04'
Call chk date('U','07/11/54','E'),'11/07/54'
Call chk date('U','7 Nov 1954','N'),'11/07/54'
Call chk date('U','54/11/07','O'),'11/07/54'
Call chk date('U','19541107','S'),'11/07/54'
Call chk date('U','-478125255','T'),'11/08/54'
Call chk date('U','11/07/54','U'),'11/07/54'
Call chk date('W','713628','B'),'Sunday'
Call chk date('W','311','D'),'Saturday'
Call chk date('W','07/11/54','E'),'Saturday'
Call chk date('W','7 Nov 1954','N'),'Sunday'
Call chk date('W','54/11/07','O'),'Saturday'
Call chk date('W','19541107','S'),'Sunday'
Call chk date('W','-478125255','T'),'Monday'
Call chk date('W','11/07/54','U'),'Saturday'
Say cnt.0ok  'tests ok'
Say cnt.0bad 'tests failed.'
Call lineout oid, cnt.0ok  'tests ok'
Call lineout oid, cnt.0bad 'tests failed.'
Call lineout oid
Exit
chk:
Parse Arg have,should_be
If have==should_be Then
  cnt.0ok=cnt.0ok+1
Else Do
  cnt.0bad=cnt.0bad+1
  Call lineout oid,sourceline(sigl)
  Call lineout oid,'    have     ='''have''''
  Call lineout oid,'    should be='''should_be''''
  End
Return

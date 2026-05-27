/* PSID DATA CENTER *****************************************************
   JOBID            : 362233                            
   DATA_DOMAIN      : TAf                               
   USER_WHERE       : NULL                              
   FILE_TYPE        : CDS Kids Only                     
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : SAS Statements                    
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 304                               
   N_OF_OBSERVATIONS: 10877                             
   MAX_REC_LENGTH   : 648                               
   DATE & TIME      : May 26, 2026 @ 21:08:23
************************************************************************/

FILENAME myfile "[path]\J362233.txt" ;

DATA J362233 ;
   ATTRIB
      KIDS            LABEL="Sum of All KID Flags"                     FORMAT=F1.  
      TAS             LABEL="Sum of All TAS Flags"                     FORMAT=F1.  
      KID07           LABEL="KID2007 = 1 if exists, else missing"      FORMAT=F3.1 
      KID14           LABEL="KID2014 = 1 if exists, else missing"      FORMAT=F3.1 
      KID19           LABEL="KID2019 = 1 if exists, else missing"      FORMAT=F3.1 
      KID21           LABEL="KID2021 = 1 if exists, else missing"      FORMAT=F3.1 
      TAS05           LABEL="TAS2005 = 1 if exists, else missing"      FORMAT=F1.  
      TAS07           LABEL="TAS2007 = 1 if exists, else missing"      FORMAT=F1.  
      TAS09           LABEL="TAS2009 = 1 if exists, else missing"      FORMAT=F1.  
      TAS11           LABEL="TAS2011 = 1 if exists, else missing"      FORMAT=F1.  
      TAS13           LABEL="TAS2013 = 1 if exists, else missing"      FORMAT=F1.  
      TAS15           LABEL="TAS2015 = 1 if exists, else missing"      FORMAT=F1.  
      TAS17           LABEL="TAS2017 = 1 if exists, else missing"      FORMAT=F1.  
      TAS19           LABEL="TAS2019 = 1 if exists, else missing"      FORMAT=F1.  
      TAS21           LABEL="TAS2021 = 1 if exists, else missing"      FORMAT=F1.  
      TAS23           LABEL="TAS2023 = 1 if exists, else missing"      FORMAT=F1.  
      ER30001         LABEL="1968 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30002         LABEL="PERSON NUMBER                         68" FORMAT=F3.  
      ER32000         LABEL="SEX OF INDIVIDUAL"                        FORMAT=F1.  
      ER32006         LABEL="WHETHER SAMPLE OR NONSAMPLE"              FORMAT=F1.  
      V441            LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      V634            LABEL="FOOD STAMPS?"                             FORMAT=F1.  
      ER30020         LABEL="1969 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30021         LABEL="SEQUENCE NUMBER                       69" FORMAT=F2.  
      ER30022         LABEL="RELATIONSHIP TO HEAD                  69" FORMAT=F1.  
      ER13001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER13010         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER13013         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER13014         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F2.  
      ER13021         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER13040         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER14243         LABEL="F10 WTR RECEIVED FOOD STAMPS JAN 1997"    FORMAT=F1.  
      ER14244         LABEL="F10 WTR RECEIVED FOOD STAMPS FEB 1997"    FORMAT=F1.  
      ER14245         LABEL="F10 WTR RECEIVED FOOD STAMPS MAR 1997"    FORMAT=F1.  
      ER14246         LABEL="F10 WTR RECEIVED FOOD STAMPS APR 1997"    FORMAT=F1.  
      ER14247         LABEL="F10 WTR RECEIVED FOOD STAMPS MAY 1997"    FORMAT=F1.  
      ER14248         LABEL="F10 WTR RECEIVED FOOD STAMPS JUN 1997"    FORMAT=F1.  
      ER14249         LABEL="F10 WTR RECEIVED FOOD STAMPS JUL 1997"    FORMAT=F1.  
      ER14250         LABEL="F10 WTR RECEIVED FOOD STAMPS AUG 1997"    FORMAT=F1.  
      ER14251         LABEL="F10 WTR RECEIVED FOOD STAMPS SEP 1997"    FORMAT=F1.  
      ER14252         LABEL="F10 WTR RECEIVED FOOD STAMPS OCT 1997"    FORMAT=F1.  
      ER14253         LABEL="F10 WTR RECEIVED FOOD STAMPS NOV 1997"    FORMAT=F1.  
      ER14254         LABEL="F10 WTR RECEIVED FOOD STAMPS DEC 1997"    FORMAT=F1.  
      ER14255         LABEL="F11 WTR RECEIVED FOOD STAMPS IN 1998"     FORMAT=F1.  
      ER14258         LABEL="F13 WTR RECEIVED FOOD STAMPS JAN 1998"    FORMAT=F1.  
      ER14259         LABEL="F13 WTR RECEIVED FOOD STAMPS FEB 1998"    FORMAT=F1.  
      ER14260         LABEL="F13 WTR RECEIVED FOOD STAMPS MAR 1998"    FORMAT=F1.  
      ER14261         LABEL="F13 WTR RECEIVED FOOD STAMPS APR 1998"    FORMAT=F1.  
      ER14262         LABEL="F13 WTR RECEIVED FOOD STAMPS MAY 1998"    FORMAT=F1.  
      ER14263         LABEL="F13 WTR RECEIVED FOOD STAMPS JUN 1998"    FORMAT=F1.  
      ER14264         LABEL="F13 WTR RECEIVED FOOD STAMPS JUL 1998"    FORMAT=F1.  
      ER14265         LABEL="F13 WTR RECEIVED FOOD STAMPS AUG 1998"    FORMAT=F1.  
      ER14266         LABEL="F13 WTR RECEIVED FOOD STAMPS SEP 1998"    FORMAT=F1.  
      ER14267         LABEL="F13 WTR RECEIVED FOOD STAMPS OCT 1998"    FORMAT=F1.  
      ER14268         LABEL="F13 WTR RECEIVED FOOD STAMPS NOV 1998"    FORMAT=F1.  
      ER14269         LABEL="F13 WTR RECEIVED FOOD STAMPS DEC 1998"    FORMAT=F1.  
      ER14270         LABEL="F14 WTR RECEIVED FOOD STAMPS IN 1999"     FORMAT=F1.  
      ER14271         LABEL="F14A WTR RECEIVED FOOD STAMPS JAN 1999"   FORMAT=F1.  
      ER14272         LABEL="F14A WTR RECEIVED FOOD STAMPS FEB 1999"   FORMAT=F1.  
      ER14273         LABEL="F14A WTR RECEIVED FOOD STAMPS MAR 1999"   FORMAT=F1.  
      ER14274         LABEL="F14A WTR RECEIVED FOOD STAMPS APR 1999"   FORMAT=F1.  
      ER14275         LABEL="F14A WTR RECEIVED FOOD STAMPS MAY 1999"   FORMAT=F1.  
      ER14276         LABEL="F14A WTR RECEIVED FOOD STAMPS JUN 1999"   FORMAT=F1.  
      ER14277         LABEL="F14A WTR RECEIVED FOOD STAMPS JUL 1999"   FORMAT=F1.  
      ER14278         LABEL="F14A WTR RECEIVED FOOD STAMPS AUG 1999"   FORMAT=F1.  
      ER14279         LABEL="F14A WTR RECEIVED FOOD STAMPS SEP 1999"   FORMAT=F1.  
      ER14280         LABEL="F14A WTR RECEIVED FOOD STAMPS OCT 1999"   FORMAT=F1.  
      ER14281         LABEL="F14A WTR RECEIVED FOOD STAMPS NOV 1999"   FORMAT=F1.  
      ER14282         LABEL="F14A WTR RECEIVED FOOD STAMPS DEC 1999"   FORMAT=F1.  
      ER16255         LABEL="R57 CKPT: WTR RECEIVED FOOD STAMPS"       FORMAT=F1.  
      ER16423         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER16515C9       LABEL="EDUCATION EXPENDITURE 1998"               FORMAT=F10.2
      ER16516         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER16517         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER33501         LABEL="1999 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33502         LABEL="SEQUENCE NUMBER                       99" FORMAT=F2.  
      ER33503         LABEL="RELATION TO HEAD                      99" FORMAT=F2.  
      ER17001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER17013         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER17016         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER17017         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F2.  
      ER17024         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER17043         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER18386         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER18402         LABEL="F14 WTR RECEIVED FOOD STAMPS THIS YEAR"   FORMAT=F1.  
      ER20201         LABEL="R57 CKPT: WTR RECEIVED FOOD STAMPS"       FORMAT=F1.  
      ER20369         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER20456C9       LABEL="EDUCATION EXPENDITURE 2000"               FORMAT=F10.2
      ER20457         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER20458         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER33601         LABEL="2001 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER33602         LABEL="SEQUENCE NUMBER                       01" FORMAT=F2.  
      ER33603         LABEL="RELATION TO HEAD                      01" FORMAT=F2.  
      ER21001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER21017         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER21020         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER21021         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F3.  
      ER21023         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER21042         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER21652         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER21668         LABEL="F14 WTR RECEIVED FOOD STAMPS THIS YEAR"   FORMAT=F1.  
      ER23802         LABEL="R57 CKPT: WTR RECEIVED FOOD STAMPS"       FORMAT=F1.  
      ER24138C9       LABEL="EDUCATION EXPENDITURE 2002"               FORMAT=F10.2
      ER24148         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER24149         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER24150         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER33701         LABEL="2003 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33702         LABEL="SEQUENCE NUMBER                       03" FORMAT=F2.  
      ER33703         LABEL="RELATION TO HEAD                      03" FORMAT=F2.  
      ER25001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER25017         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER25020         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER25021         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F3.  
      ER25023         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER25028         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER25654         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER25670         LABEL="F14 WTR RECEIVED FOOD STAMPS THIS YEAR"   FORMAT=F1.  
      ER28037D1       LABEL="EDUCATION EXPENDITURE 2004"               FORMAT=F10.2
      ER28047         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER28048         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER28049         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER33801         LABEL="2005 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33802         LABEL="SEQUENCE NUMBER                       05" FORMAT=F2.  
      ER33803         LABEL="RELATION TO HEAD                      05" FORMAT=F2.  
      TA050001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA050947        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA050949        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER36001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER36017         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER36020         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER36021         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F3.  
      ER36023         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER36028         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER36672         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER36688         LABEL="F14 WTR RECEIVED FOOD STAMPS THIS YEAR"   FORMAT=F1.  
      ER41027D1       LABEL="EDUCATION EXPENDITURE 2006"               FORMAT=F10.2
      ER41037         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER41038         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER41039         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER33901         LABEL="2007 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33902         LABEL="SEQUENCE NUMBER                       07" FORMAT=F2.  
      ER33903         LABEL="RELATION TO HEAD                      07" FORMAT=F2.  
      PCHREL07        LABEL="PCG CHILD FILE RELEASE NUMBER 07"         FORMAT=F1.  
      Q31B2           LABEL="EXPECTED EDUCATION 07"                    FORMAT=F2.  
      OCHREL07        LABEL="OCG CHILD FILE RELEASE NUMBER 07"         FORMAT=F1.  
      Q35A13          LABEL="EXPECTED EDUCATION OCG 07"                FORMAT=F2.  
      TA070001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA070928        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA070930        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER42001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER42017         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER42020         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER42021         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F3.  
      ER42023         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER42029         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER42691         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER42707         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER46971D1       LABEL="EDUCATION EXPENDITURE 2008"               FORMAT=F10.2
      ER46981         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER46982         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER46983         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER34001         LABEL="2009 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34002         LABEL="SEQUENCE NUMBER                       09" FORMAT=F2.  
      ER34003         LABEL="RELATION TO HEAD                      09" FORMAT=F2.  
      TA090001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA090992        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA090994        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER47301         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER47317         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER47320         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER47321         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F3.  
      ER47323         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER47329         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER48007         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER48023         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER52395D1       LABEL="EDUCATION EXPENDITURE 2010"               FORMAT=F10.2
      ER52405         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER52406         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER52407         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER34101         LABEL="2011 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34102         LABEL="SEQUENCE NUMBER                       11" FORMAT=F2.  
      ER34103         LABEL="RELATION TO HEAD                      11" FORMAT=F2.  
      TA110001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA111134        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA111136        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER53001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER53017         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER53020         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER53021         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F3.  
      ER53023         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER53029         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER53087         LABEL="A31 DOLLARS RENT"                         FORMAT=F5.  
      ER53704         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER53720         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER58212D1       LABEL="EDUCATION EXPENDITURE 2012"               FORMAT=F10.2
      ER58223         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER58224         LABEL="COMPLETED ED-WF"                          FORMAT=F2.  
      ER58225         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER34201         LABEL="2013 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34202         LABEL="SEQUENCE NUMBER                       13" FORMAT=F2.  
      ER34203         LABEL="RELATION TO HEAD                      13" FORMAT=F2.  
      TA130001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA131226        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA131228        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      RT13V1          LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      RT13V11         LABEL="FATHER'S STATUS -- HEAD"                  FORMAT=F1.  
      RT13V12         LABEL="MOTHER'S STATUS -- HEAD"                  FORMAT=F1.  
      RT13V13         LABEL="FATHER'S STATUS -- WIFE"                  FORMAT=F1.  
      RT13V14         LABEL="MOTHER'S STATUS -- WIFE"                  FORMAT=F1.  
      P14REL          LABEL="PCG CHILD RELEASE NUMBER 14"              FORMAT=F1.  
      P14F3           LABEL="EXPECTED EDUCATION 14"                    FORMAT=F2.  
      C14REL          LABEL="CHILD RELEASE NUMBER 14"                  FORMAT=F1.  
      C14B32          LABEL="EXPECTED EDUCATION 14"                    FORMAT=F2.  
      ER60001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER60017         LABEL="AGE OF HEAD"                              FORMAT=F3.  
      ER60021         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER60022         LABEL="AGE YOUNGEST CHILD"                       FORMAT=F3.  
      ER60024         LABEL="HEAD MARITAL STATUS"                      FORMAT=F1.  
      ER60030         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER60088         LABEL="A31 DOLLARS RENT"                         FORMAT=F5.  
      ER60719         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER60735         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER65437         LABEL="EDUCATION EXPENDITURE 2014"               FORMAT=F10.2
      ER65459         LABEL="COMPLETED ED-HD"                          FORMAT=F2.  
      ER65460         LABEL="COMPLETED ED-SP"                          FORMAT=F2.  
      ER65461         LABEL="MARITAL STATUS-GENERATED"                 FORMAT=F1.  
      ER34301         LABEL="2015 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34302         LABEL="SEQUENCE NUMBER                       15" FORMAT=F2.  
      ER34303         LABEL="RELATION TO HEAD                      15" FORMAT=F2.  
      TA150001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA151286        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA151288        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER66001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER66017         LABEL="AGE OF REFERENCE PERSON"                  FORMAT=F3.  
      ER66021         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER66030         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER66090         LABEL="A31 DOLLARS RENT"                         FORMAT=F5.  
      ER66766         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER66782         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER71515         LABEL="EDUCATION EXPENDITURE 2016"               FORMAT=F10.2
      ER71538         LABEL="COMPLETED ED-RP"                          FORMAT=F2.  
      ER71539         LABEL="COMPLETED ED-SP"                          FORMAT=F2.  
      ER34501         LABEL="2017 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34502         LABEL="SEQUENCE NUMBER                       17" FORMAT=F2.  
      ER34503         LABEL="RELATION TO REFERENCE PERSON          17" FORMAT=F2.  
      TA170001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA171981        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA171983        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER72001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER72017         LABEL="AGE OF REFERENCE PERSON"                  FORMAT=F3.  
      ER72021         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER72030         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER72090         LABEL="A31 DOLLARS RENT"                         FORMAT=F5.  
      ER72770         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER72786         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER77562         LABEL="EDUCATION EXPENDITURE 2018"               FORMAT=F10.2
      ER77599         LABEL="COMPLETED ED-RP"                          FORMAT=F2.  
      ER77600         LABEL="COMPLETED ED-SP"                          FORMAT=F2.  
      ER34701         LABEL="2019 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34702         LABEL="SEQUENCE NUMBER                       19" FORMAT=F2.  
      ER34703         LABEL="RELATION TO REFERENCE PERSON          19" FORMAT=F2.  
      P19REL          LABEL="PCG CHILD RELEASE NUMBER 19"              FORMAT=F1.  
      P19F3           LABEL="EXPECTED EDUCATION 19"                    FORMAT=F2.  
      C19REL          LABEL="CHILD RELEASE NUMBER 19"                  FORMAT=F1.  
      C19B32          LABEL="EXPECTED EDUCATION 19"                    FORMAT=F2.  
      TA190001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA192192        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA192194        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER78001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER78017         LABEL="AGE OF REFERENCE PERSON"                  FORMAT=F3.  
      ER78021         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER78031         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER78091         LABEL="A31 DOLLARS RENT"                         FORMAT=F5.  
      ER78847         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER78863         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER81889         LABEL="EDUCATION EXPENDITURE 2020"               FORMAT=F10.2
      ER81926         LABEL="COMPLETED ED-RP"                          FORMAT=F2.  
      ER81927         LABEL="COMPLETED ED-SP"                          FORMAT=F2.  
      ER34901         LABEL="2021 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34902         LABEL="SEQUENCE NUMBER                       21" FORMAT=F2.  
      ER34903         LABEL="RELATION TO REFERENCE PERSON          21" FORMAT=F2.  
      P21REL          LABEL="PCG CHILD RELEASE NUMBER 21"              FORMAT=F1.  
      P21F3           LABEL="EXPECTED EDUCATION 21"                    FORMAT=F2.  
      C21REL          LABEL="CHILD RELEASE NUMBER 21"                  FORMAT=F1.  
      C21B32          LABEL="EXPECTED EDUCATION 21"                    FORMAT=F2.  
      TA210001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA212387        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA212389        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
      ER82001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER82018         LABEL="AGE OF REFERENCE PERSON"                  FORMAT=F3.  
      ER82022         LABEL="# CHILDREN IN FU"                         FORMAT=F2.  
      ER82032         LABEL="A19 OWN/RENT OR WHAT"                     FORMAT=F1.  
      ER82092         LABEL="A31 DOLLARS RENT"                         FORMAT=F5.  
      ER82840         LABEL="F11 WTR RECEIVED FOOD STAMPS LAST YEAR"   FORMAT=F1.  
      ER82856         LABEL="F14 WTR RECEIVED FOOD STAMPS LAST MONTH"  FORMAT=F1.  
      ER85743         LABEL="EDUCATION EXPENDITURE 2022"               FORMAT=F10.2
      ER85780         LABEL="COMPLETED ED-RP"                          FORMAT=F2.  
      ER85781         LABEL="COMPLETED ED-SP"                          FORMAT=F2.  
      ER35101         LABEL="2023 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER35102         LABEL="SEQUENCE NUMBER                       23" FORMAT=F2.  
      ER35103         LABEL="RELATION TO REFERENCE PERSON          23" FORMAT=F2.  
      TA230001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA232394        LABEL="COMPLETED EDUCATION OF MOTHER"            FORMAT=F2.  
      TA232396        LABEL="COMPLETED EDUCATION OF FATHER"            FORMAT=F2.  
   ;
   INFILE myfile LRECL = 648 ; 
   INPUT 
      KIDS                 1 - 1           TAS                  2 - 2           KID07                3 - 5     
      KID14                6 - 8           KID19                9 - 11          KID21               12 - 14    
      TAS05               15 - 15          TAS07               16 - 16          TAS09               17 - 17    
      TAS11               18 - 18          TAS13               19 - 19          TAS15               20 - 20    
      TAS17               21 - 21          TAS19               22 - 22          TAS21               23 - 23    
      TAS23               24 - 24          ER30001             25 - 28          ER30002             29 - 31    
      ER32000             32 - 32          ER32006             33 - 33          V441                34 - 34    
      V634                35 - 35          ER30020             36 - 39          ER30021             40 - 41    
      ER30022             42 - 42          ER13001             43 - 43          ER13010             44 - 46    
      ER13013             47 - 48          ER13014             49 - 50          ER13021             51 - 51    
      ER13040             52 - 52          ER14243             53 - 53          ER14244             54 - 54    
      ER14245             55 - 55          ER14246             56 - 56          ER14247             57 - 57    
      ER14248             58 - 58          ER14249             59 - 59          ER14250             60 - 60    
      ER14251             61 - 61          ER14252             62 - 62          ER14253             63 - 63    
      ER14254             64 - 64          ER14255             65 - 65          ER14258             66 - 66    
      ER14259             67 - 67          ER14260             68 - 68          ER14261             69 - 69    
      ER14262             70 - 70          ER14263             71 - 71          ER14264             72 - 72    
      ER14265             73 - 73          ER14266             74 - 74          ER14267             75 - 75    
      ER14268             76 - 76          ER14269             77 - 77          ER14270             78 - 78    
      ER14271             79 - 79          ER14272             80 - 80          ER14273             81 - 81    
      ER14274             82 - 82          ER14275             83 - 83          ER14276             84 - 84    
      ER14277             85 - 85          ER14278             86 - 86          ER14279             87 - 87    
      ER14280             88 - 88          ER14281             89 - 89          ER14282             90 - 90    
      ER16255             91 - 91          ER16423             92 - 92          ER16515C9           93 - 102   
      ER16516            103 - 104         ER16517            105 - 106         ER33501            107 - 111   
      ER33502            112 - 113         ER33503            114 - 115         ER17001            116 - 116   
      ER17013            117 - 119         ER17016            120 - 121         ER17017            122 - 123   
      ER17024            124 - 124         ER17043            125 - 125         ER18386            126 - 126   
      ER18402            127 - 127         ER20201            128 - 128         ER20369            129 - 129   
      ER20456C9          130 - 139         ER20457            140 - 141         ER20458            142 - 143   
      ER33601            144 - 147         ER33602            148 - 149         ER33603            150 - 151   
      ER21001            152 - 152         ER21017            153 - 155         ER21020            156 - 157   
      ER21021            158 - 160         ER21023            161 - 161         ER21042            162 - 162   
      ER21652            163 - 163         ER21668            164 - 164         ER23802            165 - 165   
      ER24138C9          166 - 175         ER24148            176 - 177         ER24149            178 - 179   
      ER24150            180 - 180         ER33701            181 - 185         ER33702            186 - 187   
      ER33703            188 - 189         ER25001            190 - 190         ER25017            191 - 193   
      ER25020            194 - 195         ER25021            196 - 198         ER25023            199 - 199   
      ER25028            200 - 200         ER25654            201 - 201         ER25670            202 - 202   
      ER28037D1          203 - 212         ER28047            213 - 214         ER28048            215 - 216   
      ER28049            217 - 217         ER33801            218 - 222         ER33802            223 - 224   
      ER33803            225 - 226         TA050001           227 - 227         TA050947           228 - 229   
      TA050949           230 - 231         ER36001            232 - 232         ER36017            233 - 235   
      ER36020            236 - 237         ER36021            238 - 240         ER36023            241 - 241   
      ER36028            242 - 242         ER36672            243 - 243         ER36688            244 - 244   
      ER41027D1          245 - 254         ER41037            255 - 256         ER41038            257 - 258   
      ER41039            259 - 259         ER33901            260 - 264         ER33902            265 - 266   
      ER33903            267 - 268         PCHREL07           269 - 269         Q31B2              270 - 271   
      OCHREL07           272 - 272         Q35A13             273 - 274         TA070001           275 - 275   
      TA070928           276 - 277         TA070930           278 - 279         ER42001            280 - 280   
      ER42017            281 - 283         ER42020            284 - 285         ER42021            286 - 288   
      ER42023            289 - 289         ER42029            290 - 290         ER42691            291 - 291   
      ER42707            292 - 292         ER46971D1          293 - 302         ER46981            303 - 304   
      ER46982            305 - 306         ER46983            307 - 307         ER34001            308 - 312   
      ER34002            313 - 314         ER34003            315 - 316         TA090001           317 - 317   
      TA090992           318 - 319         TA090994           320 - 321         ER47301            322 - 322   
      ER47317            323 - 325         ER47320            326 - 327         ER47321            328 - 330   
      ER47323            331 - 331         ER47329            332 - 332         ER48007            333 - 333   
      ER48023            334 - 334         ER52395D1          335 - 344         ER52405            345 - 346   
      ER52406            347 - 348         ER52407            349 - 349         ER34101            350 - 354   
      ER34102            355 - 356         ER34103            357 - 358         TA110001           359 - 359   
      TA111134           360 - 361         TA111136           362 - 363         ER53001            364 - 364   
      ER53017            365 - 367         ER53020            368 - 369         ER53021            370 - 372   
      ER53023            373 - 373         ER53029            374 - 374         ER53087            375 - 379   
      ER53704            380 - 380         ER53720            381 - 381         ER58212D1          382 - 391   
      ER58223            392 - 393         ER58224            394 - 395         ER58225            396 - 396   
      ER34201            397 - 401         ER34202            402 - 403         ER34203            404 - 405   
      TA130001           406 - 406         TA131226           407 - 408         TA131228           409 - 410   
      RT13V1             411 - 411         RT13V11            412 - 412         RT13V12            413 - 413   
      RT13V13            414 - 414         RT13V14            415 - 415         P14REL             416 - 416   
      P14F3              417 - 418         C14REL             419 - 419         C14B32             420 - 421   
      ER60001            422 - 422         ER60017            423 - 425         ER60021            426 - 427   
      ER60022            428 - 430         ER60024            431 - 431         ER60030            432 - 432   
      ER60088            433 - 437         ER60719            438 - 438         ER60735            439 - 439   
      ER65437            440 - 449         ER65459            450 - 451         ER65460            452 - 453   
      ER65461            454 - 454         ER34301            455 - 459         ER34302            460 - 461   
      ER34303            462 - 463         TA150001           464 - 464         TA151286           465 - 466   
      TA151288           467 - 468         ER66001            469 - 469         ER66017            470 - 472   
      ER66021            473 - 474         ER66030            475 - 475         ER66090            476 - 480   
      ER66766            481 - 481         ER66782            482 - 482         ER71515            483 - 492   
      ER71538            493 - 494         ER71539            495 - 496         ER34501            497 - 501   
      ER34502            502 - 503         ER34503            504 - 505         TA170001           506 - 506   
      TA171981           507 - 508         TA171983           509 - 510         ER72001            511 - 511   
      ER72017            512 - 514         ER72021            515 - 516         ER72030            517 - 517   
      ER72090            518 - 522         ER72770            523 - 523         ER72786            524 - 524   
      ER77562            525 - 534         ER77599            535 - 536         ER77600            537 - 538   
      ER34701            539 - 543         ER34702            544 - 545         ER34703            546 - 547   
      P19REL             548 - 548         P19F3              549 - 550         C19REL             551 - 551   
      C19B32             552 - 553         TA190001           554 - 554         TA192192           555 - 556   
      TA192194           557 - 558         ER78001            559 - 559         ER78017            560 - 562   
      ER78021            563 - 564         ER78031            565 - 565         ER78091            566 - 570   
      ER78847            571 - 571         ER78863            572 - 572         ER81889            573 - 582   
      ER81926            583 - 584         ER81927            585 - 586         ER34901            587 - 591   
      ER34902            592 - 593         ER34903            594 - 595         P21REL             596 - 596   
      P21F3              597 - 598         C21REL             599 - 599         C21B32             600 - 601   
      TA210001           602 - 602         TA212387           603 - 604         TA212389           605 - 606   
      ER82001            607 - 607         ER82018            608 - 610         ER82022            611 - 612   
      ER82032            613 - 613         ER82092            614 - 618         ER82840            619 - 619   
      ER82856            620 - 620         ER85743            621 - 630         ER85780            631 - 632   
      ER85781            633 - 634         ER35101            635 - 639         ER35102            640 - 641   
      ER35103            642 - 643         TA230001           644 - 644         TA232394           645 - 646   
      TA232396           647 - 648   
   ;
run ;

/* PSID DATA CENTER *****************************************************
   JOBID            : 362433                            
   DATA_DOMAIN      : IND                               
   USER_WHERE       : NULL                              
   FILE_TYPE        : All Individuals Data              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : SAS Statements                    
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 16                                
   N_OF_OBSERVATIONS: 28477                             
   MAX_REC_LENGTH   : 36                                
   DATE & TIME      : June 4, 2026 @ 20:48:08
************************************************************************/

FILENAME myfile "[path]\J362433.txt" ;

DATA J362433 ;
   ATTRIB
      ER30000         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER30001         LABEL="1968 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30002         LABEL="PERSON NUMBER                         68" FORMAT=F3.  
      ER32000         LABEL="SEX OF INDIVIDUAL"                        FORMAT=F1.  
      ER32006         LABEL="WHETHER SAMPLE OR NONSAMPLE"              FORMAT=F1.  
      ER72001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER77599         LABEL="COMPLETED ED-RP"                          FORMAT=F2.  
      ER77600         LABEL="COMPLETED ED-SP"                          FORMAT=F2.  
      ER34701         LABEL="2019 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34702         LABEL="SEQUENCE NUMBER                       19" FORMAT=F2.  
      ER34703         LABEL="RELATION TO REFERENCE PERSON          19" FORMAT=F2.  
      ER34716         LABEL="EMPLOYMENT STATUS                     19" FORMAT=F1.  
      ER34752         LABEL="YEARS COMPLETED EDUCATION             19" FORMAT=F2.  
      ER34901         LABEL="2021 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34902         LABEL="SEQUENCE NUMBER                       21" FORMAT=F2.  
      ER34903         LABEL="RELATION TO REFERENCE PERSON          21" FORMAT=F2.  
   ;
   INFILE myfile LRECL = 36 ; 
   INPUT 
      ER30000              1 - 1           ER30001              2 - 5           ER30002              6 - 8     
      ER32000              9 - 9           ER32006             10 - 10          ER72001             11 - 11    
      ER77599             12 - 13          ER77600             14 - 15          ER34701             16 - 20    
      ER34702             21 - 22          ER34703             23 - 24          ER34716             25 - 25    
      ER34752             26 - 27          ER34901             28 - 32          ER34902             33 - 34    
      ER34903             35 - 36    
   ;
run ;

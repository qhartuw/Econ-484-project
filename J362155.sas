/* PSID DATA CENTER *****************************************************
   JOBID            : 362155                            
   DATA_DOMAIN      : FAM                               
   USER_WHERE       : NULL                              
   FILE_TYPE        : NULL                              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : SAS Statements                    
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 4                                 
   N_OF_OBSERVATIONS: 4802                              
   MAX_REC_LENGTH   : 13                                
   DATE & TIME      : May 24, 2026 @ 19:49:51
************************************************************************/

FILENAME myfile "[path]\J362155.txt" ;

DATA J362155 ;
   ATTRIB
      V1              LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      V3              LABEL="FAMILY NUMBER"                            FORMAT=F4.  
      V45             LABEL="YRLY FOOD STAMPS"                         FORMAT=F3.  
      V75             LABEL="WIFE LBR INCOME"                          FORMAT=F5.  
   ;
   INFILE myfile LRECL = 13 ; 
   INPUT 
      V1                   1 - 1           V3                   2 - 5           V45                  6 - 8     
      V75                  9 - 13    
   ;
run ;

/* PSID DATA CENTER *****************************************************
   JOBID            : 362432                            
   DATA_DOMAIN      : FAM                               
   USER_WHERE       : NULL                              
   FILE_TYPE        : NULL                              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : SAS Statements                    
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 30                                
   N_OF_OBSERVATIONS: 15323                             
   MAX_REC_LENGTH   : 84                                
   DATE & TIME      : June 4, 2026 @ 19:45:03
************************************************************************/

FILENAME myfile "[path]\J362432.txt" ;

DATA J362432 ;
   ATTRIB
      ER42001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER42002         LABEL="2009 FAMILY INTERVIEW (ID) NUMBER"        FORMAT=F5.  
      ER42675         LABEL="F8 WTR USED FOOD STAMPS 2 YRS AGO"        FORMAT=F1.  
      ER42709         LABEL="F16 VALUE OF FOOD STAMPS RECD LAST MONTH" FORMAT=F6.  
      ER42714         LABEL="ACCURACY OF FOOD AT HOME-RECD FD STAMPS"  FORMAT=F1.  
      ER47301         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER47302         LABEL="2011 FAMILY INTERVIEW (ID) NUMBER"        FORMAT=F5.  
      ER47991         LABEL="F8 WTR USED FOOD STAMPS 2 YRS AGO"        FORMAT=F1.  
      ER48025         LABEL="F16 VALUE OF FOOD STAMPS RECD LAST MONTH" FORMAT=F6.  
      ER48030         LABEL="ACCURACY OF FOOD AT HOME-RECD FD STAMPS"  FORMAT=F1.  
      ER53001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER53002         LABEL="2013 FAMILY INTERVIEW (ID) NUMBER"        FORMAT=F5.  
      ER53703         LABEL="F8 WTR USED FOOD STAMPS 2 YRS AGO"        FORMAT=F1.  
      ER53722         LABEL="F16 VALUE OF FOOD STAMPS RECD LAST MONTH" FORMAT=F6.  
      ER53727         LABEL="ACCURACY OF FOOD AT HOME-RECD FD STAMPS"  FORMAT=F1.  
      ER72001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER72002         LABEL="2019 FAMILY INTERVIEW (ID) NUMBER"        FORMAT=F5.  
      ER72769         LABEL="F8 WTR USED FOOD STAMPS 2 YRS AGO"        FORMAT=F1.  
      ER72788         LABEL="F16 VALUE OF FOOD STAMPS RECD LAST MONTH" FORMAT=F6.  
      ER72793         LABEL="ACCURACY OF FOOD AT HOME-RECD FD STAMPS"  FORMAT=F1.  
      ER78001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER78002         LABEL="2021 FAMILY INTERVIEW (ID) NUMBER"        FORMAT=F5.  
      ER78846         LABEL="F8 WTR USED FOOD STAMPS 2 YRS AGO"        FORMAT=F1.  
      ER78865         LABEL="F16 VALUE OF FOOD STAMPS RECD LAST MONTH" FORMAT=F6.  
      ER78870         LABEL="ACCURACY OF FOOD AT HOME-RECD FD STAMPS"  FORMAT=F1.  
      ER82001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER82002         LABEL="2023 FAMILY INTERVIEW (ID) NUMBER"        FORMAT=F5.  
      ER82839         LABEL="F8 WTR USED FOOD STAMPS 2 YRS AGO"        FORMAT=F1.  
      ER82858         LABEL="F16 VALUE OF FOOD STAMPS RECD LAST MONTH" FORMAT=F6.  
      ER82863         LABEL="ACCURACY OF FOOD AT HOME-RECD FD STAMPS"  FORMAT=F1.  
   ;
   INFILE myfile LRECL = 84 ; 
   INPUT 
      ER42001              1 - 1           ER42002              2 - 6           ER42675              7 - 7     
      ER42709              8 - 13          ER42714             14 - 14          ER47301             15 - 15    
      ER47302             16 - 20          ER47991             21 - 21          ER48025             22 - 27    
      ER48030             28 - 28          ER53001             29 - 29          ER53002             30 - 34    
      ER53703             35 - 35          ER53722             36 - 41          ER53727             42 - 42    
      ER72001             43 - 43          ER72002             44 - 48          ER72769             49 - 49    
      ER72788             50 - 55          ER72793             56 - 56          ER78001             57 - 57    
      ER78002             58 - 62          ER78846             63 - 63          ER78865             64 - 69    
      ER78870             70 - 70          ER82001             71 - 71          ER82002             72 - 76    
      ER82839             77 - 77          ER82858             78 - 83          ER82863             84 - 84    
   ;
run ;

/* PSID DATA CENTER *****************************************************
   JOBID            : 362299                            
   DATA_DOMAIN      : TAi                               
   USER_WHERE       : NULL                              
   FILE_TYPE        : CDS Kids Only                     
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : SAS Statements                    
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 425                               
   N_OF_OBSERVATIONS: 6007                              
   MAX_REC_LENGTH   : 1107                              
   DATE & TIME      : May 31, 2026 @ 1:05:12
************************************************************************/

FILENAME myfile "[path]\J362299.txt" ;

DATA J362299 ;
   ATTRIB
      TAS             LABEL="Sum of All TAS Flags"                     FORMAT=F1.  
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
      ER30000         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER30001         LABEL="1968 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30002         LABEL="PERSON NUMBER                         68" FORMAT=F3.  
      ER32000         LABEL="SEX OF INDIVIDUAL"                        FORMAT=F1.  
      ER32006         LABEL="WHETHER SAMPLE OR NONSAMPLE"              FORMAT=F1.  
      ER30003         LABEL="RELATIONSHIP TO HEAD                  68" FORMAT=F1.  
      ER30004         LABEL="AGE OF INDIVIDUAL                     68" FORMAT=F3.  
      ER30010         LABEL="YRS SCHL COMPL                        68" FORMAT=F2.  
      ER30020         LABEL="1969 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30021         LABEL="SEQUENCE NUMBER                       69" FORMAT=F2.  
      ER30022         LABEL="RELATIONSHIP TO HEAD                  69" FORMAT=F1.  
      ER30023         LABEL="AGE OF INDIVIDUAL                     69" FORMAT=F3.  
      ER30030         LABEL="DISABLED OR RQ CARE                   69" FORMAT=F1.  
      ER30043         LABEL="1970 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30044         LABEL="SEQUENCE NUMBER                       70" FORMAT=F2.  
      ER30045         LABEL="RELATIONSHIP TO HEAD                  70" FORMAT=F1.  
      ER30046         LABEL="AGE OF INDIVIDUAL                     70" FORMAT=F3.  
      ER30052         LABEL="GRADE FINISHED                        70" FORMAT=F2.  
      ER30054         LABEL="DISABLED OR RQ CARE                   70" FORMAT=F1.  
      ER30067         LABEL="1971 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30068         LABEL="SEQUENCE NUMBER                       71" FORMAT=F2.  
      ER30069         LABEL="RELATIONSHIP TO HEAD                  71" FORMAT=F1.  
      ER30070         LABEL="AGE OF INDIVIDUAL                     71" FORMAT=F3.  
      ER30076         LABEL="GRADE FINISHED                        71" FORMAT=F2.  
      ER30091         LABEL="1972 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30092         LABEL="SEQUENCE NUMBER                       72" FORMAT=F2.  
      ER30093         LABEL="RELATIONSHIP TO HEAD                  72" FORMAT=F1.  
      ER30094         LABEL="AGE OF INDIVIDUAL                     72" FORMAT=F3.  
      ER30100         LABEL="GRADE FINISHED                        72" FORMAT=F2.  
      ER30117         LABEL="1973 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30118         LABEL="SEQUENCE NUMBER                       73" FORMAT=F2.  
      ER30119         LABEL="RELATIONSHIP TO HEAD                  73" FORMAT=F1.  
      ER30120         LABEL="AGE OF INDIVIDUAL                     73" FORMAT=F3.  
      ER30126         LABEL="GRADE FINISHED                        73" FORMAT=F2.  
      ER30138         LABEL="1974 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30139         LABEL="SEQUENCE NUMBER                       74" FORMAT=F2.  
      ER30140         LABEL="RELATIONSHIP TO HEAD                  74" FORMAT=F1.  
      ER30141         LABEL="AGE OF INDIVIDUAL                     74" FORMAT=F3.  
      ER30147         LABEL="HIGHEST GRADE                         74" FORMAT=F2.  
      ER30160         LABEL="1975 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30161         LABEL="SEQUENCE NUMBER                       75" FORMAT=F2.  
      ER30162         LABEL="RELATIONSHIP TO HEAD                  75" FORMAT=F1.  
      ER30163         LABEL="AGE OF INDIVIDUAL                     75" FORMAT=F3.  
      ER30169         LABEL="HIGHEST GRAD FINISHED                 75" FORMAT=F2.  
      ER30188         LABEL="1976 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30189         LABEL="SEQUENCE NUMBER                       76" FORMAT=F2.  
      ER30190         LABEL="RELATIONSHIP TO HEAD                  76" FORMAT=F1.  
      ER30191         LABEL="AGE OF INDIVIDUAL                     76" FORMAT=F3.  
      ER30197         LABEL="HIGHEST GRADE FINISH                  76" FORMAT=F2.  
      ER30217         LABEL="1977 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30218         LABEL="SEQUENCE NUMBER                       77" FORMAT=F2.  
      ER30219         LABEL="RELATIONSHIP TO HEAD                  77" FORMAT=F1.  
      ER30220         LABEL="AGE OF INDIVIDUAL                     77" FORMAT=F3.  
      ER30226         LABEL="HIGHEST GRADE FINISH                  77" FORMAT=F2.  
      ER30246         LABEL="1978 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30247         LABEL="SEQUENCE NUMBER                       78" FORMAT=F2.  
      ER30248         LABEL="RELATIONSHIP TO HEAD                  78" FORMAT=F1.  
      ER30249         LABEL="AGE OF INDIVIDUAL                     78" FORMAT=F3.  
      ER30255         LABEL="HIGHEST GRADE FINISH                  78" FORMAT=F2.  
      ER30283         LABEL="1979 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30284         LABEL="SEQUENCE NUMBER                       79" FORMAT=F2.  
      ER30285         LABEL="RELATIONSHIP TO HEAD                  79" FORMAT=F1.  
      ER30286         LABEL="AGE OF INDIVIDUAL                     79" FORMAT=F3.  
      ER30293         LABEL="EMPL STATUS                           79" FORMAT=F1.  
      ER30296         LABEL="K49 EDUCATION                         79" FORMAT=F2.  
      ER30313         LABEL="1980 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30314         LABEL="SEQUENCE NUMBER                       80" FORMAT=F2.  
      ER30315         LABEL="RELATIONSHIP TO HEAD                  80" FORMAT=F1.  
      ER30316         LABEL="AGE OF INDIVIDUAL                     80" FORMAT=F3.  
      ER30323         LABEL="1980 EMPL STATUS                      80" FORMAT=F1.  
      ER30326         LABEL="EDUCATION ATTAINED                    80" FORMAT=F2.  
      ER30343         LABEL="1981 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30344         LABEL="SEQUENCE NUMBER                       81" FORMAT=F2.  
      ER30345         LABEL="RELATIONSHIP TO HEAD                  81" FORMAT=F1.  
      ER30346         LABEL="AGE OF INDIVIDUAL                     81" FORMAT=F3.  
      ER30353         LABEL="EMPLOYMENT STAT                       81" FORMAT=F1.  
      ER30356         LABEL="COMPLETED EDUC                        81" FORMAT=F2.  
      ER30373         LABEL="1982 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30374         LABEL="SEQUENCE NUMBER                       82" FORMAT=F2.  
      ER30375         LABEL="RELATIONSHIP TO HEAD                  82" FORMAT=F1.  
      ER30376         LABEL="AGE OF INDIVIDUAL                     82" FORMAT=F3.  
      ER30382         LABEL="EMPLOYMENT STATUS                     82" FORMAT=F1.  
      ER30384         LABEL="COMPLETED EDUCATION                   82" FORMAT=F2.  
      ER30399         LABEL="1983 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30400         LABEL="SEQUENCE NUMBER                       83" FORMAT=F2.  
      ER30401         LABEL="RELATIONSHIP TO HEAD                  83" FORMAT=F2.  
      ER30402         LABEL="AGE OF INDIVIDUAL                     83" FORMAT=F3.  
      ER30411         LABEL="EMPLOYMENT STATUS                     83" FORMAT=F1.  
      ER30413         LABEL="COMPLETED EDUCATION                   83" FORMAT=F2.  
      ER30429         LABEL="1984 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30430         LABEL="SEQUENCE NUMBER                       84" FORMAT=F2.  
      ER30431         LABEL="RELATIONSHIP TO HEAD                  84" FORMAT=F2.  
      ER30432         LABEL="AGE OF INDIVIDUAL                     84" FORMAT=F3.  
      ER30441         LABEL="EMPLOYMENT STAT                       84" FORMAT=F1.  
      ER30443         LABEL="COMPLETED EDUC                        84" FORMAT=F2.  
      ER30451         LABEL="F34 AMT SOC SEC RCD                   84" FORMAT=F5.  
      ER30463         LABEL="1985 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30464         LABEL="SEQUENCE NUMBER                       85" FORMAT=F2.  
      ER30465         LABEL="RELATIONSHIP TO HEAD                  85" FORMAT=F2.  
      ER30466         LABEL="AGE OF INDIVIDUAL                     85" FORMAT=F3.  
      ER30474         LABEL="EMPLOYMENT STAT                       85" FORMAT=F1.  
      ER30478         LABEL="COMPLETED EDUCATION                   85" FORMAT=F2.  
      ER30486         LABEL="K33 AMT SOC SEC RCD                   85" FORMAT=F5.  
      ER30498         LABEL="1986 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30499         LABEL="SEQUENCE NUMBER                       86" FORMAT=F2.  
      ER30500         LABEL="RELATIONSHIP TO HEAD                  86" FORMAT=F2.  
      ER30501         LABEL="AGE OF INDIVIDUAL                     86" FORMAT=F3.  
      ER30509         LABEL="EMPLOYMENT STAT                       86" FORMAT=F1.  
      ER30513         LABEL="COMPLETED EDUCATION                   86" FORMAT=F2.  
      ER30521         LABEL="G34 AMT SOC SEC RCD                   86" FORMAT=F5.  
      ER30535         LABEL="1987 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30536         LABEL="SEQUENCE NUMBER                       87" FORMAT=F2.  
      ER30537         LABEL="RELATIONSHIP TO HEAD                  87" FORMAT=F2.  
      ER30538         LABEL="AGE OF INDIVIDUAL                     87" FORMAT=F3.  
      ER30545         LABEL="EMPLOYMENT STAT                       87" FORMAT=F1.  
      ER30549         LABEL="COMPLETED EDUCATION                   87" FORMAT=F2.  
      ER30557         LABEL="G34 AMT SOC SEC RCD                   87" FORMAT=F5.  
      ER30570         LABEL="1988 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30571         LABEL="SEQUENCE NUMBER                       88" FORMAT=F2.  
      ER30572         LABEL="RELATION TO HEAD                      88" FORMAT=F2.  
      ER30573         LABEL="AGE OF INDIVIDUAL                     88" FORMAT=F3.  
      ER30580         LABEL="EMPLOYMENT STAT-IND                   88" FORMAT=F1.  
      ER30584         LABEL="COMPLETED EDUC-IND                    88" FORMAT=F2.  
      ER30592         LABEL="G34 AMT SOC SEC RCD                   88" FORMAT=F5.  
      ER30606         LABEL="1989 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30607         LABEL="SEQUENCE NUMBER                       89" FORMAT=F2.  
      ER30608         LABEL="RELATION TO HEAD                      89" FORMAT=F2.  
      ER30609         LABEL="AGE OF INDIVIDUAL                     89" FORMAT=F3.  
      ER30616         LABEL="EMPLOYMENT STAT-IND                   89" FORMAT=F1.  
      ER30620         LABEL="COMPLETED EDUC-IND                    89" FORMAT=F2.  
      ER30628         LABEL="G34 AMT SOC SEC RCD                   89" FORMAT=F5.  
      ER30642         LABEL="1990 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER30643         LABEL="SEQUENCE NUMBER                       90" FORMAT=F2.  
      ER30644         LABEL="RELATION TO HEAD                      90" FORMAT=F2.  
      ER30645         LABEL="AGE OF INDIVIDUAL                     90" FORMAT=F3.  
      ER30653         LABEL="EMPLOYMENT STAT-IND                   90" FORMAT=F1.  
      ER30657         LABEL="COMPLETED EDUC-IND                    90" FORMAT=F2.  
      ER30665         LABEL="G34 AMT SOC SEC RCD                   90" FORMAT=F5.  
      ER30689         LABEL="1991 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30690         LABEL="SEQUENCE NUMBER                       91" FORMAT=F2.  
      ER30691         LABEL="RELATION TO HEAD                      91" FORMAT=F2.  
      ER30692         LABEL="AGE OF INDIVIDUAL                     91" FORMAT=F3.  
      ER30699         LABEL="EMPLOYMENT STAT-IND                   91" FORMAT=F1.  
      ER30703         LABEL="COMPLETED EDUC-IND                    91" FORMAT=F2.  
      ER30713         LABEL="G34 AMT SOC SEC RCD                   91" FORMAT=F5.  
      ER30733         LABEL="1992 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER30734         LABEL="SEQUENCE NUMBER                       92" FORMAT=F2.  
      ER30735         LABEL="RELATION TO HEAD                      92" FORMAT=F2.  
      ER30736         LABEL="AGE OF INDIVIDUAL                     92" FORMAT=F3.  
      ER30744         LABEL="EMPLOYMENT STAT                       92" FORMAT=F1.  
      ER30748         LABEL="COMPLETED EDUCATION                   92" FORMAT=F2.  
      ER30758         LABEL="G34 AMT SOC SEC RCD                   92" FORMAT=F5.  
      ER30806         LABEL="1993 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER30807         LABEL="SEQUENCE NUMBER                       93" FORMAT=F2.  
      ER30808         LABEL="RELATION TO HEAD                      93" FORMAT=F2.  
      ER30809         LABEL="AGE OF INDIVIDUAL                     93" FORMAT=F3.  
      ER30816         LABEL="EMPLOYMENT STATUS                     93" FORMAT=F1.  
      ER30820         LABEL="YRS COMPLETED EDUCATION               93" FORMAT=F2.  
      ER33101         LABEL="1994 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33102         LABEL="SEQUENCE NUMBER                       94" FORMAT=F2.  
      ER33103         LABEL="RELATION TO HEAD                      94" FORMAT=F2.  
      ER33104         LABEL="AGE OF INDIVIDUAL                     94" FORMAT=F3.  
      ER33111         LABEL="EMPLOYMENT STATUS                     94" FORMAT=F1.  
      ER33115         LABEL="YRS COMPLETED EDUC                    94" FORMAT=F2.  
      ER33201         LABEL="1995 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33202         LABEL="SEQUENCE NUMBER                       95" FORMAT=F2.  
      ER33203         LABEL="RELATION TO HEAD                      95" FORMAT=F2.  
      ER33204         LABEL="AGE OF INDIVIDUAL                     95" FORMAT=F3.  
      ER33211         LABEL="EMPLOYMENT STATUS                     95" FORMAT=F1.  
      ER33215         LABEL="YEARS COMPLETED EDUCATION             95" FORMAT=F2.  
      ER33227         LABEL="M10 HIGHEST GRADE OR YEAR COMPLETED   95" FORMAT=F2.  
      ER33301         LABEL="1996 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER33302         LABEL="SEQUENCE NUMBER                       96" FORMAT=F2.  
      ER33303         LABEL="RELATION TO HEAD                      96" FORMAT=F2.  
      ER33304         LABEL="AGE OF INDIVIDUAL                     96" FORMAT=F3.  
      ER33311         LABEL="EMPLOYMENT STATUS                     96" FORMAT=F1.  
      ER33315         LABEL="YEARS COMPLETED EDUCATION             96" FORMAT=F2.  
      ER33401         LABEL="1997 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33402         LABEL="SEQUENCE NUMBER                       97" FORMAT=F2.  
      ER33403         LABEL="RELATION TO HEAD                      97" FORMAT=F2.  
      ER33404         LABEL="AGE OF INDIVIDUAL                     97" FORMAT=F3.  
      ER33411         LABEL="EMPLOYMENT STATUS                     97" FORMAT=F1.  
      ER33415         LABEL="YEARS COMPLETED EDUCATION             97" FORMAT=F2.  
      ER13001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER16515D7       LABEL="TOTAL EXPENDITURE 1999"                   FORMAT=F10.2
      ER33501         LABEL="1999 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33502         LABEL="SEQUENCE NUMBER                       99" FORMAT=F2.  
      ER33503         LABEL="RELATION TO HEAD                      99" FORMAT=F2.  
      ER33504         LABEL="AGE OF INDIVIDUAL                     99" FORMAT=F3.  
      ER33512         LABEL="EMPLOYMENT STATUS                     99" FORMAT=F1.  
      ER33516         LABEL="YEARS COMPLETED EDUCATION             99" FORMAT=F2.  
      ER17001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER20456D7       LABEL="TOTAL EXPENDITURE 2001"                   FORMAT=F10.2
      ER33601         LABEL="2001 INTERVIEW NUMBER"                    FORMAT=F4.  
      ER33602         LABEL="SEQUENCE NUMBER                       01" FORMAT=F2.  
      ER33603         LABEL="RELATION TO HEAD                      01" FORMAT=F2.  
      ER33604         LABEL="AGE OF INDIVIDUAL                     01" FORMAT=F3.  
      ER33612         LABEL="EMPLOYMENT STATUS                     01" FORMAT=F1.  
      ER33616         LABEL="YEARS COMPLETED EDUCATION             01" FORMAT=F2.  
      ER21001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER24138D7       LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER33701         LABEL="2003 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33702         LABEL="SEQUENCE NUMBER                       03" FORMAT=F2.  
      ER33703         LABEL="RELATION TO HEAD                      03" FORMAT=F2.  
      ER33704         LABEL="AGE OF INDIVIDUAL                     03" FORMAT=F3.  
      ER33712         LABEL="EMPLOYMENT STATUS                     03" FORMAT=F1.  
      ER33716         LABEL="YEARS COMPLETED EDUCATION             03" FORMAT=F2.  
      ER25001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER28037E4       LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER33801         LABEL="2005 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33802         LABEL="SEQUENCE NUMBER                       05" FORMAT=F2.  
      ER33803         LABEL="RELATION TO HEAD                      05" FORMAT=F2.  
      ER33804         LABEL="AGE OF INDIVIDUAL                     05" FORMAT=F3.  
      ER33813         LABEL="EMPLOYMENT STATUS                     05" FORMAT=F1.  
      ER33817         LABEL="YEARS COMPLETED EDUCATION             05" FORMAT=F2.  
      ER33837B        LABEL="G34 AMT SOC SEC RCD                   05" FORMAT=F5.  
      ER33837Q        LABEL="G84H IMPUTED UNEMP COMP               05" FORMAT=F6.  
      ER33837W        LABEL="G84L IMPUTED HELP FROM RELS           05" FORMAT=F6.  
      TA050001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA050932        LABEL="MENTAL HEALTH:  WORRY"                    FORMAT=F1.  
      TA050933        LABEL="MENTAL HEALTH:  SOCIAL ANXIETY"           FORMAT=F1.  
      TA050934        LABEL="MENTAL HEALTH:  LANGUISHING/FLOURISHING"  FORMAT=F2.  
      TA050938        LABEL="MENTAL HEALTH:  NON-SPEC PSYCH DISTRESS"  FORMAT=F2.  
      TA050939        LABEL="MENTAL HEALTH:  RISKY BEHAVIORS"          FORMAT=F1.  
      ER36001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER41027E4       LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER33901         LABEL="2007 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER33902         LABEL="SEQUENCE NUMBER                       07" FORMAT=F2.  
      ER33903         LABEL="RELATION TO HEAD                      07" FORMAT=F2.  
      ER33904         LABEL="AGE OF INDIVIDUAL                     07" FORMAT=F3.  
      ER33913         LABEL="EMPLOYMENT STATUS                     07" FORMAT=F1.  
      ER33917         LABEL="YEARS COMPLETED EDUCATION             07" FORMAT=F2.  
      ER33925B        LABEL="G34 AMT SOC SEC RCD                   07" FORMAT=F5.  
      ER33925Q        LABEL="G84H IMPUTED UNEMP COMP               07" FORMAT=F6.  
      ER33925W        LABEL="G84L IMPUTED HELP FROM RELS           07" FORMAT=F6.  
      TA070001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA070183        LABEL="E9G DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA070913        LABEL="MENTAL HEALTH:  WORRY"                    FORMAT=F1.  
      TA070914        LABEL="MENTAL HEALTH:  SOCIAL ANXIETY"           FORMAT=F1.  
      TA070915        LABEL="MENTAL HEALTH:  LANGUISHING/FLOURISHING"  FORMAT=F2.  
      TA070919        LABEL="MENTAL HEALTH:  NON-SPEC PSYCH DISTRESS"  FORMAT=F2.  
      TA070920        LABEL="MENTAL HEALTH:  RISKY BEHAVIORS"          FORMAT=F1.  
      ER42001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER46971E4       LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER34001         LABEL="2009 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34002         LABEL="SEQUENCE NUMBER                       09" FORMAT=F2.  
      ER34003         LABEL="RELATION TO HEAD                      09" FORMAT=F2.  
      ER34004         LABEL="AGE OF INDIVIDUAL                     09" FORMAT=F3.  
      ER34016         LABEL="EMPLOYMENT STATUS                     09" FORMAT=F1.  
      ER34020         LABEL="YEARS COMPLETED EDUCATION             09" FORMAT=F2.  
      ER34029N        LABEL="G84H IMPUTED UNEMP COMP               09" FORMAT=F6.  
      ER34029T        LABEL="G84L IMPUTED HELP FROM RELS           09" FORMAT=F6.  
      ER34031         LABEL="G34 AMT SOC SEC RCD                   09" FORMAT=F5.  
      TA090001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA090192        LABEL="E9G DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA090193        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA090977        LABEL="MENTAL HEALTH:  WORRY"                    FORMAT=F1.  
      TA090978        LABEL="MENTAL HEALTH:  SOCIAL ANXIETY"           FORMAT=F1.  
      TA090979        LABEL="MENTAL HEALTH:  LANGUISHING/FLOURISHING"  FORMAT=F2.  
      TA090983        LABEL="MENTAL HEALTH:  NON-SPEC PSYCH DISTRESS"  FORMAT=F2.  
      TA090984        LABEL="MENTAL HEALTH:  RISKY BEHAVIORS"          FORMAT=F1.  
      ER47301         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER52395E4       LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER34101         LABEL="2011 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34102         LABEL="SEQUENCE NUMBER                       11" FORMAT=F2.  
      ER34103         LABEL="RELATION TO HEAD                      11" FORMAT=F2.  
      ER34104         LABEL="AGE OF INDIVIDUAL                     11" FORMAT=F3.  
      ER34116         LABEL="EMPLOYMENT STATUS                     11" FORMAT=F1.  
      ER34119         LABEL="YEARS COMPLETED EDUCATION             11" FORMAT=F2.  
      ER34128         LABEL="H61D WTR COVERED BY INSURANCE NOW     11" FORMAT=F1.  
      ER34129         LABEL="H61E TYPE CURRENT HEALTH INS MEN 1    11" FORMAT=F2.  
      ER34136N        LABEL="G84H IMPUTED UNEMP COMP               11" FORMAT=F6.  
      ER34136T        LABEL="G84L IMPUTED HELP FROM RELS           11" FORMAT=F6.  
      ER34140         LABEL="G33A WTR SOC SEC TYPE DEP OF DISABLED 11" FORMAT=F1.  
      ER34143         LABEL="G34 AMT SOC SEC RCD                   11" FORMAT=F5.  
      TA110001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA110193        LABEL="E9G DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA110194        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA111119        LABEL="MENTAL HEALTH:  WORRY"                    FORMAT=F1.  
      TA111120        LABEL="MENTAL HEALTH:  SOCIAL ANXIETY"           FORMAT=F1.  
      TA111121        LABEL="MENTAL HEALTH:  LANGUISHING/FLOURISHING"  FORMAT=F2.  
      TA111125        LABEL="MENTAL HEALTH:  NON-SPEC PSYCH DISTRESS"  FORMAT=F2.  
      TA111126        LABEL="MENTAL HEALTH:  RISKY BEHAVIORS"          FORMAT=F1.  
      ER53001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER58212E4       LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER34201         LABEL="2013 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34202         LABEL="SEQUENCE NUMBER                       13" FORMAT=F2.  
      ER34203         LABEL="RELATION TO HEAD                      13" FORMAT=F2.  
      ER34204         LABEL="AGE OF INDIVIDUAL                     13" FORMAT=F3.  
      ER34216         LABEL="EMPLOYMENT STATUS                     13" FORMAT=F1.  
      ER34230         LABEL="YEARS COMPLETED EDUCATION             13" FORMAT=F2.  
      ER34235         LABEL="H61D3 WTR COVERED BY INSURANCE NOW    13" FORMAT=F1.  
      ER34236         LABEL="H61E TYPE CURRENT HEALTH INS MEN 1    13" FORMAT=F2.  
      ER34243N        LABEL="G84H IMPUTED UNEMP COMP               13" FORMAT=F6.  
      ER34243T        LABEL="G84L IMPUTED HELP FROM RELS           13" FORMAT=F6.  
      ER34247         LABEL="G33A WTR SOC SEC TYPE DEP OF DISABLED 13" FORMAT=F1.  
      ER34250         LABEL="G34 AMT SOC SEC RCD                   13" FORMAT=F5.  
      TA130001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA130192        LABEL="E9G DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA130193        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA131211        LABEL="MENTAL HEALTH:  WORRY"                    FORMAT=F1.  
      TA131212        LABEL="MENTAL HEALTH:  SOCIAL ANXIETY"           FORMAT=F1.  
      TA131213        LABEL="MENTAL HEALTH:  LANGUISHING/FLOURISHING"  FORMAT=F2.  
      TA131217        LABEL="MENTAL HEALTH:  NON-SPEC PSYCH DISTRESS"  FORMAT=F2.  
      TA131218        LABEL="MENTAL HEALTH:  RISKY BEHAVIORS"          FORMAT=F1.  
      ER60001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER65448B        LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER34301         LABEL="2015 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34302         LABEL="SEQUENCE NUMBER                       15" FORMAT=F2.  
      ER34303         LABEL="RELATION TO HEAD                      15" FORMAT=F2.  
      ER34305         LABEL="AGE OF INDIVIDUAL                     15" FORMAT=F3.  
      ER34317         LABEL="EMPLOYMENT STATUS                     15" FORMAT=F1.  
      ER34349         LABEL="YEARS COMPLETED EDUCATION             15" FORMAT=F2.  
      ER34385         LABEL="H61D3 WTR COVERED BY INSURANCE NOW    15" FORMAT=F1.  
      ER34386         LABEL="H61E TYPE CURRENT HEALTH INS MEN 1    15" FORMAT=F2.  
      ER34393N        LABEL="G84H IMPUTED UNEMP COMP               15" FORMAT=F6.  
      ER34393T        LABEL="G84L IMPUTED HELP FROM RELS           15" FORMAT=F6.  
      ER34397         LABEL="G33A WTR SOC SEC TYPE DEP OF DISABLED 15" FORMAT=F1.  
      ER34400         LABEL="G34 AMT SOC SEC RCD                   15" FORMAT=F5.  
      TA150001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA150184        LABEL="E9G DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA150185        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA151271        LABEL="MENTAL HEALTH:  WORRY"                    FORMAT=F1.  
      TA151272        LABEL="MENTAL HEALTH:  SOCIAL ANXIETY"           FORMAT=F1.  
      TA151273        LABEL="MENTAL HEALTH:  LANGUISHING/FLOURISHING"  FORMAT=F2.  
      TA151277        LABEL="MENTAL HEALTH:  NON-SPEC PSYCH DISTRESS"  FORMAT=F2.  
      TA151278        LABEL="MENTAL HEALTH:  RISKY BEHAVIORS"          FORMAT=F1.  
      ER66001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER71527B        LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER34501         LABEL="2017 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34502         LABEL="SEQUENCE NUMBER                       17" FORMAT=F2.  
      ER34503         LABEL="RELATION TO REFERENCE PERSON          17" FORMAT=F2.  
      ER34504         LABEL="AGE OF INDIVIDUAL                     17" FORMAT=F3.  
      ER34516         LABEL="EMPLOYMENT STATUS                     17" FORMAT=F1.  
      ER34548         LABEL="YEARS COMPLETED EDUCATION             17" FORMAT=F2.  
      ER34594         LABEL="H61D3 WTR COVERED BY INSURANCE NOW    17" FORMAT=F1.  
      ER34595         LABEL="H61E TYPE CURRENT HEALTH INS MEN 1    17" FORMAT=F2.  
      ER34606         LABEL="G33A WTR SOC SEC TYPE DEP OF DISABLED 17" FORMAT=F1.  
      ER34609         LABEL="G34 AMT SOC SEC RCD                   17" FORMAT=F5.  
      ER34624         LABEL="G84H IMPUTED UNEMP COMP               17" FORMAT=F6.  
      ER34630         LABEL="G84L IMPUTED HELP FROM RELS           17" FORMAT=F6.  
      TA170001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA170362        LABEL="D20 DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA170363        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA171971        LABEL="MENTAL HEALTH:  SOCIAL ANXIETY"           FORMAT=F1.  
      TA171975        LABEL="MENTAL HEALTH:  NON-SPEC PSYCH DISTRESS"  FORMAT=F2.  
      TA171976        LABEL="MENTAL HEALTH:  RISKY BEHAVIORS"          FORMAT=F1.  
      ER72001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER77587         LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER34701         LABEL="2019 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34702         LABEL="SEQUENCE NUMBER                       19" FORMAT=F2.  
      ER34703         LABEL="RELATION TO REFERENCE PERSON          19" FORMAT=F2.  
      ER34704         LABEL="AGE OF INDIVIDUAL                     19" FORMAT=F3.  
      ER34716         LABEL="EMPLOYMENT STATUS                     19" FORMAT=F1.  
      ER34752         LABEL="YEARS COMPLETED EDUCATION             19" FORMAT=F2.  
      ER34802         LABEL="H61D3 WTR COVERED BY INSURANCE NOW    19" FORMAT=F1.  
      ER34803         LABEL="H61E TYPE CURRENT HEALTH INS MEN 1    19" FORMAT=F2.  
      ER34815         LABEL="G33A WTR SOC SEC TYPE DEP OF DISABLED 19" FORMAT=F1.  
      ER34818         LABEL="G34 AMT SOC SEC RCD                   19" FORMAT=F5.  
      ER34833         LABEL="G84H IMPUTED UNEMP COMP               19" FORMAT=F6.  
      ER34839         LABEL="G84L IMPUTED HELP FROM RELS           19" FORMAT=F6.  
      TA190001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA190559        LABEL="D20 DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA190560        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA192152        LABEL="SCALE: LANGUISHING/FLOURISHING"           FORMAT=F2.  
      TA192153        LABEL="SCALE: SOCIAL ANXIETY"                    FORMAT=F1.  
      ER78001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER81914         LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER34901         LABEL="2021 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER34902         LABEL="SEQUENCE NUMBER                       21" FORMAT=F2.  
      ER34903         LABEL="RELATION TO REFERENCE PERSON          21" FORMAT=F2.  
      ER34904         LABEL="AGE OF INDIVIDUAL                     21" FORMAT=F3.  
      ER34916         LABEL="EMPLOYMENT STATUS                     21" FORMAT=F1.  
      ER34952         LABEL="YEARS COMPLETED EDUCATION             21" FORMAT=F2.  
      ER35004         LABEL="H61D3 WTR COVERED BY INSURANCE NOW    21" FORMAT=F1.  
      ER35005         LABEL="H61E TYPE CURRENT HEALTH INS MEN 1    21" FORMAT=F2.  
      ER35016         LABEL="G33A WTR SOC SEC TYPE DEP OF DISABLED 21" FORMAT=F1.  
      ER35019         LABEL="G34 AMT SOC SEC RCD                   21" FORMAT=F5.  
      ER35034         LABEL="G84H IMPUTED UNEMP COMP               21" FORMAT=F6.  
      ER35040         LABEL="G84L IMPUTED HELP FROM RELS           21" FORMAT=F6.  
      TA210001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA210562        LABEL="D20 DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA210563        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA212316        LABEL="SCALE: LANGUISHING/FLOURISHING"           FORMAT=F2.  
      TA212317        LABEL="SCALE SCORE: LANGUISHING/FLOURISHING"     FORMAT=F1.  
      TA212318        LABEL="SCALE: SOCIAL ANXIETY"                    FORMAT=F1.  
      ER82001         LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      ER85768         LABEL="TOTAL EXPENDITURE"                        FORMAT=F10.2
      ER35101         LABEL="2023 INTERVIEW NUMBER"                    FORMAT=F5.  
      ER35102         LABEL="SEQUENCE NUMBER                       23" FORMAT=F2.  
      ER35103         LABEL="RELATION TO REFERENCE PERSON          23" FORMAT=F2.  
      ER35104         LABEL="AGE OF INDIVIDUAL                     23" FORMAT=F3.  
      ER35116         LABEL="EMPLOYMENT STATUS                     23" FORMAT=F1.  
      ER35152         LABEL="YEARS COMPLETED EDUCATION             23" FORMAT=F2.  
      ER35204         LABEL="H61D3 WTR COVERED BY INSURANCE NOW    23" FORMAT=F1.  
      ER35205         LABEL="H61E TYPE CURRENT HEALTH INS MEN 1    23" FORMAT=F2.  
      ER35216         LABEL="G33A WTR SOC SEC TYPE DEP OF DISABLED 23" FORMAT=F1.  
      ER35219         LABEL="G34 AMT SOC SEC RCD                   23" FORMAT=F5.  
      ER35234         LABEL="G84H IMPUTED UNEMP COMP               23" FORMAT=F6.  
      ER35240         LABEL="G84L IMPUTED HELP FROM RELS           23" FORMAT=F6.  
      TA230001        LABEL="RELEASE NUMBER"                           FORMAT=F1.  
      TA230585        LABEL="D20 DAYS UNEMPLOYED YR B4 LAST"           FORMAT=F3.  
      TA230586        LABEL="ACCURACY OF DAYS UNEMPLOYED YR B4 LAST"   FORMAT=F1.  
      TA230915        LABEL="E90 WTR FOOD RAN OUT-LAST 30 DAYS-ADULT"  FORMAT=F1.  
      TA230916        LABEL="E91 FOOD DID NOT LAST-LAST 30 DAYS-ADULT" FORMAT=F1.  
      TA230918        LABEL="E93 WTR CUT SIZE MEAL-LAST 30 DAYS-ADULT" FORMAT=F1.  
      TA230919        LABEL="E94 FREQ CUT MEAL SZE-LAST 30 DAYS-ADULT" FORMAT=F2.  
      TA230920        LABEL="E95 WTR ATE LESS-LAST 30 DAYS - ADULT"    FORMAT=F1.  
      TA230921        LABEL="E96 WTR EVER HUNGRY-LAST 30 DAYS-ADULT"   FORMAT=F1.  
      TA230922        LABEL="E97 WTR LOST WEIGHT-LAST 30 DAYS-ADULT"   FORMAT=F1.  
      TA230923        LABEL="E98 WTR NOT EAT DAY-LAST 30 DAYS-ADULT"   FORMAT=F1.  
      TA232323        LABEL="SCALE: LANGUISHING/FLOURISHING"           FORMAT=F2.  
      TA232324        LABEL="SCALE SCORE: LANGUISHING/FLOURISHING"     FORMAT=F1.  
      TA232325        LABEL="SCALE: SOCIAL ANXIETY"                    FORMAT=F1.  
   ;
   INFILE myfile LRECL = 1107 ; 
   INPUT 
      TAS                  1 - 1           TAS05                2 - 2           TAS07                3 - 3     
      TAS09                4 - 4           TAS11                5 - 5           TAS13                6 - 6     
      TAS15                7 - 7           TAS17                8 - 8           TAS19                9 - 9     
      TAS21               10 - 10          TAS23               11 - 11          ER30000             12 - 12    
      ER30001             13 - 16          ER30002             17 - 19          ER32000             20 - 20    
      ER32006             21 - 21          ER30003             22 - 22          ER30004             23 - 25    
      ER30010             26 - 27          ER30020             28 - 31          ER30021             32 - 33    
      ER30022             34 - 34          ER30023             35 - 37          ER30030             38 - 38    
      ER30043             39 - 42          ER30044             43 - 44          ER30045             45 - 45    
      ER30046             46 - 48          ER30052             49 - 50          ER30054             51 - 51    
      ER30067             52 - 55          ER30068             56 - 57          ER30069             58 - 58    
      ER30070             59 - 61          ER30076             62 - 63          ER30091             64 - 67    
      ER30092             68 - 69          ER30093             70 - 70          ER30094             71 - 73    
      ER30100             74 - 75          ER30117             76 - 79          ER30118             80 - 81    
      ER30119             82 - 82          ER30120             83 - 85          ER30126             86 - 87    
      ER30138             88 - 91          ER30139             92 - 93          ER30140             94 - 94    
      ER30141             95 - 97          ER30147             98 - 99          ER30160            100 - 103   
      ER30161            104 - 105         ER30162            106 - 106         ER30163            107 - 109   
      ER30169            110 - 111         ER30188            112 - 115         ER30189            116 - 117   
      ER30190            118 - 118         ER30191            119 - 121         ER30197            122 - 123   
      ER30217            124 - 127         ER30218            128 - 129         ER30219            130 - 130   
      ER30220            131 - 133         ER30226            134 - 135         ER30246            136 - 139   
      ER30247            140 - 141         ER30248            142 - 142         ER30249            143 - 145   
      ER30255            146 - 147         ER30283            148 - 151         ER30284            152 - 153   
      ER30285            154 - 154         ER30286            155 - 157         ER30293            158 - 158   
      ER30296            159 - 160         ER30313            161 - 164         ER30314            165 - 166   
      ER30315            167 - 167         ER30316            168 - 170         ER30323            171 - 171   
      ER30326            172 - 173         ER30343            174 - 177         ER30344            178 - 179   
      ER30345            180 - 180         ER30346            181 - 183         ER30353            184 - 184   
      ER30356            185 - 186         ER30373            187 - 190         ER30374            191 - 192   
      ER30375            193 - 193         ER30376            194 - 196         ER30382            197 - 197   
      ER30384            198 - 199         ER30399            200 - 203         ER30400            204 - 205   
      ER30401            206 - 207         ER30402            208 - 210         ER30411            211 - 211   
      ER30413            212 - 213         ER30429            214 - 217         ER30430            218 - 219   
      ER30431            220 - 221         ER30432            222 - 224         ER30441            225 - 225   
      ER30443            226 - 227         ER30451            228 - 232         ER30463            233 - 236   
      ER30464            237 - 238         ER30465            239 - 240         ER30466            241 - 243   
      ER30474            244 - 244         ER30478            245 - 246         ER30486            247 - 251   
      ER30498            252 - 255         ER30499            256 - 257         ER30500            258 - 259   
      ER30501            260 - 262         ER30509            263 - 263         ER30513            264 - 265   
      ER30521            266 - 270         ER30535            271 - 274         ER30536            275 - 276   
      ER30537            277 - 278         ER30538            279 - 281         ER30545            282 - 282   
      ER30549            283 - 284         ER30557            285 - 289         ER30570            290 - 293   
      ER30571            294 - 295         ER30572            296 - 297         ER30573            298 - 300   
      ER30580            301 - 301         ER30584            302 - 303         ER30592            304 - 308   
      ER30606            309 - 312         ER30607            313 - 314         ER30608            315 - 316   
      ER30609            317 - 319         ER30616            320 - 320         ER30620            321 - 322   
      ER30628            323 - 327         ER30642            328 - 332         ER30643            333 - 334   
      ER30644            335 - 336         ER30645            337 - 339         ER30653            340 - 340   
      ER30657            341 - 342         ER30665            343 - 347         ER30689            348 - 351   
      ER30690            352 - 353         ER30691            354 - 355         ER30692            356 - 358   
      ER30699            359 - 359         ER30703            360 - 361         ER30713            362 - 366   
      ER30733            367 - 370         ER30734            371 - 372         ER30735            373 - 374   
      ER30736            375 - 377         ER30744            378 - 378         ER30748            379 - 380   
      ER30758            381 - 385         ER30806            386 - 390         ER30807            391 - 392   
      ER30808            393 - 394         ER30809            395 - 397         ER30816            398 - 398   
      ER30820            399 - 400         ER33101            401 - 405         ER33102            406 - 407   
      ER33103            408 - 409         ER33104            410 - 412         ER33111            413 - 413   
      ER33115            414 - 415         ER33201            416 - 420         ER33202            421 - 422   
      ER33203            423 - 424         ER33204            425 - 427         ER33211            428 - 428   
      ER33215            429 - 430         ER33227            431 - 432         ER33301            433 - 436   
      ER33302            437 - 438         ER33303            439 - 440         ER33304            441 - 443   
      ER33311            444 - 444         ER33315            445 - 446         ER33401            447 - 451   
      ER33402            452 - 453         ER33403            454 - 455         ER33404            456 - 458   
      ER33411            459 - 459         ER33415            460 - 461         ER13001            462 - 462   
      ER16515D7          463 - 472         ER33501            473 - 477         ER33502            478 - 479   
      ER33503            480 - 481         ER33504            482 - 484         ER33512            485 - 485   
      ER33516            486 - 487         ER17001            488 - 488         ER20456D7          489 - 498   
      ER33601            499 - 502         ER33602            503 - 504         ER33603            505 - 506   
      ER33604            507 - 509         ER33612            510 - 510         ER33616            511 - 512   
      ER21001            513 - 513         ER24138D7          514 - 523         ER33701            524 - 528   
      ER33702            529 - 530         ER33703            531 - 532         ER33704            533 - 535   
      ER33712            536 - 536         ER33716            537 - 538         ER25001            539 - 539   
      ER28037E4          540 - 549         ER33801            550 - 554         ER33802            555 - 556   
      ER33803            557 - 558         ER33804            559 - 561         ER33813            562 - 562   
      ER33817            563 - 564         ER33837B           565 - 569         ER33837Q           570 - 575   
      ER33837W           576 - 581         TA050001           582 - 582         TA050932           583 - 583   
      TA050933           584 - 584         TA050934           585 - 586         TA050938           587 - 588   
      TA050939           589 - 589         ER36001            590 - 590         ER41027E4          591 - 600   
      ER33901            601 - 605         ER33902            606 - 607         ER33903            608 - 609   
      ER33904            610 - 612         ER33913            613 - 613         ER33917            614 - 615   
      ER33925B           616 - 620         ER33925Q           621 - 626         ER33925W           627 - 632   
      TA070001           633 - 633         TA070183           634 - 636         TA070913           637 - 637   
      TA070914           638 - 638         TA070915           639 - 640         TA070919           641 - 642   
      TA070920           643 - 643         ER42001            644 - 644         ER46971E4          645 - 654   
      ER34001            655 - 659         ER34002            660 - 661         ER34003            662 - 663   
      ER34004            664 - 666         ER34016            667 - 667         ER34020            668 - 669   
      ER34029N           670 - 675         ER34029T           676 - 681         ER34031            682 - 686   
      TA090001           687 - 687         TA090192           688 - 690         TA090193           691 - 691   
      TA090977           692 - 692         TA090978           693 - 693         TA090979           694 - 695   
      TA090983           696 - 697         TA090984           698 - 698         ER47301            699 - 699   
      ER52395E4          700 - 709         ER34101            710 - 714         ER34102            715 - 716   
      ER34103            717 - 718         ER34104            719 - 721         ER34116            722 - 722   
      ER34119            723 - 724         ER34128            725 - 725         ER34129            726 - 727   
      ER34136N           728 - 733         ER34136T           734 - 739         ER34140            740 - 740   
      ER34143            741 - 745         TA110001           746 - 746         TA110193           747 - 749   
      TA110194           750 - 750         TA111119           751 - 751         TA111120           752 - 752   
      TA111121           753 - 754         TA111125           755 - 756         TA111126           757 - 757   
      ER53001            758 - 758         ER58212E4          759 - 768         ER34201            769 - 773   
      ER34202            774 - 775         ER34203            776 - 777         ER34204            778 - 780   
      ER34216            781 - 781         ER34230            782 - 783         ER34235            784 - 784   
      ER34236            785 - 786         ER34243N           787 - 792         ER34243T           793 - 798   
      ER34247            799 - 799         ER34250            800 - 804         TA130001           805 - 805   
      TA130192           806 - 808         TA130193           809 - 809         TA131211           810 - 810   
      TA131212           811 - 811         TA131213           812 - 813         TA131217           814 - 815   
      TA131218           816 - 816         ER60001            817 - 817         ER65448B           818 - 827   
      ER34301            828 - 832         ER34302            833 - 834         ER34303            835 - 836   
      ER34305            837 - 839         ER34317            840 - 840         ER34349            841 - 842   
      ER34385            843 - 843         ER34386            844 - 845         ER34393N           846 - 851   
      ER34393T           852 - 857         ER34397            858 - 858         ER34400            859 - 863   
      TA150001           864 - 864         TA150184           865 - 867         TA150185           868 - 868   
      TA151271           869 - 869         TA151272           870 - 870         TA151273           871 - 872   
      TA151277           873 - 874         TA151278           875 - 875         ER66001            876 - 876   
      ER71527B           877 - 886         ER34501            887 - 891         ER34502            892 - 893   
      ER34503            894 - 895         ER34504            896 - 898         ER34516            899 - 899   
      ER34548            900 - 901         ER34594            902 - 902         ER34595            903 - 904   
      ER34606            905 - 905         ER34609            906 - 910         ER34624            911 - 916   
      ER34630            917 - 922         TA170001           923 - 923         TA170362           924 - 926   
      TA170363           927 - 927         TA171971           928 - 928         TA171975           929 - 930   
      TA171976           931 - 931         ER72001            932 - 932         ER77587            933 - 942   
      ER34701            943 - 947         ER34702            948 - 949         ER34703            950 - 951   
      ER34704            952 - 954         ER34716            955 - 955         ER34752            956 - 957   
      ER34802            958 - 958         ER34803            959 - 960         ER34815            961 - 961   
      ER34818            962 - 966         ER34833            967 - 972         ER34839            973 - 978   
      TA190001           979 - 979         TA190559           980 - 982         TA190560           983 - 983   
      TA192152           984 - 985         TA192153           986 - 986         ER78001            987 - 987   
      ER81914            988 - 997         ER34901            998 - 1002        ER34902           1003 - 1004  
      ER34903           1005 - 1006        ER34904           1007 - 1009        ER34916           1010 - 1010  
      ER34952           1011 - 1012        ER35004           1013 - 1013        ER35005           1014 - 1015  
      ER35016           1016 - 1016        ER35019           1017 - 1021        ER35034           1022 - 1027  
      ER35040           1028 - 1033        TA210001          1034 - 1034        TA210562          1035 - 1037  
      TA210563          1038 - 1038        TA212316          1039 - 1040        TA212317          1041 - 1041  
      TA212318          1042 - 1042        ER82001           1043 - 1043        ER85768           1044 - 1053  
      ER35101           1054 - 1058        ER35102           1059 - 1060        ER35103           1061 - 1062  
      ER35104           1063 - 1065        ER35116           1066 - 1066        ER35152           1067 - 1068  
      ER35204           1069 - 1069        ER35205           1070 - 1071        ER35216           1072 - 1072  
      ER35219           1073 - 1077        ER35234           1078 - 1083        ER35240           1084 - 1089  
      TA230001          1090 - 1090        TA230585          1091 - 1093        TA230586          1094 - 1094  
      TA230915          1095 - 1095        TA230916          1096 - 1096        TA230918          1097 - 1097  
      TA230919          1098 - 1099        TA230920          1100 - 1100        TA230921          1101 - 1101  
      TA230922          1102 - 1102        TA230923          1103 - 1103        TA232323          1104 - 1105  
      TA232324          1106 - 1106        TA232325          1107 - 1107  
   ;
run ;

PROC FORMAT ; 
   VALUE ER13001F
         1 = 'Release number 1 - August 2001'
         2 = 'Release number 2 - October 2001'
         3 = 'Release number 3 - January 2002'
         4 = 'Release number 4 - May 2008'
         5 = 'Release number 5 - November 2013'
         6 = 'Release number 6 - February 2014'
         7 = 'Release number 7 - January 2016'
         8 = 'Release number 8 - November 2017'
         9 = 'Release number 9 - June 2023'
   ;
   VALUE ER17001F
         1 = 'Release number 1 - November 2002'
         2 = 'Release number 2 - May 2008'
         3 = 'Release number 3 - November 2013'
         4 = 'Release number 4 - February 2014'
         5 = 'Release number 5 - January 2016'
         6 = 'Release number 6 - November 2017'
         7 = 'Release number 7 - June 2023'
   ;
   VALUE ER21001F
         1 = 'Release number 1 - December 2004'
         2 = 'Release number 2 - October 2005'
         3 = 'Release number 3 - November 2005'
         4 = 'Release number 4 - May 2008'
         5 = 'Release number 5 - November 2013'
         6 = 'Release number 6 - February 2014'
         7 = 'Release number 7 - January 2016'
         8 = 'Release number 8 - November 2017'
         9 = 'Release number 9 - June 2023'
   ;
   VALUE ER25001F
         1 = 'Release number 1, March 2007'
         2 = 'Release number 2, May 2007'
         3 = 'Release number 3, November 2013'
         4 = 'Release number 4, February 2014'
         5 = 'Release number 5, January 2016'
         6 = 'Release number 6, November 2017'
         7 = 'Release number 7, June 2023'
   ;
   VALUE ER30000F
         1 = 'Release number 1, May 2025'
         2 = 'Release number 2, December 2025'
   ;
   VALUE ER30003F
         1 = 'Head'
         2 = 'Wife/"Wife"'
         3 = 'Son or daughter'
         4 = 'Brother or sister'
         5 = 'Father or mother'
         6 = 'Grandchild, niece, nephew, other relatives under 18'
         7 = 'Other, including in-laws, other adult relatives'
         8 = 'Husband or Wife of Head who moved out or died in the year prior to the 1968 interview'
         9 = 'NA'
         0 = 'Individual from core sample who was born or moved in after the 1968 interview; individual from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308)'
   ;
   VALUE ER30010F
    1 - 16 = 'Highest grade or year of schooling completed'
        17 = 'At least one year of postgraduate work'
        99 = 'NA; DK'
         0 = 'Preschool; born or moved in after the 1968 interview or individual from Immigrant or Latino samples (ER30003=0); still in school (ER30009=1 or 9)'
   ;
   VALUE ER30021F
    1 - 20 = 'Individuals in the family at the time of the 1969 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1969 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1968 and 1969 interviews but who were not included in another responding FU for 1969. All such individuals were nonresponse.'
   81 - 89 = 'Individuals living in 1968 but who died by the time of the 1969 interview'
         0 = 'Born or moved in after the 1969 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse for 1969 or mover-out nonresponse in 1968 (ER30020=0)'
   ;
   VALUE ER30022F
         1 = 'Head in 1969; 1968 Head who was mover-out nonresponse by the time of the 1969 interview'
         2 = 'Wife in 1969; 1968 Wife who was mover-out nonresponse by the time of the 1969 interview'
         3 = 'Son or daughter, including stepchildren and foster children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative, including in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1969 interview (ER30020>0 and ER30021=0); main family nonresponse for 1969 or mover-out non'
             'response from 1968 (ER30020=0)'
   ;
   VALUE ER30030F
         1 = 'Yes, is disabled'
         2 = 'Yes, requires extra care'
         5 = 'No; in an institution at time of 1969 interview or mover-out nonresponse from 1969 (ER30021=51-89)'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1969 interview (ER30020>0 and ER30021=0); main family nonresponse for 1969 or mover-out non'
             'response from 1968 (ER30020=0)'
   ;
   VALUE ER30044F
    1 - 20 = 'Individuals in the family at the time of the 1970 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1970 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1969 and 1970 interviews but who were not included in another responding FU for 1970. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1969 but who died by the time of the 1970 interview'
         0 = 'Inap.:  born or moved in after the 1970 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1970 or mover-out nonresponse by 1969 (ER30043=0'
             ')'
   ;
   VALUE ER30045F
         1 = 'Head in 1970; 1969 Head who was mover-out nonresponse by the time of the 1970 interview'
         2 = 'Wife in 1970; 1969 Wife who was mover-out nonresponse by the time of the 1970 interview'
         3 = 'Child, stepchild'
         4 = 'Sibling'
         5 = 'Parent'
         6 = 'Grandchild, great-grandchild'
         7 = 'In-law or other relative'
         8 = 'Nonrelative'
         9 = 'Husband of Head'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1970 interview (ER30043>0 and ER30044=0); main family nonresponse by 1970 or mover-out nonr'
             'esponse by 1969 (ER30043=0)'
   ;
   VALUE ER30052F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1970 interview (ER30043>0 and ER30044=0); main family nonresponse by 1970 or mover-out nonr'
             'esponse by 1969 (ER30043=0); Head or Wife in 1970 (ER30044=1-20 and ER30045=1 or 02); did not stop school or individual was age 25 or older (ER30051=5 or 9)'
   ;
   VALUE ER30054F
         1 = 'Yes, is disabled'
         2 = 'Yes, requires extra care'
         5 = 'No; in an institution at time of 1970 interview or mover-out nonresponse from 1970 (ER30044=51-89)'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1970 interview (ER30043>0 and ER30044=0); main family nonresponse by 1970 or mover-out nonr'
             'esponse by 1969 (ER30043=0)'
   ;
   VALUE ER30068F
    1 - 20 = 'Individuals in the family at the time of the 1971 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1971 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1970 and 1971 interviews but who were not included in another responding FU for 1971. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1970 but died by the time of the 1971 interview'
         0 = 'Inap.:  born or moved in after the 1971 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1971 or mover-out nonresponse by 1970 (ER30067=0'
             ')'
   ;
   VALUE ER30069F
         1 = 'Head in 1971; 1970 Head who was mover-out nonresponse by the time of the 1971 interview'
         2 = 'Wife in 1971; 1970 Wife who was mover-out nonresponse by the time of the 1971 interview'
         3 = 'Child, stepchild'
         4 = 'Sibling'
         5 = 'Parent'
         6 = 'Grandchild, great-grandchild'
         7 = 'In-law or other relative'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of family)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1971 interview (ER30067>0 and ER30068=0); main family nonresponse by 1971 or mover-out nonr'
             'esponse by 1970 (ER30067=0)'
   ;
   VALUE ER30076F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1971 interview (ER30067>0 and ER30068=0); main family nonresponse by 1971 or mover-out nonr'
             'esponse by 1970 (ER30067=0); Head or Wife in 1971 (ER30068=1-20 and ER30069=1 or 02); did not stop school or individual was age 25 or older (ER30075=5 or 9)'
   ;
   VALUE ER30092F
    1 - 20 = 'Individuals in the family at the time of the 1972 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1972 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1971 and 1972 interviews but who were not included in another responding FU for 1972. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1971 but who died by the time of the 1972 interview'
         0 = 'Inap.:  born or moved in after the 1972 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1972 or mover-out nonresponse by 1971 (ER30091=0'
             ')'
   ;
   VALUE ER30093F
         1 = 'Head in 1972; 1971 Head who was mover-out nonresponse by the time of the 1972 interview'
         2 = 'Wife in 1972; 1971 Wife who was mover-out nonresponse by the time of the 1972 interview'
         3 = 'Child, stepchild'
         4 = 'Sibling'
         5 = 'Parent'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of the family)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1972 interview (ER30091>0 and ER30092=0); main family nonresponse by 1972 or mover-out nonr'
             'esponse by 1971 (ER30091=0)'
   ;
   VALUE ER30100F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1972 interview (ER30091>0 and ER30092=0); main family nonresponse by 1972 or mover-out nonr'
             'esponse by 1971 (ER30091=0); Head or Wife in 1972 (ER30092=1-20 and ER30093=1 or 02); did not stop school or individual was age 25 or older (ER30099=5 or 9)'
   ;
   VALUE ER30118F
    1 - 20 = 'Individuals in FU at the time of the 1973 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1973 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1972 and 1973 interviews but who were not included in another responding FU for 1973. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1972 but who died by the time of the 1973 interview'
         0 = 'Inap.:  born or moved in after the 1973 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1973 or mover-out nonresponse by 1972 (ER30117=0'
             ')'
   ;
   VALUE ER30119F
         1 = 'Head in 1973; 1972 Head who was mover-out nonresponse by the time of the 1973 interview'
         2 = 'Wife in 1973; 1972 Wife who was mover-out nonresponse by the time of the 1973 interview'
         3 = 'Son or daughter; includes stepchildren or adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1973 interview (ER30117>0 and ER30118=0); main family nonresponse by 1973 or mover-out nonr'
             'esponse by 1972 (ER30117=0)'
   ;
   VALUE ER30126F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1973 or mover-out nonresponse by 1972 (ER30117=0); Head or Wife in 1973 (ER30118=1-20 and E'
             'R30119=1 or 02); born or moved in after the 1973 interview (ER30117>0 and ER30118=0); did not stop school or individual was age 25 or older (ER30125=5 or 9)'
   ;
   VALUE ER30139F
    1 - 20 = 'Individuals in FU at the time of 1974 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1974 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1973 and 1974 interviews but who were not included in another responding FU for 1974. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1973 but who died by the time of the 1974 interview'
         0 = 'Inap.:  born or moved in after the 1974 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1974 or mover-out nonresponse by 1973 (ER30138=0'
             ')'
   ;
   VALUE ER30140F
         1 = 'Head in 1974; 1973 Head who was mover-out nonresponse by the time of the 1974 interview'
         2 = 'Wife in 1974; 1973 Wife who was mover-out nonresponse by the time of the 1974 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1974 interview (ER30138>0 and ER30139=0); main family nonresponse by 1974 or mover-out nonr'
             'esponse by 1973 (ER30138=0)'
   ;
   VALUE ER30147F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1974 interview (ER30138>0 and ER30139=0); main family nonresponse by 1974 or mover-out nonr'
             'esponse by 1973 (ER30138=0); Head or Wife in 1974 (ER30139=1-20 and ER30140=1 or 02); did not stop school or individual was age 25 or older (ER30146=5 or 9)'
   ;
   VALUE ER30161F
    1 - 20 = 'Individuals in FU at the time of the 1975 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1975 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1974 and 1975 interviews but who were not included in another responding FU for 1975. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1974 but who died by the time of the 1975 interview'
         0 = 'Inap.:  born or moved in after the 1975 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1975 or mover-out nonresponse by 1974 (ER30160=0'
             ')'
   ;
   VALUE ER30162F
         1 = 'Head in 1975; 1974 Head who was mover-out nonresponse by the time of the 1975 interview'
         2 = 'Wife in 1975; 1974 Wife who was mover-out nonresponse by the time of the 1975 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1975 interview (ER30160>0 and ER30161=0); main family nonresponse by 1975 or mover-out nonr'
             'esponse by 1974 (ER30160=0)'
   ;
   VALUE ER30169F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1975 or mover-out nonresponse by 1974 (ER30160=0); born or moved in after the 1975 intervie'
             'w (ER30160>0 and ER30161=0); Head or Wife in 1975 (ER30161=1-20 and ER30162=1 or 02); did not stop school or not a person under 25 (ER30168=5 or 9)'
   ;
   VALUE ER30189F
    1 - 20 = 'Individuals in FU at the time of the 1976 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1976 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1975 and 1976 interviews but were not included in another responding FU for 1976. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1975 but who died by the time of the 1976 interview'
         0 = 'Inap.:  born or moved in after the 1976 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1976 or mover-out nonresponse by 1975 (ER30188=0'
             ')'
   ;
   VALUE ER30190F
         1 = 'Head in 1976; 1975 Head who was mover-out nonresponse by the time of the 1976 interview'
         2 = 'Wife in 1976; 1975 Wife who was mover-out nonresponse by the time of the 1976 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1976 interview (ER30188>0 and ER30189=0); main family nonresponse by 1976 or mover-out nonr'
             'esponse by 1975 (ER30188=0)'
   ;
   VALUE ER30197F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1976 or mover-out nonresponse by 1975 (ER30188=0); born or moved in after the 1976 intervie'
             'w (ER30188>0 and ER30189=0); did not stop school or other individual age 25 or older (ER30189=1-20, ER30190=1 or 02 and ER30196=5 or 9)'
   ;
   VALUE ER30218F
    1 - 20 = 'Individuals in FU at the time of the 1977 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1977 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1976 and 1977 interviews but who were not included in another responding FU for 1977. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1976 but who died by the time of the 1977 interview'
         0 = 'Inap.:  born or moved in after the 1977 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1977 or mover-out nonresponse by 1976 (ER30217=0'
             ')'
   ;
   VALUE ER30219F
         1 = 'Head in 1977; 1976 Head who was mover-out nonresponse by the time of the 1977 interview'
         2 = 'Wife in 1977; 1976 Wife who was mover-out nonresponse by the time of the 1977 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1977 interview (ER30217>0 and ER30218=0); main family nonresponse by 1977 or mover-out nonr'
             'esponse by 1976 (ER30217=0)'
   ;
   VALUE ER30226F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1977 interview (ER30217>0 and ER30218=0); main family nonresponse by 1977 or mover-out nonr'
             'esponse by 1976 (ER30217=0); did not stop school or other individual age 25 or older (ER30218=1-20, ER30219=1 or 20 and ER30225=5 or 9)'
   ;
   VALUE ER30247F
    1 - 20 = 'Individuals in FU at the time of the 1978 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1978 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1977 and 1978 interviews but who were not included in another responding FU for 1978. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1977 but who died by the time of the 1978 interview'
         0 = 'Inap.:  born or moved in after the 1978 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1978 or mover-out nonresponse by 1977 (ER30246=0'
             ')'
   ;
   VALUE ER30248F
         1 = 'Head in 1978; 1977 Head who was mover-out nonresponse by the time of the 1978 interview'
         2 = 'Wife in 1978; 1977 Wife who was mover-out nonresponse by the time of the 1978 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1978 interview (ER30246>0 and ER30247=0); main family nonresponse by 1978 or mover-out nonr'
             'esponse by 1977 (ER30246=0)'
   ;
   VALUE ER30255F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1978 interview (ER30246>0 and ER30247=0); main family nonresponse by 1978 or mover-out nonr'
             'esponse by 1977 (ER30246=0); did not stop school or other individual was age 25 or older (ER30247=1-20, ER30248=1 or 02 and ER30254=5 or 9)'
   ;
   VALUE ER30284F
    1 - 20 = 'Individuals in the family at the time of the 1979 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1979 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1978 and 1979 interviews but who were not included in another responding FU for 1979. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1978 but who died by the time of the 1978 interview'
         0 = 'Inap.:  born or moved in after the 1979 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1979 or mover-out nonresponse by 1978 (ER30283=0'
             ')'
   ;
   VALUE ER30285F
         1 = 'Head in 1979; 1978 Head who was mover-out nonresponse by the time of the 1979 interview'
         2 = 'Wife in 1979; 1978 Wife who was mover-out nonresponse by the time of the 1979 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative, includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1979 interview (ER30283>0 and ER30284=0); main family nonresponse by 1979 or mover-out nonr'
             'esponse by 1978 (ER30283=0)'
   ;
   VALUE ER30293F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other; mover-out nonresponse from 1979 only if deceased; NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); in institution in both 1978 and 1979 (ER30284=51-59 and ER30288=0); born or moved in after the 1979 interview (ER30283'
             '>0 and ER30284=0); main family nonresponse by 1979 or mover-out nonresponse by 1978 (ER30283=0); not a person aged 16 or older (ER30286=001-015)'
   ;
   VALUE ER30296F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1979 interview (ER30283>0 and ER30284=0); main family nonresponse by 1979 or mover-out nonr'
             'esponse by 1978 (ER30283=0); in institution in both 1978 and 1979 (ER30284=51-59 and ER30288=0); not a person aged 16 or older (ER30286=001-015)'
   ;
   VALUE ER30314F
    1 - 20 = 'Individuals in the family at the time of the 1980 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1980 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1979 and 1980 interviews but who were not included in another responding FU for 1980. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1979 but who died by the time of the 1980 interview'
         0 = 'Inap.:  born or moved in after the 1980 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1980 or mover-out nonresponse by 1979 (ER30313=0'
             ')'
   ;
   VALUE ER30315F
         1 = 'Head in 1980; 1979 Head who was mover-out nonresponse by the time of the 1980 interview'
         2 = 'Wife in 1980; 1979 Wife who was mover-out nonresponse by the time of the 1980 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Mother or father of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1980 interview (ER30313>0 and ER30314=0); main family nonresponse by 1980 or mover-out nonr'
             'esponse by 1979 (ER30313=0)'
   ;
   VALUE ER30323F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1980 interview (ER30313>0 and ER30314=0); main family nonresponse by 1980 or mover-out nonr'
             'esponse by 1979 (ER30313=0); mover-out nonresponse for 1980 only if deceased (ER30314=81-89); in an institution in both 1979 and 1980 (ER30314=51-59 and ER30318=0); not a person aged 16 or older (ER30'
             '316=001-015)'
   ;
   VALUE ER30326F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1980 interview (ER30313>0 and ER30314=0); main family nonresponse by 1980 or mover-out nonr'
             'esponse by 1979 (ER30313=0); in an institution in both 1979 and 1980 (ER30314=51-59 and ER30318=0); not a person aged 16 or older (ER30316=001-015)'
   ;
   VALUE ER30344F
    1 - 20 = 'Individuals in the family at the time of the 1981 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1981 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1980 and 1981 interviews but who were not included in another responding FU for 1981. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1980 but who died by the time of the 1981 interview'
         0 = 'Inap.:  born or moved in after the 1981 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1981 or splitoff nonresponse by 1980 (ER30343=0)'
             ' '
   ;
   VALUE ER30345F
         1 = 'Head in 1981; 1980 Head who was mover-out nonresponse by the time of the 1981 interview'
         2 = 'Wife in 1981; 1980 Wife who was mover-out nonresponse by the time of the 1981 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1981 interview (ER30343>0 and ER30344=0); main family nonresponse by 1981 or mover-out nonr'
             'esponse by 1980 (ER30343=0)'
   ;
   VALUE ER30353F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1981 interview (ER30343>0 and ER30344=0); main family nonresponse by 1981 or mover-out nonr'
             'esponse by 1980 (ER30343=0); mover-out nonresponse for 1981 only if deceased (ER30344=81-89); in an institution in both 1980 and 1981 (ER30344=51-59 and ER30348=0); not a person aged 16 or older (ER30'
             '346=001-015)'
   ;
   VALUE ER30356F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1981 interview (ER30343>0 and ER30344=0); main family nonresponse by 1981 or mover-out nonr'
             'esponse by 1980 (ER30343=0); in an institution in both 1980 and 1981 (ER30344=51-59 and ER30348=0); not a person aged 16 or older (ER30346=001-015)'
   ;
   VALUE ER30374F
    1 - 20 = 'Individuals in the family at the time of the 1982 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1982 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1981 and 1982 interviews but who were not included in another responding FU for 1982. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1981 but died by the time of the 1982 interview'
         0 = 'Inap.:  born or moved in after the 1982 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1982 or mover-out nonresponse by 1981 (ER30373=0'
             ')'
   ;
   VALUE ER30375F
         1 = 'Head in 1982; 1981 Head who was mover-out nonresponse by the time of the 1982 interview'
         2 = 'Wife in 1982; 1981 Wife who was mover-out nonresponse by the time of the 1982 interview'
         3 = 'Son or daughter; includes stepchildren and adopted children'
         4 = 'Brother or sister of Head'
         5 = 'Father or mother of Head'
         6 = 'Grandchild or great-grandchild'
         7 = 'Other relative; includes in-laws'
         8 = 'Nonrelative'
         9 = 'Husband of Head (i.e., Wife was Head of FU)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1982 interview (ER30373>0 and ER30374=0); main family nonresponse by 1982 or mover-out nonr'
             'esponse by 1981 (ER30373=0)'
   ;
   VALUE ER30382F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1982 interview (ER30373>0 and ER30374=0); main family nonresponse by 1982 or mover-out nonr'
             'esponse by 1981 (ER30373=0); mover-out nonresponse for 1982 only if deceased (ER30374=81-89); in an institution in both 1981 and 1982 (ER30374=51-59 and ER30378=0); not a person aged 16 or older (ER30'
             '376=001-015)'
   ;
   VALUE ER30384F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1982 interview (ER30373>0 and ER30374=0); main family nonresponse by 1982 or mover-out nonr'
             'esponse by 1981 (ER30373=0); in an institution in both 1981 and 1982 (ER30374=51-59 and ER30378=0); not a person aged 16 or older (ER30376=001-015)'
   ;
   VALUE ER30400F
    1 - 20 = 'Individuals in the family at the time of the 1983 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1983 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions between the 1982 and 1983 interviews but who were not included in another responding FU for 1983. All such individuals were nonresponse.'
   81 - 89 = 'Individuals who were living in 1982 but died by the time of the 1983 interview'
         0 = 'Inap.:  born or moved in after the 1983 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1983 or mover-out nonresponse by 1982 (ER30399=0'
             ')'
   ;
   VALUE ER30401F
        10 = 'Head in 1983; 1982 Head who was mover-out nonresponse by the time of the 1983 interview'
        20 = 'Legal Wife in 1983; 1982 Wife who was mover-out nonresponse by the time of the 1983 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1981 family, since consecutive interviews may be taken less or more than twelve months apart; 1982 "Wif'
             'e" who was mover-out nonresponse by the time of the 1983 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20),  but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1983 interview (ER30399>0 and ER30400=0); main family nonresponse by 1983 or mover-out nonr'
             'esponse by 1982 (ER30399=0)'
   ;
   VALUE ER30411F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1983 interview (ER30399>0 and ER30400=0); main family nonresponse by 1983 or mover-out nonr'
             'esponse by 1982 (ER30399=0); mover-out nonresponse for 1983 only if deceased (ER30400=81-89); in an institution in both 1982 and 1983 (ER30400=51-59 and ER30406=0); not a person aged 16 or older (ER30'
             '402=001-015)'
   ;
   VALUE ER30413F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1983 interview (ER30399>0 and ER30400=0); main family nonresponse by 1983 or mover-out nonr'
             'esponse by 1982 (ER30399=0); in an institution in both 1982 and 1983 (ER30400=51-59 and ER30406=0); not a person aged 16 or older (ER30402=001-015)'
   ;
   VALUE ER30430F
    1 - 20 = 'Individuals in the family at the time of the 1984 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1984 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1983 and 1984 interviews'
   81 - 89 = 'Individuals who were living in 1983 but died by the time of the 1984 interview'
         0 = 'Inap.:  born or moved in after the 1984 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1984 or mover-out nonresponse by 1983 (ER30429=0'
             ')'
   ;
   VALUE ER30431F
        10 = 'Head in 1984; 1983 Head who was mover-out nonresponse by the time of the 1984 interview'
        20 = 'Legal Wife in 1984; 1983 Wife who was mover-out nonresponse by the time of the 1984 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1982 family, since consecutive interviews may be taken less or more than twelve months apart; 1983 "Wif'
             'e" who was mover-out nonresponse by the time of the 1984 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1984 interview (ER30429>0 and ER30430=0); main family nonresponse by 1984 or mover-out nonr'
             'esponse by 1983 (ER30429=0)'
   ;
   VALUE ER30441F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1984 interview (ER30429>0 and ER30430=0); main family nonresponse by 1984 or mover-out nonr'
             'esponse by 1983 (ER30429=0); mover-out nonresponse for 1984 only if deceased (ER30430=81-89); in an institution in both 1983 and 1984 (ER30430=51-59 and ER30436=0); not a person aged 16 or older (ER30'
             '432=001-015)'
   ;
   VALUE ER30443F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1984 interview (ER30429>0 and ER30430=0); main family nonresponse by 1984 or mover-out nonr'
             'esponse by 1983 (ER30429=0); in an institution in both 1983 and 1984 (ER30430=51-59 and ER30436=0); not a person aged 16 or older (ER30432=001-015)'
   ;
   VALUE ER30464F
    1 - 20 = 'Individuals in the family at the time of the 1985 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1985 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1984 and 1985 interviews'
   81 - 89 = 'Individuals who were living in 1984 but died by the time of the 1985 interview'
         0 = 'Inap.:  born or moved in after the 1985 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1985 or mover-out nonresponse by 1984 (ER30463=0'
             ')'
   ;
   VALUE ER30465F
        10 = 'Head in 1985; 1984 Head who was mover-out nonresponse by the time of the 1985 interview'
        20 = 'Legal Wife in 1985; 1984 Wife who was mover-out nonresponse by the time of the 1985 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1983 family, since consecutive interviews may be taken less or more than twelve months apart; 1984 "Wif'
             'e" who was mover-out nonresponse by the time of the 1985 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1985 interview (ER30463>0 and ER30464=0); main family nonresponse by 1985 or mover-out nonr'
             'esponse by 1984 (ER30463=0)'
   ;
   VALUE ER30474F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1985 interview (ER30463>0 and ER30464=0); main family nonresponse by 1985 or mover-out nonr'
             'esponse by 1984 (ER30463=0); mover-out nonresponse for 1985 only if deceased (ER30464=81-89); in an institution in both 1984 and 1985 (ER30464=51-59 and ER30470=0); not a person aged 16 or older (ER30'
             '466=001-015)'
   ;
   VALUE ER30478F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1985 interview (ER30463>0 and ER30464=0); main family nonresponse by 1985 or mover-out nonr'
             'esponse by 1984 (ER30463=0); in an institution in both 1984 and 1985 (ER30464=51-59 and ER30470=0); not a person aged 16 or older (ER30466=001-015)'
   ;
   VALUE ER30499F
    1 - 20 = 'Individuals in the family at the time of the 1986 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1986 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1985 and 1986 interviews'
   81 - 89 = 'Individuals who were living in 1985 but died by the time of the 1986 interview'
         0 = 'Inap.:  born or moved in after the 1986 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1986 or mover-out nonresponse by 1985 (ER30498=0'
             ')'
   ;
   VALUE ER30500F
        10 = 'Head in 1986; 1985 Head who was mover-out nonresponse by the time of the 1986 interview'
        20 = 'Legal Wife in 1986; 1985 Wife who was mover-out nonresponse by the time of the 1986 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1985 family, since consecutive interviews may be taken less or more than twelve months apart; 1985 "Wif'
             'e" who was mover-out nonresponse by the time of the 1986 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1986 interview (ER30498>0 and ER30499=0); main family nonresponse by 1986 or mover-out nonr'
             'esponse by 1985 (ER30498=0)'
   ;
   VALUE ER30509F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1986 interview (ER30498>0 and ER30499=0); main family nonresponse by 1986 or mover-out nonr'
             'esponse by 1985 (ER30498=0); mover-out nonresponse for 1986 only if deceased (ER30499=81-89); in an institution in both 1985 and 1986 (ER30499=51-59 and ER30505=0); not a person aged 16 or older (ER30'
             '501=001-015)'
   ;
   VALUE ER30513F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1986 interview (ER30498>0 and ER30499=0); main family nonresponse by 1986 or mover-out nonr'
             'esponse by 1985 (ER30498=0); in an institution in both 1985 and 1986 (ER30499=51-59 and ER30505=0); not a person aged 16 or older (ER30501=001-015)'
   ;
   VALUE ER30536F
    1 - 20 = 'Individuals in the family at the time of the 1987 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1987 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1986 and 1987 interviews'
   81 - 89 = 'Individuals who were living in 1986 but died by the time of the 1987 interview'
         0 = 'Inap.:  born or moved in after the 1987 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1987 or mover-out nonresponse by 1986 (ER30535=0'
             ')'
   ;
   VALUE ER30537F
        10 = 'Head in 1987; 1986 Head who was mover-out nonresponse by the time of the 1987 interview'
        20 = 'Legal Wife in 1987; 1986 Wife who was mover-out nonresponse by the time of the 1987 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1986 family, since consecutive interviews may be taken less or more than twelve months apart; 1986 "Wif'
             'e" who was mover-out nonresponse by the time of the 1987 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1987 interview (ER30535>0 and ER30536=0); main family nonresponse by 1987 or mover-out nonr'
             'esponse by 1986 (ER30535=0)'
   ;
   VALUE ER30545F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1987 interview (ER30535>0 and ER30536=0); main family nonresponse by 1987 or mover-out nonr'
             'esponse by 1986 (ER30535=0); mover-out nonresponse for 1987 only if deceased (ER30536=81-89); in an institution in both 1986 and 1987 (ER30536=51-59 and ER30542=0); not a person aged 16 or older (ER30'
             '538=001-015)'
   ;
   VALUE ER30549F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1987 interview (ER30535>0 and ER30536=0); main family nonresponse by 1987 or mover-out nonr'
             'esponse by 1986 (ER30535=0); in an institution in both 1986 and 1987 (ER30536=51-59 and ER30542=0); not a person aged 16 or older (ER30538=001-015)'
   ;
   VALUE ER30571F
    1 - 20 = 'Individuals in the family at the time of the 1988 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1988 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1987 and 1988 interviews'
   81 - 89 = 'Individuals who were living in 1987 but died by the time of the 1988 interview'
         0 = 'Inap.:  born or moved in after the 1988 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1988 or mover-out nonresponse by 1987 (ER30570=0'
             ')'
   ;
   VALUE ER30572F
        10 = 'Head in 1988; 1987 Head who was mover-out nonresponse by the time of the 1988 interview'
        20 = 'Legal Wife in 1988; 1987 Wife who was mover-out nonresponse by the time of the 1988 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1987 family, since consecutive interviews may be taken less or more than twelve months apart; 1987 "Wif'
             'e" who was mover-out nonresponse by the time of the 1988 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1988 interview (ER30570>0 and ER30571=0); main family nonresponse by 1988 or mover-out nonr'
             'esponse by 1987 (ER30570=0)'
   ;
   VALUE ER30580F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1988 or mover-out nonresponse by 1987 (ER30570=0); born or moved in after the 1988 intervie'
             'w (ER30570>0 and ER30571=0); mover-out nonresponse for 1988 only if deceased (ER30571=81-89); in an institution in both 1987 and 1988 (ER30571=51-59 and ER30577=0); not a person aged 16 or older (ER30'
             '573=001-015)'
   ;
   VALUE ER30584F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1988 or mover-out nonresponse by 1987 (ER30570=0); born or moved in after the 1988 intervie'
             'w (ER30570>0 and ER30571=0); in an institution in both 1987 and 1988 (ER30571=51-59 and ER30577=0); not a person aged 16 or older (ER30573=001-015)'
   ;
   VALUE ER30607F
    1 - 20 = 'Individuals in the family at the time of the 1989 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1989 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1988 and 1989 interviews'
   81 - 89 = 'Individuals who were living in 1988 but died by the time of the 1989 interview'
         0 = 'Inap.:  born or moved in after the 1989 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1989 or mover-out nonresponse by 1988 (ER30606=0'
             ')'
   ;
   VALUE ER30608F
        10 = 'Head in 1989; 1988 Head who was mover-out nonresponse by the time of the 1989 interview'
        20 = 'Legal Wife in 1989; 1988 Wife who was mover-out nonresponse by the time of the 1989 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1988 family, since consecutive interviews may be taken less or more than twelve months apart; 1988 "Wif'
             'e" who was mover-out nonresponse by the time of the 1989 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1989 interview (ER30606>0 and ER30607=0); main family nonresponse by 1989 or mover-out nonr'
             'esponse by 1988 (ER30606=0)'
   ;
   VALUE ER30616F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1989 interview (ER30606>0 and ER30607=0); main family nonresponse by 1989 or mover-out nonr'
             'esponse by 1988 (ER30606=0); mover-out nonresponse for 1989 only if deceased (ER30607=81-89); in an institution in both 1988 and 1989 (ER30607=51-59 and ER30613=0); not a person aged 16 or older (ER30'
             '609=001-015)'
   ;
   VALUE ER30620F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1989 interview (ER30606>0 and ER30607=0); main family nonresponse by 1989 or mover-out nonr'
             'esponse by 1988 (ER30606=0); in an institution in both 1988 and 1989 (ER30607=51-59 and ER30613=0); not a person aged 16 or older (ER30609=001-015)'
   ;
   VALUE ER30643F
    1 - 20 = 'Individuals in the family at the time of the 1990 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1990 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1989 and 1990 interviews'
   81 - 89 = 'Individuals who were living in 1989 but died by the time of the 1990 interview'
         0 = 'Inap.:  born or moved in after the 1990 interview; from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989'
             '(ER30642=0)'
   ;
   VALUE ER30644F
        10 = 'Head in 1990; 1989 Head who was mover-out nonresponse by the time of the 1990 interview'
        20 = 'Legal Wife in 1990; 1989 Wife who was mover-out nonresponse by the time of the 1990 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1989 family, since consecutive interviews may be taken less or more than twelve months apart; 1989 "Wif'
             'e" who was mover-out nonresponse by the time of the 1990 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989 (ER30642=0); born or moved in after the 199'
             '0 interview (ER30642>0 and ER30643=0)'
   ;
   VALUE ER30653F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989 (ER30642=0); born or moved in after the 199'
             '0 interview (ER30642>0 and ER30643=0); mover-out nonresponse for 1990 only if deceased (ER30643=81-89); in an institution in both 1989 and 1990 (ER30643=51-59 and ER30649=0); not a person aged 16 or o'
             'lder (ER30645=001-015)'
   ;
   VALUE ER30657F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989 (ER30642=0); born or moved in after the 199'
             '0 interview (ER30642>0 and ER30643=0); in an institution in both 1989 and 1990 (ER30643=51-59 and ER30649=0); not a person aged 16 or older (ER30645=001-015)'
   ;
   VALUE ER30690F
    1 - 20 = 'Individuals in the family at the time of the 1991 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1991 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1990 and 1991 interviews'
   81 - 89 = 'Individuals who were living in 1990 but died by the time of the 1991 interview'
         0 = 'Inap.:  born or moved in after the 1991 interview; from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990'
             '(ER30689=0)'
   ;
   VALUE ER30691F
        10 = 'Head in 1991; 1990 Head who was mover-out nonresponse by the time of the 1991 interview'
        20 = 'Legal Wife in 1991; 1990 Wife who was mover-out nonresponse by the time of the 1991 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1990 family, since consecutive interviews may be taken less or more than twelve months apart; 1990 "Wif'
             'e" who was mover-out nonresponse by the time of the 1991 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990 (ER30689=0); born or moved in after the 199'
             '1 interview (ER30689>0 and ER30690=0)'
   ;
   VALUE ER30699F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990 (ER30689=0); born or moved in after the 199'
             '1 interview (ER30689>0 and ER30690=0); mover-out nonresponse for 1991 only if deceased (ER30690=81-89); in an institution in both 1990 and 1991 (ER30690=51-59 and ER30696=0); not a person aged 16 or o'
             'lder (ER30692=001-015)'
   ;
   VALUE ER30703F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990 (ER30689=0); born or moved in after the 199'
             '1 interview (ER30689>0 and ER30690=0); in an institution in both 1990 and 1991 (ER30690=51-59 and ER30696=0); not a person aged 16 or older (ER30692=001-015)'
   ;
   VALUE ER30734F
    1 - 20 = 'Individuals in the family at the time of the 1992 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1992 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1991 and 1992 interviews'
   81 - 89 = 'Individuals who were living in 1991 but died by the time of the 1992 interview'
         0 = 'Inap.:  born or moved in after the 1992 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0)'
   ;
   VALUE ER30735F
        10 = 'Head in 1992; 1991 Head who was mover-out nonresponse by the time of the 1992 interview'
        20 = 'Legal Wife in 1992; 1991 Wife who was mover-out nonresponse by the time of the 1992 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1991 family, since consecutive interviews may be taken less or more than twelve months apart; 1991 "Wif'
             'e" who was mover-out nonresponse by the time of the 1992 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0); born or moved in after the 1992 interview (ER30733>0 and ER307'
             '34=0)'
   ;
   VALUE ER30744F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0); mover-out nonresponse for 1992 only if deceased (ER30734=81-89'
             '); in an institution in both 1991 and 1992 (ER30734=51-59 and ER30740=0); not a person aged 16 or older (ER30736=001-015); born or moved in after the 1992 interview (ER30733>0 and ER30734=0)'
   ;
   VALUE ER30748F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA; DK'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0); in an institution in both 1991 and 1992 (ER30734=51-59 and ER3'
             '0740=0); not a person aged 16 or older (ER30736=001-015); born or moved in after the 1992 interview (ER30733>0 and ER30734=0)'
   ;
   VALUE ER30807F
    1 - 20 = 'Individuals in the family at the time of the 1993 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1993 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1992 and 1993 interviews'
   81 - 89 = 'Individuals who were living in 1992 but died by the time of the 1993 interview'
         0 = 'Inap.:  born or moved in after the 1993 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0)'
   ;
   VALUE ER30808F
        10 = 'Head in 1993; 1992 Head who was mover-out nonresponse by the time of the 1993 interview'
        20 = 'Legal Wife in 1993; 1992 Wife who was mover-out nonresponse by the time of the 1993 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1992 family, since consecutive interviews may be taken less or more than twelve months apart; 1992 "Wif'
             'e" who was mover-out nonresponse by the time of the 1993 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0); born or moved in after the 1993 interview (ER30806>0 and ER308'
             '07=0)'
   ;
   VALUE ER30816F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0); born or moved in after the 1993 interview (ER30806>0 and ER308'
             '07=0); mover-out nonresponse for 1993 only if deceased (ER30807=81-89); in an institution in both 1992 and 1993 (ER30807=51-59 and ER30813=0); not a person aged 16 or older (ER30809=001-015)'
   ;
   VALUE ER30820F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'NA'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0); born or moved in after the 1993 interview (ER30806>0 and ER308'
             '07=0); in an institution in both 1992 and 1993 (ER30807=51-59 and ER30813=0); not a person aged 16 or older (ER30809=001-015)'
   ;
   VALUE ER32000F
         1 = 'Male'
         2 = 'Female'
         9 = 'NA'
   ;
   VALUE ER32006F
         0 = 'This individual is nonsample and not part of the elderly group (ER30002=170-229 and ER30609<64 and ER30645<64 and ER30692<64 and ER30736<64 and ER30809<64 and ER33104<64)'
         1 = 'This individual is original sample (ER30002=001-026)'
         2 = 'This individual is born-in sample (ER30002=030-169)'
         3 = 'This individual is moved-in sample'
         4 = 'This individual is joint inclusion sample'
         5 = 'This individual was a followable nonsample parent'
         6 = 'This individual is nonsample elderly (ER30002=170-229 and ER30609=64-120 or ER30645=64-120 or ER30692=64-120 or ER30736=64-120 or ER30809=64-120 or ER33104=64-120)'
   ;
   VALUE ER33102F
    1 - 20 = 'Individuals in the family at the time of the 1994 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1994 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1993 and 1994 interviews'
   81 - 89 = 'Individuals who were living in 1993 but died by the time of the 1994 interview'
         0 = 'Inap.:  born or moved in after the 1994 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0)'
   ;
   VALUE ER33103F
        10 = 'Head in 1994; 1993 Head who was mover-out nonresponse by the time of the 1994 interview'
        20 = 'Legal Wife in 1994; 1993 Wife who was mover-out nonresponse by the time of the 1994 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1993 family, since consecutive interviews may be taken less or more than twelve months apart; 1993 "Wif'
             'e" who was mover-out nonresponse by the time of the 1994 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0)'
   ;
   VALUE ER33111F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0); mover-out nonresponse for 1994 only if deceased (ER33102=81-89'
             '); in an institution in both 1993 and 1994 (ER33102=51-59 and ER33108=0); not a person aged 16 or older (ER33104=001-015)'
   ;
   VALUE ER33115F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0); in an institution in both 1993 and 1994 (ER33102=51-59 and ER3'
             '3108=0); born or moved in after the 1994 interview (ER33101>0 and ER33102=0); not a person aged 16 or older (ER33104=001-015)'
   ;
   VALUE ER33202F
    1 - 20 = 'Individuals in the family at the time of the 1995 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1995 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1994 and 1995 interviews'
   81 - 89 = 'Individuals who were living in 1994 but died by the time of the 1995 interview'
         0 = 'Inap.:  born or moved in after the 1995 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0)'
   ;
   VALUE ER33203F
        10 = 'Head in 1995; 1994 Head who was mover-out nonresponse by the time of the 1995 interview'
        20 = 'Legal Wife in 1995; 1994 Wife who was mover-out nonresponse by the time of the 1995 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1994 family, since consecutive interviews may be taken less or more than twelve months apart; 1994 "Wif'
             'e" who was mover-out nonresponse by the time of the 1995 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0); born or moved in after the 1995 interview (ER33201>0 and ER332'
             '02=0)'
   ;
   VALUE ER33211F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0); born or moved in after the 1995 interview (ER33201>0 and ER332'
             '02=0); mover-out nonresponse for 1995 only if deceased (ER33202=81-89); in an institution in both 1994 and 1995 (ER33202=51-59 and ER33208=0); not a person aged 16 or older (ER33204=001-015)'
   ;
   VALUE ER33215F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0); in an institution in both 1994 and 1995 (ER33202=51-59 and ER3'
             '3208=0); born or moved in after the 1995 interview (ER33201>0 and ER33202=0); not a person aged 16 or older (ER33204=001-015)'
   ;
   VALUE ER33227F
    1 - 15 = 'Actual grade or year completed'
        16 = 'Graduated college, bachelor''s degree'
        17 = 'At least one year postgraduate, or more'
        93 = 'Ungraded'
        94 = 'Preschool'
        95 = 'Kindergarten'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0); born or moved in after the 1995 interview (ER33201>0 and ER332'
             '02=0); under age 5 or over age 49 (ER33204=001-004, 050-125 or 999); in school (ER33220=1); never in school (ER33225=9996)'
   ;
   VALUE ER33302F
    1 - 20 = 'Individuals in the family at the time of the 1996 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1996 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1995 and 1996 interviews'
   81 - 89 = 'Individuals who were living in 1995 but died by the time of the 1996 interview'
         0 = 'Inap.:  born or moved in after the 1996 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0'
             ')'
   ;
   VALUE ER33303F
        10 = 'Head in 1996; 1995 Head who was mover-out nonresponse by the time of the 1996 interview'
        20 = 'Legal Wife in 1996; 1995 Wife who was mover-out nonresponse by the time of the 1996 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1995 family, since consecutive interviews may be taken less or more than twelve months apart; 1995 "Wif'
             'e" who was mover-out nonresponse by the time of the 1996 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0); born or moved in after the 1996 intervie'
             'w (ER33301>0 and ER33302=0)'
   ;
   VALUE ER33311F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0); born or moved in after the 1996 intervie'
             'w (ER33301>0 and ER33302=0); mover-out nonresponse for 1996 only if deceased (ER33302=81-89); in an institution in both 1995 and 1996 (ER33302=51-59 and ER33308=0); not a person aged 16 or older (ER33'
             '304=001-015)'
   ;
   VALUE ER33315F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0); in an institution in both 1995 and 1996'
             '(ER33302=51-59 and ER33308=0); born or moved in after the 1996 interview (ER33301>0 and ER33302=0); not a person aged 16 or older (ER33304=001-015)'
   ;
   VALUE ER33402F
    1 - 20 = 'Individuals in the family at the time of the 1997 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1997 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1996 and 1997 interviews'
   81 - 89 = 'Individuals who were living in 1996 but died by the time of the 1997 interview'
         0 = 'Inap.:  born or moved in after the 1997 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1997 or mover-out nonresponse by 1996 (ER33401=0'
             ')'
   ;
   VALUE ER33403F
        10 = 'Head in 1997; 1996 Head who was mover-out nonresponse by the time of the 1997 interview'
        20 = 'Legal Wife in 1997; 1996 Wife who was mover-out nonresponse by the time of the 1997 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1996 family, since consecutive interviews may be taken less or more than twelve months apart; 1996 "Wif'
             'e" who was mover-out nonresponse by the time of the 1997 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap. from Immigrant Sample added in 1999, from Immigrant Sample added in 2017 or Latino samples (ER30001=3442-3511, 4001-4851, 7001-9308); main family nonresponse by 1997 or mover-out nonresponse by'
             '1996 (ER33401=0); born or moved in after the 1997 interview (ER33401>0 and ER33402=0)'
   ;
   VALUE ER33411F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Immigrant 99 recontact, Immigrant 17 or Latino samples (ER30001=3442-3511, 4001-4851, 7001-9308); main family nonresponse by 1997 or mover-out nonresponse by 1996 (ER33401=0); born or mov'
             'ed in after the 1997 interview (ER33401>0 and ER33402=0); mover-out nonresponse for 1997 only if deceased (ER33402=81-89); in an institution in both 1996 and 1997 (ER33402=51-59 and ER33408=0); not a'
             'person aged 16 or older (ER33404=001-015)'
   ;
   VALUE ER33415F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Immigrant 99 recontact, Immigrant 17 or Latino samples (ER30001=3442-3511,4001-4851,7001-9308); main family nonresponse by 1997 or mover-out nonresponse by 1996 (ER33401=0); in an institu'
             'tion in both 1996 and 1997 (ER33402=51-59 and ER33408=0); born or moved in after the 1997 interview (ER33401>0 and ER33402=0); not a person aged 16 or older (ER33404=001-015)'
   ;
   VALUE ER33502F
    1 - 20 = 'Individuals in the family at the time of the 1999 interview'
   51 - 59 = 'Individuals in institutions at the time of the 1999 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1997 and 1999 interviews'
   81 - 89 = 'Individuals who were living in 1997 but died by the time of the 1999 interview'
         0 = 'Inap.:  born or moved in after the 1999 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1'
             '997 (ER33501=0)'
   ;
   VALUE ER33503F
        10 = 'Head in 1999; 1997 Head who was mover-out nonresponse by the time of the 1999 interview'
        20 = 'Legal Wife in 1999; 1997 Wife who was mover-out nonresponse by the time of the 1999 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 1997 "Wife" who was mover-out nonresponse by the time of the 1999 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1997 (ER33501=0); born or moved in after the'
             ' 1999 interview (ER33501>0 and ER33502=0)'
   ;
   VALUE ER33512F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1997 (ER33501=0); born or moved in after the'
             ' 1999 interview (ER33501>0 and ER33502=0); mover-out nonresponse for 1999 only if deceased (ER33502=81-89); in an institution in both 1997 and 1999 (ER33502=51-59 and ER33508=0); not a person aged 16'
             'or older (ER33504=001-015)'
   ;
   VALUE ER33516F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1997 (ER33501=0);  in an institution in both'
             ' 1997 and 1999 (ER33502=51-59 and ER33508=0); associated with a 1999 FU but actually moved out before 1998 (ER33508=5, 6, or 8 and ER33510<1998) or born or moved in after the 1999 interview (ER33501>0'
             ' and ER33502=0);  not a person aged 16 or older (ER33504=001-015)'
   ;
   VALUE ER33602F
    1 - 20 = 'Individuals in the family at the time of the 2001 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2001 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 1999 and 2001 interviews'
   81 - 89 = 'Individuals who were living in 1999 but died by the time of the 2001 interview'
         0 = 'Inap.:  born or moved in after the 2001 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1'
             '999 (ER33601=0)'
   ;
   VALUE ER33603F
        10 = 'Head in 2001; 1999 Head who was mover-out nonresponse by the time of the 2001 interview'
        20 = 'Legal Wife in 2001; 1999 Wife who was mover-out nonresponse by the time of the 2001 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 1999 "Wife" who was mover-out nonresponse by the time of the 2001 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1999 (ER33601=0); born or moved in after the'
             ' 2001 interview (ER33601>0 and ER33602=0)'
   ;
   VALUE ER33612F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1999 (ER33601=0); mover-out nonresponse for'
             '2001 only if deceased (ER33602=81-89); in an institution in both 1999 and 2001 (ER33602=51-59 and ER33608=0); not a person aged 16 or older (ER33604=001-015); born or moved in after the 2001 interview'
             ' (ER33601>0 and ER33602=0)'
   ;
   VALUE ER33616F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1999 (ER33601=0); in an institution in both'
             '1999 and 2001 (ER33602=51-59 and ER33608=0); associated with a 2001 FU but moved out before 2000 (ER33608=5, 6, or 8 and ER33610<2000) or born or moved in after the 2001 interview (ER33601>0 and ER336'
             '02=0); not a person aged 16 or older (ER33604=001-015, 999)'
   ;
   VALUE ER33702F
    1 - 20 = 'Individuals in the family at the time of the 2003 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2003 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2001 and 2003 interviews'
   81 - 89 = 'Individuals who were living in 2001 but died by the time of the 2003 interview'
         0 = 'Inap.:  born or moved in after the 2003 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2'
             '001 (ER33701=0)'
   ;
   VALUE ER33703F
        10 = 'Head in 2003; 2001 Head who was mover-out nonresponse by the time of the 2003 interview'
        20 = 'Legal Wife in 2003; 2001 Wife who was mover-out nonresponse by the time of the 2003 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 2001 "Wife" who was mover-out nonresponse by the time of the 2003 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister.'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20); those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20); those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2001 (ER33701=0); born or moved in after the'
             ' 2003 interview (ER33701>0 and ER33702=0)'
   ;
   VALUE ER33712F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2001 (ER33701=0); born or moved in after the'
             ' 2003 interview (ER33701>0 and ER33702=0); mover-out nonresponse for 2003, only if deceased (ER33702=81-89); in an institution in both 2001 and 2003 (ER33702=51-59 and ER33708=0); not a person aged 16'
             ' or older (ER33704=001-015); associated with 2003 FU but moved out before 2002 (ER33708=5, 6, or 8 and ER33710<2002) or moved in in 2003 (ER33708=1 and ER33710=2003)'
   ;
   VALUE ER33716F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2001 (ER33701=0); born or moved in after the'
             ' 2003 interview (ER33701>0 and ER33702=0); in an institution in both 2001 and 2003 (ER33702=51-59 and ER33708=0); associated with 2003 FU but actually moved out before 2002 (ER33708=5, 6, or 8 and ER3'
             '3710<2002) or moved in in 2003 (ER33708=1 and ER33710=2003); not a person aged 16 or older (ER33704=001-015, 999)'
   ;
   VALUE ER33802F
    1 - 20 = 'Individuals in the family at the time of the 2005 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2005 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2003 and 2005 interviews'
   81 - 89 = 'Individuals who were living in 2003 but died by the time of the 2005 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0)'
   ;
   VALUE ER33803F
        10 = 'Head in 2005; 2003 Head who was mover-out nonresponse by the time of the 2005 interview'
        20 = 'Legal Wife in 2005; 2003 Wife who was mover-out nonresponse by the time of the 2005 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 2003 "Wife" who was mover-out nonresponse by the time of the 2005 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0)'
   ;
   VALUE ER33813F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0); mover-out nonresponse for'
             '2005, only if deceased (ER33802=81-89); in an institution in both 2003 and 2005 (ER33802=51-59 and ER33808=0); not a person aged 16 or older (ER33804=001-015); associated with 2005 FU but moved out be'
             'fore 2004 (ER33808=5, 6, or 8 and ER33810<2004) or moved in in 2005 (ER33808=1 and ER33810=2005)'
   ;
   VALUE ER33817F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0); in an institution in both'
             '2003 and 2005 (ER33802=51-59 and ER33808=0); not a person aged 16 or older (ER33804=001-015, 999); associated with 2005 FU but actually moved out before 2004 (ER33808=5, 6, or 8 and ER33810<2004) or m'
             'oved in in 2005 (ER33808=1 and ER33810=2005)'
   ;
   VALUE ER33902F
    1 - 20 = 'Individuals in the family at the time of the 2007 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2007 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2005 and 2007 interviews'
   81 - 89 = 'Individuals who were living in 2005 but died by the time of the 2007 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0)'
   ;
   VALUE ER33903F
        10 = 'Head in 2007; 2005 Head who was mover-out nonresponse by the time of the 2007 interview'
        20 = 'Legal Wife in 2007; 2005 Wife who was mover-out nonresponse by the time of the 2007 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 2005 "Wife" who was mover-out nonresponse by the time of the 2007 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0)'
   ;
   VALUE ER33913F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0); mover-out nonresponse for'
             '2007, only if deceased (ER33902=81-89); in an institution in both 2005 and 2007 (ER33902=51-59 and ER33908=0); not a person aged 16 or older (ER33904=001-015); associated with 2007 FU but moved out be'
             'fore 2006 (ER33908=5, 6, or 8 and ER33910<2006) or moved in in 2007 (ER33908=1 and ER33910=2007)'
   ;
   VALUE ER33917F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0); in an institution in both'
             '2005 and 2007 (ER33902=51-59 and ER33908=0); not a person aged 16 or older (ER33904=001-015, 999); associated with 2007 FU but actually moved out before 2006 (ER33908=5, 6, or 8 and ER33910<2006) or m'
             'oved in in 2007 (ER33908=1 and ER33910=2007)'
   ;
   VALUE ER34002F
    1 - 20 = 'Individuals in the family at the time of the 2009 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2009 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2007 and 2009 interviews'
   81 - 89 = 'Individuals who were living in 2007 but died by the time of the 2009 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34001=0)'
   ;
   VALUE ER34003F
        10 = 'Head in 2009; 2007 Head who was mover-out nonresponse by the time of the 2009 interview'
        20 = 'Legal Wife in 2009; 2007 Wife who was mover-out nonresponse by the time of the 2009 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 2007 "Wife" who was mover-out nonresponse by the time of the 2009 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34002=0)'
   ;
   VALUE ER34016F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34001=0); mover-out nonresponse for'
             '2009, only if deceased (ER34002=81-89); in an institution in both 2007 and 2009 (ER34002=51-59 and ER34008=0); not a person aged 16 or older (ER34004=001-015); associated with 2009 FU but moved out be'
             'fore 2008 (ER34008=5, 6, or 8 and ER34010<2008) or moved in in 2009 (ER34008=1 and ER34010=2009)'
   ;
   VALUE ER34020F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34001=0); in an institution in both'
             '2007 and 2009 (ER34002=51-59 and ER34008=0); not a person aged 16 or older (ER34004=001-015, 999); associated with 2009 FU but actually moved out before 2008 (ER34008=5, 6, or 8 and ER34010<2008) or m'
             'oved in in 2009 and was not a Head or Wife/"Wife" (ER34008=1 and ER34010=2009 and ER34002 GE 2 and ER34003 GE 30)'
   ;
   VALUE ER34102F
    1 - 20 = 'Individuals in the family at the time of the 2011 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2011 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2009 and 2011 interviews'
   81 - 89 = 'Individuals who were living in 2009 but died by the time of the 2011 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0)'
   ;
   VALUE ER34103F
        10 = 'Head in 2011; 2009 Head who was mover-out nonresponse by the time of the 2011 interview'
        20 = 'Legal Wife in 2011; 2009 Wife who was mover-out nonresponse by the time of the 2011 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 2009 "Wife" who was mover-out nonresponse by the time of the 2011 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34102=0)'
   ;
   VALUE ER34116F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'NA; DK'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0); mover-out nonresponse for'
             '2011, only if deceased (ER34102=81-89); in an institution in both 2009 and 2011 (ER34102=51-59 and ER34108=0); not a person aged 16 or older (ER34104=001-015); associated with 2011 FU but moved out be'
             'fore 2010 (ER34108=5, 6, or 8 and ER34110<2010) or moved in in 2011 (ER34108=1 and ER34110=2011)'
   ;
   VALUE ER34119F
    1 - 17 = 'Highest grade or year of school completed'
        98 = 'DK'
        99 = 'NA'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0); in an institution in both'
             '2009 and 2011 (ER34102=51-59 and ER34108=0); not a person aged 16 or older (ER34104=001-015, 999); associated with 2011 FU but actually moved out before 2010 (ER34108=5, 6, or 8 and ER34110<2010) or m'
             'oved in in 2011 and was not a Head or Wife/"Wife" (ER34108=1 and ER34110=2011 and ER34102 GE 2 and ER34103 GE 30)'
   ;
   VALUE ER34128F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0); moved out before 2009 (ER3'
             '4102=71-89 and ER34110>0 and ER34110<2009)'
   ;
   VALUE ER34129F
         1 = 'Employer provided health insurance'
         2 = 'Private health insurance purchased'
         3 = 'Medicare'
         4 = 'Medi-Gap/Supplemental'
         5 = 'Medicaid/[STATEMEDPROG]/[SCHIPNAME]'
         6 = 'Military Health Care/Tricare (Active duty)'
         7 = 'Tricare/Champus/Champ VA (Dependents, veterans)'
         8 = 'Indian Health Insurance'
         9 = 'Other state-sponsored plan (not Medicaid)'
        10 = 'Other government program'
        97 = 'Other health insurance'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0); moved out before 2009 (ER3'
             '4102=71-89 and ER34110>0 and ER34110<2009); does not have health insurance of health care coverage now (ER34128=5); DK, NA, or RF whether has health insurance or health care coverage now (ER34128=8 or'
             ' 9)'
   ;
   VALUE ER34140F
         1 = 'Social security type was dependent of disabled recipient'
         5 = 'Social security type was not dependent of disabled recipient'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  no Social Security income; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0);'
             ' in an institution in 2011 (ER34102=51-59)'
   ;
   VALUE ER34202F
    1 - 20 = 'Individuals in the family at the time of the 2013 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2013 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2011 and 2013 interviews'
   81 - 89 = 'Individuals who were living in 2011 but died by the time of the 2013 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34201=0)'
   ;
   VALUE ER34203F
        10 = 'Head in 2013; 2011 Head who was mover-out nonresponse by the time of the 2013 interview'
        20 = 'Legal Wife in 2013; 2011 Wife who was mover-out nonresponse by the time of the 2013 interview'
        22 = '"Wife"--female cohabitor who has lived with Head for 12 months or more; 2011 "Wife" who was mover-out nonresponse by the time of the 2013 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)'
        35 = 'Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head''s brother or sister'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Wife (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Wife (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Wife (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Wife (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Wife (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Legal husband of Head'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Wife (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34202=0)'
   ;
   VALUE ER34216F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseWife; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34201=0); mover-out nonresponse for'
             '2013, only if deceased (ER34202=81-89); in an institution in both 2011 and 2013 (ER34202=51-59 and ER34208=0); not a person aged 16 or older (ER34204=001-015); associated with 2013 FU but moved out be'
             'fore 2012 (ER34208=5, 6, or 8 and ER34210 <2012)'
   ;
   VALUE ER34230F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34101=0); in an institution in both'
             '2011 and 2013 (ER34102=51-59 and ER34108=0); not a person aged 16 or older (ER34104=001-015, 999); associated with 2013 FU but actually moved out before 2012 (ER34108=5, 6, or 8 and ER34110<2012) or m'
             'oved in in 2013 and was not a Head or Wife/"Wife" (ER34108=1 and ER34110=2013 and ER34102 GE 2 and ER34103 GE 30)'
   ;
   VALUE ER34235F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34201=0); moved out before 2011 (ER3'
             '4202=71-89 and ER34210 >0 and ER34210 <2011)'
   ;
   VALUE ER34236F
         1 = 'Employer provided health insurance'
         2 = 'Private health insurance purchased'
         3 = 'Medicare'
         4 = 'Medi-Gap/Supplemental'
         5 = 'Medicaid/[STATEMEDPROG]/[SCHIPNAME]'
         8 = 'Indian Health Insurance'
         9 = 'Other state-sponsored plan (not Medicaid)'
        10 = 'Other government program'
        12 = 'Military Health Care/Tricare (Active duty)/ Military Health Care/Tricare (Active duty)/ VA (Veterans'' Administration)'
        97 = 'Other health insurance'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34101=0); moved out before 2011 (ER3'
             '4102=71-89 and ER34110>0 and ER34110<2011); does not have health insurance of health care coverage now (ER34235=5); DK, NA, or RF whether has health insurance or health care coverage now (ER34235=8 or'
             ' 9)'
   ;
   VALUE ER34247F
         1 = 'Social Security type was dependent of disabled recipient'
         5 = 'Social Security type was not dependent of disabled recipient'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  no Social Security income; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34201=0);'
             ' in an institution in 2013 (ER34202=51-59)'
   ;
   VALUE ER34302F
    1 - 20 = 'Individuals in the family at the time of the 2015 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2015 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2013 and 2015 interviews'
   81 - 89 = 'Individuals who were living in 2013 but died by the time of the 2015 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34301=0)'
   ;
   VALUE ER34303F
        10 = 'Head in 2015; 2013 Head who was mover-out nonresponse by the time of the 2015 interview'
        20 = 'Legal Spouse in 2015; 2013 Spouse who was mover-out nonresponse by the time of the 2015 interview'
        22 = 'Partner--female cohabitor who has lived with Head for 12 months or more; 2013 Partner who was mover-out nonresponse by the time of the 2015 interview'
        30 = 'Son or daughter of Head (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Head (children of legal Spouse [code 20] who are not children of Head)'
        35 = 'Son or daughter of Partner but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)'
        37 = 'Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Head (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Spouse, or spouse of Head''s brother or sister'
        48 = 'Brother or sister of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Head (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Head (includes parents of legal spouses [code 20] only)'
        58 = 'Father or mother of Head''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Head (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Head (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Spouse (code 20)'
        68 = 'Great-grandfather or great-grandmother of Head'
        69 = 'Great-grandfather or great-grandmother of legal Spouse (code 20)'
        70 = 'Nephew or niece of Head'
        71 = 'Nephew or niece of legal Spouse (code 20)'
        72 = 'Uncle or Aunt of Head'
        73 = 'Uncle or Aunt of legal Spouse (code 20)'
        74 = 'Cousin of Head'
        75 = 'Cousin of legal Spouse (code 20)'
        83 = 'Children of first-year cohabitor but not of Head (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Head'
        90 = 'Uncooperative legal spouse of Head (this individual is unable or unwilling to be designated as Head)'
        95 = 'Other relative of Head'
        96 = 'Other relative of legal Spouse (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes same-sex partners, friends of children of the FU, etc.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34302=0)'
   ;
   VALUE ER34317F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'HouseSpouse; keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34301=0); mover-out nonresponse for'
             '2015, only if deceased (ER34302=81-89); in an institution in both 2013 and 2015 (ER34302=51-59 and ER34309=0); not a person aged 16 or older (ER34305=001-015); associated with 2015 FU but moved out be'
             'fore 2014 (ER34309=5, 6, or 8 and ER34311 <2014)'
   ;
   VALUE ER34349F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34201=0); in an institution in both'
             '2013 and 2015 (ER34202=51-59 and ER34208=0); not a person aged 16 or older (ER34204=001-015, 999); associated with 2015 FU but actually moved out before 2014 (ER34208=5, 6, or 8 and ER34210<2014) or m'
             'oved in in 2015 and was not a Head or Spouse/Partner (ER34208=1 and ER34210=2015 and ER34202 GE 2 and ER34203 GE 30)'
   ;
   VALUE ER34385F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34301=0); moved out before 2013 (ER3'
             '4302=71-89 and ER34311 >0 and ER34311 <2013)'
   ;
   VALUE ER34386F
         1 = 'Employer provided health insurance'
         2 = 'Private health insurance purchased'
         3 = 'Medicare'
         4 = 'Medi-Gap/Supplemental'
         5 = 'Medicaid/[STATEMEDPROG]/[SCHIPNAME]'
         8 = 'Indian Health Insurance'
         9 = 'Other state-sponsored plan (not Medicaid)'
        10 = 'Other government program'
        12 = 'Military Health Care/Tricare (Active duty)/ Military Health Care/ Tricare (Active duty)/ VA (Veterans'' Administration)'
        97 = 'Other health insurance'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34201=0); moved out before 2013 (ER3'
             '4202=71-89 and ER34210>0 and ER34210<2013); does not have health insurance of health care coverage now (ER34385=5); DK, NA, or RF whether has health insurance or health care coverage now (ER34385=8 or'
             ' 9)'
   ;
   VALUE ER34397F
         1 = 'Social Security type was dependent of disabled recipient'
         5 = 'Social Security type was not dependent of disabled recipient'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  no Social Security income; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34301=0);'
             ' in an institution in 2015 (ER34302=51-59)'
   ;
   VALUE ER34502F
    1 - 20 = 'Individuals in the family at the time of the 2017 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2017 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2015 and 2017 interviews'
   81 - 89 = 'Individuals who were living in 2015 but died by the time of the 2017 interview'
         0 = 'Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or m'
             'over-out nonresponse by 2015 (ER34501=0)'
   ;
   VALUE ER34503F
        10 = 'Reference Person in 2017; 2015 Reference Person who was mover-out nonresponse by the time of the 2017 interview'
        20 = 'Legal Spouse in 2017; 2015 Spouse who was mover-out nonresponse by the time of the 2017 interview'
        22 = 'Partner--cohabitor who has lived with Reference Person for 12 months or more; 2015 Partner who was mover-out nonresponse by the time of the 2017 interview'
        30 = 'Son or daughter of Reference Person (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Reference Person (children of legal Spouse [code 20] who are not children of Reference Person)'
        35 = 'Son or daughter of Partner but not Reference Person (includes only those children of mothers whose relationship to Reference Person is 22 but who are not children of Reference Person)'
        37 = 'Son-in-law or daughter-in-law of Reference Person (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Reference Person (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Reference Person (i.e., brother or sister of legal Spouse; spouse of HD''s brother or sister; spouse of legal Spouse''s brother or sister)'
        48 = 'Brother or sister of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Reference Person (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Reference Person (includes parents of legal spouses [code 20] only)'
        58 = 'Father or mother of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Reference Person (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Reference Person (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Reference Person (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Spouse (code 20)'
        68 = 'Great-grandfather or great-grandmother of Reference Person'
        69 = 'Great-grandfather or great-grandmother of legal Spouse (code 20)'
        70 = 'Nephew or niece of Reference Person'
        71 = 'Nephew or niece of legal Spouse (code 20)'
        72 = 'Uncle or Aunt of Reference Person'
        73 = 'Uncle or Aunt of legal Spouse (code 20)'
        74 = 'Cousin of Reference Person'
        75 = 'Cousin of legal Spouse (code 20)'
        83 = 'Children of first-year cohabitor but not of Reference Person (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Reference Person'
        90 = 'Uncooperative legal spouse of Reference Person (this individual is unable or unwilling to be designated as Reference Person or Spouse)'
        92 = 'Uncooperative partner of Reference Person (this individual is unable or unwilling to be designated as Partner)'
        95 = 'Other relative of Reference Person'
        96 = 'Other relative of legal Spouse (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes friends of children of the FU, boyfriend/girlfriend of son/daughter, et al.)'
         0 = 'Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or m'
             'over-out nonresponse by 2015 (ER34502=0)'
   ;
   VALUE ER34516F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'Keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'DK; NA; refused'
         0 = 'Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or m'
             'over-out nonresponse by 2015 (ER34501=0); individual was alive at the time of the 2015 interview but passed away by the time of the 2017 interview (ER34502=81-89); in an institution in both 2015 and 2'
             '017 (ER34502=51-59 and ER34508=0); not a person aged 16 or older (ER34504=001-015); associated with 2017 FU but moved out before 2016 (ER34508=5, 6, or 8 and ER34510 <2016)'
   ;
   VALUE ER34548F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'DK; NA; refused'
         0 = 'Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or m'
             'over-out nonresponse by 2015 (ER34301=0); in an institution in both 2015 and 2017 (ER34302=51-59 and ER34508=0); not a person aged 16 or older (ER34504=001-015, 999); associated with 2017 FU but actua'
             'lly moved out before 2016 (ER34508=5, 6, or 8 and ER34510<2016) or moved in in 2017 and was not a Reference Person or Spouse/Partner (ER34508=1 and ER34510=2017 and ER34302 GE 2 and ER34303 GE 30)'
   ;
   VALUE ER34594F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or m'
             'over-out nonresponse by 2015 (ER34501=0); mover-out (ER34502=71-89)'
   ;
   VALUE ER34595F
         1 = 'Employer provided health insurance (current or former employer)'
         2 = 'Private health insurance purchased'
         3 = 'Medicare'
         4 = 'Medi-Gap/Supplemental'
         5 = 'Medicaid/[STATEMEDPROG]/[SCHIPNAME]'
         8 = 'Indian Health Insurance'
         9 = 'Other state-sponsored plan (not Medicaid)'
        10 = 'Other government program'
        12 = 'Military Health Care/Tricare (active duty); Tricare/Champus/ChampVA (dependents, veterans); Veterans Administration (VA)'
        97 = 'Other health insurance'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or m'
             'over-out nonresponse by 2015 (ER34301=0); mover-out (ER34502=71-89); does not currently have health insurance or health care coverage (ER34594=5); DK, NA, or RF whether currently has health insurance'
             'or health care coverage (ER34594=8 or 9)'
   ;
   VALUE ER34606F
         1 = 'Social Security type was dependent of disabled recipient'
         5 = 'Social Security type was not dependent of disabled recipient'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  no Social Security income; from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main fami'
             'ly nonresponse by 2017 or mover-out nonresponse by 2015 (ER34501=0); in an institution in 2017 (ER34502=51-59)'
   ;
   VALUE ER34702F
    1 - 20 = 'Individuals in the family at the time of the 2019 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2019 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2017 and 2019 interviews'
   81 - 89 = 'Individuals who were living in 2017 but died by the time of the 2019 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34701=0)'
   ;
   VALUE ER34703F
        10 = 'Reference Person in 2019; 2017 Reference Person who was mover-out nonresponse by the time of the 2019 interview'
        20 = 'Legal Spouse in 2019; 2017 Spouse who was mover-out nonresponse by the time of the 2019 interview'
        22 = 'Partner--cohabitor who has lived with Reference Person for 12 months or more; 2017 Partner who was mover-out nonresponse by the time of the 2019 interview'
        30 = 'Son or daughter of Reference Person (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Reference Person (children of legal Spouse [code 20] who are not children of Reference Person)'
        35 = 'Son or daughter of Partner but not Reference Person (includes only those children of mothers whose relationship to Reference Person is 22 but who are not children of Reference Person)'
        37 = 'Son-in-law or daughter-in-law of Reference Person (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Reference Person (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Reference Person (i.e., brother or sister of legal Spouse; spouse of HD''s brother or sister; spouse of legal Spouse''s brother or sister)'
        48 = 'Brother or sister of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Reference Person (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Reference Person (includes parents of legal spouses [code 20] only)'
        58 = 'Father or mother of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Reference Person (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Reference Person (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Reference Person (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Spouse (code 20)'
        68 = 'Great-grandfather or great-grandmother of Reference Person'
        69 = 'Great-grandfather or great-grandmother of legal Spouse (code 20)'
        70 = 'Nephew or niece of Reference Person'
        71 = 'Nephew or niece of legal Spouse (code 20)'
        72 = 'Uncle or Aunt of Reference Person'
        73 = 'Uncle or Aunt of legal Spouse (code 20)'
        74 = 'Cousin of Reference Person'
        75 = 'Cousin of legal Spouse (code 20)'
        83 = 'Children of first-year cohabitor but not of Reference Person (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Reference Person'
        90 = 'Uncooperative legal spouse of Reference Person (this individual is unable or unwilling to be designated as Reference Person or Spouse)'
        92 = 'Uncooperative partner of Reference Person (this individual is unable or unwilling to be designated as Partner)'
        95 = 'Other relative of Reference Person'
        96 = 'Other relative of legal Spouse (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes friends of children of the FU, boyfriend/girlfriend of son/daughter, et al.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34702=0)'
   ;
   VALUE ER34716F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'Keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34701=0); individual was alive at the time of the 2017 interview but passed away by'
             'the time of the 2019 interview (ER34702=81-89); in an institution in both 2017 and 2019 (ER34702=51-59 and ER34708=0); not a person aged 16 or older (ER34704=001-015); associated with 2019 FU but move'
             'd out before 2018 (ER34708=5, 6, or 8 and ER34710 <2018)'
   ;
   VALUE ER34752F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34501=0); in an institution in both 2017 and 2019 (ER34502=51-59 and ER34708=0); not'
             ' a person aged 16 or older (ER34704=001-015, 999); associated with 2019 FU but actually moved out before 2018 (ER34708=5, 6, or 8 and ER34710<2018) or moved in in 2019 and was not a Reference Person o'
             'r Spouse/Partner (ER34708=1 and ER34710=2019 and ER34502 GE 2 and ER34503 GE 30)'
   ;
   VALUE ER34802F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34701=0); mover-out (ER34702=71-89)'
   ;
   VALUE ER34803F
         1 = 'Employer provided health insurance (current or former employer)'
         2 = 'Private health insurance purchased'
         3 = 'Medicare'
         4 = 'Medi-Gap/Supplemental'
         5 = 'Medicaid/[STATEMEDPROG]/[SCHIPNAME]'
         8 = 'Indian Health Insurance'
         9 = 'Other state-sponsored plan (not Medicaid)'
        10 = 'Other government program'
        12 = 'Military Health Care/Tricare (active duty); Tricare/Champus/ChampVA (dependents, veterans); Veterans Administration (VA)'
        97 = 'Other health insurance'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34501=0); mover-out (ER34702=71-89); does not currently have health insurance or hea'
             'lth care coverage (ER34802=5); DK, NA, or RF whether currently has health insurance or health care coverage (ER34802=8 or 9)'
   ;
   VALUE ER34815F
         1 = 'Social Security type was dependent of disabled recipient'
         5 = 'Social Security type was not dependent of disabled recipient'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  no Social Security income; from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34701=0); in an institution in 2019 (ER34702=51-59)'
   ;
   VALUE ER34902F
    1 - 20 = 'Individuals in the family at the time of the 2021 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2021 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2019 and 2021 interviews'
   81 - 89 = 'Individuals who were living in 2019 but died by the time of the 2021 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34901=0)'
   ;
   VALUE ER34903F
        10 = 'Reference Person in 2021; 2019 Reference Person who was mover-out nonresponse by the time of the 20121 interview'
        20 = 'Legal Spouse in 2021; 2019 Spouse who was mover-out nonresponse by the time of the 2021 interview'
        22 = 'Partner--cohabitor who has lived with Reference Person for 12 months or more; 2019 Partner who was mover-out nonresponse by the time of the 2021 interview'
        30 = 'Son or daughter of Reference Person (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Reference Person (children of legal Spouse [code 20] who are not children of Reference Person)'
        35 = 'Son or daughter of Partner but not Reference Person (includes only those children of mothers whose relationship to Reference Person is 22 but who are not children of Reference Person)'
        37 = 'Son-in-law or daughter-in-law of Reference Person (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Reference Person (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Reference Person (i.e., brother or sister of legal Spouse; spouse of HD''s brother or sister; spouse of legal Spouse''s brother or sister)'
        48 = 'Brother or sister of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Reference Person (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Reference Person (includes parents of legal spouses [code 20] only)'
        58 = 'Father or mother of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Reference Person (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Reference Person (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Reference Person (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Spouse (code 20)'
        68 = 'Great-grandfather or great-grandmother of Reference Person'
        69 = 'Great-grandfather or great-grandmother of legal Spouse (code 20)'
        70 = 'Nephew or niece of Reference Person'
        71 = 'Nephew or niece of legal Spouse (code 20)'
        72 = 'Uncle or Aunt of Reference Person'
        73 = 'Uncle or Aunt of legal Spouse (code 20)'
        74 = 'Cousin of Reference Person'
        75 = 'Cousin of legal Spouse (code 20)'
        83 = 'Children of first-year cohabitor but not of Reference Person (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Reference Person'
        90 = 'Uncooperative legal spouse of Reference Person (this individual is unable or unwilling to be designated as Reference Person or Spouse)'
        92 = 'Uncooperative partner of Reference Person (this individual is unable or unwilling to be designated as Partner)'
        95 = 'Other relative of Reference Person'
        96 = 'Other relative of legal Spouse (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes friends of children of the FU, boyfriend/girlfriend of son/daughter, et al.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34902=0)'
   ;
   VALUE ER34916F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'Keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34901=0); individual was alive at the time of the 2019 interview but passed away by'
             'the time of the 2021 interview (ER34902=81-89); in an institution in both 2019 and 2021 (ER34902=51-59 and ER34908=0); not a person aged 16 or older (ER34904=001-015); associated with 2021 FU but move'
             'd out before 2020 (ER34908=5, 6, or 8 and ER34910 <2020)'
   ;
   VALUE ER34952F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34701=0); in an institution in both 2019 and 2021 (ER34702=51-59 and ER34908=0); not'
             ' a person aged 16 or older (ER34904=001-015, 999); associated with 2021 FU but actually moved out before 2020 (ER34908=5, 6, or 8 and ER34910<2020) or moved in in 2021 and was not a Reference Person o'
             'r Spouse/Partner (ER34908=1 and ER34910=2021 and ER34702 GE 2 and ER34703 GE 30)'
   ;
   VALUE ER35004F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34901=0); mover-out (ER34902=71-89)'
   ;
   VALUE ER35005F
         1 = 'Employer provided health insurance (current or former employer)'
         2 = 'Private health insurance purchased'
         3 = 'Medicare'
         4 = 'Medi-Gap/Supplemental'
         5 = 'Medicaid/[STATEMEDPROG]/[SCHIPNAME]'
         8 = 'Indian Health Insurance'
         9 = 'Other state-sponsored plan (not Medicaid)'
        10 = 'Other government program'
        12 = 'Military Health Care/Tricare (active duty); Tricare/Champus/ChampVA (dependents, veterans); Veterans Administration (VA)'
        97 = 'Other health insurance'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34701=0); mover-out (ER34902=71-89); does not currently have health insurance or hea'
             'lth care coverage (ER35004=5); DK, NA, or RF whether currently has health insurance or health care coverage (ER35004=8 or 9)'
   ;
   VALUE ER35016F
         1 = 'Social Security type was dependent of disabled recipient'
         5 = 'Social Security type was not dependent of disabled recipient'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  no Social Security income; from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34901=0); in an institution in 2021 (ER34902=51-59)'
   ;
   VALUE ER35102F
    1 - 20 = 'Individuals in the family at the time of the 2023 interview'
   51 - 59 = 'Individuals in institutions at the time of the 2023 interview'
   71 - 80 = 'Individuals who moved out of the FU or out of institutions and established their own households between the 2021 and 2023 interviews'
   81 - 89 = 'Individuals who were living in 2021 but died by the time of the 2023 interview'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2023 or mover-out nonresponse by 2021 (ER35101=0)'
   ;
   VALUE ER35103F
        10 = 'Reference Person in 2023; 2021 Reference Person who was mover-out nonresponse by the time of the 20121 interview'
        20 = 'Legal Spouse in 2023; 2021 Spouse who was mover-out nonresponse by the time of the 2023 interview'
        22 = 'Partner--cohabitor who has lived with Reference Person for 12 months or more; 2021 Partner who was mover-out nonresponse by the time of the 2023 interview'
        30 = 'Son or daughter of Reference Person (includes adopted children but not stepchildren)'
        33 = 'Stepson or stepdaughter of Reference Person (children of legal Spouse [code 20] who are not children of Reference Person)'
        35 = 'Son or daughter of Partner but not Reference Person (includes only those children of mothers whose relationship to Reference Person is 22 but who are not children of Reference Person)'
        37 = 'Son-in-law or daughter-in-law of Reference Person (includes stepchildren-in-law)'
        38 = 'Foster son or foster daughter, not legally adopted'
        40 = 'Brother or sister of Reference Person (includes step and half sisters and brothers)'
        47 = 'Brother-in-law or sister-in-law of Reference Person (i.e., brother or sister of legal Spouse; spouse of HD''s brother or sister; spouse of legal Spouse''s brother or sister)'
        48 = 'Brother or sister of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        50 = 'Father or mother of Reference Person (includes stepparents)'
        57 = 'Father-in-law or mother-in-law of Reference Person (includes parents of legal spouses [code 20] only)'
        58 = 'Father or mother of Reference Person''s cohabitor (the cohabitor is coded 22 or 88)'
        60 = 'Grandson or granddaughter of Reference Person (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)'
        65 = 'Great-grandson or great-granddaughter of Reference Person (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)'
        66 = 'Grandfather or grandmother of Reference Person (includes stepgrandparents)'
        67 = 'Grandfather or grandmother of legal Spouse (code 20)'
        68 = 'Great-grandfather or great-grandmother of Reference Person'
        69 = 'Great-grandfather or great-grandmother of legal Spouse (code 20)'
        70 = 'Nephew or niece of Reference Person'
        71 = 'Nephew or niece of legal Spouse (code 20)'
        72 = 'Uncle or Aunt of Reference Person'
        73 = 'Uncle or Aunt of legal Spouse (code 20)'
        74 = 'Cousin of Reference Person'
        75 = 'Cousin of legal Spouse (code 20)'
        83 = 'Children of first-year cohabitor but not of Reference Person (the parent of this child is coded 88)'
        88 = 'First-year cohabitor of Reference Person'
        90 = 'Uncooperative legal spouse of Reference Person (this individual is unable or unwilling to be designated as Reference Person or Spouse)'
        92 = 'Uncooperative partner of Reference Person (this individual is unable or unwilling to be designated as Partner)'
        95 = 'Other relative of Reference Person'
        96 = 'Other relative of legal Spouse (code 20)'
        97 = 'Other relative of cohabitor (the cohabitor is code 22 or 88)'
        98 = 'Other nonrelatives (includes friends of children of the FU, boyfriend/girlfriend of son/daughter, et al.)'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2023 or mover-out nonresponse by 2021 (ER35102=0)'
   ;
   VALUE ER35116F
         1 = 'Working now'
         2 = 'Only temporarily laid off'
         3 = 'Looking for work, unemployed'
         4 = 'Retired'
         5 = 'Permanently disabled'
         6 = 'Keeping house'
         7 = 'Student'
         8 = 'Other'
         9 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2023 or mover-out nonresponse by 2021 (ER35101=0); individual was alive at the time of the 2021 interview but passed away by'
             'the time of the 2023 interview (ER35102=81-89); in an institution in both 2021 and 2023 (ER35102=51-59 and ER35108=0); not a person aged 16 or older (ER35104=001-015); associated with 2023 FU but move'
             'd out before 2022 (ER35108=5, 6, or 8 and ER35110 <2022)'
   ;
   VALUE ER35152F
    1 - 17 = 'Highest grade or year of school completed'
        99 = 'DK; NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2023 or mover-out nonresponse by 2021 (ER34901=0); in an institution in both 2021 and 2023 (ER34902=51-59 and ER35108=0); not'
             ' a person aged 16 or older (ER35104=001-015, 999); associated with 2023 FU but actually moved out before 2022 (ER35108=5, 6, or 8 and ER35110<2022) or moved in in 2023 and was not a Reference Person o'
             'r Spouse/Partner (ER35108=1 and ER35110=2023 and ER34902 GE 2 and ER34903 GE 30)'
   ;
   VALUE ER35204F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2023 or mover-out nonresponse by 2021 (ER35101=0); mover-out (ER35102=71-89)'
   ;
   VALUE ER35205F
         1 = 'Employer provided health insurance (current or former employer)'
         2 = 'Private health insurance purchased'
         3 = 'Medicare'
         4 = 'Medi-Gap/Supplemental'
         5 = 'Medicaid/[STATEMEDPROG]/[SCHIPNAME]'
         8 = 'Indian Health Insurance'
         9 = 'Other state-sponsored plan (not Medicaid)'
        10 = 'Other government program'
        12 = 'Military Health Care/Tricare (active duty); Tricare/Champus/ChampVA (dependents, veterans); Veterans Administration (VA)'
        97 = 'Other health insurance'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2023 or mover-out nonresponse by 2021 (ER34901=0); mover-out (ER35102=71-89); does not currently have health insurance or hea'
             'lth care coverage (ER35204=5); DK, NA, or RF whether currently has health insurance or health care coverage (ER35204=8 or 9)'
   ;
   VALUE ER35216F
         1 = 'Social Security type was dependent of disabled recipient'
         5 = 'Social Security type was not dependent of disabled recipient'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.:  no Social Security income; from Latino sample (ER30001=7001-9308); main family nonresponse by 2023 or mover-out nonresponse by 2021 (ER35101=0); in an institution in 2023 (ER35102=51-59)'
   ;
   VALUE ER36001F
         1 = 'Release number 1, June 2009'
         2 = 'Release number 2, October 2009'
         3 = 'Release number 3, January 2012'
         4 = 'Release number 4, December 2013'
         5 = 'Release number 5, February 2014'
         6 = 'Release number 6, January 2016'
         7 = 'Release number 7, November 2017'
         8 = 'Release number 8, June 2023'
   ;
   VALUE ER42001F
         1 = 'Release number 1, July 2011'
         2 = 'Release number 2, November 2013'
         3 = 'Release number 3, February 2014'
         4 = 'Release number 4, January 2016'
         5 = 'Release number 5, November 2017'
         6 = 'Release number 6, June 2023'
   ;
   VALUE ER47301F
         1 = 'Release number 1, July 2013'
         2 = 'Release number 2, November 2013'
         3 = 'Release number 3, February 2014'
         4 = 'Release number 4, January 2016'
         5 = 'Release number 5, November 2017'
         6 = 'Release number 6, June 2023'
   ;
   VALUE ER53001F
         1 = 'Release number 1, May 2015'
         2 = 'Release number 2, January 2016'
         3 = 'Release number 3, November 2017'
         4 = 'Release number 4, June 2023'
   ;
   VALUE ER60001F
         1 = 'Release number 1, May 2017'
         2 = 'Release number 2, June 2023'
   ;
   VALUE ER66001F
         1 = 'Release number 1, February 2019'
         2 = 'Release number 2, August 2019'
         3 = 'Release number 3, June 2023'
   ;
   VALUE ER72001F
         1 = 'Release number 1, March 2021'
   ;
   VALUE ER78001F
         1 = 'Release number 1, June 2023'
         2 = 'Release number 2, October 2023'
         3 = 'Release number 3, May 2025'
   ;
   VALUE ER82001F
         1 = 'Release number 1, May 2025'
   ;
   VALUE TA050001F
         1 = 'Release number 1, April 2008'
         2 = 'Release number 2, November 2009'
         3 = 'Release number 3, July 2010'
         4 = 'Release number 4, September 2013'
         5 = 'Release number 5, December 2013'
   ;
   VALUE TA050932F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA050933F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA050934F
    1 - 18 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA050938F
    0 - 24 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA050939F
     1 - 7 = 'Actual Value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA070001F
         1 = 'Release number 1, December 2009'
         2 = 'Release number 2, June 2010'
         3 = 'Release number 3, September 2013'
         4 = 'Release number 4, December 2013'
   ;
   VALUE TA070913F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA070914F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA070915F
    1 - 18 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA070919F
    0 - 24 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA070920F
     1 - 7 = 'Actual Value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA090001F
         1 = 'Release number 1, March 2012'
         2 = 'Release number 2, September 2013'
         3 = 'Release number 3, December 2013'
   ;
   VALUE TA090193F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; was not unemployed in 2007 (TA090179=5, 8, or 9); did not report in terms of days (TA090192=0, 8, or 9)'
   ;
   VALUE TA090977F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA090978F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA090979F
    1 - 18 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA090983F
    0 - 24 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA090984F
     1 - 7 = 'Actual Value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA110001F
         1 = 'Release number 1, September 2013'
         2 = 'Release number 2, December 2013'
   ;
   VALUE TA110194F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; was not unemployed any time in 2009 (TA110180=5); NA, DK, RF whether unemployed any time in 2009 (TA110180=8 or 9); did not report in terms of days (TA110193=0)'
   ;
   VALUE TA111119F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA111120F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA111121F
    1 - 18 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA111125F
    0 - 24 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA111126F
     1 - 7 = 'Actual Value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA130001F
         1 = 'Release number 1, January 2016'
         2 = 'Release number 2, July 2017'
   ;
   VALUE TA130193F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; was not unemployed any time in 2011 (TA130179=5); DK, NA, RF whether unemployed any time in 2011 (TA130179=8 or 9); did not report in terms of days (TA130192=0)'
   ;
   VALUE TA131211F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA131212F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA131213F
    1 - 18 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA131217F
    0 - 24 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA131218F
     1 - 7 = 'Actual Value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA150001F
         1 = 'Release number 1, July 2017'
         2 = 'Release number 2, December 2017'
   ;
   VALUE TA150185F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; was not unemployed any time in 2013 (TA150171=5); DK, NA, or RF whether unemployed any time in 2013 (TA150171=8 or 9); did not report in terms of days (TA150184=0)'
   ;
   VALUE TA151271F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA151272F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA151273F
    1 - 18 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA151277F
    0 - 24 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA151278F
     1 - 7 = 'Actual Value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA170001F
         1 = 'Release number 1, August 2019'
         2 = 'Release number 2, May 2020'
   ;
   VALUE TA170363F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; did not report in terms of days; not unemployed in 2015 (TA170361=5); DK, NA, or RF whether unemployed in 2015 (TA170361=8 or 9)'
   ;
   VALUE TA171971F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA171975F
    0 - 24 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA171976F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA190001F
         1 = 'Release number 1, October 2021'
         2 = 'Release number 2, December 2021'
   ;
   VALUE TA190560F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; did not report in terms of days; not unemployed in 2017 (TA190558=5); DK, NA, or RF whether unemployed in 2017 (TA190558=8 or 9)'
   ;
   VALUE TA192152F
    0 - 18 = 'Actual value'
        99 = 'All items are DK/NA/refused'
   ;
   VALUE TA192153F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA210001F
         1 = 'Release number 1, March 2024'
   ;
   VALUE TA210563F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; did not report in terms of days; not unemployed in 2019 (TA210561=5); DK, NA, or RF whether unemployed in 2019 (TA210561=9)'
   ;
   VALUE TA212316F
    0 - 18 = 'Actual value'
        99 = 'At least one subscale is DK/NA/refused'
   ;
   VALUE TA212317F
         1 = 'Flourishing'
         2 = 'Languishing'
         3 = 'Moderate Mental Health'
         9 = 'At least one subscale is DK/NA/refused'
   ;
   VALUE TA212318F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
   ;
   VALUE TA230001F
         1 = 'Release number 1, November 2025'
   ;
   VALUE TA230586F
         1 = 'Value imputed by PSID staff'
         0 = 'Inap.:  not imputed; did not report in terms of days; not unemployed in 2021 (TA230584=5); DK, NA, or RF whether unemployed in 2021 (TA230584=9)'
   ;
   VALUE TA230915F
         1 = 'Often true'
         2 = 'Sometimes true'
         3 = 'Never true'
         9 = 'DK; NA; refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview'
   ;
   VALUE TA230916F
         1 = 'Often true'
         2 = 'Sometimes true'
         3 = 'Never true'
         9 = 'DK; NA; refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview'
   ;
   VALUE TA230918F
         1 = 'Yes'
         5 = 'No'
         9 = 'DK; NA; refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview; no Adult Stage 1 food distress (TA230915=3, 9 and TA230916=3, 9 and TA230917=3, 9)'
   ;
   VALUE TA230919F
    1 - 30 = 'Actual number of days'
        99 = 'DK; NA; refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview; no Adult Stage 1 food distress (TA230915=3, 9 and TA230916=3, 9 and TA230917=3, 9); did not cut the size of meals or skip meals there wasn''t enough money (TA230918=5); DK,'
             ' NA, or RF whether cut the size of meals or skip meals because there wasn''t enough money (TA230918=9)'
   ;
   VALUE TA230920F
         1 = 'Yes'
         5 = 'No'
         9 = 'DK; NA; refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview; no Adult Stage 1 food distress (TA230915=3, 9 and TA230916=3, 9 and TA230917=3, 9)'
   ;
   VALUE TA230921F
         1 = 'Yes'
         5 = 'No'
         9 = 'DK; NA;,refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview; no Adult Stage 1 food distress (TA230915=3, 9 and TA230916=3, 9 and TA230917=3, 9)'
   ;
   VALUE TA230922F
         1 = 'Yes'
         5 = 'No'
         9 = 'DK; NA; refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview; no Adult Stage 1 food distress (TA230915=3, 9 and TA230916=3, 9 and TA230917=3, 9)'
   ;
   VALUE TA230923F
         1 = 'Yes'
         5 = 'No'
         9 = 'DK; NA; refused'
         0 = 'Inap.: Reference Person or Spouse/Partner in the 2023 PSID interview (TA230005=1 or 2); lived with parents for entire last 30 days (TA230914=30); respondent did not reach item E89 (TA230914) due to pr'
             'ior suspension of interview; no Adult Stage 1 food distress (TA230915=3, 9 and TA230916=3, 9 and TA230917=3, 9); no Adult Stage 2 food distress (TA230918=5, 9 and TA230920=5, 9 and TA230921=5, 9 and T'
             'A230922=5, 9)'
   ;
   VALUE TA232323F
    0 - 18 = 'Actual value'
        99 = 'At least one subscale is DK/NA/refused'
   ;
   VALUE TA232324F
         1 = 'Flourishing'
         2 = 'Languishing'
         3 = 'Moderate Mental Health'
         9 = 'At least one subscale is DK/NA/refused'
   ;
   VALUE TA232325F
     1 - 7 = 'Actual value'
         9 = 'All items are DK/NA/refused'
         0 = 'Inap.: B26A-B26D already asked of returning respondent (TA230092=1)'
   ;
RUN ;

FORMAT 
    ER13001    ER13001F.
    ER17001    ER17001F.
    ER21001    ER21001F.
    ER25001    ER25001F.
    ER30000    ER30000F.
    ER30003    ER30003F.
    ER30010    ER30010F.
    ER30021    ER30021F.
    ER30022    ER30022F.
    ER30030    ER30030F.
    ER30044    ER30044F.
    ER30045    ER30045F.
    ER30052    ER30052F.
    ER30054    ER30054F.
    ER30068    ER30068F.
    ER30069    ER30069F.
    ER30076    ER30076F.
    ER30092    ER30092F.
    ER30093    ER30093F.
    ER30100    ER30100F.
    ER30118    ER30118F.
    ER30119    ER30119F.
    ER30126    ER30126F.
    ER30139    ER30139F.
    ER30140    ER30140F.
    ER30147    ER30147F.
    ER30161    ER30161F.
    ER30162    ER30162F.
    ER30169    ER30169F.
    ER30189    ER30189F.
    ER30190    ER30190F.
    ER30197    ER30197F.
    ER30218    ER30218F.
    ER30219    ER30219F.
    ER30226    ER30226F.
    ER30247    ER30247F.
    ER30248    ER30248F.
    ER30255    ER30255F.
    ER30284    ER30284F.
    ER30285    ER30285F.
    ER30293    ER30293F.
    ER30296    ER30296F.
    ER30314    ER30314F.
    ER30315    ER30315F.
    ER30323    ER30323F.
    ER30326    ER30326F.
    ER30344    ER30344F.
    ER30345    ER30345F.
    ER30353    ER30353F.
    ER30356    ER30356F.
    ER30374    ER30374F.
    ER30375    ER30375F.
    ER30382    ER30382F.
    ER30384    ER30384F.
    ER30400    ER30400F.
    ER30401    ER30401F.
    ER30411    ER30411F.
    ER30413    ER30413F.
    ER30430    ER30430F.
    ER30431    ER30431F.
    ER30441    ER30441F.
    ER30443    ER30443F.
    ER30464    ER30464F.
    ER30465    ER30465F.
    ER30474    ER30474F.
    ER30478    ER30478F.
    ER30499    ER30499F.
    ER30500    ER30500F.
    ER30509    ER30509F.
    ER30513    ER30513F.
    ER30536    ER30536F.
    ER30537    ER30537F.
    ER30545    ER30545F.
    ER30549    ER30549F.
    ER30571    ER30571F.
    ER30572    ER30572F.
    ER30580    ER30580F.
    ER30584    ER30584F.
    ER30607    ER30607F.
    ER30608    ER30608F.
    ER30616    ER30616F.
    ER30620    ER30620F.
    ER30643    ER30643F.
    ER30644    ER30644F.
    ER30653    ER30653F.
    ER30657    ER30657F.
    ER30690    ER30690F.
    ER30691    ER30691F.
    ER30699    ER30699F.
    ER30703    ER30703F.
    ER30734    ER30734F.
    ER30735    ER30735F.
    ER30744    ER30744F.
    ER30748    ER30748F.
    ER30807    ER30807F.
    ER30808    ER30808F.
    ER30816    ER30816F.
    ER30820    ER30820F.
    ER32000    ER32000F.
    ER32006    ER32006F.
    ER33102    ER33102F.
    ER33103    ER33103F.
    ER33111    ER33111F.
    ER33115    ER33115F.
    ER33202    ER33202F.
    ER33203    ER33203F.
    ER33211    ER33211F.
    ER33215    ER33215F.
    ER33227    ER33227F.
    ER33302    ER33302F.
    ER33303    ER33303F.
    ER33311    ER33311F.
    ER33315    ER33315F.
    ER33402    ER33402F.
    ER33403    ER33403F.
    ER33411    ER33411F.
    ER33415    ER33415F.
    ER33502    ER33502F.
    ER33503    ER33503F.
    ER33512    ER33512F.
    ER33516    ER33516F.
    ER33602    ER33602F.
    ER33603    ER33603F.
    ER33612    ER33612F.
    ER33616    ER33616F.
    ER33702    ER33702F.
    ER33703    ER33703F.
    ER33712    ER33712F.
    ER33716    ER33716F.
    ER33802    ER33802F.
    ER33803    ER33803F.
    ER33813    ER33813F.
    ER33817    ER33817F.
    ER33902    ER33902F.
    ER33903    ER33903F.
    ER33913    ER33913F.
    ER33917    ER33917F.
    ER34002    ER34002F.
    ER34003    ER34003F.
    ER34016    ER34016F.
    ER34020    ER34020F.
    ER34102    ER34102F.
    ER34103    ER34103F.
    ER34116    ER34116F.
    ER34119    ER34119F.
    ER34128    ER34128F.
    ER34129    ER34129F.
    ER34140    ER34140F.
    ER34202    ER34202F.
    ER34203    ER34203F.
    ER34216    ER34216F.
    ER34230    ER34230F.
    ER34235    ER34235F.
    ER34236    ER34236F.
    ER34247    ER34247F.
    ER34302    ER34302F.
    ER34303    ER34303F.
    ER34317    ER34317F.
    ER34349    ER34349F.
    ER34385    ER34385F.
    ER34386    ER34386F.
    ER34397    ER34397F.
    ER34502    ER34502F.
    ER34503    ER34503F.
    ER34516    ER34516F.
    ER34548    ER34548F.
    ER34594    ER34594F.
    ER34595    ER34595F.
    ER34606    ER34606F.
    ER34702    ER34702F.
    ER34703    ER34703F.
    ER34716    ER34716F.
    ER34752    ER34752F.
    ER34802    ER34802F.
    ER34803    ER34803F.
    ER34815    ER34815F.
    ER34902    ER34902F.
    ER34903    ER34903F.
    ER34916    ER34916F.
    ER34952    ER34952F.
    ER35004    ER35004F.
    ER35005    ER35005F.
    ER35016    ER35016F.
    ER35102    ER35102F.
    ER35103    ER35103F.
    ER35116    ER35116F.
    ER35152    ER35152F.
    ER35204    ER35204F.
    ER35205    ER35205F.
    ER35216    ER35216F.
    ER36001    ER36001F.
    ER42001    ER42001F.
    ER47301    ER47301F.
    ER53001    ER53001F.
    ER60001    ER60001F.
    ER66001    ER66001F.
    ER72001    ER72001F.
    ER78001    ER78001F.
    ER82001    ER82001F.
    TA050001   TA050001F.
    TA050932   TA050932F.
    TA050933   TA050933F.
    TA050934   TA050934F.
    TA050938   TA050938F.
    TA050939   TA050939F.
    TA070001   TA070001F.
    TA070913   TA070913F.
    TA070914   TA070914F.
    TA070915   TA070915F.
    TA070919   TA070919F.
    TA070920   TA070920F.
    TA090001   TA090001F.
    TA090193   TA090193F.
    TA090977   TA090977F.
    TA090978   TA090978F.
    TA090979   TA090979F.
    TA090983   TA090983F.
    TA090984   TA090984F.
    TA110001   TA110001F.
    TA110194   TA110194F.
    TA111119   TA111119F.
    TA111120   TA111120F.
    TA111121   TA111121F.
    TA111125   TA111125F.
    TA111126   TA111126F.
    TA130001   TA130001F.
    TA130193   TA130193F.
    TA131211   TA131211F.
    TA131212   TA131212F.
    TA131213   TA131213F.
    TA131217   TA131217F.
    TA131218   TA131218F.
    TA150001   TA150001F.
    TA150185   TA150185F.
    TA151271   TA151271F.
    TA151272   TA151272F.
    TA151273   TA151273F.
    TA151277   TA151277F.
    TA151278   TA151278F.
    TA170001   TA170001F.
    TA170363   TA170363F.
    TA171971   TA171971F.
    TA171975   TA171975F.
    TA171976   TA171976F.
    TA190001   TA190001F.
    TA190560   TA190560F.
    TA192152   TA192152F.
    TA192153   TA192153F.
    TA210001   TA210001F.
    TA210563   TA210563F.
    TA212316   TA212316F.
    TA212317   TA212317F.
    TA212318   TA212318F.
    TA230001   TA230001F.
    TA230586   TA230586F.
    TA230915   TA230915F.
    TA230916   TA230916F.
    TA230918   TA230918F.
    TA230919   TA230919F.
    TA230920   TA230920F.
    TA230921   TA230921F.
    TA230922   TA230922F.
    TA230923   TA230923F.
    TA232323   TA232323F.
    TA232324   TA232324F.
    TA232325   TA232325F.
;

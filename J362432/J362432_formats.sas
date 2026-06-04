PROC FORMAT ; 
   VALUE ER42001F
         1 = 'Release number 1, July 2011'
         2 = 'Release number 2, November 2013'
         3 = 'Release number 3, February 2014'
         4 = 'Release number 4, January 2016'
         5 = 'Release number 5, November 2017'
         6 = 'Release number 6, June 2023'
   ;
   VALUE ER42675F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER42714F
         1 = 'Imputed value'
         0 = 'Inap.:  not imputed; nothing--no additional money spent on food used at home; did not use food stamp benefits last month (ER42707=5,8 or 9)'
   ;
   VALUE ER47301F
         1 = 'Release number 1, July 2013'
         2 = 'Release number 2, November 2013'
         3 = 'Release number 3, February 2014'
         4 = 'Release number 4, January 2016'
         5 = 'Release number 5, November 2017'
         6 = 'Release number 6, June 2023'
   ;
   VALUE ER47991F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER48030F
         1 = 'Imputed value'
         0 = 'Inap.:  not imputed; did not use food stamp benefits last month (ER48023=5); NA, DK, RF whether used food stamp benefits last month (ER48023=8 or 9); no additional money spent on food used at home (ER'
             '48027=5); NA, DK, RF whether additional money spent on food used at home (ER48027=8 or 9); amount spent on additional food was zero (ER48028=0); NA, DK, RF amount spent on additional food (ER48028=999'
             '98 or 99999)'
   ;
   VALUE ER53001F
         1 = 'Release number 1, May 2015'
         2 = 'Release number 2, January 2016'
         3 = 'Release number 3, November 2017'
         4 = 'Release number 4, June 2023'
   ;
   VALUE ER53703F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER53727F
         1 = 'Imputed value'
         0 = 'Inap.:  not imputed; did not use food stamp benefits last month (ER53720=5); DK, NA, or RF whether used food stamp benefits last month (ER53720=8 or 9); no additional money spent on food used at home'
             '(ER53724=5); DK, NA, or RF whether additional money spent on food used at home (ER53724=8 or 9); amount spent on additional food was zero (ER53725=0); DK, NA, or RF amount spent on additional food (ER'
             '53725=99998 or 99999)'
   ;
   VALUE ER72001F
         1 = 'Release number 1, March 2021'
   ;
   VALUE ER72769F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER72793F
         1 = 'Imputed value'
         0 = 'Inap.:  not imputed; did not use food stamp benefits last month (ER72786=5); DK, NA, or RF whether used food stamp benefits last month (ER72786=8 or 9); no additional money spent on food used at home'
             '(ER72790=5); DK, NA, or RF whether additional money spent on food used at home (ER72790=8 or 9); DK, NA, or RF amount spent on additional food (ER72791=99998 or 99999)'
   ;
   VALUE ER78001F
         1 = 'Release number 1, June 2023'
         2 = 'Release number 2, October 2023'
         3 = 'Release number 3, May 2025'
   ;
   VALUE ER78846F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER78870F
         1 = 'Imputed value'
         0 = 'Inap.:  not imputed; did not use food stamp benefits last month (ER78863=5); DK, NA, or RF whether used food stamp benefits last month (ER78863=8 or 9); no additional money spent on food used at home'
             '(ER78867=5); DK, NA, or RF whether additional money spent on food used at home (ER78867=8 or 9); DK, NA, or RF amount spent on additional food (ER78868=99998 or 99999)'
   ;
   VALUE ER82001F
         1 = 'Release number 1, May 2025'
   ;
   VALUE ER82839F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER82863F
         1 = 'Imputed value'
         0 = 'Inap.:  not imputed; did not use food stamp benefits last month (ER82856=5); DK, NA, or RF whether used food stamp benefits last month (ER82856=8 or 9); no additional money spent on food used at home'
             '(ER82860=5); DK, NA, or RF whether additional money spent on food used at home (ER82860=8 or 9); DK, NA, or RF amount spent on additional food (ER82861=99998 or 99999)'
   ;
RUN ;

FORMAT 
    ER42001    ER42001F.
    ER42675    ER42675F.
    ER42714    ER42714F.
    ER47301    ER47301F.
    ER47991    ER47991F.
    ER48030    ER48030F.
    ER53001    ER53001F.
    ER53703    ER53703F.
    ER53727    ER53727F.
    ER72001    ER72001F.
    ER72769    ER72769F.
    ER72793    ER72793F.
    ER78001    ER78001F.
    ER78846    ER78846F.
    ER78870    ER78870F.
    ER82001    ER82001F.
    ER82839    ER82839F.
    ER82863    ER82863F.
;

PROC FORMAT ; 
   VALUE C14B32F
         1 = 'Leave high school before graduation'
         2 = 'Graduate from high school'
         3 = 'Graduate from a two-year community college'
         4 = 'Graduate from a vocational school, such as beauty school'
         5 = 'Attend a 4-year college'
         6 = 'Graduate from a 4-year college'
         7 = 'Get more than 4 years of college'
         8 = 'Do something else'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  not age 12 or older; grade 6 or lower (C14B1=00-06 or 97); DK, NA, or RF grade (C14B1=98 or 99)'
   ;
   VALUE C14RELF
         1 = 'Release number 1 - February 2017'
         2 = 'Release number 2 - December 2017'
         3 = 'Release number 3 - May 2022'
   ;
   VALUE C19B32F
         1 = 'Leave high school before graduation'
         2 = 'Graduate from high school'
         3 = 'Graduate from a two-year community college'
         4 = 'Graduate from a vocational school, such as beauty school'
         5 = 'Attend a 4-year college'
         6 = 'Graduate from a 4-year college'
         7 = 'Get more than 4 years of college'
         8 = 'Do something else'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  not age 12 or older; grade 6 or lower (C19B1=00-06 or 97); DK, NA, or RF grade (C19B1=98 or 99)'
   ;
   VALUE C19RELF
         1 = 'Release number 1 - May 2022'
         2 = 'Release number 2 - August 2022'
   ;
   VALUE C21B32F
         1 = 'Leave high school before graduation'
         2 = 'Graduate from high school'
         3 = 'Graduate from a two-year community college'
         4 = 'Graduate from a vocational school, such as beauty school'
         5 = 'Attend a 4-year college'
         6 = 'Graduate from a 4-year college'
         7 = 'Get more than 4 years of college'
         8 = 'Do something else'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  not age 12 or older; grade 6 or lower (C21B1=00-06 or 97); DK, NA, or RF grade (C21B1=98 or 99)'
   ;
   VALUE C21RELF
         1 = 'Release number 1 - April 2024'
   ;
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
   VALUE ER13013F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER13014F
         1 = 'Newborn up to second birthday'
    2 - 17 = 'Actual age'
         0 = 'Inap.: no persons aged 17 or younger in FU'
   ;
   VALUE ER13021F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
   ;
   VALUE ER13040F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER14243F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14244F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14245F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14246F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14247F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14248F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14249F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14250F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14251F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14252F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14253F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14254F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1997'
   ;
   VALUE ER14255F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER14258F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14259F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14260F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14261F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14262F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14263F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14264F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14265F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14266F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14267F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14268F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14269F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps in 1998'
   ;
   VALUE ER14270F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER14271F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14272F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14273F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14274F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14275F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14276F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14277F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14278F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14279F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14280F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14281F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER14282F
         1 = 'Food stamps were used during this month'
         9 = 'NA; DK'
         0 = 'Inap.: food stamps not used during this month; received no food stamps this year'
   ;
   VALUE ER16255F
         1 = 'Received food stamps in 1997, 1998 or 1999'
         5 = 'All others'
   ;
   VALUE ER16423F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'NA; DK'
   ;
   VALUE ER16516F
         0 = 'Completed no grades of school'
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
   ;
   VALUE ER16517F
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
         0 = 'Inap.:   no wife/"wife" in FU; completed no grades of school'
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
   VALUE ER17016F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER17017F
         1 = 'Newborn up to second birthday'
    2 - 17 = 'Actual age'
         0 = 'Inap.: no persons aged 17 or younger in FU'
   ;
   VALUE ER17024F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
   ;
   VALUE ER17043F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER18386F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER18402F
         1 = 'Yes'
         5 = 'No'
         0 = 'Wild code'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER20201F
         1 = 'Received food stamps in 1999, 2000 or 2001'
         5 = 'All others'
   ;
   VALUE ER20369F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'NA; DK'
   ;
   VALUE ER20457F
         0 = 'Completed no grades of school'
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
   ;
   VALUE ER20458F
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
         0 = 'Inap.:   no wife/"wife" in FU; completed no grades of school'
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
   VALUE ER21020F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER21023F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER21042F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER21652F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER21668F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER23802F
         1 = 'Received food stamps in 2001, 2002 or 2003'
         5 = 'All others'
   ;
   VALUE ER24148F
         0 = 'Completed no grades of school'
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
   ;
   VALUE ER24149F
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
         0 = 'Inap.:   no wife/"wife" in FU; completed no grades of school'
   ;
   VALUE ER24150F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'NA; DK'
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
   VALUE ER25020F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER25023F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER25028F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER25654F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER25670F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER28047F
         0 = 'Completed no grades of school'
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
   ;
   VALUE ER28048F
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
         0 = 'Inap.:   no wife/"wife" in FU; completed no grades of school'
   ;
   VALUE ER28049F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'NA; DK'
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
   VALUE ER36020F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER36023F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER36028F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
         9 = 'Wild code'
   ;
   VALUE ER36672F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER36688F
         1 = 'Yes'
         5 = 'No'
         2 = 'Wild code'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER41037F
         0 = 'Completed no grades of school'
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
   ;
   VALUE ER41038F
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'NA; DK'
         0 = 'Inap.:   no wife/"wife" in FU; completed no grades of school'
   ;
   VALUE ER41039F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'NA; DK'
   ;
   VALUE ER42001F
         1 = 'Release number 1, July 2011'
         2 = 'Release number 2, November 2013'
         3 = 'Release number 3, February 2014'
         4 = 'Release number 4, January 2016'
         5 = 'Release number 5, November 2017'
         6 = 'Release number 6, June 2023'
   ;
   VALUE ER42020F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER42023F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER42029F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER42691F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER42707F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER46981F
         0 = 'Completed no grades of school'
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'DK; NA'
   ;
   VALUE ER46982F
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'DK; NA'
         0 = 'Inap.:   no wife/"wife" in FU (ER42019=0); completed no grades of school'
   ;
   VALUE ER46983F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'DK; NA'
   ;
   VALUE ER47301F
         1 = 'Release number 1, July 2013'
         2 = 'Release number 2, November 2013'
         3 = 'Release number 3, February 2014'
         4 = 'Release number 4, January 2016'
         5 = 'Release number 5, November 2017'
         6 = 'Release number 6, June 2023'
   ;
   VALUE ER47320F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER47323F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER47329F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER48007F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER48023F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER52405F
         0 = 'Completed no grades of school'
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'DK; NA'
   ;
   VALUE ER52406F
    1 - 16 = 'Actual number'
        17 = 'At least some post-graduate work'
        99 = 'DK; NA'
         0 = 'Inap.:   no Wife/"Wife" in FU (ER47319=0); completed no grades of school'
   ;
   VALUE ER52407F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'DK; NA'
   ;
   VALUE ER53001F
         1 = 'Release number 1, May 2015'
         2 = 'Release number 2, January 2016'
         3 = 'Release number 3, November 2017'
         4 = 'Release number 4, June 2023'
   ;
   VALUE ER53020F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER53023F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER53029F
         1 = 'Owns or is buying home, either fully or jointly; mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER53704F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER53720F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER58223F
         0 = 'Completed no grades of school'
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
   ;
   VALUE ER58224F
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
         0 = 'Inap.:   no Wife/"Wife" in FU (ER54305=5); completed no grades of school'
   ;
   VALUE ER58225F
         1 = 'Married or permanently cohabiting; wife, "wife," or husband is present in the FU'
         2 = 'Single, never legally married and no wife, "wife," or husband is present in the FU'
         3 = 'Widowed and no wife, "wife," or husband is present in the FU'
         4 = 'Divorced and no wife, "wife," or husband is present in the FU'
         5 = 'Separated; legally married but no wife, "wife," or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'DK; NA'
   ;
   VALUE ER60001F
         1 = 'Release number 1, May 2017'
         2 = 'Release number 2, June 2023'
   ;
   VALUE ER60021F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER60024F
         1 = 'Married'
         2 = 'Never married'
         3 = 'Widowed'
         4 = 'Divorced, annulled'
         5 = 'Separated'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER60030F
         1 = 'Any FU member owns or is buying (fully or jointly); mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER60719F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER60735F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER65459F
         0 = 'Completed no grades of school'
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
   ;
   VALUE ER65460F
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
         0 = 'Inap.:  completed no grades of school; no Spouse/Partner in FU (ER61347=5)'
   ;
   VALUE ER65461F
         1 = 'Married or permanently cohabiting; wife, partner, or husband is present in the FU'
         2 = 'Single, never legally married and no wife, partner or husband is present in the FU'
         3 = 'Widowed and no wife, partner or husband is present in the FU'
         4 = 'Divorced and no wife, partner or husband is present in the FU'
         5 = 'Separated; legally married but no wife, partner or husband is present in the FU  (the spouse may be in an institution)'
         9 = 'DK; NA'
   ;
   VALUE ER66001F
         1 = 'Release number 1, February 2019'
         2 = 'Release number 2, August 2019'
         3 = 'Release number 3, June 2023'
   ;
   VALUE ER66021F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER66030F
         1 = 'Any FU member owns or is buying (fully or jointly); mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER66766F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER66782F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER71538F
         0 = 'Completed no grades of school'
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
   ;
   VALUE ER71539F
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
         0 = 'Inap.:  completed no grades of school; no Spouse/Partner in FU (ER67399=5)'
   ;
   VALUE ER72001F
         1 = 'Release number 1, March 2021'
   ;
   VALUE ER72021F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER72030F
         1 = 'Any FU member owns or is buying (fully or jointly); mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER72770F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER72786F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER77599F
         0 = 'Completed no grades of school'
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
   ;
   VALUE ER77600F
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
         0 = 'Inap.:  completed no grades of school; no Spouse/Partner in FU (ER73422=5)'
   ;
   VALUE ER78001F
         1 = 'Release number 1, June 2023'
         2 = 'Release number 2, October 2023'
         3 = 'Release number 3, May 2025'
   ;
   VALUE ER78021F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER78031F
         1 = 'Any FU member owns or is buying (fully or jointly); mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER78847F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER78863F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER81926F
         0 = 'Completed no grades of school'
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
   ;
   VALUE ER81927F
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
         0 = 'Inap.:  completed no grades of school; no Spouse/Partner in FU (ER79524=5)'
   ;
   VALUE ER82001F
         1 = 'Release number 1, May 2025'
   ;
   VALUE ER82022F
         0 = 'None'
    1 - 18 = 'Actual number'
   ;
   VALUE ER82032F
         1 = 'Any FU member owns or is buying (fully or jointly); mobile home owners who rent lots are included here'
         5 = 'Pays rent'
         8 = 'Neither owns nor rents'
   ;
   VALUE ER82840F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER82856F
         1 = 'Yes'
         5 = 'No'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE ER85780F
         0 = 'Completed no grades of school'
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
   ;
   VALUE ER85781F
    1 - 17 = 'Actual number'
        99 = 'DK; NA'
         0 = 'Inap.:  completed no grades of school; no Spouse/Partner in FU (ER83493=5)'
   ;
   VALUE OCHREL07F
         1 = 'Release number 1 - June, 2013'
   ;
   VALUE P14F3F
         1 = 'Grade 11 or less'
         2 = 'Graduate from high school'
         3 = 'Post-high school vocational training'
         4 = 'Some college'
         5 = 'Graduate from 2-year college with Associate''s degree'
         6 = 'Graduate from a 4-year college'
         7 = 'Master''s degree or teaching credential program'
         8 = 'MD, law, Ph.D., or other doctoral degree'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  child age 1-5'
   ;
   VALUE P14RELF
         1 = 'Release number 1: February, 2017'
         2 = 'Release number 2: December, 2017'
   ;
   VALUE P19F3F
         1 = 'Grade 11 or less'
         2 = 'Graduate from high school or receive GED'
         3 = 'Post-high school vocational training'
         4 = 'Some college'
         5 = 'Graduate from 2-year college (Associate''s degree)'
         6 = 'Graduate from a 4-year college (Bachelor''s degree)'
         7 = 'Master''s (MA, MS, MBA) degree'
         8 = 'Medicine (MD), law (JD), doctorate (PhD) degree'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  child age 1-5'
   ;
   VALUE P19RELF
         1 = 'Release number 1 - May 2022'
   ;
   VALUE P21F3F
         1 = 'Grade 11 or less'
         2 = 'Graduate from high school or receive GED'
         3 = 'Post-high school vocational training'
         4 = 'Some college'
         5 = 'Graduate from 2-year college (Associate''s degree)'
         6 = 'Graduate from a 4-year college (Bachelor''s degree)'
         7 = 'Master''s (MA, MS, MBA) degree'
         8 = 'Medicine (MD), law (JD), doctorate (PhD) degree'
        98 = 'DK'
        99 = 'NA; refused'
         0 = 'Inap.:  child age 1-5'
   ;
   VALUE P21RELF
         1 = 'Release number 1 - April 2024'
   ;
   VALUE PCHREL07F
         1 = 'Release number 1 - October, 2009'
         2 = 'Release number 2 - January, 2010'
         3 = 'Release number 3 - June, 2013'
   ;
   VALUE Q31B2F
         1 = '11th grade or less'
         2 = 'Graduate from high school'
         3 = 'Post-high school vocational training'
         4 = 'Some college'
         5 = 'Graduate from 2 year college with associate''s degree'
         6 = 'Graduate from 4 year college'
         7 = 'Master''s degree or teaching credential program'
         8 = 'MD, law, PhD, or other doctoral degree'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE Q35A13F
         1 = '11th grade or less'
         2 = 'Graduate from high school'
         3 = 'Post-high school vocational training'
         4 = 'Some college'
         5 = 'Graduate from a 2-year college with associate''s degree'
         6 = 'Graduate from a 4-year college'
         7 = 'Master''s degree or teaching credential program'
         8 = 'M.D., Law, PH.D., or other doctoral degree'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE RT13V1F
         1 = 'Release number 1, October 2015'
         2 = 'Release number 2, August 2016'
         3 = 'Release number 3, May 2017'
         4 = 'Release number 4, June 2017'
         5 = 'Release number 5, February 2019'
         6 = 'Release number 6, May 2019'
         7 = 'Release number 7, March 2021'
         8 = 'Release number 8, May 2023'
         9 = 'Release number 9, May 2025'
   ;
   VALUE RT13V11F
         1 = 'Married/partnered with Head''s other parent'
         2 = 'No spouse/partner'
         3 = 'New spouse/partner'
         4 = 'Reported as deceased or presumed deceased'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE RT13V12F
         1 = 'Married/partnered with Head''s other parent'
         2 = 'No spouse/partner'
         3 = 'New spouse/partner'
         4 = 'Reported as deceased or presumed deceased'
         8 = 'DK'
         9 = 'NA; refused'
   ;
   VALUE RT13V13F
         1 = 'Married/partnered with Wife''s/"Wife''s" other parent'
         2 = 'No spouse/partner'
         3 = 'New spouse/partner'
         4 = 'Reported as deceased or presumed deceased'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.: no wife/"wife" in the FU (RT13V4=5)'
   ;
   VALUE RT13V14F
         1 = 'Married/partnered with Wife''s/"Wife''s" other parent'
         2 = 'No spouse/partner'
         3 = 'New spouse/partner'
         4 = 'Reported as deceased or presumed deceased'
         8 = 'DK'
         9 = 'NA; refused'
         0 = 'Inap.: no wife/"wife" in the FU (RT13V4=5)'
   ;
   VALUE TA050001F
         1 = 'Release number 1, April 2008'
         2 = 'Release number 2, November 2009'
         3 = 'Release number 3, July 2010'
         4 = 'Release number 4, September 2013'
         5 = 'Release number 5, December 2013'
   ;
   VALUE TA050947F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but she was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA050949F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but he was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA070001F
         1 = 'Release number 1, December 2009'
         2 = 'Release number 2, June 2010'
         3 = 'Release number 3, September 2013'
         4 = 'Release number 4, December 2013'
   ;
   VALUE TA070928F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but she was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA070930F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but he was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA090001F
         1 = 'Release number 1, March 2012'
         2 = 'Release number 2, September 2013'
         3 = 'Release number 3, December 2013'
   ;
   VALUE TA090992F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but she was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA090994F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but he was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA110001F
         1 = 'Release number 1, September 2013'
         2 = 'Release number 2, December 2013'
   ;
   VALUE TA111134F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but she was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA111136F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but he was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA130001F
         1 = 'Release number 1, January 2016'
         2 = 'Release number 2, July 2017'
   ;
   VALUE TA131226F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but she was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA131228F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but he was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA150001F
         1 = 'Release number 1, July 2017'
         2 = 'Release number 2, December 2017'
   ;
   VALUE TA151286F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but she was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA151288F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but he was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA170001F
         1 = 'Release number 1, August 2019'
         2 = 'Release number 2, May 2020'
   ;
   VALUE TA171981F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA171983F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA190001F
         1 = 'Release number 1, October 2021'
         2 = 'Release number 2, December 2021'
   ;
   VALUE TA192192F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA192194F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but was never in the study and no education information available'
        98 = 'DK'
        99 = 'NA; refused'
   ;
   VALUE TA210001F
         1 = 'Release number 1, March 2024'
   ;
   VALUE TA212387F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but was never in the study and no education information available'
        99 = 'DK; NA; refused'
   ;
   VALUE TA212389F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but was never in the study and no education information available'
        99 = 'DK; NA; refused'
   ;
   VALUE TA230001F
         1 = 'Release number 1, November 2025'
   ;
   VALUE TA232394F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Mother is unknown; mother is known but was never in the study and no education information available'
        99 = 'DK; NA; refused'
   ;
   VALUE TA232396F
    0 - 16 = 'Actual years of education'
        17 = 'At least some post-graduate work'
        96 = 'Father is unknown; father is known but was never in the study and no education information available'
        99 = 'DK; NA; refused'
   ;
   VALUE V441F
         2 = 'Release number 2 - May 2008'
         3 = 'Release number 3 - December 2013'
   ;
   VALUE V634F
         1 = 'Yes'
         5 = 'No'
         7 = 'Not asked, since family clearly ineligible'
         9 = 'NA'
   ;
RUN ;

FORMAT 
    C14B32     C14B32F.
    C14REL     C14RELF.
    C19B32     C19B32F.
    C19REL     C19RELF.
    C21B32     C21B32F.
    C21REL     C21RELF.
    ER13001    ER13001F.
    ER13013    ER13013F.
    ER13014    ER13014F.
    ER13021    ER13021F.
    ER13040    ER13040F.
    ER14243    ER14243F.
    ER14244    ER14244F.
    ER14245    ER14245F.
    ER14246    ER14246F.
    ER14247    ER14247F.
    ER14248    ER14248F.
    ER14249    ER14249F.
    ER14250    ER14250F.
    ER14251    ER14251F.
    ER14252    ER14252F.
    ER14253    ER14253F.
    ER14254    ER14254F.
    ER14255    ER14255F.
    ER14258    ER14258F.
    ER14259    ER14259F.
    ER14260    ER14260F.
    ER14261    ER14261F.
    ER14262    ER14262F.
    ER14263    ER14263F.
    ER14264    ER14264F.
    ER14265    ER14265F.
    ER14266    ER14266F.
    ER14267    ER14267F.
    ER14268    ER14268F.
    ER14269    ER14269F.
    ER14270    ER14270F.
    ER14271    ER14271F.
    ER14272    ER14272F.
    ER14273    ER14273F.
    ER14274    ER14274F.
    ER14275    ER14275F.
    ER14276    ER14276F.
    ER14277    ER14277F.
    ER14278    ER14278F.
    ER14279    ER14279F.
    ER14280    ER14280F.
    ER14281    ER14281F.
    ER14282    ER14282F.
    ER16255    ER16255F.
    ER16423    ER16423F.
    ER16516    ER16516F.
    ER16517    ER16517F.
    ER17001    ER17001F.
    ER17016    ER17016F.
    ER17017    ER17017F.
    ER17024    ER17024F.
    ER17043    ER17043F.
    ER18386    ER18386F.
    ER18402    ER18402F.
    ER20201    ER20201F.
    ER20369    ER20369F.
    ER20457    ER20457F.
    ER20458    ER20458F.
    ER21001    ER21001F.
    ER21020    ER21020F.
    ER21023    ER21023F.
    ER21042    ER21042F.
    ER21652    ER21652F.
    ER21668    ER21668F.
    ER23802    ER23802F.
    ER24148    ER24148F.
    ER24149    ER24149F.
    ER24150    ER24150F.
    ER25001    ER25001F.
    ER25020    ER25020F.
    ER25023    ER25023F.
    ER25028    ER25028F.
    ER25654    ER25654F.
    ER25670    ER25670F.
    ER28047    ER28047F.
    ER28048    ER28048F.
    ER28049    ER28049F.
    ER30021    ER30021F.
    ER30022    ER30022F.
    ER32000    ER32000F.
    ER32006    ER32006F.
    ER33502    ER33502F.
    ER33503    ER33503F.
    ER33602    ER33602F.
    ER33603    ER33603F.
    ER33702    ER33702F.
    ER33703    ER33703F.
    ER33802    ER33802F.
    ER33803    ER33803F.
    ER33902    ER33902F.
    ER33903    ER33903F.
    ER34002    ER34002F.
    ER34003    ER34003F.
    ER34102    ER34102F.
    ER34103    ER34103F.
    ER34202    ER34202F.
    ER34203    ER34203F.
    ER34302    ER34302F.
    ER34303    ER34303F.
    ER34502    ER34502F.
    ER34503    ER34503F.
    ER34702    ER34702F.
    ER34703    ER34703F.
    ER34902    ER34902F.
    ER34903    ER34903F.
    ER35102    ER35102F.
    ER35103    ER35103F.
    ER36001    ER36001F.
    ER36020    ER36020F.
    ER36023    ER36023F.
    ER36028    ER36028F.
    ER36672    ER36672F.
    ER36688    ER36688F.
    ER41037    ER41037F.
    ER41038    ER41038F.
    ER41039    ER41039F.
    ER42001    ER42001F.
    ER42020    ER42020F.
    ER42023    ER42023F.
    ER42029    ER42029F.
    ER42691    ER42691F.
    ER42707    ER42707F.
    ER46981    ER46981F.
    ER46982    ER46982F.
    ER46983    ER46983F.
    ER47301    ER47301F.
    ER47320    ER47320F.
    ER47323    ER47323F.
    ER47329    ER47329F.
    ER48007    ER48007F.
    ER48023    ER48023F.
    ER52405    ER52405F.
    ER52406    ER52406F.
    ER52407    ER52407F.
    ER53001    ER53001F.
    ER53020    ER53020F.
    ER53023    ER53023F.
    ER53029    ER53029F.
    ER53704    ER53704F.
    ER53720    ER53720F.
    ER58223    ER58223F.
    ER58224    ER58224F.
    ER58225    ER58225F.
    ER60001    ER60001F.
    ER60021    ER60021F.
    ER60024    ER60024F.
    ER60030    ER60030F.
    ER60719    ER60719F.
    ER60735    ER60735F.
    ER65459    ER65459F.
    ER65460    ER65460F.
    ER65461    ER65461F.
    ER66001    ER66001F.
    ER66021    ER66021F.
    ER66030    ER66030F.
    ER66766    ER66766F.
    ER66782    ER66782F.
    ER71538    ER71538F.
    ER71539    ER71539F.
    ER72001    ER72001F.
    ER72021    ER72021F.
    ER72030    ER72030F.
    ER72770    ER72770F.
    ER72786    ER72786F.
    ER77599    ER77599F.
    ER77600    ER77600F.
    ER78001    ER78001F.
    ER78021    ER78021F.
    ER78031    ER78031F.
    ER78847    ER78847F.
    ER78863    ER78863F.
    ER81926    ER81926F.
    ER81927    ER81927F.
    ER82001    ER82001F.
    ER82022    ER82022F.
    ER82032    ER82032F.
    ER82840    ER82840F.
    ER82856    ER82856F.
    ER85780    ER85780F.
    ER85781    ER85781F.
    OCHREL07   OCHREL07F.
    P14F3      P14F3F.
    P14REL     P14RELF.
    P19F3      P19F3F.
    P19REL     P19RELF.
    P21F3      P21F3F.
    P21REL     P21RELF.
    PCHREL07   PCHREL07F.
    Q31B2      Q31B2F.
    Q35A13     Q35A13F.
    RT13V1     RT13V1F.
    RT13V11    RT13V11F.
    RT13V12    RT13V12F.
    RT13V13    RT13V13F.
    RT13V14    RT13V14F.
    TA050001   TA050001F.
    TA050947   TA050947F.
    TA050949   TA050949F.
    TA070001   TA070001F.
    TA070928   TA070928F.
    TA070930   TA070930F.
    TA090001   TA090001F.
    TA090992   TA090992F.
    TA090994   TA090994F.
    TA110001   TA110001F.
    TA111134   TA111134F.
    TA111136   TA111136F.
    TA130001   TA130001F.
    TA131226   TA131226F.
    TA131228   TA131228F.
    TA150001   TA150001F.
    TA151286   TA151286F.
    TA151288   TA151288F.
    TA170001   TA170001F.
    TA171981   TA171981F.
    TA171983   TA171983F.
    TA190001   TA190001F.
    TA192192   TA192192F.
    TA192194   TA192194F.
    TA210001   TA210001F.
    TA212387   TA212387F.
    TA212389   TA212389F.
    TA230001   TA230001F.
    TA232394   TA232394F.
    TA232396   TA232396F.
    V441       V441F.
    V634       V634F.
;

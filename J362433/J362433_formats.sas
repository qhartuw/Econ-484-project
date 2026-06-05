PROC FORMAT ; 
   VALUE ER30000F
         1 = 'Release number 1, May 2025'
         2 = 'Release number 2, December 2025'
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
   VALUE ER72001F
         1 = 'Release number 1, March 2021'
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
RUN ;

FORMAT 
    ER30000    ER30000F.
    ER32000    ER32000F.
    ER32006    ER32006F.
    ER34702    ER34702F.
    ER34703    ER34703F.
    ER34716    ER34716F.
    ER34752    ER34752F.
    ER34902    ER34902F.
    ER34903    ER34903F.
    ER72001    ER72001F.
    ER77599    ER77599F.
    ER77600    ER77600F.
;

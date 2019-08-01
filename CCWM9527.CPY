      *****************************************************************
      **  MEMBER :  CCWM8000                                         **
      **  REMARKS:  MESSAGE INTERFACE FOR POLICY RETRIEVAL           **
      *****************************************************************
      **  RELEASE   DESCRIPTION                                      **
      **                                                             **
      **  6.0       NEW FOR 6.0                                      **
014221**  6.2       LOGICAL LOCKING                                  **
015904**  6.2       CLEANUP MIR FIELD NAMES                          **
016395**  6.2       CREDIT CARD PROCESSING                           **
016440**  6.2       COMBINE NEWBUS AND ADMIN                         **
013697**  6.3       ROTH IRA / EDUCATIONAL IRA                       **
019840**  6.3       CORRECT MIR-POL-COMNT-TXT FIELD LENGTH           **
020452**  6.4       FOREIGN CONTENT FOR RRSP PRODUCTS                **
020453**  6.4       RECORD POLICY SETTLEMENT OPTIONS                 **
020460**  6.4       DTCC/IPS CONNECTIVITY                            **
020463**  6.4       INVESTOR PROFILES                                **
020475**  6.4       DEATH BENEFIT GUARANTEES AND RIDERS              **
AAG001**  00002     JULY 05,2002   JUSTIN SU                         **
AAG001**            EXPAND AGENT CODE                                **
ACL002**  00002     JULY 31,2002 HOLDEN ZHANG                        **
ACL002**            ADD CLIENT CLASSIFICATION(VIP) FIELD             **
APR005**  00002     JULY 31,2002 HOLDEN ZHANG                        **
APR005**            ADD MODE FACTOR TYPE FIELD                       **
APR002**  00002     JULY 31,2002 HOLDEN ZHANG                        **
APR002**            ADD PREMIUM HOLIDAY INDICATOR,PREMIUM HOLIDAY    **
APR002**            STATUS FIELDS                                    **
ANB007**  00002     JULY 31, 2002 HOLDEN ZHANG                       **
ANB007**            ADD INSURED APPLICATION NATURE,PAYOR APPLICATION **
ANB007**            NATURE,POLICY CONTRACT DATE,INITIAL ADHOC TOP UP,**
ANB007**            WITHHELD COMMISSION INDICATOR,POLICY ENTRY DATE, **
ANB007**            INSURED HEALTH QUESTION YES,PAYOR HEALTH QUESTION**
ANB007**            YES,EXTRA COMMISSION ELIGIBILITY,REISSUE         **
ANB007**            INDICATOR,SPECIAL QUOTATION INDICATOR,STATUS     **
ANB007**            REASON CODE,PAYMENT TYPE CODE,LAST CHEQUE        **
ANB007**            CLEARING DATE FIELDS                             **
ACL002**  00002     JULY 26, 2002 MARTIN LU                          **
ACL002**            CLIENT NAME/ADDRESS EXPANSION                    **
ANB007**  00002     SEP 06, 2002 MARTIN LU                           **
ANB007**            CORRECT ERROR FOR MIR-INIT-ATOPUP-AMT            **
ANB007**  00002     AUG 07,2002 SUNPACHAI.A                          **
ANB007**            NB CAPTURE EDITING                               **
AAG008**  00002      20 SEP. 2002 LEON LIU                           **
AAG008**  00002      WRITING AGENT                                   **
ANB008**  00002     SEP 22, 2002 MARTIN LU                           **
ANB008**            ISSUE/SETTLE SCREENS TO SHOW PREMIUMS            **
ANB008**            RECEIVED AND APPLIED                             **
ABC003**  00002     OCT 16, 2002 KELVIN CHAN                         **
ABC003**             ADD POL-SPND-IND RETRIEVAL FOR BF9097           **
AAG005**  00002      NOV 27, 2002 HOLDEN ZHANG                       **
AAG005**             SERVICING AGENT HANDLING                        **
ACL002**  00002     NOV 26, 2002 LEON LIU                            **
ACL002**            CLIENT TAX ID EXPANSION                          **
ANB007**  00002     NOVEMBER 29, 2002 PHYLLIS LAM                    **
ANB007**            ADD POLICY INFORCE DATE                          **
ANB007**  00002     DECEMBER 2, 2002 PHYLLIS LAM                     **
ANB007**            ADD NB LAST PAYMENT DATE                         **
ANB008**  00002     DEC 13, 2002 MARTIN LU                           **
ANB008**            ONLY CALL MQ WHEN SETTLE POLICY FOR GETTING NON- **
ANB008**            POST AMOUNT                                      **
APA006**  00003     MAR 18, 2003 HOLDEN ZHANG                        **
APA006**            POLICY RESTRICTION                               **
APA022**  00003     JUN 09, 2003 TOBY LAM                            **
APA022**            ENHANCED INQUIRY - LAPSE START DATE              **
APA020**  00003     MAY 26, 2003 SUNPACHAI A.                        **
APA020**            POLICY SUSPEND INDICATOR                         **
ANB021**  00003     JUN 11, 2003 JERY WEI                            **
ANB021**            ADDITIONAL PHASE I ENHANCEMENT                   **
AGL079**  REL6.4    AUG 11, 2003  RAIN LIU                           **
AGL079**            V6.3.1 THAI CHANGED RETROFIT TO V6.4             **
WNB002**  00001     FEB 02, 2004  RAIN LEI                           **
WNB002**            PIL POLICY ACKNOWLEDGEMENT FORM                  **
WCL002**  00001     DEC 16, 2003  RAIN LEI                           **
WCL002**            ADD OTHER CLIENT ADDRESS                         **
WNB003**  00001     JAN 08, 2004  LIMEI HSIEH                        **
WNB003**            NB APPLICATION ENTRY                             **
AGL116**  00003     DEC 11, 2003 ROONGTIWA S.                        **
AGL116**            ADD PENDING FUND UNITIZATION DATE                **
AGL116**  00003     MAR 19, 2004 KUAN CHEN                           **
AGL116**            CORE RETROFIT                                    **
WNB003**  00001     APR 07, 2004 ANTHONY KH HO                       **
WNB003**            NB APPLICATION ENTRY                             **
WAG005**  00001     MAY 04, 2004  RAINBOW YU                         **
WAG005**            ADD PRIMARY WRITING AGENT INDICATOR (CRF#040)    **
WCL002**  00001     JUN 03, 2004  CONY HUANG                         **
WCL002**            ADD POLICY CONTACT EMAIL                         **
WNB003**  00001     JUN 17, 2004  KERRY TSAI                         **
WNB003**            CAMPAIGN CODE NEED DISPLAY & SET UP AT PH TABLE  **
WNB003**            PIR REFERENCE : PIR-ST-0088                      **
WNB003**  00001     JUL 18, 2004  ROSA LU                            **
WNB003**            PIR 447 FIX                                      **
WNB003**            ADD FOLLOWING INFORMATION TO ON-LINE SCREEN      **
WNB003**                AGENT CLASS CODE                             **
WNB003**                AGENT CATEGORY CODE                          **
WNB003**                AGENT CONTRACT START DATE                    **
WNB012**  00001     OCT 04, 2004  SARAH CHANG                        **
WNB012**            ADD NEW FIELD EMPLOYEE INDICATOR                 **
WNB014**  00001     NOV 11, 2004  FRANK LIU                          **
WNB014**            ADD TWO NEW FIELDS:                              **
WNB014**            POL-CCAS-IND, OTHR-ISS-REQIR-IND                 **
WNB022**  00001     DEC 17, 2004  BRETT CHIEN                        **
WNB022**            ADD E-AAS PENDING MEMO DATE & ACKNOWLEDGEMENT DUE**
WNB022**            RECEIVED DATE & ACKNOWLEDGEMENT DUE FINAL DATE & **
WNB022**            END OF FREE LOOK DATE                            **
WNB023**  00001     JAN 25, 2005  RAINMAN FENG                       **
WNB023**            FIELD EXTEND AND ADD FOR VIP PROJECT             **
WNB015**  00001     FEB 22, 2005  FRANK LIU                          **
WNB015**            ADD TWO ADDRESS FIELDS,MIR-INSRD-DCLR-1-CD       **
WNB015**            MIR-INSRD-DCLR-2-CD,MIR-INSRD-DCLR-3-CD          **
WBC018**  00001     FEB 01, 2005  STEPHANIE HUANG                    **
WBC018**            POLICY UPDATE SCREEN ENHANCEMENT                 **
WAG012**  00001     FEB 27, 2005  KUAN CHEN                          **
WAG012**            CAMPAIGN CODE PROCESSING                         **
WNB015**  00001     MAR 10, 2005  RAINMAN FENG                       **
WNB015**            ADDRESS DISPLAY NEED INCLUDE COUNTY CITY         **
WNB015**            (UAT-PIR-869)                                    **
WNB021**  00001     FEB 23, 2005  PETER CHANG                        **
WNB021**            ADD INITIAL PREMIUM DATE                         **
WNB015**  00001     MAR 19, 2005  RICHARD JAN                        **
WNB015**            INQUIRY ASSET REBALANCE STATUS                   **
WNB015**  00001     MAR 29, 2005  RAINMAN FENG                       **
WNB015**            ADDRESS DISPLAY NEED ADDRESS 2 AND ADDRESS 3     **
WNB015**            (UAT-PIR-869)                                    **
WBC028**  00001     APR 12, 2005  VIVI LIN                           **
WBC028**            ADD REGULAR TOP UP FOR  WBC028                   **
WNB015**  00001     APR 13, 2005  SIMON CHIEN                        **
WNB015**            FIX UAT-PIR-840 (ADD FUND ALLOCATION INFO)       **
WPR018**  00001     JUN 14, 2005  JACKY HUANG                        **
WPR018**            ADD NEW FIELD: ANTY-GUAR-YR-DUR                  **
WPR018**  00001     JUN 25, 2005  BRETT CHIEN                        **
WPR018**            SPDA                                             **
WPR019**  00001     JUL 05, 2005  CALVIN CHEN                        **
WPR019**            ADD NEW FIELD: MIR-POL-ANPAYO-OPT-CD             **
BNB005**  00003     NOV 17, 2003  MOSES MO                           ** AGL139
BNB005**            INTERFACE WITH FREELOOK                          ** AGL139
APR053**  00003     NOV 27, 2003 ROONGTIWA S.                        ** AGL139
APR053**            ADD FREE LOOK TRANSFER DATE                      ** AGL139
APA060**  00004     DEC 11, 2003 ROONGTIWA S.                        ** AGL139
APA060**            ADD PENDING FUND UNITIZATION DATE                ** AGL139
BAG002**  00004     DEC 30, 2003 GLORIA CHEN                         ** AGL139
BAG002**            SERVICING AGENT ON COMPLAINT POLICY              ** AGL139
APR051**  00004     JAN 30, 2004 TIGER WANG                          ** AGL139
APR051**            ADD APL STOP RULE AND NFO RESTRICTION RULE       ** AGL139
ANB007**  00004     APR 05, 2004  MOSES MO                           ** AGL139
ANB007**            DISPLAY INSURED WHO NOT SAME AS OWNER            ** AGL139
ANB007**            AND REJECT REASON  (ST_PIR 111)                  ** AGL139
ANB006**  00004     JAN 16, 2004 CHAIANUNT C.                        ** AGL139
ANB006**            ADD NEW FIELD ON NB CAPTURE SCREEN               ** AGL139
APR061**  REL6.5    JUN 15, 2004  WILSON WANG                        ** AGL139
APR061**            EXCESS DIVIDEND OPTION                           ** AGL139
APR086**  00005     SEP 02, 2004 EVA CHAN                            ** AGL139
APR086**            PR #02                                           ** AGL139
APR086**            EXCESS COUPON OPTION                             ** AGL139
APR079**  00005     NOV 26, 2004 KEITH WONG                          ** AGL139
APR079**            PR #01                                           ** AGL139
APR079**            ADD DEFAULT NFO INDICATOR FOR PAID UP            ** AGL139
APR087**  00005     DEC 01, 2004 KEN CHAU                            ** AGL139
APR087**            PR# 02                                           ** AGL139
APR087**            ADD NEW FIELD - CONTEST MERGING POLICY           ** AGL139
ANB006**  00005     OCT 27, 2004 JOHN CHEN                           ** AGL139
ANB006**            PR#20                                            ** AGL139
ANB006**            PACKAGE PLAN SUPPORT                             ** AGL139
ANB006**            PR#22                                            ** AGL139
ANB006**            NEW FIELDS ON NB CAPTURE SCREENS                 ** AGL139
ANB006**  00005     MAR 10, 2005 KEN CHAU                            ** AGL139
ANB006**            PR #08                                           ** AGL139
ANB006**            ADD NEW FIELD - AGNCY-BR-ID                      ** AGL139
ANB006**            REF: TLD_ING_ULUAT_PIR #624                      ** AGL139
APR077**  00005     FEB 28, 2005 RAIN LIU                            ** AGL139
APR077**            PR#12                                            ** AGL139
APR077**            MULTICURRENCY MOD. FOR NB                        ** AGL139
ANB025**  00005     APR 18, 2005 HENRY LIU                           ** AGL139
ANB025**            PR #02                                           ** AGL139
ANB025**            ADD CORPORATION ID AND CHANNEL CODE IN POLICY    ** AGL139
ANB025**            RETRIEVE WHEN POLICY DISTRIBUTION CHANNEL IS WSM ** AGL139
APA036**  00005     APR 21, 2005 RICHARD HU                          ** AGL139
APA036**            PR #07                                           ** AGL139
APA036**            ONLIINE INQUIRY OF TERMINATE MASTERS             ** AGL139
ANB006**  00006     JUN 13, 2005 KEN CHAU                            ** AGL139
ANB006**            PR #27                                           ** AGL139
ANB006**            ADD NEW FIELDS - REJECTION REASON CODE,          ** AGL139
ANB006**            REJECTION REASON CONDITION CODE, NEGATIVE CODE,  ** AGL139
ANB006**            REJECTION REQUEST DATE, REISSUE DATE,            ** AGL139
ANB006**            REISSUE CANCEL DATE, REISSUE END DATE            ** AGL139
ANB006**            REF: THD_UAT_IGM_UL_PIR #898                     ** AGL139
ANB024**  00006     AUG 10, 2005 RAYMOND LEUNG                       ** AGL139
ANB024**            PR#06                                            ** AGL139
ANB024**            ADD REQUIRED PREMIUM BEFORE SETTLEMENT           ** AGL139
ANB024**            REF: THD_PROD_IGM_PIR#199                        ** AGL139
ANB024**  00006     AUG 24, 2005 RAYMOND LEUNG                       ** AGL139
ANB024**            PR#06                                            ** AGL139
ANB024**            SKIP REVISION 2.18                               ** AGL139
ANB024**            REF: THD_PROD_IGM_PIR#199                        ** AGL139
ANB024**  00006     AUG 24, 2005 RAYMOND LEUNG                       ** AGL139
ANB024**            PR#06                                            ** AGL139
ANB024**            RETROFITTING REVISION 2.18                       ** AGL139
ANB024**            REF: THD_PROD_IGM_PIR#199                        ** AGL139
ANB006**  00006     SEP 9, 2005 SHERRIE HAN                          ** AGL139
ANB006**            PR #33                                           ** AGL139
ANB006**            ADD LEAD CODE                                    ** AGL139
ANB006**  00006     SEP 15, 2005 SHERRIE HAN                         ** AGL139
ANB006**            PR #33                                           ** AGL139
ANB006**            SKIP REVISION 2.21                               ** AGL139
ANB006**  00006     SEP 15, 2005 SHERRIE HAN                         ** AGL139
ANB006**            PR #33                                           ** AGL139
ANB006**            FIX SKIP REVISION 2.21                           ** AGL139
AGL139**  AGL139    OCT 10, 2005 BRAD WU                             **
AGL139**            INGENIUM MERGING (NS AND TH)                     **
AGL139**            AGL116 AND APA060 ARE SAME TASK, USE AGL116      **
ANB006**  00006     SEP 15, 2005 SHERRIE HAN                         ** AGL139
ANB006**            PR #33                                           ** AGL139
ANB006**            RETROFITTING REVISION 2.21                       ** AGL139
ANB028**  00006     SEP 14, 2005 SENTHIL V                           ** AGL139
ANB028**            PR #01, PR #2                                    ** AGL139
ANB028**            NB APPLICATION ENTRY FOR BATCH UPLOAD ENHANCEMENT** AGL139
ANB028**  00006     OCT 10, 2005 JASON ZHOU                          ** AGL139
ANB028**            PR #2                                            ** AGL139
ANB028**            SKIP REVISION 2.21                               ** AGL139
ANB028**  00006     OCT 10, 2005 JASON ZHOU                          ** AGL139
ANB028**            PR #2                                            ** AGL139
ANB028**            RETROFITTING REVISION 2.21                       ** AGL139
AGL139**  AGL139    DEC 20, 2005 BRAD WU                             **
AGL139**            INGENIUM MERGING (NS AND TH)  2ND PHASE          **
AAG024**  00007     OCT 10, 2005  NELSON CHO                         **
AAG024**            PR #06                                           **
AAG024**            ORIGINAL WRITING AGENT                           **
APA061**  00007     NOV 15, 2005 HOLDEN ZHANG                        **
APA061**            PR #05                                           **
APA061**            ATTACH CHANNEL CODE TO ALL POLICIES              **
APA061**            AT COVERAGE LEVEL                                **
ACL013**  *****     FEB 13, 2006 CHARLIE WU                          **
ACL013**            PR #01                                           **
ACL013**            INCREASE ADDRESS TO 5 LINES                      **
AGL149**  *****     MAR 28, 2006  ELYN FU                            **
AGL149**            PR #04                                           **
AGL149**            ADD NAME TYPE AND SEQ NUM                        **
ANB006**  *****     JUL 25, 2006  DANIEL WU                          **
ANB006**            PIR REFERENCE: THD_PROD_SMRF_PIR #274            **
ANB006**            PR #38                                           **
ANB006**            ADD EXTERNAL REFERENCE TEXT                      **
APA040**  *****     JUL 06, 2006 RAY ZHANG                           **
APA040**            PR #01                                           **
APA040**            ADD PAYOR BENEFIT RELATIONSHIP                   **
APA040**            PIR REFERENCE : THD_UAT_IGM_UL_PIR #975          **
APA070**  *****     FEB 21, 2006  ERIC CHAN                          **
APA070**            PR #09                                           **
APA070**            POSITIVE OPTION MODIFICATION                     **
ANB006**  *****     SEP 05, 2006  PHYLLIS LAM                        **
ANB006**            = 3.6                                            **
APA040**  *****     OCT 09, 2006  JUSTIN SU                          **
APA040**            = 3.8                                            **
CFA001**  *****     AUG 13, 2007 SARAH MU                            **
CFA001**            PR #2 OF FREE LOOK TRANSFER                      **
CFA001**            SHOWING FUND ALLOCATION DATE IN POLICY INQUIRY   **
CAC001**  *****     AUG 31, 2007 DONNY FENG                          **
CAC001**            PR#6 EXTEND CHANNEL CODE AND CAMPAIGN CODE       **
CAC001**  *****     SEP 21, 2007 DONNY FENG                          **
CAC001**            PR#6 EXTEND CHANNEL CODE AND CAMPAIGN CODE       **
CPA001**  *****    AUG 30, 2007  GARY HE                             ** 08300702
CPA001**           PR #02                                            ** 08300702
CPA001**           ADD OWNER INFO, INSURED INFO AND ADDRESS KEYS     ** 08300702
CPA001**  *****     OCT 10, 2007 GARY HE                             ** 10100702
CPA001**            ADD PERIOD AFTER MIR-CLI-HT-T TO REMOVE SEVERTY  ** 10100702
CPA001**            20 WARNING                                       ** 10100702
CPA006**  *****     SEP 26, 2007  ERIC WU                            ** 09260702
CPA006**            PR #2                                            ** 09260702
CPA006**            POLICY BASIC INFORMATION INQUIRY                 ** 09260702
CPA001**  *****     JAN 11, 2008 GARY HE                             **
CPA001**            PR #2                                            **
CPA001**            RENAME SHIP-IND TO SHIP-CD                       **
CGL003**  *****     MAR 03, 2008  JOYIN SU                           **
CGL003**            PR#23                                            **
CGL003**            UPDATE POL-BILL-TO-DT-NUM BASE ON ISSUE DATE     **
CFA208**  *****     JAN 24, 2009  RONNIE WEN                         **
CFA208**            PR #06                                           **
CFA208**            ADD POL-UL-PRCES-DT, POL-UL-PTD-NUM,             **
CFA208**            POL-UL-SHRT-AMT                                  **
CPR203**  *****     SEP 24, 2008 REVAN SHEN                          **
CPR203**            PR#2                                             **
CPR203**            ADD NEXT LOAN INTEREST CAPITALIZE DATE           **
CPR224**  *****     MAY 19, 2009  TANKY TIAN                         **
CPR224**            PR #04                                           **
CPR224**            POLICY EXTENSION TABLE CHANGES                   **
CPR218**  *****     MAY 13, 2009 FEN LI                              **
CPR218**            PR#2 NEW FIELDS ON POLICY EXTENSION TABLE        **
CPR218**            ADD POL-WAV-STAT-CD, MAV-WAV-STRT-DT,            **
CPR218**            PREM-WAV-STRT-DT                                 **
CPR105**  *****     JAN 27, 2010 RAX WANG                            **
CPR105**            PR #1                                            **
CPR105**            ADD CONVERSION INDICATOR IN POLICY INQUIRY       **
CPR105**            SCREEN                                           **
CPR111**  *****     MARCH 26, 2010 JULIE LIU                         **
CPR111**            PR# 01                                           **
CPR111**            SERCHO201003005                                  **
CPR111**            ADD CUSTOMER RISK SCORE FOR EACH POLICY          **
CPR301**  *****     MAY 14, 2012 ANWAY CAI                           **
CPR301**            PR# 07                                           **
CPR301**            ADD POL_ANTY_OPT_CD, POL_ANTY_XCES_CD,           **
CPR301**            IN POLICY ENQUIRY.                               **
CPA301**  *****     MAY 31, 2012  ANWAY CAI                          ** 05311204
CPA301**            PR #04                                           ** 05311204
CPA301**            POLICY PLEDGE FLAG UPDATE                        ** 05311204
CPR311**  *****     SEP 10, 2012  ANWAY CAI                          ** 09101201
CPR311**            PR #01                                           ** 09101201
CPR311**            PRODUCT SETUP FOR DCA PROCESS                    ** 09101201
CBC109**  *****     MAY 02, 2013  RONNIE WEN                         **
CBC109**            PR #01                                           **
CBC109**            ADD NEW FIELD FOR CAMPAIGN ID                    **
CPR133**  *****     FEB 24, 2014  DONTE CHEN                         **
CPR133**            PR #02                                           **
CPR133**            ADD NEW FIELD FOR POLICY MODAL PREMIUM (WAIVED)  **
CPR133**  *****     FEB 26, 2014 DONTE CHEN                          **
CPR133**            PR #01                                           **
CPR133**            ADD NEW FIELD FOR EMBEDDED WAIVER                **
CPR143**  *****     MAY 28, 2014 JOHN LIU                            **
CPR143**            PR#02                                            **
CPR143**            ADD NEW FIELDS FOR IER COUPON                    **
CPR148**  *****     MAR 20, 2015  JOHN LIU                           **
CPR148**            PR #01                                           **
CPR148**            SPUL ENHANCEMENT                                 **
CPR149**  *****     JUN 17, 2015  MICHAEL OU                         **
CPR149**            PR #04                                           **
CPR149**            JOINT PB ADD RELATIONSHIP TO PRIMARY INSURED     **
CPR177**  *****     NOV 13, 2018 DONTE CHEN                          **
CPR177**            PR #02                                           **
CPR177**            CLIENT ID CARD ENHANCEMENT                       **
      *****************************************************************
       01  MIR-PARM-AREA.

           05  MIR-CONTROL-AREA.
               10  MIR-BUS-FCN-ID                   PIC X(04).
               10  MIR-LENGTH                       PIC X(05).
               10  MIR-RETRN-CD                     PIC X(02).
                   88  MIR-RETRN-OK                 VALUE '00'.
                   88  MIR-RETRN-EDIT-ERROR         VALUE '01'.
                   88  MIR-RETRN-RQST-FAILED        VALUE '02'.
014221             88  MIR-RETRN-TS-MISMATCH        VALUE '05'.
                   88  MIR-RETRN-INVALD-RQST        VALUE '99'.

           05  MIR-INPUT-AREA.
               10  MIR-POL-ID.
                   15  MIR-POL-ID-BASE               PIC X(009).
                   15  MIR-POL-ID-SFX                PIC X(001).
APA036*  START                                                          04210507
               10  MIR-MAST-DISP-CD                  PIC X(001).
                   88  MIR-MAST-DISP-POL             VALUE 'P'.
                   88  MIR-MAST-DISP-TERM            VALUE 'T'.
APA036*  END                                                            04210507

           05  MIR-IO-AREA.
ANB008         10  MIR-DV-MQ-CALL-SW                 PIC X(001).
               10  FILLER                            PIC X(001).

           05  MIR-OUTPUT-AREA.
               10  MIR-ACRU-CALC-TIME-CD             PIC X(001).
               10  MIR-ANPAYO-1-DEST-CD              PIC X(001).
               10  MIR-ANPAYO-2-DEST-CD              PIC X(001).
               10  MIR-ANPAYO-1-MTHD-CD              PIC X(001).
               10  MIR-ANPAYO-2-MTHD-CD              PIC X(001).
               10  MIR-APP-FORM-TYP-ID               PIC X(001).
               10  MIR-AUTO-PREM-PMT-IND             PIC X(001).
               10  MIR-BILL-LEAD-TIME-DUR            PIC X(003).
               10  MIR-BILL-RMND-REASN-CD            PIC X(001).
               10  MIR-CLI-CRNT-LOC-CD               PIC X(002).
CPA001*                                                                 08300702
CPA001* OWNER INFORMATION                                               08300702
CPA001*                                                                 08300702
               10  MIR-CLI-ID-G.
                   15  MIR-CLI-ID-T                  OCCURS  5 TIMES
                                                     PIC X(010).
CPA001* Start                                                           08300702
CPA001* TYPE OWNER NAME                                                 08300702
CPA001         10  MIR-DV-OWN-CLI-NM-G.
CPA001             15  MIR-DV-OWN-CLI-NM-T           OCCURS 5 TIMES
CPA001                                               PIC X(060).
CPA001         10  MIR-DV-OWN-CLI-ORI-NM-G.
CPA001             15  MIR-DV-OWN-CLI-ORI-NM-T       OCCURS 5 TIMES
CPA001                                               PIC X(060).
CPA001* SELECT OWNER NAME                                               08300702
CPA001         10  MIR-DV-OWN-CLI-NM-KEY-G.
CPA001             15  MIR-DV-OWN-CLI-NM-KEY-T       OCCURS  5 TIMES
CPA001                                               PIC X(005).
CPA001* End                                                             08300702
               10  MIR-DV-OWN-SUB-CD-G.
                   15  MIR-DV-OWN-SUB-CD-T           OCCURS 5 TIMES
                                                     PIC X(001).
               10  MIR-POL-CLI-INSRD-CD-G.
                   15  MIR-POL-CLI-INSRD-CD-T        OCCURS  5 TIMES
                                                     PIC X(005).
CPA001* Start                                                           08300702
CPA001*               10  MIR-CLI-ADDR-TYP-CD-G.                        08300702
CPA001*                15  MIR-CLI-ADDR-TYP-CD-T         OCCURS  5 TIMES08300702
CPA001*                                                     PIC X(002). 08300702
CPA001         10  MIR-CLI-ADDR-GR-1-CD-G.
CPA001             15  MIR-CLI-ADDR-GR-1-CD-T    OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001         10  MIR-CLI-ADDR-TYP-1-CD-G.
CPA001             15  MIR-CLI-ADDR-TYP-1-CD-T   OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001         10  MIR-CLI-ADDR-SEQ-1-NUM-G.
CPA001             15  MIR-CLI-ADDR-SEQ-1-NUM-T  OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001         10  MIR-CLI-ADDR-GR-2-CD-G.
CPA001             15  MIR-CLI-ADDR-GR-2-CD-T    OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001         10  MIR-CLI-ADDR-TYP-2-CD-G.
CPA001             15  MIR-CLI-ADDR-TYP-2-CD-T   OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001         10  MIR-CLI-ADDR-SEQ-2-NUM-G.
CPA001             15  MIR-CLI-ADDR-SEQ-2-NUM-T  OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001         10  MIR-CLI-DAY-PHON-NUM-G.
CPA001             15  MIR-CLI-DAY-PHON-NUM-T     OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001         10  MIR-CLI-NIGHT-PHON-NUM-G.
CPA001             15  MIR-CLI-NIGHT-PHON-NUM-T       OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001         10  MIR-CLI-CELL-PHON-NUM-G.
CPA001             15  MIR-CLI-CELL-PHON-NUM-T        OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001         10  MIR-CLI-CNTCT-MAIL-NUM-G.
CPA001             15  MIR-CLI-CNTCT-MAIL-NUM-T       OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001         10  MIR-CLI-TAX-ID-G.
CPA001             15  MIR-CLI-TAX-ID-T              OCCURS 5 TIMES
CPA001                                               PIC X(020).
CPA001         10  MIR-CLI-ID-TYP-CD-G.
CPA001             15  MIR-CLI-ID-TYP-CD-T           OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001         10  MIR-CLI-MARIT-STAT-CD-G.
CPA001             15  MIR-CLI-MARIT-STAT-CD-T       OCCURS 5 TIMES
CPA001                                               PIC X(001).
CPA001         10  MIR-CLI-CITZ-CD-G.
CPA001             15  MIR-CLI-CITZ-CD-T             OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001         10  MIR-CLI-PERM-RES-IND-G.
CPA001             15  MIR-CLI-PERM-RES-IND-T        OCCURS 5 TIMES
CPA001                                               PIC X(001).
CPA001         10  MIR-CLI-INCM-EARN-AMT-G.
CPA001             15  MIR-CLI-INCM-EARN-AMT-T       OCCURS 5 TIMES
CPA001                                               PIC X(017).
CPA001         10  MIR-CLI-WGT-G.
CPA001             15  MIR-CLI-WGT-T                 OCCURS 5 TIMES
CPA001                                               PIC X(005).
CPA001         10  MIR-CLI-HT-G.
CPA001             15  MIR-CLI-HT-T                  OCCURS 5 TIMES
CPA001* START                                                           10100702
CPA001*CPA001                                               PIC X(005)
CPA001                                               PIC X(005).
CPA001* END                                                             10100702
CPA001         10  MIR-CLI-OCCP-ID-G.
CPA001             15  MIR-CLI-OCCP-ID-T             OCCURS 5 TIMES
CPA001                                               PIC X(010).
CPA001* START                                                           01110802
CPA001         10  MIR-CLI-SHIP-CD-G.
CPA001             15  MIR-CLI-SHIP-CD-T             OCCURS 5 TIMES
CPA001* END                                                             01110802
CPA001                                               PIC X(001).
CPA001*               10  MIR-DV-OWN-CLI-NM-G.                          08300702
CPA001*                15  MIR-DV-OWN-CLI-NM-T           OCCURS  5 TIMES08300702
CPA001* End                                                             08300702
ACL002*                                              PIC X(030).
CPA001* Start                                                           08300702
CPA001*ACL002                                               PIC X(160). 08300702
CPA001* End                                                             08300702

AGL149*  START                                                          03280604
CPA001* Start                                                           08300702
CPA001*AGL149         10  MIR-DV-OWN-CLI-NM-KEY-G.                      08300702
CPA001*AGL149          15  MIR-DV-OWN-CLI-NM-KEY-T       OCCURS  5 TIMES08300702
CPA001*AGL149                                               PIC X(005). 08300702
CPA001* End                                                             08300702
AGL149         10  MIR-DV-OWN-CLI-NM-KEY             PIC X(005).
AGL149*  END                                                            03280604
CPA001* Start                                                           08300702
CPA001*ANB007         10  MIR-INSRD-CLI-ID-G.                           08300702
CPA001*ANB007             15  MIR-INSRD-CLI-ID-T         OCCURS  5 TIMES08300702
CPA001*ANB007                                               PIC X(010). 08300702
CPA001* End                                                             08300702
ANB007
CPA001* Start                                                           08300702
CPA001*ANB007         10  MIR-DV-INSRD-CLI-NM-G.                        08300702
CPA001*ANB007          15  MIR-DV-INSRD-CLI-NM-T         OCCURS  5 TIMES08300702
CPA001*ANB007                                               PIC X(160). 08300702
CPA001* End                                                             08300702
ANB007
AGL149*  START                                                          03280604
CPA001* Start                                                           08300702
CPA001*AGL149         10  MIR-DV-INSRD-CLI-NM-KEY-G.                    08300702
CPA001*AGL149          15  MIR-DV-INSRD-CLI-NM-KEY-T     OCCURS  5 TIMES08300702
CPA001*AGL149                                               PIC X(005). 08300702
CPA001* End                                                             08300702
AGL149         10  MIR-DV-INSRD-CLI-NM-KEY           PIC X(005).
AGL149*  END                                                            03280604
CPA001* Start                                                           08300702
CPA001*ANB007         10  MIR-INSRD-CLI-TAX-ID-G.                       08300702
CPA001*ANB007          15  MIR-INSRD-CLI-TAX-ID-T        OCCURS  5 TIMES08300702
CPA001*ANB007                                               PIC X(020). 08300702
CPA001* End                                                             08300702
ANB007
ANB007         10  MIR-DV-INSRD-CLI-CLAS-CD-G.
ANB007             15  MIR-DV-INSRD-CLI-CLAS-CD-T    OCCURS  5 TIMES
ANB007                                               PIC X(001).

               10  MIR-CLI-BTH-DT-G.
                   15  MIR-CLI-BTH-DT-T              OCCURS  5 TIMES
                                                     PIC X(010).
CPA001* Start                                                           08300702
CPA001*               10  MIR-CLI-TAX-ID-G.                             08300702
CPA001*                15  MIR-CLI-TAX-ID-T              OCCURS  5 TIMES08300702
CPA001* End                                                             08300702
ACL002*                                              PIC X(009).
CPA001* Start                                                           08300702
CPA001*ACL002                                               PIC X(020). 08300702
CPA001* End                                                             08300702
               10  MIR-DV-ASIGN-CLI-ID-G.
                   15  MIR-DV-ASIGN-CLI-ID-T         OCCURS  5 TIMES
                                                     PIC X(010).
               10  MIR-DV-ASIGN-SUB-CD-G.
                   15  MIR-DV-ASIGN-SUB-CD-T         OCCURS 5 TIMES
                                                     PIC X(001).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-ASIGN-ADDR-GR-CD-G.
CPA001             15  MIR-DV-ASIGN-ADDR-GR-CD-T     OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001* End                                                             08300702
               10  MIR-DV-ASIGN-ADDR-CD-G.
                   15  MIR-DV-ASIGN-ADDR-CD-T        OCCURS  5 TIMES
                                                     PIC X(002).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-ASIGN-ADDR-SEQ-NUM-G.
CPA001             15  MIR-DV-ASIGN-ADDR-SEQ-NUM-T   OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001* End                                                             08300702
               10  MIR-POL-CLI-ASIGN-DT-G.
                   15  MIR-POL-CLI-ASIGN-DT-T        OCCURS  5 TIMES
                                                     PIC X(010).
               10  MIR-DV-ASIGN-CLI-NM-G.
                   15  MIR-DV-ASIGN-CLI-NM-T         OCCURS  5 TIMES
ACL002*                                              PIC X(030).
ACL002                                               PIC X(160).
AGL149*  START                                                          03280604
AGL149         10  MIR-DV-ASIGN-CLI-NM-KEY-G.
AGL149             15  MIR-DV-ASIGN-CLI-NM-KEY-T     OCCURS  5 TIMES
AGL149                                               PIC X(005).
AGL149*  END                                                            03280604
               10  MIR-DV-ANUTNT-CLI-ID-G.
                   15  MIR-DV-ANUTNT-CLI-ID-T        OCCURS  5 TIMES
                                                     PIC X(010).
               10  MIR-DV-ANUTNT-SUB-CD-G.
                   15  MIR-DV-ANUTNT-SUB-CD-T        OCCURS 5 TIMES
                                                     PIC X(001).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-ANUTNT-ADDR-GR-CD-G.
CPA001             15  MIR-DV-ANUTNT-ADDR-GR-CD-T    OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001* End                                                             08300702
               10  MIR-DV-ANUTNT-ADDR-CD-G.
                   15  MIR-DV-ANUTNT-ADDR-CD-T       OCCURS  5 TIMES
                                                     PIC X(002).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-ANUTNT-ADDR-SEQ-NUM-G.
CPA001             15  MIR-DV-ANUTNT-ADDR-SEQ-NUM-T  OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001* End                                                             08300702
               10  MIR-DV-ANUTNT-CLI-NM-G.
                   15  MIR-DV-ANUTNT-CLI-NM-T        OCCURS  5 TIMES
ACL002*                                              PIC X(030).
ACL002                                               PIC X(160).
AGL149*  START                                                          03280604
AGL149         10  MIR-DV-ANUTNT-CLI-NM-KEY-G.
AGL149             15  MIR-DV-ANUTNT-CLI-NM-KEY-T    OCCURS  5 TIMES
AGL149                                               PIC X(005).
AGL149*  END                                                            03280604
               10  MIR-DV-IPARTY-CLI-ID-G.
                   15  MIR-DV-IPARTY-CLI-ID-T        OCCURS  5 TIMES
                                                     PIC X(010).
               10  MIR-DV-IPARTY-SUB-CD-G.
                   15  MIR-DV-IPARTY-SUB-CD-T        OCCURS 5 TIMES
                                                     PIC X(001).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-IPARTY-ADDR-GR-CD-G.
CPA001             15  MIR-DV-IPARTY-ADDR-GR-CD-T    OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001* End                                                             08300702
               10  MIR-DV-IPARTY-ADDR-CD-G.
                   15  MIR-DV-IPARTY-ADDR-CD-T       OCCURS  5 TIMES
                                                     PIC X(002).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-IPARTY-ADDR-SEQ-NUM-G.
CPA001             15  MIR-DV-IPARTY-ADDR-SEQ-NUM-T  OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001* End                                                             08300702
               10  MIR-DV-IPARTY-CLI-NM-G.
                   15  MIR-DV-IPARTY-CLI-NM-T        OCCURS  5 TIMES
ACL002*                                              PIC X(030).
ACL002                                               PIC X(160).
AGL149*  START                                                          03280604
AGL149         10  MIR-DV-IPARTY-CLI-NM-KEY-G.
AGL149             15  MIR-DV-IPARTY-CLI-NM-KEY-T    OCCURS  5 TIMES
AGL149                                               PIC X(005).
AGL149*  END                                                            03280604
               10  MIR-DV-TRST-CLI-ID-G.
                   15  MIR-DV-TRST-CLI-ID-T          OCCURS  5 TIMES
                                                     PIC X(010).
               10  MIR-DV-TRST-SUB-CD-G.
                   15  MIR-DV-TRST-SUB-CD-T          OCCURS 5 TIMES
                                                     PIC X(001).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-TRST-ADDR-GR-CD-G.
CPA001             15  MIR-DV-TRST-ADDR-GR-CD-T      OCCURS 5 TIMES
CPA001                                               PIC X(002).
CPA001* End                                                             08300702
               10  MIR-DV-TRST-ADDR-CD-G.
                   15  MIR-DV-TRST-ADDR-CD-T         OCCURS  5 TIMES
                                                     PIC X(002).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-TRST-ADDR-SEQ-NUM-G.
CPA001             15  MIR-DV-TRST-ADDR-SEQ-NUM-T    OCCURS 5 TIMES
CPA001                                               PIC X(003).
CPA001* End                                                             08300702
               10  MIR-DV-TRST-CLI-NM-G.
                   15  MIR-DV-TRST-CLI-NM-T          OCCURS  5 TIMES
ACL002*                                              PIC X(030).
ACL002                                               PIC X(160).
AGL149*  START                                                          03280604
AGL149         10  MIR-DV-TRST-CLI-NM-KEY-G.
AGL149             15  MIR-DV-TRST-CLI-NM-KEY-T      OCCURS  5 TIMES
AGL149                                               PIC X(005).
AGL149*  END                                                            03280604
               10  MIR-DV-PAYR-CLI-ID                PIC X(010).
ANB006         10  MIR-DV-OWN-CLI-ID                 PIC X(010).
ANB006         10  MIR-DV-REL-OPTN-CD                PIC X(001).
ACL002*        10  MIR-DV-PAYR-CLI-NM                PIC X(075).
ACL002         10  MIR-DV-PAYR-CLI-NM                PIC X(160).
AGL149*  START                                                          03280604
AGL149         10  MIR-DV-PAYR-CLI-NM-KEY            PIC X(005).
AGL149*  END                                                            03280604
               10  MIR-DV-PAYR-SUB-CD                PIC X(001).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-PAYR-ADDR-GR-CD            PIC X(002).
CPA001* End                                                             08300702
               10  MIR-DV-PAYR-ADDR-CD               PIC X(002).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-PAYR-ADDR-SEQ-NUM          PIC X(003).
CPA001* End                                                             08300702
               10  MIR-DV-SPOUS-CLI-ID               PIC X(010).
ACL002*        10  MIR-DV-SPOUS-CLI-NM               PIC X(075).
ACL002         10  MIR-DV-SPOUS-CLI-NM               PIC X(160).
AGL149*  START                                                          03280604
AGL149         10  MIR-DV-SPOUS-CLI-NM-KEY           PIC X(005).
AGL149*  END                                                            03280604
               10  MIR-DV-SPOUS-SUB-CD               PIC X(001).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-SPOUS-ADDR-GR-CD           PIC X(002).
CPA001* End                                                             08300702
               10  MIR-DV-SPOUS-ADDR-CD              PIC X(002).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-SPOUS-ADDR-SEQ-NUM         PIC X(003).
CPA001* End                                                             08300702
ANB006*        10  MIR-DV-LBILL-CLI-ID               PIC X(010).
ACL002*        10  MIR-DV-LBILL-CLI-NM               PIC X(075).
ANB006*ACL002  10  MIR-DV-LBILL-CLI-NM               PIC X(160).
ANB006*        10  MIR-DV-LBILL-SUB-CD               PIC X(001).
ANB006*        10  MIR-DV-LBILL-ADDR-CD              PIC X(002).

               10  MIR-CLM-PAYE-CVG-NUM              PIC X(002).
               10  MIR-CLM-PAYE-POL-ID.
                   15  MIR-CLM-PAYE-POL-ID-BASE      PIC X(09).
                   15  MIR-CLM-PAYE-POL-ID-SFX       PIC X(01).
               10  MIR-CLM-PAYE-REL-CD               PIC X(001).
               10  MIR-CLM-PAYO-MTHD-CD              PIC X(003).
               10  MIR-CONN-OPTL-POL-ID.
                   15  MIR-CONN-OPTL-POL-ID-BASE     PIC X(09).
                   15  MIR-CONN-OPTL-POL-ID-SFX      PIC X(01).
               10  MIR-AGT-ID-G.
                   15  MIR-AGT-ID-T                  OCCURS  3 TIMES
AAG001*                                              PIC X(006).
AAG001                                               PIC X(010).
AAG008         10  MIR-WRIT-AGT-OVRID-ID-G.
AAG008             15  MIR-WRIT-AGT-OVRID-ID-T       OCCURS  3 TIMES
AAG008                                               PIC X(002).
               10  MIR-POL-AGT-SHR-PCT-G.
                   15  MIR-POL-AGT-SHR-PCT-T         OCCURS  3 TIMES
                                                     PIC X(006).
ANB007         10  MIR-AGENCY-CD-G.
ANB007             15  MIR-AGENCY-CD-T               OCCURS  3 TIMES
ANB007                                               PIC X(010).
ANB006*  START                                                          03100508
ANB006         10  MIR-AGNCY-BR-ID-G.
ANB006             15  MIR-AGNCY-BR-ID-T             OCCURS  3 TIMES
ANB006                                               PIC X(010).
ANB006*  END                                                            03100508
               10  MIR-DV-AGT-CLI-NM-G.
                   15  MIR-DV-AGT-CLI-NM-T           OCCURS  3 TIMES
ACL002*                                              PIC X(075).
ACL002                                               PIC X(160).
AAG024* START                                                           10100506
AAG024         10  MIR-ORG-AGT-ID-G.
AAG024             15  MIR-ORG-AGT-ID-T              OCCURS  3 TIMES
AAG024                                               PIC X(010).
AAG024         10  MIR-ORG-WRIT-AGT-OVRID-ID-G.
AAG024             15  MIR-ORG-WRIT-AGT-OVRID-ID-T   OCCURS  3 TIMES
AAG024                                               PIC X(002).
AAG024         10  MIR-ORG-POL-AGT-SHR-PCT-G.
AAG024             15  MIR-ORG-POL-AGT-SHR-PCT-T     OCCURS  3 TIMES
AAG024                                               PIC X(006).
AAG024         10  MIR-ORG-AGENCY-CD-G.
AAG024             15  MIR-ORG-AGENCY-CD-T           OCCURS  3 TIMES
AAG024                                               PIC X(010).
AAG024         10  MIR-ORG-AGNCY-BR-ID-G.
AAG024             15  MIR-ORG-AGNCY-BR-ID-T         OCCURS  3 TIMES
AAG024                                               PIC X(010).
AAG024         10  MIR-DV-ORG-AGT-CLI-NM-G.
AAG024             15  MIR-DV-ORG-AGT-CLI-NM-T       OCCURS  3 TIMES
AAG024                                               PIC X(160).
AAG024* END                                                             10100506
ACL002*        10  MIR-DV-OWN-CLI-NM                 PIC X(075).
ACL002         10  MIR-DV-OWN-CLI-NM                 PIC X(160).
               10  MIR-ENHC-UWG-APROV-IND            PIC X(001).
               10  MIR-ENHC-UWG-REQIR-IND            PIC X(001).
               10  MIR-GAIN-RPT-TIME-CD              PIC X(001).
               10  MIR-LINK-POL-ISS-IND              PIC X(001).
               10  MIR-LOAN-INT-DEDBL-IND            PIC X(001).
               10  MIR-LXPCT-CALC-CD                 PIC X(001).
               10  MIR-LXPCT-RECALC-IND              PIC X(001).
               10  MIR-MODE-FCT-RESTR-IND            PIC X(001).
               10  MIR-MPREM-DSCNT-AMT               PIC X(015).
               10  MIR-PREM-RECALC-OPT-CD            PIC X(001).
               10  MIR-NXT-ACTV-TYP-CD               PIC X(003).
016395*        10  MIR-PAC-REDRW-OPT-CD              PIC X(001).
016395         10  MIR-PMT-REDRW-OPT-CD              PIC X(001).
               10  MIR-PLAN-ID                       PIC X(006).
               10  MIR-PLAN-PERI-PREM-AMT            PIC X(015).
               10  MIR-POL-ANPAYO-1-AMT              PIC X(014).
               10  MIR-POL-ANPAYO-2-AMT              PIC X(014).
               10  MIR-POL-ANPAYO-EFF-DT             PIC X(010).
               10  MIR-POL-ANPAYO-MODE-CD            PIC X(002).
               10  MIR-POL-ANPAYO-PMT-DT             PIC X(010).
WPR018         10  MIR-ANTY-GUAR-YR-DUR              PIC X(003).
WPR019         10  MIR-POL-ANPAYO-OPT-CD             PIC X(002).
               10  MIR-POL-APL-IND                   PIC X(001).
               10  MIR-POL-APP-CMPLT-DT              PIC X(010).
               10  MIR-POL-APP-CTR                   PIC X(001).
020460*        10  MIR-POL-APP-FORM-ID               PIC X(015).
020460         10  MIR-POL-APP-FORM-ID               PIC X(020).
               10  MIR-POL-APP-RECV-DT               PIC X(010).
               10  MIR-POL-APP-SIGN-DT               PIC X(010).
               10  MIR-POL-APP-SIGN-IND              PIC X(001).
               10  MIR-POL-BILL-MODE-CD              PIC X(002).
               10  MIR-POL-BILL-TYP-CD               PIC X(001).
               10  MIR-POL-BILL-TO-DT-NUM            PIC X(010).
CGL003* START                                                           03030823
CGL003         10  MIR-POL-BILL-TO-DT-YYYY           PIC X(004).
CGL003         10  MIR-POL-BILL-TO-DT-MM             PIC X(002).
CGL003         10  MIR-POL-BILL-TO-DT-DD             PIC X(002).
CGL003* END                                                             03030823
               10  MIR-POL-CEAS-DT                   PIC X(010).
               10  MIR-POL-CEAS-REASN-CD             PIC X(001).
               10  MIR-POL-CNFD-IND                  PIC X(001).
019840*        10  MIR-POL-COMNT-TXT                 PIC X(046).
019840         10  MIR-POL-COMNT-TXT                 PIC X(050).
CPR203* START                                                           09240802
CPR203         10  MIR-NXT-LINT-CAP-DT               PIC X(010).
CPR203         10  MIR-LINT-CAP-DT-TYP-CD            PIC X(001).
CPR203         10  MIR-LINT-CAP-FREQ-CD              PIC X(002).
CPR203* END                                                             09240802
               10  MIR-POL-CRCY-CD                   PIC X(002).
               10  MIR-POL-CRNT-MODE-FCT             PIC X(009).
               10  MIR-POL-CSTAT-CD                  PIC X(004).
               10  MIR-POL-CTRY-CD                   PIC X(002).
               10  MIR-POL-CVG-REC-CTR               PIC X(003).
               10  MIR-POL-DB-OPT-CD                 PIC X(001).
               10  MIR-POL-DIV-OPT-CD                PIC X(001).
               10  MIR-POL-ENHC-CHNG-DT              PIC X(010).
               10  MIR-POL-ENHC-NELCT-QTY            PIC X(002).
               10  MIR-POL-FINAL-DISP-DT             PIC X(010).
               10  MIR-POL-FREE-LK-END-DT            PIC X(010).
016440         10  MIR-POL-MISC-SUSP-AMT             PIC X(019).
               10  MIR-POL-GRS-APREM-AMT             PIC X(017).
               10  MIR-POL-INS-PURP-CD               PIC X(001).
               10  MIR-POL-INS-TYP-CD                PIC X(001).
               10  MIR-POL-ISS-DT-TYP-CD             PIC X(001).
               10  MIR-POL-ISS-EFF-DT                PIC X(010).
               10  MIR-POL-ISS-LOC-CD                PIC X(002).
               10  MIR-POL-LOAN-REPAY-AMT            PIC X(014).
               10  MIR-POL-MAIL-DT                   PIC X(010).
               10  MIR-POL-MAIL-REASN-CD             PIC X(001).
               10  MIR-POL-MEC-CD                    PIC X(001).
               10  MIR-POL-MIB-SIGN-CD               PIC X(001).
               10  MIR-POL-MPREM-AMT                 PIC X(016).
APA070*  START                                                          02210609
APA070         10  MIR-POF-MPREM-AMT                 PIC X(017).
APA070         10  MIR-POF-APREM-AMT                 PIC X(017).
APA070*  END                                                            02210609
               10  MIR-POL-NFO-CD                    PIC X(001).
               10  MIR-POL-NXT-ACTV-DT               PIC X(010).
               10  MIR-POL-OPTL-CD                   PIC X(001).
016395*        10  MIR-POL-PAC-DRW-DY                PIC X(002).
016395         10  MIR-POL-PMT-DRW-DY                PIC X(002).
016395*        10  MIR-POL-PAC-REDRW-DT              PIC X(010).
016395         10  MIR-POL-PMT-REDRW-DT              PIC X(010).
016395*        10  MIR-POL-PAC-RETRN-1-CD            PIC X(001).
016395         10  MIR-POL-PMT-RETRN-1-CD            PIC X(001).
016395*        10  MIR-POL-PAC-RETRN-1-DT            PIC X(010).
016395         10  MIR-POL-PMT-RETRN-1-DT            PIC X(010).
016395*        10  MIR-POL-PAC-RETRN-2-CD            PIC X(001).
016395         10  MIR-POL-PMT-RETRN-2-CD            PIC X(001).
016395*        10  MIR-POL-PAC-RETRN-2-DT            PIC X(010).
016395         10  MIR-POL-PMT-RETRN-2-DT            PIC X(010).
               10  MIR-POL-PD-TO-DT-NUM              PIC X(010).
               10  MIR-POL-PDF-RFND-CD               PIC X(001).
               10  MIR-POL-PFEE-FCT                  PIC X(009).
               10  MIR-POL-PFEE-RESTR-IND            PIC X(001).
               10  MIR-POL-PNSN-QUALF-CD             PIC X(001).
               10  MIR-POL-PNSN-SRC-CD               PIC X(003).
               10  MIR-POL-PREM-DSCNT-PCT            PIC X(006).
               10  MIR-POL-PREM-TYP-CD               PIC X(001).
               10  MIR-POL-RBILL-CD                  PIC X(001).
               10  MIR-POL-REG-CD                    PIC X(001).
               10  MIR-POL-REG-DT                    PIC X(010).
               10  MIR-POL-REG-FND-SRC-CD            PIC X(001).
               10  MIR-POL-REINS-CD                  PIC X(001).
               10  MIR-POL-RUSH-IND                  PIC X(001).
               10  MIR-POL-SFB-CD                    PIC X(002).
ABC003         10  MIR-POL-SPND-IND                  PIC X(001).
               10  MIR-POL-SNDRY-AMT                 PIC X(014).
               10  MIR-POL-SNDRY-REASN-CD            PIC X(001).
               10  MIR-POL-SUPRES-ISS-IND            PIC X(001).
               10  MIR-POL-TAX-TYP-CD                PIC X(001).
               10  MIR-POL-TXEMP-CD                  PIC X(001).
               10  MIR-POL-VPO-PU-DUR                PIC X(002).
               10  MIR-PREM-DSCNT-TYP-CD             PIC X(003).
AAG001*        10  MIR-PREV-SERV-AGT-ID              PIC X(006).
AAG001         10  MIR-PREV-SERV-AGT-ID              PIC X(010).
               10  MIR-RBILL-DEPT-ID                 PIC X(005).
               10  MIR-RBILL-EFF-DT                  PIC X(010).
               10  MIR-RBILL-END-DT                  PIC X(010).
               10  MIR-RBILL-MISC-1-CD               PIC X(001).
               10  MIR-RBILL-MISC-2-CD               PIC X(001).
               10  MIR-RBILL-USER-ID                 PIC X(008).
               10  MIR-REG-SAV-PORTN-AMT             PIC X(014).
               10  MIR-REG-SAV-PORTN-CD              PIC X(001).
               10  MIR-REG-SPCL-HNDL-CD              PIC X(001).
               10  MIR-SBSDRY-CO-ID                  PIC X(002).
               10  MIR-SERV-AGT-ASIGN-DT             PIC X(010).
AAG001*        10  MIR-SERV-AGT-ID                   PIC X(006).
AAG001         10  MIR-SERV-AGT-ID                   PIC X(010).
AAG005         10  MIR-SERV-AGY-ID                   PIC X(010).
               10  MIR-SERV-BR-ID                    PIC X(005).
015904*        10  MIR-DV-SERV-AGT-NM                PIC X(075).
ACL002*015904  10  MIR-DV-SERV-AGT-CLI-NM            PIC X(075).
ACL002         10  MIR-DV-SERV-AGT-CLI-NM            PIC X(160).
               10  MIR-SFB-END-DT                    PIC X(010).
               10  MIR-SFB-GP-END-DT-NUM             PIC X(010).
               10  MIR-SFB-GP-STRT-DT-NUM            PIC X(010).
               10  MIR-SFB-NXT-BILL-AMT              PIC X(016).
               10  MIR-SFB-SEMI-MTHLY-DY             PIC X(002).
               10  MIR-SFB-STRT-DT                   PIC X(010).
               10  MIR-TAX-1035-ACB-AMT              PIC X(017).
               10  MIR-TAX-RPT-FREQ-CD               PIC X(001).
               10  MIR-UL-INIT-PREM-AMT              PIC X(014).
               10  MIR-UL-LAPS-STRT-DT               PIC X(010).
               10  MIR-UNMTCH-MAIL-IND               PIC X(001).
               10  MIR-USER-ID                       PIC X(008).
016440         10  MIR-POL-BUS-CLAS-CD               PIC X(001).
016440*        10  MIR-POL-APPL-CTL-CD               PIC X(002).
013697         10  MIR-POL-CTRY-TAX-DT               PIC X(010).
020452         10  MIR-POL-FRGN-TST-DT               PIC X(010).
020453         10  MIR-POL-SETL-OPT-CD               PIC X(002).
020453         10  MIR-POL-SETL-OPT-DUR              PIC X(003).
020475         10  MIR-POL-DBG-IND                   PIC X(001).
020475         10  MIR-POL-DBG-LOAN-IND              PIC X(001).
020475         10  MIR-POL-DBG-BASIC-CD              PIC X(002).
020475         10  MIR-DV-POL-DBG-RESET-IND          PIC X(001).
020475         10  MIR-DV-ANNV-VALU-IND              PIC X(001).
020475         10  MIR-DV-POL-DBG-MAV-IND            PIC X(001).
020475         10  MIR-DV-POL-DBG-ROLU-IND           PIC X(001).
020475         10  MIR-POL-DBG-LOCK-QTY              PIC X(003).
020463         10  MIR-PRFL-ID                       PIC X(003).

ACL002         10  MIR-DV-OWN-CLI-CLAS-CD-G.
ACL002             15  MIR-DV-OWN-CLI-CLAS-CD-T      OCCURS  5 TIMES
WNB023*                                              PIC X(001).
WNB023                                               PIC X(002).
WNB023*ACL002         10  MIR-DV-PAYR-CLI-CLAS-CD           PIC X(001).
WNB023         10  MIR-DV-PAYR-CLI-CLAS-CD           PIC X(002).
APR005         10  MIR-POL-MODE-FCT-TYP-CD           PIC X(001).
APR002         10  MIR-PREM-HLDY-CD                  PIC X(001).
APR002         10  MIR-PREM-HLDY-STAT-CD             PIC X(001).
ANB007         10  MIR-INSRD-APP-MEDIC-CD            PIC X(001).
ANB007         10  MIR-PAYR-APP-MEDIC-CD             PIC X(001).
ANB007         10  MIR-POL-CNTRCT-DT                 PIC X(010).
ANB007         10  MIR-INIT-ATOPUP-AMT               PIC X(014).
ANB007         10  MIR-POL-HLD-COMM-IND              PIC X(001).
ANB007         10  MIR-POL-ENTR-DT                   PIC X(010).
ANB007         10  MIR-POL-INFC-DT                   PIC X(010).
ANB007         10  MIR-NB-FINAL-PMT-DT               PIC X(010).
ANB007         10  MIR-INSRD-HLTHANSWR-IND           PIC X(001).
ANB007         10  MIR-PAYR-HLTHANSWR-IND            PIC X(001).
ANB007         10  MIR-XTRA-COMM-ELIG-CD             PIC X(001).
ANB007         10  MIR-POL-REISS-IND                 PIC X(001).
ANB006*  START                                                          06130527
ANB006         10  MIR-POL-REISS-DT                  PIC X(010).
ANB006         10  MIR-POL-REISS-CNCL-DT             PIC X(010).
ANB006         10  MIR-POL-REISS-END-DT              PIC X(010).
ANB006*  END                                                            06130527
ANB007         10  MIR-SPCL-QUOT-IND                 PIC X(001).
ANB007         10  MIR-POL-CSTAT-REASN-CD            PIC X(002).
ANB007         10  MIR-PMT-TYP-CD                    PIC X(002).
ANB007         10  MIR-PREV-CHQ-CLR-DT               PIC X(010).
ANB007         10  MIR-AGT-HS-LOS-RATIO-G.
ANB007             15  MIR-AGT-HS-LOS-RATIO-T        OCCURS 3 TIMES
ANB007                                               PIC X(006).
ANB007         10  MIR-AGT-HS-LOS-RATIO-IND-G.
ANB007             15  MIR-AGT-HS-LOS-RATIO-IND-T    OCCURS 3 TIMES
ANB007                                               PIC X(001).
ANB007         10  MIR-AGT-PREM-AGT-STAT-G.
ANB007             15  MIR-AGT-PREM-AGT-STAT-T       OCCURS 3 TIMES
ANB007                                               PIC X(001).
ANB008         10  MIR-DV-NON-POST-DEP-AMT           PIC X(017).
APA006         10  MIR-RESTRICT-CD-A                 PIC X(01).
APA006         10  MIR-RESTRICT-CD-B                 PIC X(01).
APA006         10  MIR-RESTRICT-CD-S                 PIC X(01).
APA006         10  MIR-RESTRICT-CD-I                 PIC X(01).
APA022         10  MIR-LAPSE-START-DT                PIC X(10).
CPA006*  START                                                          09300702
CPA006         10  MIR-POL-PREV-ANNV-DUR             PIC X(03).
CPA006*  END                                                            09300702
APA020         10  MIR-POL-SPND-REASN-CD             PIC X(01).
APA020         10  MIR-POL-SPND-EFF-DT               PIC X(10).
APA020         10  MIR-POL-SPND-TRMN-DT              PIC X(10).
APA020         10  MIR-POL-SPND-USER-ID              PIC X(08).
ANB021         10  MIR-DV-CHILD-CLI-ID               PIC X(010).
ANB021         10  MIR-DV-CHILD-CLI-NM               PIC X(160).
AGL149*  START                                                          03280604
AGL149         10  MIR-DV-CHILD-CLI-NM-KEY           PIC X(005).
AGL149*  END                                                            03280604
ANB021         10  MIR-DV-CHILD-SUB-CD               PIC X(001).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-CHILD-ADDR-GR-CD           PIC X(002).
CPA001* End                                                             08300702
ANB021         10  MIR-DV-CHILD-ADDR-CD              PIC X(002).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-CHILD-ADDR-SEQ-NUM         PIC X(003).
CPA001* End                                                             08300702
WNB002         10  MIR-POL-PIL-IND                   PIC X(001).
WNB002         10  MIR-POL-ACK-SIGN-DT               PIC X(010).
WNB002         10  MIR-POL-ACK-RECV-DT               PIC X(010).
WNB002         10  MIR-POL-ACK-EXT-IND               PIC X(001).
WNB002         10  MIR-POL-ACK-STAT-CD               PIC X(001).
WNB002         10  MIR-POL-REPRT-DT                  PIC X(010).
WCL002         10  MIR-CLI-QTR-STMT-NOTI-CD          PIC X(001).
CPR105* Start                                                           01271001
CPR105         10  MIR-POL-CNVR-IND                  PIC X(001).
CPR105* End                                                             01271001
CPA001* Start                                                           08300702
CPA001*WCL002         10  MIR-POL-CNTCT-MAIL-CD             PIC X(002).
CPA001*WCL002         10  MIR-CLI-ADDR-GR-1-CD              PIC X(002).
CPA001*WCL002         10  MIR-CLI-ADDR-TYP-1-CD             PIC X(002).
CPA001*WCL002         10  MIR-CLI-ADDR-SEQ-1-NUM            PIC X(003).
CPA001*WCL002         10  MIR-CLI-ADDR-GR-2-CD              PIC X(002).
CPA001*WCL002         10  MIR-CLI-ADDR-TYP-2-CD             PIC X(002).
CPA001*WCL002         10  MIR-CLI-ADDR-SEQ-2-NUM            PIC X(003).
CPA001* End                                                             08300702
WNB003         10  MIR-POL-BILL-HLD-CD               PIC X(001).
WNB003         10  MIR-POL-AGT-AGRE-IND              PIC X(001).
WNB003         10  MIR-POL-IMPRT-SIGN-IND            PIC X(001).
WNB003         10  MIR-POL-SHOW-LIC-IND              PIC X(001).
WNB003         10  MIR-POL-SIS-IND                   PIC X(001).
WNB003         10  MIR-NB-PMT-TRXN-AMT               PIC S9(13)V9(02).
AGL116         10  MIR-PNDFND-UNITIZE-DT             PIC X(010).
WAG005         10  MIR-PRIM-WRIT-AGT-IND-G.
WAG005             15  MIR-PRIM-WRIT-AGT-IND-T       OCCURS  3 TIMES
WAG005                                               PIC X(001).
CAC001* START                                                           08310706
CAC001*WNB003         10  MIR-CVG-CAMP-CD                   PIC X(05).
CAC001* START                                                           09210706
CAC001*CAC001         10  MIR-MKT-CAMPGN-CD                 PIC X(10).
CAC001                10  MIR-CVG-CAMP-CD                   PIC X(05).
CAC001* END                                                             09210706
CAC001* END                                                             08310706
WNB003         10  MIR-AGT-CLAS-CD-G.
WNB003             15  MIR-AGT-CLAS-CD-T             OCCURS  3 TIMES
WNB003                                               PIC X(02).
WNB003         10  MIR-AGT-CAT-CD-G.
WNB003             15  MIR-AGT-CAT-CD-T              OCCURS  3 TIMES
WNB003                                               PIC X(02).
WNB003         10  MIR-LIC-EFF-DT-G.
WNB003             15  MIR-LIC-EFF-DT-T              OCCURS  3 TIMES
WNB003                                               PIC X(10).
WNB012         10  MIR-POL-EMPLE-IND                 PIC X(001).
WNB014         10  MIR-POL-CCAS-IND                  PIC X(001).
WNB014         10  MIR-OTHR-ISS-REQIR-IND            PIC X(001).
WNB022         10  MIR-DV-EAAS-PEND-DT               PIC X(010).
WNB022         10  MIR-DV-ACK-RECV-DT                PIC X(010).
WNB022         10  MIR-DV-ACK-FINAL-DT               PIC X(010).
WNB022         10  MIR-DV-END-FREELK-DT              PIC X(010).
WNB015         10  MIR-CLI-ADDR-1-TXT                PIC X(050).
WNB015         10  MIR-CLI-ADDR-2-TXT                PIC X(050).
WNB015         10  MIR-CLI-ADDR-1-TXT-2              PIC X(050).
WNB015         10  MIR-CLI-ADDR-1-TXT-3              PIC X(050).
ACL013* START                                                           02130601
ACL013         10  MIR-CLI-ADDR-1-TXT-4              PIC X(050).
ACL013         10  MIR-CLI-ADDR-1-TXT-5              PIC X(050).
ACL013* END                                                             02130601
WNB015         10  MIR-CLI-ADDR-2-TXT-2              PIC X(050).
WNB015         10  MIR-CLI-ADDR-2-TXT-3              PIC X(050).
ACL013* START                                                           02130601
ACL013         10  MIR-CLI-ADDR-2-TXT-4              PIC X(050).
ACL013         10  MIR-CLI-ADDR-2-TXT-5              PIC X(050).
ACL013* END                                                             02130601
WNB015         10  MIR-POL-CTRY-CD-1                 PIC X(03).
WNB015         10  MIR-POL-CTRY-CD-2                 PIC X(03).
WNB015         10  MIR-CLI-CITY-NM-1-TXT             PIC X(30).
WNB015         10  MIR-CLI-CITY-NM-2-TXT             PIC X(30).
WNB015         10  MIR-INSRD-DCLR-1-CD               PIC X(02).
WNB015         10  MIR-INSRD-DCLR-2-CD               PIC X(02).
WNB015         10  MIR-INSRD-DCLR-3-CD               PIC X(02).
WNB021         10  MIR-NB-INIT-PMT-DT                PIC X(010).
WBC018         10  MIR-DV-ACCT-TYP-CD                PIC X(001).
WBC018             88  MIR-DV-ACCT-TYP-VALID         VALUE '4' 'C'.
WBC018             88  MIR-DV-ACCT-TYP-PAC           VALUE '4'.
WBC018             88  MIR-DV-ACCT-TYP-CRC           VALUE 'C'.
CAC001* START                                                           08310706
CAC001*WAG012         10  MIR-CVG-CHNL-CD                   PIC X(03).
CAC001* START                                                           09210706
CAC001*CAC001         10  MIR-MKT-CHNL-CD                   PIC X(10).
CAC001                10  MIR-CVG-CHNL-CD                   PIC X(03).
CAC001* END                                                             09210706
CAC001* END                                                             08310706
WNB015         10  MIR-DV-ASSET-REBAL-IND            PIC X(01).
WNB015             88  MIR-DV-ASSET-REBAL-YES        VALUE 'Y'.
WNB015             88  MIR-DV-ASSET-REBAL-NO         VALUE 'N'.
WBC028         10  MIR-RTOPUP-PREM-AMT               PIC X(016).
WNB015         10  MIR-CFN-PLAN-ID-G.
WNB015             15  MIR-CFN-PLAN-ID-T             OCCURS 200 TIMES
WNB015                                               PIC X(006).
WNB015         10  MIR-FND-ID-G.
WNB015             15  MIR-FND-ID-T                  OCCURS 200 TIMES
WNB015                                               PIC X(005).
WNB015         10  MIR-CDI-ALLOC-PCT-G.
WNB015             15  MIR-CDI-ALLOC-PCT-T           OCCURS 200 TIMES
WNB015                                               PIC X(008).
WNB015         10  MIR-FND-CDI-STAT-CD-G.
WNB015             15  MIR-FND-CDI-STAT-CD-T         OCCURS 200 TIMES
WNB015                                               PIC X(001).
WPR018         10  MIR-POL-RPT-EXT-DT                PIC X(010).
BNB005         10  MIR-POL-RECV-DT                   PIC X(010).
APR053         10  MIR-POL-FREE-LK-XFER-DT           PIC X(010).
AGL139*APA060         10  MIR-PNDFND-UNITIZE-DT             PIC X(010). 10100501
BAG002         10  MIR-CMPLN-POL-SERV-AGT-ID          PIC X(010).
BAG002         10  MIR-DV-CMPLN-POL-SERV-AGT-NM       PIC X(160).
APR051         10  MIR-POL-APL-DUR                   PIC X(03).
APR051         10  MIR-POL-NFO-RESTR-CD              PIC X(01).
ANB007         10  MIR-POL-REJ-REASN-CD-TXT          PIC X(20).
ANB006         10  MIR-LIST-BILL-CLI-CD              PIC X(010).
ANB006         10  MIR-INIT-PAYO-MTH-CD              PIC X(001).
ANB006         10  MIR-PAYO-BNK-ACCT-NU              PIC X(001).
ANB006         10  MIR-POL-INIT-PREM-DED-IND         PIC X(001).
ANB006         10  MIR-POL-CONTEST-IND               PIC X(001).
ANB006         10  MIR-POL-EGP-IND                   PIC X(001).
APR061         10  MIR-POL-DIV-XCES-CD               PIC X(001).
APR086*  START                                                          09020402
APR086         10  MIR-POL-CPN-OPT-CD                PIC X(001).
APR086         10  MIR-POL-CPN-XCES-CD               PIC X(001).
APR086*  END                                                            09020402
APR079*  START                                                          11260401
APR079         10  MIR-POL-PU-NFO-CD                 PIC X(001).
APR079*  END                                                            11260401
APR087*  START                                                          12010402
APR087         10  MIR-CONTEST-MRG-POL-ID            PIC X(010).
APR087*  END                                                            12010402
ANB006* START                                                           11240420
ANB006         10  MIR-PROD-TYP-CD                   PIC X(003).
ANB006         10  MIR-DSTRB-CHNL-CD                 PIC X(003).
ANB006         10  MIR-PKG-PLAN-NM-CD                PIC X(020).

ANB006         10  MIR-DV-PROD-TYP-CD               PIC X(003).
ANB006         10  MIR-DV-DSTRB-CHNL-CD             PIC X(003).
ANB006* END                                                             11240420
ANB006* START                                                           10270422
ANB006         10  MIR-NCSH-XF-IND                   PIC X(001).
ANB006         10  MIR-DV-FAC-REINS-IND              PIC X(001).
ANB006             88 MIR-DV-FAC-REINS               VALUE 'Y'.
ANB006             88 MIR-DV-FAC-REINS-NO            VALUE 'N'.
ANB006         10  MIR-BILL-LEAD-MO-CTL-CD           PIC X(001).
ANB006         10  MIR-BILL-LEAD-MO-DUR              PIC X(003).
ANB006* END                                                             10270422
APR077* START                                                           02280512
APR077         10  MIR-POL-CURR-CD                   PIC X(002).
APR077* END                                                             02280512
ANB025*  START                                                          04180502
CAC001* START                                                           08310706
CAC001*ANB025         10  MIR-DV-WSM-CORP-ID                 PIC X(07).
CAC001         10  MIR-DV-WSM-CORP-ID                PIC X(10).
CAC001* END                                                             08310706
APA061* START                                                           11150505
APA061*ANB025  10  MIR-DV-WSM-CHNL-CD                   PIC X(03).
APA061* END                                                             11150505
ANB025*  END                                                            04180502
ANB006*  START                                                          06130527
ANB006         10  MIR-POL-REJ-REASN-CD              PIC X(002).
ANB006         10  MIR-REJ-REASN-COND-CD             PIC X(002).
ANB006         10  MIR-NEG-CD                        PIC X(002).
ANB006         10  MIR-POL-REJ-RQST-DT               PIC X(010).
ANB006*  END                                                            06130527
ANB024*  START                                                          08100506
ANB024         10  MIR-POL-REQ-PREM                  PIC X(014).
ANB024*  END                                                            08100506
ANB006* START                                                           09090533
ANB006         10  MIR-POL-LEAD-CD                   PIC X(006).
ANB006* END                                                             09090533
ANB028*  START                                                          09140501
ANB028         10  MIR-POL-VERIF-IND                 PIC X(001).
ANB028             88  MIR-POL-VERIFIED              VALUE 'Y'.
ANB028             88  MIR-POL-NOT-VERIFIED          VALUE 'N'.
ANB028         10  MIR-CLI-VERIF-IND                 PIC X(001).
ANB028             88  MIR-CLI-VERIFIED              VALUE 'Y'.
ANB028             88  MIR-CLI-NOT-VERIFIED          VALUE 'N'.
ANB028*  END                                                            09140501
ANB028*  START                                                          09140502
ANB028         10  MIR-OWN-CLI-STATUS-CD-G.
ANB028             15  MIR-OWN-CLI-STATUS-CD-T       OCCURS  5 TIMES
ANB028                                               PIC X(001).
ANB028         10  MIR-PAYR-CLI-STATUS-CD            PIC X(001).
APA040*  START                                                          07060601
APA040         10  MIR-PB-CLI-STATUS-CD              PIC X(001).
APA040*  END                                                            07060601
ANB028         10  MIR-SPOUS-CLI-STATUS-CD           PIC X(001).
ANB028         10  MIR-CHILD-CLI-STATUS-CD           PIC X(001).
ANB028*  END                                                            09140502
APA040*  START                                                          07060601
APA040         10  MIR-DV-PB-CLI-ID                  PIC X(10).
APA040         10  MIR-DV-PB-SUB-CD                  PIC X(01).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-PB-ADDR-GR-CD              PIC X(02).
CPA001* End                                                             08300702
APA040         10  MIR-DV-PB-ADDR-CD                 PIC X(02).
CPA001* Start                                                           08300702
CPA001         10  MIR-DV-PB-ADDR-SEQ-NUM            PIC X(03).
CPA001* End                                                             08300702
APA040         10  MIR-DV-PB-CLI-NM                  PIC X(160).
APA040         10  MIR-DV-PB-CLI-NM-KEY              PIC X(005).
APA040*  END                                                            07060601
ANB006* START                                                           07250638
ANB006         10  MIR-POL-XTRNL-REF-TXT             PIC X(050).
ANB006* END                                                             07250638
CFA001* START                                                           08130702
CFA001         10  MIR-POL-FND-ALLOC-DT              PIC X(010).
CFA001* END                                                             08130702
CFA208* START                                                           01240906
CFA208         10  MIR-POL-UL-PRCES-DT               PIC X(010).
CFA208         10  MIR-POL-UL-PTD-NUM                PIC X(010).
CFA208         10  MIR-POL-UL-SHRT-AMT               PIC X(014).
CFA208* END                                                             01240906
CPR224* START                                                           05190904
CPR224         10  MIR-OVR-LOAN-RPT-IND              PIC X(001).
CPR224             88  MIR-OVR-LOAN-RPT-YES          VALUE 'Y'.
CPR224             88  MIR-OVR-LOAN-RPT-NO           VALUE 'N'.
CPR224* END                                                             05190904
CPR218* START                                                           05130902
CPR218         10  MIR-POL-WAV-STAT-CD               PIC X(01).
CPR218         10  MIR-MAV-WAV-STRT-DT               PIC X(10).
CPR218         10  MIR-PREM-WAV-STRT-DT              PIC X(10).
CPR218* END                                                             05130902
CPR111* START                                                           03261001
CPR111         10  MIR-CUST-RSK-SCORE                PIC X(04).
CPR111* END                                                             03261001
CBC109* START                                                           05021301
CBC109         10  MIR-POL-CAMP-ID                   PIC X(10).
CBC109* END                                                             05021301
CPA001* Start                                                           08300702
CPA001* INSURED                                                         08300702
CPA001         10  MIR-INSRD-CLI-ID-G.
CPA001             15  MIR-INSRD-CLI-ID-T             OCCURS 30 TIMES
CPA001                                                PIC X(010).
CPA001         10  MIR-DV-INSRD-CLI-NM-G.
CPA001             15  MIR-DV-INSRD-CLI-NM-T          OCCURS 30 TIMES
CPA001                                                PIC X(060).
CPA001         10  MIR-DV-INSRD-CLI-NM-KEY-G.
CPA001             15  MIR-DV-INSRD-CLI-NM-KEY-T      OCCURS 30 TIMES
CPA001                                                PIC X(005).
CPA001         10  MIR-DV-INSRD-SUB-CD-G.
CPA001             15  MIR-DV-INSRD-SUB-CD-T          OCCURS 30 TIMES
CPA001                                                PIC X(001).
CPR149* START                                                           06171504
CPR149         10  MIR-CVG-CLI-INSRD-CD-G.
CPR149             15  MIR-CVG-CLI-INSRD-CD-T         OCCURS 30 TIMES
CPR149                                                PIC X(001).
CPR149* END                                                             06171504
CPA001         10  MIR-INSRD-CLI-ADDR-GR-2-CD-G.
CPA001             15  MIR-INSRD-CLI-ADDR-GR-2-CD-T   OCCURS 30 TIMES
CPA001                                                PIC X(002).
CPA001         10  MIR-INSRD-CLI-ADDR-TYP-2-CD-G.
CPA001             15  MIR-INSRD-CLI-ADDR-TYP-2-CD-T  OCCURS 30 TIMES
CPA001                                                PIC X(002).
CPA001         10  MIR-INSRD-CLI-ADDR-SEQ-2-NUM-G.
CPA001             15  MIR-INSRD-CLI-ADDR-SEQ-2-NUM-T OCCURS 30 TIMES
CPA001                                                PIC X(003).
CPA001         10  MIR-INSRD-CLI-DAY-PHON-NUM-G.
CPA001             15  MIR-INSRD-CLI-DAY-PHON-NUM-T   OCCURS 30 TIMES
CPA001                                                PIC X(003).
CPA001         10  MIR-INSRD-CLI-NIGHT-PHON-NUM-G.
CPA001             15  MIR-INSRD-CLI-NIGHT-PHON-NUM-T OCCURS 30 TIMES
CPA001                                                PIC X(003).
CPA001         10  MIR-INSRD-CLI-CELL-PHON-NUM-G.
CPA001             15  MIR-INSRD-CLI-CELL-PHON-NUM-T  OCCURS 30 TIMES
CPA001                                                PIC X(003).
CPA001         10  MIR-INSRD-CLI-CNTCT-MAIL-NUM-G.
CPA001             15  MIR-INSRD-CLI-CNTCT-MAIL-NUM-T OCCURS 30 TIMES
CPA001                                                PIC X(003).
CPA001         10  MIR-INSRD-CLI-TAX-ID-G.
CPA001             15  MIR-INSRD-CLI-TAX-ID-T         OCCURS 30 TIMES
CPA001                                                PIC X(020).
CPA001         10  MIR-INSRD-CLI-ID-TYP-CD-G.
CPA001             15  MIR-INSRD-CLI-ID-TYP-CD-T      OCCURS 30 TIMES
CPA001                                                PIC X(002).
CPA001         10  MIR-INSRD-CLI-MARIT-STAT-CD-G.
CPA001             15  MIR-INSRD-CLI-MARIT-STAT-CD-T  OCCURS 30 TIMES
CPA001                                                PIC X(001).
CPA001         10  MIR-INSRD-CLI-CITZ-CD-G.
CPA001             15  MIR-INSRD-CLI-CITZ-CD-T        OCCURS 30 TIMES
CPA001                                                PIC X(003).
CPA001         10  MIR-INSRD-CLI-PERM-RES-IND-G.
CPA001             15  MIR-INSRD-CLI-PERM-RES-IND-T   OCCURS 30 TIMES
CPA001                                                PIC X(001).
CPA001         10  MIR-INSRD-CLI-INCM-EARN-AMT-G.
CPA001             15  MIR-INSRD-CLI-INCM-EARN-AMT-T  OCCURS 30 TIMES
CPA001                                                PIC X(017).
CPA001         10  MIR-INSRD-CLI-WGT-G.
CPA001             15  MIR-INSRD-CLI-WGT-T            OCCURS 30 TIMES
CPA001                                                PIC X(005).
CPA001         10  MIR-INSRD-CLI-HT-G.
CPA001             15  MIR-INSRD-CLI-HT-T             OCCURS 30 TIMES
CPA001                                                PIC X(005).
CPA001         10  MIR-INSRD-CLI-OCCP-ID-G.
CPA001             15  MIR-INSRD-CLI-OCCP-ID-T        OCCURS 30 TIMES
CPA001                                                PIC X(010).
CPA001* START                                                           01110802
CPA001         10  MIR-INSRD-CLI-SHIP-CD-G.
CPA001             15  MIR-INSRD-CLI-SHIP-CD-T        OCCURS 30 TIMES
CPA001* END                                                             01110802
CPA001                                                PIC X(001).
CPA001* End                                                             08300702
CPR301* START                                                           05141207
CPR301         10  MIR-POL-ANTY-OPT-CD                PIC X(01).
CPR301         10  MIR-POL-ANTY-XCES-CD               PIC X(01).
CPR301* END                                                             05141207
CPA301* START                                                           05311204
CPA301         10  MIR-POL-PLEG-TYP-CD                PIC X(01).
CPA301* END                                                             05311204
CPR311* START                                                           09101201
CPR311         10  MIR-POL-DCA-IND                    PIC X(01).
CPR311* END                                                             09101201
CPR133* START                                                           02241402
CPR133         10  MIR-POL-MPREM-WAV-AMT              PIC X(016).
CPR133* END                                                             02241402
CPR133* START                                                           02261401
CPR133         10  MIR-POL-EMBED-WAV-STAT-CD          PIC X(01).
CPR133         10  MIR-EMBED-PWAV-STRT-DT             PIC X(10).
CPR133* END                                                             02261401
CPR143* START                                                           05281402
CPR143         10  MIR-IER-CPN-STAT-CD                PIC X(01).
CPR143         10  MIR-POL-IER-CPN-STRT-DT            PIC X(10).
CPR143         10  MIR-POL-IER-CPN-OPT-CD             PIC X(001).
CPR143* END                                                             05281402
CPR148* START                                                           03201501
CPR148         10  MIR-POL-ANTY-PAYO-STAT-CD          PIC X(001).
CPR148* END                                                             03201501
CPR177* START                                                           11131802
CPR177         10  MIR-CLI-TAX-2-ID-G.
CPR177             15  MIR-CLI-TAX-2-ID-T             OCCURS 5 TIMES
CPR177                                                PIC X(020).
CPR177         10  MIR-CLI-ID-TYP-2-CD-G.
CPR177             15  MIR-CLI-ID-TYP-2-CD-T          OCCURS 5 TIMES
CPR177                                                PIC X(002).
CPR177         10  MIR-INSRD-CLI-TAX-2-ID-G.
CPR177             15  MIR-INSRD-CLI-TAX-2-ID-T       OCCURS 30 TIMES
CPR177                                                PIC X(020).
CPR177         10  MIR-INSRD-CLI-ID-TYP-2-CD-G.
CPR177             15  MIR-INSRD-CLI-ID-TYP-2-CD-T    OCCURS 30 TIMES
CPR177                                                PIC X(002).
CPR177* END                                                             11131802

      *****************************************************************
      **                 END OF COPYBOOK CCWM8000                    **
      *****************************************************************
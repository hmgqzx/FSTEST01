#<HEADER>
#<DESCRIPTION>
#Policy Retrieve
#</DESCRIPTION>
#<COPYRIGHT>
#?2001 INSURANCE SOFTWARE SOLUTIONS CORP.  ALL RIGHTS RESERVED
#</COPYRIGHT>
#<HISTORY>
#<RELEASE>
#6.0
#</RELEASE>
#<NUMBER>
#014590
#</NUMBER>
#<COMMENT>
#New for release 6.0
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.2
#</RELEASE>
#<COMMENT>
#Changes for release 6.2
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.3
#</RELEASE>
#<NUMBER>
#013697
#</NUMBER>
#<COMMENT>
#ROTH IRA / Educational IRA
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.4
#</RELEASE>
#<NUMBER>
#020453
#</NUMBER>
#<COMMENT>
#Record Policy Settlement Options
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.4
#</RELEASE>
#<NUMBER>
#020460
#</NUMBER>
#<COMMENT>
#DTCC/IPS Connectivity
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.4
#</RELEASE>
#<NUMBER>
#020463
#</NUMBER>
#<COMMENT>
#Investor Profiles
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.4
#</RELEASE>
#<NUMBER>
#020475
#</NUMBER>
#<COMMENT>
#Death Benefit Guarantees and Riders
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.4
#</RELEASE>
#<NUMBER>
#020452
#</NUMBER>
#<COMMENT>
#Foreign Content for RRSP Products
#</COMMENT>
#</HISTORY>
#<HISTORY>
#<RELEASE>
#6.4
#</RELEASE>
#<NUMBER>
#021345
#</NUMBER>
#<COMMENT>
#Correct stype from 'text' to 'date'
#</COMMENT>
#</HISTORY>
#</HEADER>
# Converted from PathFinder 2.2 to 3.0 Jan 24, 2005 12:37:39 PM CST
# Converted to Enterprise Designer 1.1 format on Oct 4, 2002 1:52:07 PM EDT
#*******************************************************************************
#*  Chg#    Release  Description                                               *
#*                                                                             *
#*  AAG001  00002    July 16,2002   Siriporn Jarijitpaiboon                    *
#*                   Expand agent code from 6 to 10                            *
#*  ACL002  00002    JULY 31,2002 HOLDEN ZHANG                                 *
#*  ACL002           ADD CLIENT CLASSIFICATION(VIP) FIELD                      *
#*  APR005  00002    JULY 31,2002 HOLDEN ZHANG                                 *
#*  APR005           ADD MODE FACTOR TYPE FIELD                                *
#*  APR002  00002    JULY 31,2002 HOLDEN ZHANG                                 *
#*  APR002           ADD PREMIUM HOLIDAY INDICATOR,PREMIUM HOLIDAY             *
#*  APR002           STATUS FIELDS                                             *
#*  ANB007  00002    JULY 31, 2002 HOLDEN ZHANG                                *
#*  ANB007           ADD INSURED APPLICATION NATURE,PAYOR APPLICATION          *
#*  ANB007           NATURE,POLICY CONTRACT DATE,INITIAL ADHOC TOP UP,         *
#*  ANB007           WITHHELD COMMISSION INDICATOR,POLICY ENTRY DATE,          *
#*  ANB007           INSURED HEALTH QUESTION YES,PAYOR HEALTH QUESTION         *
#*  ANB007           YES,EXTRA COMMISSION ELIGIBILITY,REISSUE                  *
#*  ANB007           INDICATOR,SPECIAL QUOTATION INDICATOR,STATUS              *
#*  ANB007           REASON CODE,PAYMENT TYPE CODE,LAST CHEQUE                 *
#*  ANB007           CLEARING DATE FIELDS                                      *
#*  ACL002  00002    JULY 30, 2002 MARTIN LU                                   *
#*  ACL002           CLIENT NAME/ADDRESS EXPANSION                             *
#*  ANB007  00002    Aug 07,2002   Sunpachai.A                                 *
#*                   NB Capture Editing                                        *
#*  ANB008  00002    SEP 22, 2002 MARTIN LU                                    *
#*  ANB008           ISSUE/SETTLE SCREENS TO SHOW PREMIUMS                     *
#*  ANB008           RECEIVED AND APPLIED                                      *
#*  AAG008  00002    25 Sep, 2002   Leon liu                                   *
#*  AAG008           Writing Agent                                             *
#*  ABC003  00002    OCT 16, 2002 Kelvin Chan                                  *
#*  ABC003           ADD POL-SPND-IND RETRIEVAL FOR BF9097                     *
#*  APA002  00002    OCT 30, 2002 HOLDEN ZHANG                                 *
#*  APA002           POLICY STATUS REASON CODE                                 *
#*  ACL002  00002    NOV 26, 2002 LEON LIU                                     *
#*  ACL002           CLIENT TAX ID EXPANSION                                   *
#*  ANB007  00002    November 29, 2002 Phyllis Lam                             *
#*  ANB007           Add Policy Inforce Date                                   *
#*  ANB007  00002    December 2, 2002 Phyllis Lam                              *
#*  ANB007           Display NB Last Payment Date                              *
#*  ABC003  00002    DEC 06, 2002  STEPHANIE HUANG                             *
#*                   ADD SERVICING AGENCY ID                                   *
#*  ANB008  00002    DEC 13, 2002 MARTIN LU                                    *
#*  ANB008           Only Get Non Post Amount when Settle policy               *
#*  ACL002  00002    December 20, 2002 Toby Lam                                *
#*  ACL002           Get List of account from client                           *
#*  APA006  00003    MAR 18, 2003 HOLDEN ZHANG                                 *
#*  APA006           POLICY RESTRICTION                                        *
#*  APA022  00003    JUN 09, 2003 TOBY LAM                                     *
#*  APA022           ENHANCED POLICY INQUIRY - LAPSE START DATE                *
#*  APA020  00003    MAY 26, 2003 Sunpachai A.                                 *
#*  APA020           Policy Suspend Indicator                                  *
#*  ANB021  00003    JUN 11, 2003  JERY WEI                                    *
#*  ANB021           Additional Phase I Enhancement                            *
#*  AGL079  REL6.4   JULY 30, 2003  CATE HE                                    *
#*  AGL079           V6.3.1 THAI CHANGED RETROFIT TO V6.4                      *
#*  BNB005  00003    NOV 17, 2003  MOSES MO                                    *
#*  BNB005           INTERFACE WITH FREELOOK                                   *
#*  APR053  00003    NOV 25, 2003 ROONGTIWA S.                                 *
#*  APR053           ADD FREE LOOK TRANSFER DATE                               *
#*  APA060  00003    DEC 11, 2003  ROONGTIWA S.                                *
#*  APA060           Add Pending Fund Utitization Date                         *
#*  BAG002  00004    DEC 29, 2003 GLORIA CHEN                                  *
#*  BAG002           SERVICING AGENT ON COMPLAINT POLICY                       *
#*  APR051  00004    JAN 30, 2004 TIGER WANG                                   *
#*  APR051           ADD APL STOP RULE AND NFO RESTRICTION RULE                *
#*  ANB007  00004    APR 05, 2004  MOSES MO                                    *
#*  ANB007           DISPLAY INSURED WHO NOT SAME AS OWNER                     *
#*  ANB007           AND REJECT REASON  (ST_PIR 111)                           *
#*  ANB006  00003    JAN 14, 2004 CHAIANUNT                                    *
#*  ANB006           ADD NEW FILED ON NB CAPTURE SCREEN                        *
#*  ANB006  00003    MAY 28, 2004 CHAIANUNT                                    *
#*  ANB006           PASS OWNER VALUE TO BANK A/C RETRIEVE                     *
#*  APR061  REL6.5   JUN 15, 2004  WILSON WANG                                 *
#*  APR061           EXCESS DIVIDEND OPTION                                    *
#*  APR086  00004    SEP 02, 2004  EVA CHAN                                    *
#*  APR086           PR #02                                                    *
#*  APR086           EXCESS COUPON OPTION                                      *
#*  APR079  00004    NOV 26, 2004  KEITH WONG                                  *
#*  APR079           PR#1                                                      *
#*  APR079           ADD DEFAULT NFO INDICATOR FOR PAID UP CASES               *
#*  APR087  00004    DEC 01, 2004 KEN CHAU                                     *
#*  APR087           PR# 02                                                    *
#*  APR087           ADD NEW FIELD - CONTEST MERGING POLICY                    *
#*  ANB006  00004    Nov 01, 2004 JOHN CHEN                                    *
#*  ANB006           PR#20                                                     *
#*  ANB006           PACKAGE PLAN SUPPORT                                      *
#*  ANB006           PR#22                                                     *
#*  ANB006           NEW FIELDS ON NB CAPTURE SCREENS                          *
#*  ANB006  00004    MAR 11, 2005 KEN CHAU                                     *
#*  ANB006           PR #08                                                    *
#*  ANB006           ADD NEW FIELD - AGNCY-BR-ID                               *
#*  ANB006           REF: TLD_ING_ULUAT_PIR #624                               *
#*  APR077  00004    FEB 28, 2005 RAIN LIU                                     *
#*  APR077           PR#12                                                     *
#*  APR077           MULTICURRENCY MOD. FOR NB                                 *
#*  ANB025  00004    APR 18, 2005  HENRY LIU                                   *
#*  ANB025           PR #02                                                    *
#*  ANB025           ADD CORPORATION ID AND CHANNEL CODE                       *
#*  APA036  00004    APR 21, 2005 RICHARD HU                                   *
#*  APA036           PR #07                                                    *
#*  APA036           ONLIINE INQUIRY OF TERMINATE MASTERS                      *
#*  ANB006  00005    JUN 13, 2005 KEN CHAU                                     *
#*  ANB006           PR #27                                                    *
#*  ANB006           ADD NEW FIELDS - REJECTION REASON CODE,                   *
#*  ANB006           REJECTION REASON CONDITION CODE, NEGATIVE CODE,           *
#*  ANB006           REJECTION REQUEST DATE, REISSUE DATE,                     *
#*  ANB006           REISSUE CANCEL DATE, REISSUE END DATE                     *
#*  ANB006           REF: THD_UAT_IGM_UL_PIR #898                              *
#*  ANB024  00005    AUG 10, 2005 RAYMOND LEUNG                                *
#*  ANB024           PR #06                                                    *
#*  ANB024           ADD NEW FIELD INITIAL REQUIRED PREMIUM                    *
#*  ANB024           REF: THD_PROD_IGM_PIR #199                                *
#*  ANB024  00005    AUG 24, 2005 RAYMOND LEUNG                                *
#*  ANB024           PR #06                                                    *
#*  ANB024           SKIP REVISION 2.20                                        *
#*  ANB024           REF: THD_PROD_IGM_PIR #199                                *
#*  ANB024  00005    AUG 24, 2005 RAYMOND LEUNG                                *
#*  ANB024           PR #06                                                    *
#*  ANB024           RETROFITTING REVISION 2.20                                *
#*  ANB024           REF: THD_PROD_IGM_PIR #199                                *
#*  ANB006  00005    SEP 9, 2005  SHERRIE HAN                                  *
#*  ANB006           PR #33                                                    *
#*  ANB006           ADD LEAD CODE                                             *
#*  ANB006  00005    SEP 15, 2005  SHERRIE HAN                                 *
#*  ANB006           PR #33                                                    *
#*  ANB006           SKIP REVERSION 2.23                                       *
#*  ANB006  00005    SEP 15, 2005  SHERRIE HAN                                 *
#*  ANB006           PR #33                                                    *
#*  ANB006           RETROFITTING REVERSION 2.23                               *
#*  ANB028  00005    SEP 14, 2005 SENTHIL V                                    *
#*  ANB028           REF : PR #01                                              *
#*  ANB028           NB APPLICATION ENTRY FOR BATCH UPLOAD ENHANCEMENT         *
#*  ANB028  00005    OCT 10, 2005 JASON ZHOU                                   *
#*  ANB028           PR #2                                                     *
#*  ANB028           SKIP REVISION 2.23                                        *
#*  ANB028  00005    OCT 10, 2005 JASON ZHOU                                   *
#*  ANB028           PR #2                                                     *
#*  ANB028           RETROFITTING REVERSION 2.23                               *
#*  AAG024  00006    OCT 11, 2005  NELSON CHO                                  *
#*  AAG024           PR #06                                                    *
#*  AAG024           ORIGINAL WRITING AGENT                                    *
#*  APA061  00006    NOV 15, 2005 HOLDEN ZHANG                                 *
#*  APA061           PR #05                                                    *
#*  APA061           ATTACH CHANNEL CODE TO ALL POLICIES AT COVERAGE LEVEL     *
#*  AGL149  *****    MAR 29, 2006 ELYN FU                                      *
#*  AGL149           PR #04                                                    *
#*  AGL149           ADD CLIENT NAME KEY (TYPE + SEQNUM)                       *
#*  ANB006  *****    JUL 25, 2006 DANIEL WU                                    *
#*  ANB006           PIR REFERENCE: THD_PROD_SMRF_PIR #274                     *
#*  ANB006           PR #38                                                    *
#*  ANB006           ADD EXTERNAL REFERENCE TEXT                               *
#*  APA040  *****    JUL 06, 2006 RAY ZHANG                                    *
#*  APA040           PR #01                                                    *
#*  APA040           ADD PAYOR BENEFIT RELATIONSHIP                            *
#*  APA040           PIR REFERENCE : THD_UAT_IGM_UL_PIR #975                   *
#*  APA070  *****    FEB 21, 2006  ERIC CHAN                                   *
#*  APA070           PR #09                                                    *
#*  APA070           POSITIVE OPTION MODIFICATION                              *
#*  ANB006  *****    SEP 01, 2006 PHYLLIS LAM                                  *
#*  ANB006           = 3.3                                                     *
#*  APA040  *****    OCT 09, 2006  JUSTIN SU                                   *
#*  APA040           = 3.5                                                     *
#*  CFA001  *****    AUG 13, 2007  SARAH MU                                    *
#*  CFA001           FUND ALLOCATION DATE                                      *
#*  CAC001  *****    SEP 13, 2007 DONNY FENG                                   *
#*  CAC001           PR #06                                                    *
#*  CAC001           EXTEND CHANNEL CODE AND CAMPAIGN CODE                     *
#*  CPA001  *****    AUG 30, 2007  GARY HE                                     *
#*  CPA001           PR #02                                                    *
#*  CPA001           ADD OWNER INFO, INSURED INFO AND ADDRESS KEYS             *
#*  CPA006  *****    SEP 26, 2007 ERIC WU                                      *
#*  CPA006           PR #2                                                     *
#*  CPA006           POLICY BASIC INFORMATION INQUIRY                          *
#*  CPA001  *****    DEC 24, 2007 GARY HE                                      *
#*  CPA001           PR #2                                                     *
#*  CPA001           MODIFY SHIP FROM INDICATOR TO SELECTION                   *
#*  CPA001  *****    JAN 11, 2008 GARY HE                                      *
#*  CPA001           PR #2                                                     *
#*  CPA001           RENAME SHIP-IND TO SHIP-CD                                *
#*  CGL003  *****    MAR 03, 2008  JOYIN SU                                    *
#*  CGL003           PR #23                                                    *
#*  CGL003           UPDATE POL-BILL-TO-DT-NUM FORMAT                          *
#*  CFA208  *****    JAN 24, 2009 RONNIE WEN                                   *
#*  CFA208           PR#06                                                     *
#*  CFA208           ADD POL-UL-PRCES-DT, POL-UL-PTD-NUM, POL-UL-SHRT-AMT      *
#*  CPR203  *****    SEP 24, 2008 REVAN SHEN                                   *
#*  CPR203           PR #01                                                    *
#*  CPR203           ADD NEXT LOAN INTEREST CAPITALIZE DATE                    *
#*  CPR224  *****    MAY 19, 2009  TANKY TIAN                                  *
#*  CPR224           PR #04                                                    *
#*  CPR224           POLICY EXTENSION TABLE CHANGES                            *
#*  CPR218  *****    MAY 13, 2009 FEN LI                                       *
#*  CPR218           PR#2 NEW FIELDS ON POLICY EXTENSION TABLE                 *
#*  CPR218           ADD POL-WAV-STAT-CD, MAV-WAV-STRT-DT, PREM-WAV-STRT-DT    *
#*  CPR105  *****    JAN 27, 2010 RAX WANG                                     *
#*  CPR105           PR #1                                                     *
#*  CPR105           ADD CONVERSION INDICATOR IN POLICY INQUIRY SCREEN         *
#*  CPR111  *****    MARCH 26, 2010 JULIE LIU                                  *
#*  CPR111           PR# 01                                                    *
#*  CPR111           SERCHO201003005                                           *
#*  CPR111           ADD CUSTOMER RISK SCORE FOR EACH POLICY                   *
#*  CPR301  *****    MAY 14, 2012 ANWAY CAI                                    *
#*  CPR301           PR# 07                                                    *
#*  CPR301           ADD POL_ANTY_OPT_CD, POL_ANTY_XCES_CD,                    *
#*  CPR301           IN POLICY ENQUIRY.                                        *
#*  CPA301  *****    MAY 31, 2012 ANWAY CAI                                    *
#*  CPA301           PR #04                                                    *
#*  CPA301           POLICY PLEDGE FLAG UPDATE                                 *
#*  CPR311  *****    SEP 10, 2012 ANWAY CAI                                    *
#*  CPR311           PR #01                                                    *
#*  CPR311           PRODUCT SETUP FOR DCA PROCESS                             *
#*  CBC109  *****    MAY 02, 2013 RONNIE WEN                                   *
#*  CBC109           PR #01                                                    *
#*  CBC109           ADD NEW FIELD FOR CAMPAIGN ID                             *
#*  CPR133  *****    FEB 24, 2014 DONTE CHEN                                   *
#*  CPR133           PR #02                                                    *
#*  CPR133           ADD NEW FIELD FOR POLICY MODAL PREMIUM (WAIVED)           *
#*  CPR133  *****    FEB 26, 2014 DONTE CHEN                                   *
#*  CPR133           PR #01                                                    *
#*  CPR133           ADD NEW FIELD FOR EMBEDDED WAIVER                         *
#*  CPR143  *****    MAY 28, 2014 JOHN LIU                                     *
#*  CPR143           PR#02                                                     *
#*  CPR143           ADD NEW FIELD FOR IER COUPON                              *
#*  CPR148  *****    MAR 20, 2015 JOHN LIU                                     *
#*  CPR148           PR #01                                                    *
#*  CPR148           SPUL ENHANCEMENT                                          *
#*  CPR149  *****    JUN 17, 2015 MICHAEL OU                                   *
#*  CPR149           PR #04                                                    *
#*  CPR149           JOINT PB ADD RELATIONSHIP TO PRIMARY INSURED              *
#*  CPR177  *****    NOV 13, 2018 DONTE CHEN                                   *
#*  CPR177           PR #02                                                    *
#*  CPR177           CLIENT ID CARD ENHANCEMENT                                *
#*******************************************************************************
P-STEP BF9527-P
{
        ATTRIBUTES
        {
                BusinessFunctionId = "9527";
                BusinessFunctionType = "Retrieve";
                MirName = "CCWM9527";
        }
        OUT LSIR-RETURN-CD;
        OUT MIR-RETRN-CD;
        IN MIR-POL-ID-BASE
        {
                DBTableName = "TPOL";
                DefaultSession = "MIR-POL-ID-BASE";
                Key;
                Label = "Policy ID";
                Length = "9";
                Mandatory;
                SType = "Text";
        }
        IN MIR-POL-ID-SFX
        {
                DBTableName = "TPOL";
                DefaultSession = "MIR-POL-ID-SFX";
                Key;
                Label = "Suffix";
                Length = "1";
                SType = "Text";
        }
#APA036 - 04210507
        IN MIR-MAST-DISP-CD
        {
                CodeSource = "DataModel";
                CodeType = "DV-MAST-DISP-CD";
                DBTableName = "Derived";
                Key;
                Label = "Display Type";
                Length = "40";
                Mandatory;
                SType = "Selection";
        }
#/APA036 - 04210507
        OUT MIR-ACRU-CALC-TIME-CD
        {
                CodeSource = "DataModel";
                CodeType = "ACRU-CALC-TIME-CD";
                DBTableName = "TPOL";
                Label = "Accrual Income Calculation Time Code";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-AGT-ID-T[3]
        {
                DBTableName = "TPOLW";
                FieldGroup = "Table3";
                Index = "1";
                KeyColumn;
                Label = "Writing Agent Number";
#AAG001 Length = "6";
        Length = "10";
#/AAG001
                SType = "Text";
        }
#AAG024 - 10110506
        OUT MIR-ORG-AGT-ID-T[3]
        {
                DBTableName = "TZCVH";
                FieldGroup = "Table3";
                Index = "1";
                KeyColumn;
                Label = "Original Writing Agent Number";
               Length = "10";
                SType = "Text";
        }
#/AAG024 - 10110506
#BAG002
        OUT MIR-CMPLN-POL-SERV-AGT-ID
        {
                DBTableName = "TPOL";
                Label = "Complaint Policy Servicing Agent";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-CMPLN-POL-SERV-AGT-NM
        {
                DBTableName = "Derived";
                Label = "Complaint Policy Servicing Agent Name";
                Length = "160";
                SType = "Text";
        }
#/BAG002
        OUT MIR-ANPAYO-1-DEST-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-DEST-CD";
                DBTableName = "TPOL";
                Label = "Annuity 1 Destination Registered Code";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-ANPAYO-1-MTHD-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-MTHD-CD";
                DBTableName = "TPOL";
                Label = "Method to Pay First Annuitant";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-ANPAYO-2-DEST-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-DEST-CD";
                DBTableName = "TPOL";
                Label = "Annuity 2 Destination Registered Code";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-ANPAYO-2-MTHD-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-MTHD-CD";
                DBTableName = "TPOL";
                Label = "Method to Pay Second Annuitant";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-APP-FORM-TYP-ID
        {
                CodeSource = "EDIT";
                CodeType = "AFTT";
                DBTableName = "TPOL";
                Label = "Application Form Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-AUTO-PREM-PMT-IND
        {
                DBTableName = "TPOL";
                Label = "Automatic Premium Payment Indicator";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-BILL-LEAD-TIME-DUR
        {
                DBTableName = "TPOL";
                Label = "Billing Lead Time";
                Length = "3";
                SType = "Text";
        }
        OUT MIR-BILL-RMND-REASN-CD
        {
                CodeSource = "DataModel";
                CodeType = "BILL-RMND-REASN-CD";
                DBTableName = "TPOL";
                Label = "Billing Reminder Notice Type";
                Length = "1";
                SType = "Text";
        }
#CPA001 - 08300702
#       OUT MIR-CLI-ADDR-TYP-CD-T[5]
#       {
#               CodeSource = "EDIT";
#               CodeType = "ADTYP";
#               DBTableName = "TPOLC";
#               FieldGroup = "Table1";
#               Index = "1";
#               Label = "Client Address Type";
#               Length = "40";
#               SType = "Text";
#       }
#/CPA001 - 08300702
        OUT MIR-CLI-BTH-DT-T[5]
        {
                DBTableName = "TCLI";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Date of Birth";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-CLI-CRNT-LOC-CD
        {
                CodeSource = "EDIT";
                CodeType = "LOCAT";
                DBTableName = "TPOL";
                Label = "Client's Current Location";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-CLI-ID-T[5]
        {
                DBTableName = "TPOLC";
                FieldGroup = "Table1";
                Index = "1";
                KeyColumn;
                Label = "Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-CLI-TAX-ID-T[5]
        {
                DBTableName = "TCLI";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Tax ID";
#ACL002 Length = "9";
        Length = "20";
#ACL002
                SType = "Text";
        }
        OUT MIR-CLM-PAYE-CVG-NUM
        {
                DBTableName = "TPOL";
                Label = "Coverage Number to which a Claim is Paid";
                Length = "2";
                SType = "Text";
        }
        OUT MIR-CLM-PAYE-POL-ID-BASE
        {
                DBTableName = "TPOL";
                Label = "Claim Payment Policy ID";
                Length = "9";
                SType = "Text";
        }
        OUT MIR-CLM-PAYE-POL-ID-SFX
        {
                DBTableName = "TPOL";
                Label = "Claim Payment Policy Suffix";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-CLM-PAYE-REL-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLM-PAYE-REL-CD";
                DBTableName = "TPOL";
                Label = "Relationship of Recipient of Claim Payment";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-CLM-PAYO-MTHD-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLM-PAYO-MTHD-CD";
                DBTableName = "TPOL";
                Label = "Claim Payment Method";
                Length = "3";
                SType = "Text";
        }
        OUT MIR-CONN-OPTL-POL-ID-BASE
        {
                DBTableName = "TPOL";
                Label = "Connected Optional Policy ID";
                Length = "9";
                SType = "Text";
        }
        OUT MIR-CONN-OPTL-POL-ID-SFX
        {
                DBTableName = "TPOL";
                Label = "Connected Optional Policy Suffix";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-DV-AGT-CLI-NM-T[3]
        {
                DBTableName = "Derived";
                FieldGroup = "Table3";
                Index = "1";
                Label = "Agent Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
#AAG024 - 10110506
        OUT MIR-DV-ORG-AGT-CLI-NM-T[3]
        {
                DBTableName = "Derived";
                FieldGroup = "Table3";
                Index = "1";
                Label = "Original Writing Agent Name";
               Length = "160";
                SType = "Text";
        }
#/AAG024 - 10110506
        OUT MIR-DV-ANUTNT-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DBTableName = "Derived";
                FieldGroup = "Table2";
                Index = "1";
                Label = "Annuitant Client Address Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-ANUTNT-CLI-ID-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table2";
                Index = "1";
                KeyColumn;
                Label = "Annuitant Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-ANUTNT-CLI-NM-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table2";
                Index = "1";
                Label = "Annuitant Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-DV-ANUTNT-SUB-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "DV-ANUTNT-SUB-CD";
                DBTableName = "Derived";
                FieldGroup = "Table2";
                Index = "1";
                Label = "Annuitant Client Relationship Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-ASIGN-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DBTableName = "Derived";
                FieldGroup = "Table4";
                Index = "1";
                Label = "Assignee Client Address Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-ASIGN-CLI-ID-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table4";
                Index = "1";
                KeyColumn;
                Label = "Assignee Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-ASIGN-CLI-NM-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table4";
                Index = "1";
                Label = "Assignee Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-DV-ASIGN-SUB-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "DV-ASIGN-SUB-CD";
                DBTableName = "Derived";
                FieldGroup = "Table4";
                Index = "1";
                Label = "Assignee Client Relationship Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-IPARTY-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DBTableName = "Derived";
                FieldGroup = "Table5";
                Index = "1";
                Label = "Interested Party Client Address Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-IPARTY-CLI-ID-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table5";
                Index = "1";
                KeyColumn;
                Label = "Interested Party Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-IPARTY-CLI-NM-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table5";
                Index = "1";
                Label = "Interested Party Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
#ANB006 OUT MIR-DV-LBILL-ADDR-CD
#ANB006 {
#ANB006         CodeSource = "EDIT";
#ANB006         CodeType = "ADTYP";
#ANB006         DBTableName = "Derived";
#ANB006         Label = "ListBill Client Address Type";
#ANB006         Length = "40";
#ANB006         SType = "Text";
#ANB006 }
#ANB006 OUT MIR-DV-LBILL-CLI-ID
#ANB006 {
#ANB006         DBTableName = "Derived";
#ANB006         Label = "ListBill Client ID";
#ANB006         Length = "10";
#ANB006         SType = "Text";
#ANB006 }
#ANB006 OUT MIR-DV-LBILL-CLI-NM
#ANB006 {
#ANB006         DBTableName = "Derived";
#ANB006         Label = "ListBill Name";
#ANB006#ACL002 Length = "75";
#ANB006        Length = "160";
#ANB006#ACL002
#ANB006         SType = "Text";
#ANB006 }
        OUT MIR-DV-OWN-CLI-NM
        {
                DBTableName = "Derived";
                Label = "Owner Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-DV-OWN-CLI-NM-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Owner Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-DV-OWN-SUB-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "DV-OWN-SUB-CD";
                DBTableName = "TPOLC";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Owner Client Relationship Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-PAYR-ADDR-CD
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DBTableName = "Derived";
                Label = "Payor Client Address Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-PAYR-CLI-ID
        {
                DBTableName = "Derived";
                Label = "Payor Client ID";
                Length = "10";
                SType = "Text";
        }
#ANB006
        OUT MIR-DV-OWN-CLI-ID
        {
                DBTableName = "Derived";
                Label = "Owner Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-REL-OPTN-CD
        {
                Label = "Relationship Option";
                Length = "1";
                SType = "Text";
        }
#/ANB006
        OUT MIR-DV-PAYR-CLI-NM
        {
                DBTableName = "Derived";
                Label = "Payor Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-DV-PAYR-SUB-CD
        {
#ACL002 CodeSource = "DataModel";
#ACL002 CodeType = "DV-PAYR-SUB-CD";
#ACL002 - Start
        CodeSource = "NSOM9025";
        FilterFields = "3";
#ANB006 FilterField1 = "1";
        FilterField1 = "MIR-DV-REL-OPTN-CD";
        FilterField2 = "MIR-DV-PAYR-CLI-ID";
#ANB006 FilterField3 = "MIR-DV-PAYR-CLI-ID";
#ANB006 FilterField3 = " ";
        FilterField3 = "MIR-DV-OWN-CLI-ID";
#ACL002 - End
                DBTableName = "Derived";
                Label = "Payor Client Relationship Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-SERV-AGT-CLI-NM
        {
                DBTableName = "Derived";
                Label = "Servicing Agent Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-DV-SPOUS-ADDR-CD
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DBTableName = "Derived";
                Label = "Spouse Client Address Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-SPOUS-CLI-ID
        {
                DBTableName = "Derived";
                Label = "Spouse Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-SPOUS-CLI-NM
        {
                DBTableName = "Derived";
                Label = "Spouse Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-DV-TRST-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DBTableName = "Derived";
                FieldGroup = "Table6";
                Index = "1";
                Label = "Trustee Client Address Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-DV-TRST-CLI-ID-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table6";
                Index = "1";
                KeyColumn;
                Label = "Trustee Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-TRST-CLI-NM-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table6";
                Index = "1";
                Label = "Trustee Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        OUT MIR-ENHC-UWG-APROV-IND
        {
                CodeSource = "DataModel";
                CodeType = "ENHC-UWG-APROV-IND";
                DBTableName = "TPOL";
                Label = "Underwriting Approved for Enhancement";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-ENHC-UWG-REQIR-IND
        {
                CodeSource = "DataModel";
                CodeType = "ENHC-UWG-REQIR-IND";
                DBTableName = "TPOL";
                Label = "Underwriting required for Enhancement";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-GAIN-RPT-TIME-CD
        {
                CodeSource = "DataModel";
                CodeType = "GAIN-RPT-TIME-CD";
                DBTableName = "TPOL";
                Label = "Gain on Disposition Reporting Time Code";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-LINK-POL-ISS-IND
        {
                DBTableName = "TPOL";
                Label = "Policy Linked to Others Indicator";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-LOAN-INT-DEDBL-IND
        {
                DBTableName = "TPOL";
                Label = "Include Loan Interest in ACB Indicator";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-LXPCT-CALC-CD
        {
                CodeSource = "DataModel";
                CodeType = "LXPCT-CALC-CD";
                DBTableName = "TPOLT";
                Label = "Basis of Life Expectancy Factor";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-LXPCT-RECALC-IND
        {
                DBTableName = "TPOLT";
                Label = "Annual Life Expectancy Factor Recalculation Code";
                Length = "40";
                SType = "Indicator";
        }
        OUT MIR-MODE-FCT-RESTR-IND
        {
                DBTableName = "TPOL";
                Label = "Mode Factor Restrict Indicator";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-MPREM-DSCNT-AMT
        {
                DBTableName = "TPOL";
                Label = "Mode Premium Discount Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        OUT MIR-NXT-ACTV-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "NXT-ACTV-TYP-CD";
                DBTableName = "TPOL";
                Label = "Type of Next Automatic Activity";
                Length = "3";
                SType = "Text";
        }
        OUT MIR-PMT-REDRW-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "PMT-REDRW-OPT-CD";
                DBTableName = "TPOL";
                Label = "Payment Redraw Option";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-PLAN-ID
        {
                CodeSource = "EDIT";
                CodeType = "PLAN";
                DBTableName = "TPOL";
                Label = "Plan ID";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-PLAN-PERI-PREM-AMT
        {
                DBTableName = "TPOL";
                Label = "Planned Periodic Premium Amount";
                Length = "13";
                SType = "Currency";
        }
#AAG008--START
    INOUT MIR-WRIT-AGT-OVRID-ID-T[3]
    {
        Length = "2";
        FieldGroup = "Table3";
        SType = "Text";
        Label = "Agent Override ID";
        Index = "1";
    }
#AAG008--END
        OUT MIR-POL-AGT-SHR-PCT-T[3]
        {
                DBTableName = "TPOLW";
                Decimals = "2";
                FieldGroup = "Table3";
                Index = "1";
                Label = "Agent's Share Percentage";
                Length = "5";
                SType = "Percent";
        }
#ANB006 - 03110508
    OUT MIR-AGNCY-BR-ID-T[3]
    {
        Length = "10";
        FieldGroup = "Table3";
        DBTableName = "TZAGS";
        SType = "Text";
        Label = "Agency Code";
        Index = "1";
    }
#AAG024 - 10110506
    INOUT MIR-ORG-WRIT-AGT-OVRID-ID-T[3]
    {
        Length = "2";
        FieldGroup = "Table3";
        SType = "Text";
        Label = "Original Agent Override ID";
        Index = "1";
    }
        OUT MIR-ORG-POL-AGT-SHR-PCT-T[3]
        {
                DBTableName = "TZCVH";
                Decimals = "2";
                FieldGroup = "Table3";
                Index = "1";
                Label = "Original Agent's Share Percentage";
                Length = "5";
                SType = "Percent";
        }
    OUT MIR-ORG-AGNCY-BR-ID-T[3]
    {
        Length = "10";
        FieldGroup = "Table3";
        DBTableName = "TZAGS";
        SType = "Text";
        Label = "Agency Code";
        Index = "1";
    }
#/AAG024 - 10110506
#/ANB006 - 03110508
        OUT MIR-POL-ANPAYO-1-AMT
        {
                DBTableName = "TPOL";
                Label = "Amount Payable to First Annuitant";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        OUT MIR-POL-ANPAYO-2-AMT
        {
                DBTableName = "TPOL";
                Label = "Amount Payable to Second Annuitant";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        OUT MIR-POL-MISC-SUSP-AMT
        {
                DBTableName = "TPOL";
                Label = "Miscellaneous Suspense";
                Length = "15";
                Signed;
                SType = "Currency";
        }
        OUT MIR-POL-ANPAYO-EFF-DT
        {
                DBTableName = "TPOL";
                Label = "Effective Date of Annuity";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-ANPAYO-MODE-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-ANPAYO-MODE-CD";
                DBTableName = "TPOL";
                Label = "Frequency of Annuity Payments";
                Length = "2";
                SType = "Text";
        }
        OUT MIR-POL-ANPAYO-PMT-DT
        {
                DBTableName = "TPOL";
                Label = "Date of Last Immediate Annuity Payment";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-APL-IND
        {
                DBTableName = "TPOL";
                Label = "APL Separate Option for Nonforfeiture";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-POL-APP-CMPLT-DT
        {
                DBTableName = "TPOL";
                Label = "Application Completion Date";
                Length = "10";
                SType = "Date";
        }
#ANB007
    OUT MIR-POL-INFC-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Date";
        Label = "Policy Inforce Date";
    }
#/ANB007
#ANB007
    OUT MIR-NB-FINAL-PMT-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Date";
        Label = "Last Payment Date";
    }
#/ANB007
        OUT MIR-POL-APP-CTR
        {
                DBTableName = "TPOL";
                Label = "Application Counter";
                Length = "1";
                SType = "Text";
        }
        # Functional 020460 -  NSCC - expanded from 15 to 20 characters
        OUT MIR-POL-APP-FORM-ID
        {
                DBTableName = "TPOL";
                Label = "Application Form ID";
                Length = "20";
                SType = "Text";
        }
        OUT MIR-POL-APP-RECV-DT
        {
                DBTableName = "TPOL";
                Label = "Application Received Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-APP-SIGN-DT
        {
                DBTableName = "TPOL";
                Label = "Application Signed Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-APP-SIGN-IND
        {
                CodeSource = "DataModel";
                CodeType = "POL-APP-SIGN-IND";
                DBTableName = "TPOL";
                Label = "Application Signed Indicator";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-BILL-MODE-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-BILL-MODE-CD";
                DBTableName = "TPOL";
                Label = "Policy Billing Mode";
                Length = "40";
                SType = "Text";
        }
        # 21345 - Correct stype from 'text' to 'date'
        OUT MIR-POL-BILL-TO-DT-NUM
        {
                DBTableName = "TPOL";
                Label = "Policy Billed to Date";
                Length = "10";
                SType = "Date";
        }
        # CGL003 - 03030823
        OUT MIR-POL-BILL-TO-DT-YYYY
        {
                  Label = "Policy Billed To Date's Year";
                  Length = "4";
                  SType = "Number";
        }
        OUT MIR-POL-BILL-TO-DT-MM
        {
                  Label = "Policy Billed To Date's Month";
                  Length = "2";
                  SType = "Number";
        }
        OUT MIR-POL-BILL-TO-DT-DD
        {
                  Label = "Policy Billed To Date's Day";
                  Length = "2";
                  SType = "Number";
        }
        #/CGL003 - 03030823
        OUT MIR-POL-BILL-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-BILL-TYP-CD";
                DBTableName = "TPOL";
                Label = "Policy Billing Method";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-CEAS-DT
        {
                DBTableName = "TPOL";
                Label = "Policy Cease Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-CEAS-REASN-CD
        {
                CodeSource = "EDIT";
                CodeType = "CEASE";
                DBTableName = "TPOL";
                Label = "Reason for Policy Termination on Cease Date";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-CLI-ASIGN-DT-T[5]
        {
                DBTableName = "TPOLC";
                FieldGroup = "Table4";
                Index = "1";
                Label = "Effective Date of Assignment";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-CLI-INSRD-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "OTOI";
                DBTableName = "TPOLC";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Owner's Relationship to Insured";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-CNFD-IND
        {
                DBTableName = "TPOL";
                Label = "Policy Confidential Indicator";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-POL-COMNT-TXT
        {
                DBTableName = "TPOL";
                Label = "Comments/Remarks";
                Length = "50";
                SType = "Text";
        }
        OUT MIR-POL-CRCY-CD
        {
                CodeSource = "XTAB";
                CodeType = "CURR";
                DBTableName = "TPOL";
                Label = "Currency Used for Balances";
                Length = "2";
                SType = "Text";
        }
        OUT MIR-POL-CRNT-MODE-FCT
        {
                DBTableName = "TPOL";
                Decimals = "7";
                Label = "Policy Mode Factor";
                Length = "8";
                Signed;
                SType = "Number";
        }
        OUT MIR-POL-CSTAT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-CSTAT-CD";
                DBTableName = "TPOL";
                Label = "Current Policy Status";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-CTRY-CD
        {
                CodeSource = "XTAB";
                CodeType = "CNTRY";
                DBTableName = "TPOL";
                Label = "Country of Issue Location";
                Length = "2";
                SType = "Text";
        }
        OUT MIR-POL-CVG-REC-CTR
        {
                DBTableName = "TPOL";
                Label = "Number of Coverages on This Policy";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-DB-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DB-OPT-CD";
                DBTableName = "TPOL";
                Label = "Policy Death Benefit Option";
                Length = "40";
                SType = "Text";
        }
#ANB006 OUT MIR-POL-DIV-OPT-CD
#ANB006 {
#ANB006         CodeSource = "DataModel";
#ANB006         CodeType = "POL-DIV-OPT-CD";
#ANB006         DBTableName = "TPOL";
#ANB006         Label = "Policy Dividend Option";
#ANB006         Length = "40";
#ANB006         SType = "Text";
#ANB006 }
        OUT MIR-POL-ENHC-CHNG-DT
        {
                DBTableName = "TPOL";
                Label = "Date of Next Enhancement Option";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-ENHC-NELCT-QTY
        {
                DBTableName = "TPOL";
                Label = "Number of Non-Elections for Enhancement Benefit";
                Length = "2";
                SType = "Text";
        }
        OUT MIR-POL-FINAL-DISP-DT
        {
                DBTableName = "TPOL";
                Label = "Final Disposition Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-FREE-LK-END-DT
        {
                DBTableName = "TPOL";
                Label = "End of Free Look Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-GRS-APREM-AMT
        {
                DBTableName = "TPOL";
                Label = "Amount of Gross Annual Premium";
                Length = "15";
                Signed;
                SType = "Currency";
        }
        OUT MIR-POL-INS-PURP-CD
        {
                CodeSource = "EDIT";
                CodeType = "PURP";
                DBTableName = "TPOL";
                Label = "Purpose of Insurance";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-INS-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "PLAN-INS-TYP-CD";
                DBTableName = "TPOL";
                Label = "Type of Insurance of the Base Coverage";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-ISS-DT-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-ISS-DT-TYP-CD";
                DBTableName = "TPOL";
                Label = "Issue Date Rules";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-ISS-EFF-DT
        {
                DBTableName = "TPOL";
                Label = "Issue Date of the Policy";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-ISS-LOC-CD
        {
                CodeSource = "CTLC";
                CodeType = "ILOC";
                DBTableName = "TPOL";
                Label = "Issue Location of the Policy";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-LOAN-REPAY-AMT
        {
                DBTableName = "TPOL";
                Label = "Amount Billed for Repayment of Loans";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        OUT MIR-POL-MAIL-DT
        {
                DBTableName = "TPOL";
                Label = "Date of Policy Mailing";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-MAIL-REASN-CD
        {
                DBTableName = "TPOL";
                Label = "Reason for Additional Policy Mailing";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-MEC-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-MEC-CD";
                DBTableName = "TPOL";
                Label = "Modified Endowement Contract (MEC) Reason";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-MIB-SIGN-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-MIB-SIGN-CD";
                DBTableName = "TPOL";
                Label = "MIB Signature Received";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-MPREM-AMT
        {
                DBTableName = "TPOL";
                Label = "Modal Premium as of Paid to Date";
                Length = "15";
                Signed;
                SType = "Currency";
        }
#APA070  - 02210609
        OUT MIR-POF-MPREM-AMT
        {
                DBTableName = "TZPOF";
                Label = "Modal Offer Premium";
                Length = "17";
                Signed;
                SType = "Currency";
        }
        OUT MIR-POF-APREM-AMT
        {
                DBTableName = "TZPOF";
                Label = "Gross Annual Offer Premium";
                Length = "17";
                Signed;
                SType = "Currency";
        }
#/APA070  - 02210609
#ANB006 OUT MIR-POL-NFO-CD
#ANB006 {
#ANB006         CodeSource = "DataModel";
#ANB006         CodeType = "POL-NFO-CD";
#ANB006         DBTableName = "TPOL";
#ANB006         Label = "Non-Forfeiture Option";
#ANB006         Length = "1";
#ANB006         SType = "Text";
#ANB006 }
        OUT MIR-POL-NXT-ACTV-DT
        {
                DBTableName = "TPOL";
                Label = "Date of Next Automatic Process";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-OPTL-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-OPTL-CD";
                DBTableName = "TPOL";
                Label = "Key/Optional Status";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-PMT-DRW-DY
        {
                DBTableName = "TPOL";
                Label = "Billing Draw Day";
                Length = "2";
                SType = "Number";
        }
        OUT MIR-POL-PMT-REDRW-DT
        {
                DBTableName = "TPOL";
                Label = "Date Payment will Re-draw for premiums";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-PMT-RETRN-1-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PMT-RETRN-CD";
                DBTableName = "TPOL";
                Label = "Reason of Returned Cheque";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-PMT-RETRN-1-DT
        {
                DBTableName = "TPOL";
                Label = "Date of Returned Cheque";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-PMT-RETRN-2-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PMT-RETRN-CD";
                DBTableName = "TPOL";
                Label = "Reason Most Recent Cheque Returned";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-PMT-RETRN-2-DT
        {
                DBTableName = "TPOL";
                Label = "Date of Most Recently Returned Cheque";
                Length = "9";
                SType = "Date";
        }
        OUT MIR-POL-PDF-RFND-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PDF-RFND-CD";
                DBTableName = "TPOL";
                Label = "Status of Policy Deposit Fund (PDF) Funds";
                Length = "1";
                SType = "Text";
        }
        # 21345 - Correct stype from 'text' to 'date'
        OUT MIR-POL-PD-TO-DT-NUM
        {
                DBTableName = "TPOL";
                Label = "Policy Paid to Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-PFEE-FCT
        {
                DBTableName = "TPOL";
                Decimals = "7";
                Label = "Policy Fee Factor";
                Length = "8";
                Signed;
                SType = "Number";
        }
        OUT MIR-POL-PFEE-RESTR-IND
        {
                DBTableName = "TPOL";
                Label = "Restrict Billing of Policy Fee";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-POL-PNSN-QUALF-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PNSN-QUALF-CD";
                DBTableName = "TPOL";
                Label = "Pension Qualification Description";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-PNSN-SRC-CD
        {
                CodeSource = "EDIT";
                CodeType = "PENSR";
                DBTableName = "TPOL";
                Label = "Financial Institution which Transfered Funds for Payment";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-PREM-DSCNT-PCT
        {
                DBTableName = "TPOL";
                Decimals = "3";
                Label = "Policy Discount Percentage Applied to Premium";
                Length = "5";
                Signed;
                SType = "Percent";
        }
        OUT MIR-POL-PREM-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PREM-TYP-CD";
                DBTableName = "TPOL";
                Label = "Type of Premium Payment";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-RBILL-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-RBILL-CD";
                DBTableName = "TPOL";
                Label = "Restrict NFO or Billing Activity Reason";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-REG-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-REG-CD";
                DBTableName = "TPOL";
                Label = "Location Policy Registered";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-REG-DT
        {
                DBTableName = "TPOL";
                Label = "Date Policy Registered";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-REG-FND-SRC-CD
        {
                CodeSource = "DataModel";
                CodeType = "REG-FND-SRC-CD";
                DBTableName = "TPOL";
                Label = "Source of Funds for Payment";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-REINS-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-REINS-CD";
                DBTableName = "TPOL";
                Label = "Reinsurance Indicator";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-RUSH-IND
        {
                CodeSource = "DataModel";
                CodeType = "POL-RUSH-IND";
                DBTableName = "TPOL";
                Label = "Policy High Priority Indicator";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-SFB-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-SFB-CD";
                DBTableName = "TPOL";
                Label = "Number of Special Frequency Bills produced Annually";
                Length = "40";
                SType = "Text";
        }
#ABC003
     OUT MIR-POL-SPND-IND
     {
         Length = "1";
         DBTableName = "TPOL";
         SType = "Indicator";
         Label = "Policy Suspend Indicator";
     }
#/ABC003
        OUT MIR-POL-SNDRY-AMT
        {
                DBTableName = "TPOL";
                Label = "Sundry Payment Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        OUT MIR-POL-SNDRY-REASN-CD
        {
                CodeSource = "EDIT";
                CodeType = "SUNRE";
                DBTableName = "TPOL";
                Label = "Sundry Payment Reason";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-POL-SUPRES-ISS-IND
        {
                DBTableName = "TPOL";
                Label = "Policy Suppress Issue Indicator";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-POL-TAX-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-TAX-TYP-CD";
                DBTableName = "TPOL";
                Label = "Policy Tax Type";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-TXEMP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-TXEMP-CD";
                DBTableName = "TPOL";
                Label = "Tax Exempt Status";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-POL-VPO-PU-DUR
        {
                DBTableName = "TPOL";
                Label = "Number of Years Premium Should 'Vanish' By";
                Length = "2";
                SType = "Text";
        }
        OUT MIR-PREM-DSCNT-TYP-CD
        {
                CodeSource = "EDIT";
                CodeType = "PDTYP";
                DBTableName = "TPOL";
                Label = "Premium Discount Type";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-PREM-RECALC-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "PREM-RECALC-OPT-CD";
                DBTableName = "TPOL";
                Label = "Recalculated Premium Option";
                Length = "1";
                SType = "Text";
        }
        OUT MIR-PREV-SERV-AGT-ID
        {
                DBTableName = "TPOL";
                Label = "Previous Servicing Agent";
#AAG001 Length = "6";
        Length = "10";
#/AAG001
                SType = "Text";
        }
        OUT MIR-RBILL-DEPT-ID
        {
                CodeSource = "EDIT";
                CodeType = "DEPT";
                DBTableName = "TRSTB";
                Label = "Department That Initiated Restrict Billing";
                Length = "20";
                SType = "Text";
        }
        OUT MIR-RBILL-EFF-DT
        {
                DBTableName = "TRSTB";
                Label = "Restrict Billing Effective Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-RBILL-END-DT
        {
                DBTableName = "TRSTB";
                Label = "Restrict Billing End Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-RBILL-MISC-1-CD
        {
                DBTableName = "TRSTB";
                Label = "Restrict Billing Code 1";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-RBILL-MISC-2-CD
        {
                DBTableName = "TRSTB";
                Label = "Restrict Billing Code 2";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-RBILL-USER-ID
        {
                DBTableName = "TRSTB";
                Label = "User ID that Initiated Restrict Bill";
                Length = "8";
                SType = "Text";
        }
        OUT MIR-REG-SAV-PORTN-AMT
        {
                DBTableName = "TPOL";
                Label = "Registered Savings Portion Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        OUT MIR-REG-SAV-PORTN-CD
        {
                CodeSource = "DataModel";
                CodeType = "REG-SAV-PORTN-CD";
                DBTableName = "TPOL";
                Label = "Registered Savings Portion Coder";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-REG-SPCL-HNDL-CD
        {
                CodeSource = "DataModel";
                CodeType = "REG-SPCL-HNDL-CD";
                DBTableName = "TPOL";
                Label = "Special Handling Type for Tax Receipts";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-SBSDRY-CO-ID
        {
                CodeSource = "EDIT";
                CodeType = "SUBCO";
                DBTableName = "TPOL";
                Label = "Subsidiary Company ID";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-SERV-AGT-ASIGN-DT
        {
                DBTableName = "TPOL";
                Label = "Servicing Agent Assignment Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-SERV-AGT-ID
        {
                DBTableName = "TPOL";
                Label = "Servicing Agent ID";
#AAG001 Length = "6";
        Length = "10";
#/AAG001
                SType = "Text";
        }
        OUT MIR-SERV-BR-ID
        {
                CodeSource = "XTAB";
                CodeType = "BRCH";
                DBTableName = "TPOL";
                Label = "Servicing Agent's Branch";
                Length = "5";
                SType = "Text";
        }
        OUT MIR-SFB-END-DT
        {
                DBTableName = "TSFBL";
                Label = "SFB End Date";
                Length = "10";
                SType = "Date";
        }
        # 21345 - Correct stype from 'text' to 'date'
        OUT MIR-SFB-GP-END-DT-NUM
        {
                DBTableName = "TSFBL";
                Label = "SFB Gap End Date";
                Length = "10";
                SType = "Date";
        }
        # 21345 - Correct stype from 'text' to 'date'
        OUT MIR-SFB-GP-STRT-DT-NUM
        {
                DBTableName = "TSFBL";
                Label = "SFB Gap Start Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-SFB-NXT-BILL-AMT
        {
                DBTableName = "TSFBL";
                Label = "SFB Next Billing Amount";
                Length = "15";
                SType = "Currency";
        }
        OUT MIR-SFB-SEMI-MTHLY-DY
        {
                DBTableName = "TSFBL";
                Label = "SFB Semi Monthly Billing Alternate Draw Day";
                Length = "3";
                SType = "Day";
        }
        OUT MIR-SFB-STRT-DT
        {
                DBTableName = "TSFBL";
                Label = "SFB Start Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-TAX-1035-ACB-AMT
        {
                DBTableName = "TPOLT";
                Label = "ACB on 1035 Exchange Amount";
                Length = "15";
                SType = "Currency";
        }
        OUT MIR-TAX-RPT-FREQ-CD
        {
                CodeSource = "DataModel";
                CodeType = "TAX-RPT-FREQ-CD";
                DBTableName = "TPOL";
                Label = "Tax Reporting Frequency";
                Length = "40";
                SType = "Text";
        }
        OUT MIR-UL-INIT-PREM-AMT
        {
                DBTableName = "TPOL";
                Label = "Initial Premium Amount";
                Length = "13";
                SType = "Currency";
        }
        OUT MIR-UL-LAPS-STRT-DT
        {
                DBTableName = "TPOL";
                Label = "Lapse Start Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-UNMTCH-MAIL-IND
        {
                DBTableName = "TPOL";
                Label = "Unmatched Mail Indicator";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-USER-ID
        {
                DBTableName = "TPOL";
                Label = "User ID";
                Length = "8";
                SType = "Text";
        }
        OUT MIR-POL-BUS-CLAS-CD
        {
                DBTableName = "TPOL";
                Label = "Business Class";
                Length = "1";
                SType = "Hidden";
        }
        OUT MIR-POL-CTRY-TAX-DT
        {
                DBTableName = "TPOL";
                Label = "Policy Country Tax Date";
                Length = "10";
                SType = "Date";
        }
        # Functional 020453 -  Record Policy Settlement Options
        OUT MIR-POL-SETL-OPT-DUR
        {
                DBTableName = "TPOL";
                Decimals = "0";
                Label = "Policy Settlement Option Term";
                Length = "3";
                SType = "Number";
        }
        # Functional 020453 -  Record Policy Settlement Options
        OUT MIR-POL-SETL-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-SETL-OPT-CD";
                DBTableName = "TPOL";
                Label = "Policy Settlement Option Type";
                Length = "40";
                SType = "Text";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        OUT MIR-POL-DBG-BASIC-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DBG-BASIC-CD";
                DBTableName = "TPOLG";
                Label = "Death Benefit Basic Plan Option";
                Length = "40";
                SType = "Text";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        OUT MIR-DV-POL-DBG-RESET-IND
        {
                DBTableName = "TPOLG";
                Label = "Reset/Lock-In";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        OUT MIR-DV-ANNV-VALU-IND
        {
                DBTableName = "TPOLG";
                Label = "Account Value on a Specified Anniversary";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        OUT MIR-DV-POL-DBG-MAV-IND
        {
                DBTableName = "TPOLG";
                Label = "Maximum Account Value";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        OUT MIR-DV-POL-DBG-ROLU-IND
        {
                DBTableName = "TPOLG";
                Label = "Premium Roll-Up";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        OUT MIR-POL-DBG-LOAN-IND
        {
                DBTableName = "TPOL";
                Label = "Loan Inclusion";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020463 - New field for investor profile display
        OUT MIR-PRFL-ID
        {
                CodeSource = "Edit";
                CodeType = "IPROF";
                DBTableName = "TPOIP";
                Label = "Investor Profile ID";
                Length = "40";
                SType = "Text";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        OUT MIR-POL-DBG-LOCK-QTY
        {
                DBTableName = "TPOLG";
                Decimals = "0";
                Label = "Remaining # of Lock-Ins";
                Length = "4";
                SType = "Number";
        }
        # Functional 20452 - add Date of Last Foreign Content Test field
        OUT MIR-POL-FRGN-TST-DT
        {
                DBTableName = "TPOL";
                Label = "Date of Last Foreign Content Test";
                Length = "10";
                SType = "Date";
        }
#ACL002
    OUT MIR-DV-OWN-CLI-CLAS-CD-T[5]
    {
        Length = "40";
        FieldGroup = "Table1";
        CodeSource = "EDIT";
        CodeType = "CLCD";
        DBTableName = "Derived";
        SType = "Text";
        Label = "Owner Clint classification";
        Index = "1";
    }

    OUT MIR-DV-PAYR-CLI-CLAS-CD
    {
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "CLCD";
        DBTableName = "Derived";
        SType = "Text";
        Label = "Clint classification";
    }
#/ACL002
#APR005

    OUT MIR-POL-MODE-FCT-TYP-CD
    {
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "POL-MODE-FCT-TYP-CD";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Mode Factor Type";
    }
#/APR005

#APR002
    OUT MIR-PREM-HLDY-CD
    {
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "PREM-HLDY-CD";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Premium Holdiay Indicator";
    }
    OUT MIR-PREM-HLDY-STAT-CD
    {
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "PREM-HLDY-STAT-CD";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Premium Holdiay Status";
    }
#/APR002

#ANB007

    OUT MIR-INSRD-APP-MEDIC-CD
    {
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "MEDI";
        DBTableName = "TPOL";
#CPA001 - 08300702
#        SType = "Text";
        SType = "Selection";
#/CPA001 - 08300702
        Label = "Insured Application Nature";
    }

    OUT MIR-PAYR-APP-MEDIC-CD
    {
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "MEDI";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Payor Application Nature";
    }

    OUT MIR-POL-CNTRCT-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Date";
        Label = "Policy Contract Date";
    }

    OUT MIR-INIT-ATOPUP-AMT
     {
        Length = "15";
        DBTableName = "TPOL";
        SType = "Currency";
        Label = "Initial Ad-hoc Top-up Amount";
    }

    OUT MIR-POL-HLD-COMM-IND
    {
        Length = "1";
        DBTableName = "TPOL";
        SType = "Indicator";
        Label = "Withheld Commission Indicator";
    }

    OUT MIR-POL-ENTR-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Date";
        Label = "Policy Entry Date";
    }

   OUT MIR-INSRD-HLTHANSWR-IND
    {
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "HLTQ";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Insured Health Questionnaire Answered";
    }

    OUT MIR-PAYR-HLTHANSWR-IND
    {
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "HLTQ";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Payor Health Questionnaired Answered";
    }

    OUT MIR-XTRA-COMM-ELIG-CD
    {
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "XCMI";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Extra Commission Eligibility";
    }

    OUT MIR-POL-REISS-IND
    {
        Length = "1";
        DBTableName = "TPOL";
        SType = "Indicator";
        Label = "Policy Reissue Indicator";
    }
#ANB006 - 06130527
    OUT MIR-POL-REISS-DT
    {
        DBTableName = "TPOL";
        Length = "10";
        SType = "Date";
        Label = "Reissue Date";
    }
    OUT MIR-POL-REISS-CNCL-DT
    {
        DBTableName = "TPOL";
        Length = "10";
        SType = "Date";
        Label = "Reissue Cancel Date";
    }
    OUT MIR-POL-REISS-END-DT
    {
        DBTableName = "TPOL";
        Length = "10";
        SType = "Date";
        Label = "Reissue End Date";
    }
#/ANB006 - 06130527

    OUT MIR-SPCL-QUOT-IND
    {
        Length = "1";
        DBTableName = "TPOL";
        SType = "Indicator";
        Label = "Special Quotation Indicator";
    }

    OUT MIR-POL-CSTAT-REASN-CD
    {
        Length = "40";
#APA002 CodeSource = "EDIT";
#APA002 CodeType = "STRSN";
#APA002
        CodeSource = "DataModel";
        CodeType = "POL-CSTAT-REASN-CD";
#/APA002
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Policy Status Reason Code";
    }


    OUT MIR-PMT-TYP-CD
    {
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "PMT-TYP-CD";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Payment Type Code";
    }

    OUT MIR-PREV-CHQ-CLR-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Date";
        Label = "Last Cheque Clearing Date";
    }

#/ANB007
#ANB007
    OUT MIR-AGENCY-CD-T[3]
    {
        Length = "10";
        FieldGroup = "Table3";
        DBTableName = "TPOLW";
        SType = "Text";
        Label = "Agency";
        Index = "1";
    }

    OUT MIR-AGT-HS-LOS-RATIO-T[3]
    {
        Length = "5";
        Decimals = "2";
        FieldGroup = "Table3";
        DBTableName = "TAG";
        SType = "Percent";
        Label = "HS Loss Ratio";
        Index = "1";
    }

    OUT MIR-AGT-HS-LOS-RATIO-IND-T[3]
    {
        Length = "1";
        FieldGroup = "Table3";
        DBTableName = "TAG";
        SType = "Text";
        Label = "HS Loss Ratio Indicator";
        Index = "1";
    }

    OUT MIR-AGT-PREM-AGT-STAT-T[3]
    {
        Length = "40";
        FieldGroup = "Table3";
        DBTableName = "TAG";
        SType = "Text";
        Label = "Agent Premier Status";
        Index = "1";
    }
#/ANB007
#ANB008

    OUT MIR-DV-NON-POST-DEP-AMT
    {
        Signed;
        Length = "17";
        DBTableName = "Derived";
        SType = "Currency";
        Label = "Non Posted Deposit";
    }

#/ANB008

#ANB008
    IN MIR-DV-MQ-CALL-SW
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Text";
        Label = "Non Posted Deposit Getting Switch";
    }
#/ANB008

#APA006
    OUT MIR-RESTRICT-CD-B
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Bankruptcy";
    }

    OUT MIR-RESTRICT-CD-A
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Absolute Assignment";
    }

    OUT MIR-RESTRICT-CD-S
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Special Quotation";
    }

    OUT MIR-RESTRICT-CD-I
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Irrevocable Beneficiary";
    }
#/APA006

#APA022
    OUT MIR-LAPSE-START-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Lapse Start Date";
    }
#/APA022

#APA020
    OUT MIR-POL-SPND-REASN-CD
    {
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "POL-SPND-REASN-CD";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Suspend Reason";
    }

    OUT MIR-POL-SPND-EFF-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Date";
        Label = "Suspend Effective Date";
    }

    OUT MIR-POL-SPND-TRMN-DT
    {
        Length = "10";
        DBTableName = "TPOL";
        SType = "Date";
        Label = "Suspend Terminate Date";
    }

    OUT MIR-POL-SPND-USER-ID
    {
        Length = "8";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Suspend By";
    }
#/APA020

#ABC003
    OUT MIR-SERV-AGY-ID
    {
        Length = "10";
        DBTableName = "Derived";
        SType = "Text";
        Label = "SERVCING AGENCY ID";
    }

#ANB021
    OUT MIR-DV-CHILD-ADDR-CD
    {
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "ADTYP";
        DBTableName = "Derived";
        SType = "Text";
        Label = "Child Client Address Type";
    }

    OUT MIR-DV-CHILD-CLI-ID
    {
        Length = "10";
        DBTableName = "Derived";
        SType = "Text";
        Label = "Child Client ID";
    }

    OUT MIR-DV-CHILD-CLI-NM
    {
        Length = "160";
        DBTableName = "Derived";
        SType = "Text";
        Label = "Child Name";
    }
#/ANB021
#/ABC003
#BNB005
#CFA001    OUT MIR-POL-RECV-DT
#CFA001    {
#CFA001        Length = "10";
#CFA001        DBTableName = "TPOL";
#CFA001        SType = "Date";
#CFA001        Label = "Policy Receive Date";
#CFA001    }
#/BNB005

#APR053
        OUT MIR-POL-FREE-LK-XFER-DT
        {
                DBTableName = "TPOL";
                Label = "Free Look Transfer Date";
                Length = "10";
                SType = "Date";
        }
#/APR053

#APA060
        OUT MIR-PNDFND-UNITIZE-DT
        {
                DBTableName = "TPOL";
                Label = "Pending Fund Unitization Date";
                Length = "10";
                SType = "Date";
        }
#/APA060
#APR051
    OUT MIR-POL-APL-DUR
    {
        DBTableName = "TPOL";
        Label = "APL stop months";
        Length = "3";
        SType = "Text";
    }

    OUT MIR-POL-NFO-RESTR-CD
    {
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "POL-NFO-RESTR-CD";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "NFO Restriction";
    }
#/APR051

#ANB007
        OUT MIR-INSRD-CLI-ID-T[5]
        {
                DBTableName = "TCVGC";
                FieldGroup = "Table1";
                Index = "1";
                KeyColumn;
                Label = "Client ID";
                Length = "10";
                SType = "Text";
        }

        OUT MIR-DV-INSRD-CLI-NM-T[5]
        {
                DBTableName = "Derived";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Insured Name";
        Length = "160";
                SType = "Text";
        }

        OUT MIR-INSRD-CLI-TAX-ID-T[5]
        {
                DBTableName = "TCLI";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Tax ID";
        Length = "20";
                SType = "Text";
        }

    OUT MIR-DV-INSRD-CLI-CLAS-CD-T[5]
    {
        Length = "40";
        FieldGroup = "Table1";
        CodeSource = "EDIT";
        CodeType = "CLCD";
        DBTableName = "Derived";
        SType = "Text";
        Label = "Insured Clint classification";
        Index = "1";
    }

    OUT MIR-POL-REJ-REASN-CD-TXT
    {
                DBTableName = "TPOL";
                FieldGroup = "Table1";
                Index = "1";
                KeyColumn;
                Label = "Policy Reject Reason Code Text";
                Length = "20";
                SType = "Text";
    }
#/ANB007
#ANB006
        OUT MIR-LIST-BILL-CLI-CD
        {
                Length = "10";
                Label = "List Bill Client";
                SType = "Text";
        }

        OUT MIR-POL-PMT-DRW-DY
        {
                Length = "2";
                Label = "Billing Draw Day";
                SType = "Number";
        }

        OUT MIR-POL-DIV-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DIV-OPT-CD";
                Label = "Policy Dividend Option";
                Length = "1";
                SType = "Selection";
        }
#APR061
        OUT MIR-POL-DIV-XCES-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DIV-XCES-CD";
                Label = "Policy Excess Dividend Option";
                Length = "1";
                SType = "Selection";
        }
#/APR061
        OUT MIR-POL-NFO-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-NFO-CD";
                Label = "Non-Forfeiture Option";
                Length = "1";
                SType = "Selection";
        }

        OUT MIR-INIT-PAYO-MTH-CD
        {
                CodeSource = "DataModel";
                CodeType = "PLAN-PAYO-MTHD-CD";
                Label = "Contractual Payout Option";
                Length = "1";
                SType = "Selection";
        }

        OUT MIR-PAYO-BNK-ACCT-NU
        {
                Length = "40";
                CodeSource = "NSOM9025";
                FilterFields = "3";
                FilterField1 = "MIR-DV-REL-OPTN-CD";
                FilterField2 = " ";
                FilterField3 = "MIR-DV-OWN-CLI-ID";
                DBTableName = "Derived";
                SType = "Selection";
                Label = "Payout Bank A/C No.";
        }

        OUT MIR-POL-INIT-PREM-DED-IND
        {
                Length = "40";
                CodeSource = "EDIT";
                CodeType = "INITPREMIND";
                DBTableName = "Derived";
                SType = "Selection";
                Label = "Initial Premium Deduct Agent";
        }

        OUT MIR-POL-CONTEST-IND
        {
                Length = "1";
                SType = "Indicator";
                Label = "Policy Contest Indicator";
        }

        OUT MIR-POL-EGP-IND
        {
                Length = "1";
                SType = "Indicator";
                Label = "EGP Policy";
        }
#/ANB006
#APR086 - 09020402
        OUT MIR-POL-CPN-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-CPN-OPT-CD";
                Label = "Policy Coupon Option";
                Length = "1";
                SType = "Selection";
        }
        OUT MIR-POL-CPN-XCES-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-CPN-XCES-CD";
                Label = "Policy Excess Coupon Option";
                Length = "1";
                SType = "Selection";
        }
#/APR086 - 09020402
#APR079 11260401
        OUT MIR-POL-PU-NFO-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PU-NFO-CD";
                DBTableName = "TPOL";
                Label = "Paid Up Non-forfeiture Option";
                Length = "1";
                SType = "Text";
        }
#/APR079 11260401
#APR087 - 12010402
    OUT MIR-CONTEST-MRG-POL-ID
    {
        DBTableName = "TPOL";
        Length = "10";
        SType = "Text";
        Label = "Contest Merging Policy";
    }
#/APR087 - 12010402
#ANB006 - 11010422
        OUT MIR-NCSH-XF-IND
        {
            Length = "1";
            DBTableName = "TPOL";
            SType = "Indicator";
            Label = "Non-Cash Transfer Indicator";
        }
        OUT MIR-DV-FAC-REINS-IND
        {
            Length = "1";
            DBTableName = "Derived";
            SType = "Indicator";
            Label = "Facultative Reinsurance Indicator";
        }
            OUT MIR-BILL-LEAD-MO-CTL-CD
        {
            Length = "40";
            DBTableName = "TPOL";
            CodeSource = "EDIT";
            CodeType = "BILLLEADMOCTL";
                SType = "Selection";
                Label = "Billing Use Code";
        }
            OUT MIR-BILL-LEAD-MO-DUR
        {
                Length = "3";
            DBTableName = "TPOL";
                Label = "Billing Lead Months";
                SType = "Number";
        }
#/ANB006 - 11010422
#ANB006 - 11010422
            OUT MIR-PROD-TYP-CD
        {
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "PRODTYP";
            SType = "Text";
            DBTableName = "TPOL";
            Label = "Product Type";
        }
            OUT MIR-DSTRB-CHNL-CD
        {
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "DCHNL";
            DBTableName = "TPOL";
            SType = "Text";
            Label = "Channel";
        }
            OUT MIR-PKG-PLAN-NM-CD
        {
            Length = "40";
                    CodeSource = "EDIT";
                    CodeType = "PLNSP";
            SType = "Text";
            Label = "Package Name";
        }
            OUT MIR-DV-PROD-TYP-CD
        {
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "PRODTYP";
            SType = "Text";
            DBTableName = "TPOL";
            Label = "Product Type";
        }
            OUT MIR-DV-DSTRB-CHNL-CD
        {
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "DCHNL";
            DBTableName = "TPOL";
            SType = "Text";
            Label = "Channel";
        }
#/ANB006 - 11010422
#APR077 - 02280512
            OUT MIR-POL-CURR-CD
        {
            Length = "2";
            CodeSource = "XTAB";
            CodeType = "CURR";
            SType = "Selection";
            Label = "Policy Currency";
        }
#/APR077 - 02280512
#ANB025 - 04180502-START
        OUT MIR-DV-WSM-CORP-ID
        {
#CAC001 - 09130706
#CAC001     Length = "7";
            Length = "10";
#CAC001 - 09130706
            SType = "Text";
            DBTableName = "Derived";
            Label = "WSM Corporate ID";
        }
#APA061 - 11150505
#        OUT MIR-DV-WSM-CHNL-CD
#        {
#            Length = "3";
#            SType = "Text";
#            DBTableName = "Derived";
#            Label = "WSM Channel Code";
#        }
#/APA061 - 11150505
#/ANB025 - 04180502-END
#ANB006 - 06130527
    OUT MIR-POL-REJ-REASN-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-REJ-REASN-CD";
        DBTableName = "TPOL";
        Length = "2";
        SType = "Text";
        Label = "Rejection Reason";
    }
    OUT MIR-REJ-REASN-COND-CD
    {
        CodeSource = "EDIT";
        CodeType = "REJCC";
        DBTableName = "TPOL";
        Length = "2";
        SType = "Text";
        Label = "Rejection Reason Condition";
    }
    OUT MIR-NEG-CD
    {
        CodeSource = "EDIT";
        CodeType = "NEGCOD";
        DBTableName = "TPOL";
        Length = "2";
        SType = "Text";
        Label = "Negative Code";
    }
    OUT MIR-POL-REJ-RQST-DT
    {
        DBTableName = "TPOL";
        Length = "10";
        SType = "Date";
        Label = "Rejection Request Date";
    }
#/ANB006 - 06130527
#ANB024 - 08100506-START
    OUT MIR-POL-REQ-PREM
    {
        Length = "14";
        SType = "currency";
        DBTableName = "Derived";
        Label = "Initial Required Premium";
    }
#/ANB024 - 08100506-END
#ANB006 - 09090533-START
        OUT MIR-POL-LEAD-CD
        {
            Length = "6";
            SType = "Text";
            DBTableName = "Derived";
            Label = "Lead Code";
        }
#/ANB006 - 09090533-END
#ANB028 - 09140501
    OUT MIR-POL-VERIF-IND
    {
        Length = "1";
        SType = "Indicator";
        Label = "Policy Verified Indicator";
    }

    OUT MIR-CLI-VERIF-IND
    {
        Length = "1";
        SType = "Indicator";
        Label = "Client Verified Indicator";
    }
    OUT MIR-OWN-CLI-STATUS-CD-T[1]
    {
        DBTableName = "TCLI";
        FieldGroup = "Table1";
        Index = "1";
        Label = "Client Status";
        Length = "1";
        SType = "Indicator";
        }
    OUT MIR-PAYR-CLI-STATUS-CD
    {
        DBTableName = "TCLI";
        FieldGroup = "Table1";
        Index = "1";
        Label = "Client Status";
        Length = "1";
        SType = "Indicator";
    }
    OUT MIR-SPOUS-CLI-STATUS-CD
    {
        DBTableName = "TCLI";
        FieldGroup = "Table1";
        Index = "1";
        Label = "Client Status";
        Length = "1";
        SType = "Indicator";
    }
    OUT MIR-CHILD-CLI-STATUS-CD
    {
        DBTableName = "TCLI";
        FieldGroup = "Table1";
        Index = "1";
        Label = "Client Status";
        Length = "1";
        SType = "Indicator";
    }
#/ANB028 - 09140501
#AGL149 - 03290604
        OUT MIR-DV-OWN-CLI-NM-KEY-T[5]
        {
                FieldGroup = "Table1";
                Length = "5";
                CodeSource = "CSOM9E26";
                FilterFields = "1";
                FilterField1 = "MIR-CLI-ID-T";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Owner Name";
        }
        OUT MIR-DV-OWN-CLI-NM-KEY
        {

            FieldGroup = "Table1";
            Length = "5";
            CodeSource = "CSOM9E56";
            FilterFields = "1";
            FilterField1 = "MIR-CLI-ID-T[1]";
            DBTableName = "Derived";
            Label = "Owner Name";
            SType = "Selection";
            Index = "1";
        }
        OUT MIR-DV-INSRD-CLI-NM-KEY-T[5]
        {
                FieldGroup = "Table1";
                Length = "5";
                CodeSource = "CSOM9E26";
                FilterFields = "1";
                FilterField1 = "MIR-INSRD-CLI-ID-T";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Insured Name";
        }
        OUT MIR-DV-ASIGN-CLI-NM-KEY-T[5]
        {
                FieldGroup = "Table4";
                Length = "5";
                CodeSource = "CSOM9E26";
                FilterFields = "1";
                FilterField1 = "MIR-DV-ASIGN-CLI-ID-T";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Assignee Name";
        }
        OUT MIR-DV-ANUTNT-CLI-NM-KEY-T[5]
        {
                FieldGroup = "Table2";
                Length = "5";
                CodeSource = "CSOM9E26";
                FilterFields = "1";
                FilterField1 = "MIR-DV-ANUTNT-CLI-ID-T";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Annuitant Name";
        }
        OUT MIR-DV-IPARTY-CLI-NM-KEY-T[5]
        {
                FieldGroup = "Table5";
                Length = "5";
                CodeSource = "CSOM9E26";
                FilterFields = "1";
                FilterField1 = "MIR-DV-IPARTY-CLI-ID-T";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Interested Party Name";
        }
        OUT MIR-DV-TRST-CLI-NM-KEY-T[5]
        {
                FieldGroup = "Table6";
                Length = "5";
                CodeSource = "CSOM9E26";
                FilterFields = "1";
                FilterField1 = "MIR-DV-TRST-CLI-ID-T";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Trustee Name";
        }
        OUT MIR-DV-PAYR-CLI-NM-KEY
        {

                Length = "5";
                CodeSource = "CSOM9E56";
                FilterFields = "1";
                FilterField1 = "MIR-DV-PAYR-CLI-ID";
                DBTableName = "Derived";
#CPA001 - 08300702
#               SType = "Selection";
                SType = "Text";
#/CPA001 - 08300702
                Index = "1";
                Label = "Payor Name";
        }
        OUT MIR-DV-SPOUS-CLI-NM-KEY
        {

                Length = "5";
                CodeSource = "CSOM9E56";
                FilterFields = "1";
                FilterField1 = "MIR-DV-SPOUS-CLI-ID";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Spouse Name";
        }
        OUT MIR-DV-CHILD-CLI-NM-KEY
        {

                Length = "5";
                CodeSource = "CSOM9E56";
                FilterFields = "1";
                FilterField1 = "MIR-DV-CHILD-CLI-ID";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Child Name";
        }
        OUT MIR-DV-INSRD-CLI-NM-KEY
        {

            FieldGroup = "Table1";
            Length = "5";
            CodeSource = "CSOM9E56";
            FilterFields = "1";
            FilterField1 = "MIR-INSRD-CLI-ID-T[1]";
            DBTableName = "Derived";
            Label = "Owner Name";
            SType = "Selection";
            Index = "1";
        }
#/AGL149 - 03290604
#APA040 - 07060601
    OUT MIR-DV-PB-CLI-ID
    {
        DBTableName = "Derived";
        Label = "Payor Benefit Client ID";
        Length = "10";
        SType = "Text";
    }

    OUT MIR-DV-PB-CLI-NM
    {
        DBTableName = "Derived";
        Label = "Payor Benefit Client Name";
        Length = "160";
        SType = "Text";
    }

    OUT MIR-DV-PB-ADDR-CD
    {
        CodeSource = "EDIT";
        CodeType = "ADTYP";
        DBTableName = "Derived";
        Label = "Payor Benefit Client Address Type";
        Length = "40";
        SType = "Text";
    }
    OUT MIR-DV-PB-CLI-NM-KEY
    {
        Length = "5";
        CodeSource = "CSOM9E56";
        FilterFields = "1";
        FilterField1 = "MIR-DV-PB-CLI-ID";
        DBTableName = "Derived";
        SType = "Selection";
        Index = "1";
        Label = "Payor Benefit Client Name";
    }
    OUT MIR-PB-CLI-STATUS-CD
    {
        DBTableName = "TCLI";
        FieldGroup = "Table1";
        Index = "1";
        Label = "Client Status";
        Length = "1";
        SType = "Indicator";
    }
#/APA040 - 07060601
#ANB006 - 07250638-START
        OUT MIR-POL-XTRNL-REF-TXT
        {
            Length = "50";
            SType = "Text";
            DBTableName = "Derived";
            Label = "External reference text";
        }
#/ANB006 - 07250638-END
#CFA001 - 08130702
        OUT MIR-POL-ACK-SIGN-DT
        {
                DBTableName = "TPOL";
                Label = "Acknowledgement Sign Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-ACK-RECV-DT
        {
                DBTableName = "TPOL";
                Label = "Acknowledgement Receive Date";
                Length = "10";
                SType = "Date";
        }
        OUT MIR-POL-FND-ALLOC-DT
        {
            Length = "10";
            DBTableName = "TPOL";
            SType = "Date";
            Label = "Initial Fund Allocation Date";
        }
        OUT MIR-POL-PIL-IND
        {
            Length = "1";
            DBTableName = "TPOL";
            SType = "Indicator";
            Label = "Immediate Investment Indicator";
        }
#/CFA001 - 08130702
#CPR105 - 01271001
        OUT MIR-POL-CNVR-IND
        {
            Length = "1";
            DBTableName = "TPOL";
            SType = "Indicator";
            Label = "ILP Conversion Indicator";
        }
#/CPR105 - 01271001

#CPA001 - 08300702
        OUT MIR-CLI-ADDR-GR-1-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-CLI-ADDR-TYP-1-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Address Type";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-CLI-ADDR-SEQ-1-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
        OUT MIR-CLI-ADDR-GR-2-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-CLI-ADDR-TYP-2-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Address Type";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-CLI-ADDR-SEQ-2-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
        OUT MIR-CLI-DAY-PHON-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Day";
        }
        OUT MIR-CLI-NIGHT-PHON-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Night";
        }
        OUT MIR-CLI-CELL-PHON-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Mobile Phone";
        }
        OUT MIR-CLI-CNTCT-MAIL-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Email";
        }
        OUT MIR-CLI-TAX-ID-T[5]
        {
                Length = "20";
                SType = "Text";
                Label = "ID Card No";
        }
        OUT MIR-CLI-ID-TYP-CD-T[5]
        {
                Length = "2";
                SType = "Selection";
                Label = "ID Type";
                CodeSource = "EDIT";
                CodeType = "IDTYPE";
        }
        OUT MIR-CLI-MARIT-STAT-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "MARST";
                Label = "Marital Status";
                Length = "1";
                SType = "Selection";
        }
        OUT MIR-CLI-CITZ-CD-T[5]
        {
                Length = "3";
                CodeSource = "EDIT";
                CodeType = "CITZ";
                SType = "Selection";
                DBTableName = "TCLI";
                Label = "Nationality";
        }
        OUT MIR-CLI-PERM-RES-IND-T[5]
        {
                Label = "Permanent Residence";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-CLI-INCM-EARN-AMT-T[5]
        {
                Label = "Annual Income";
                Length = "17";
                SType = "Text";
        }
        OUT MIR-CLI-WGT-T[5]
        {
                Length = "5";
                SType = "Text";
                Label = "Weight";
        }
        OUT MIR-CLI-HT-T[5]
        {
                Length = "5";
                SType = "Text";
                Label = "Height";
        }
        OUT MIR-CLI-OCCP-ID-T[5]
        {
                Length = "10";
                SType = "Text";
                Label = "Occupation Code";
        }
#CPA001 - 01110802
#       OUT MIR-CLI-SHIP-IND-T[5]
        OUT MIR-CLI-SHIP-CD-T[5]
#/CPA001 - 01110802
        {
                CodeSource = "DataModel";
                CodeType = "CLI-SHIP-CD";
                SType = "Selection";
                Label = "SHIP";
                Length = "1";
        }
#INSURED
        OUT MIR-INSRD-CLI-ID-T[30]
        {
                DBTableName = "TPOLC";
                FieldGroup = "Table9";
                Index = "1";
                KeyColumn;
                Label = "Client ID";
                Length = "10";
                SType = "Text";
        }
        OUT MIR-DV-INSRD-CLI-NM-T[30]
        {
                DBTableName = "Derived";
                FieldGroup = "Table9";
                Index = "1";
                Label = "Insured Name";
                Length = "160";
                SType = "Text";
        }
        OUT MIR-DV-INSRD-CLI-NM-KEY-T[30]
        {
                FieldGroup = "Table9";
                Length = "5";
                CodeSource = "CSOM9E26";
                FilterFields = "1";
                FilterField1 = "MIR-INSRD-CLI-ID-T";
                DBTableName = "Derived";
                SType = "Selection";
                Index = "1";
                Label = "Insured Name";
        }
        OUT MIR-DV-INSRD-SUB-CD-T[30]
        {
                CodeSource = "DataModel";
                CodeType = "DV-INSRD-SUB-CD";
                DBTableName = "TPOLC";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Relationship Type";
                Length = "40";
                SType = "Selection";
        }
#CPR149 - 06171504
        OUT MIR-CVG-CLI-INSRD-CD-T[30]
        {
                Length = "40";
                FieldGroup = "Table1";
                CodeSource = "EDIT";
                CodeType = "ITOP";
                SType = "Selection";
                Label = "Insured Information to Primary Insured";
                Index = "1";
        }
#/CPR149 - 06171504
        OUT MIR-INSRD-CLI-ADDR-GR-2-CD-T[30]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-INSRD-CLI-ADDR-TYP-2-CD-T[30]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Address Type";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-INSRD-CLI-ADDR-SEQ-2-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
        OUT MIR-INSRD-CLI-DAY-PHON-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Day";
        }
        OUT MIR-INSRD-CLI-NIGHT-PHON-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Night";
        }
        OUT MIR-INSRD-CLI-CELL-PHON-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Mobile Phone";
        }
        OUT MIR-INSRD-CLI-CNTCT-MAIL-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Email";
        }
        OUT MIR-INSRD-CLI-TAX-ID-T[30]
        {
                Length = "20";
                SType = "Text";
                Label = "ID Card No";
        }
        OUT MIR-INSRD-CLI-ID-TYP-CD-T[30]
        {
                Length = "2";
                SType = "Selection";
                Label = "ID Type";
                CodeSource = "EDIT";
                CodeType = "IDTYPE";
        }
        OUT MIR-INSRD-CLI-MARIT-STAT-CD-T[30]
        {
                CodeSource = "EDIT";
                CodeType = "MARST";
                Label = "Marital Status";
                Length = "1";
                SType = "Selection";
        }
        OUT MIR-INSRD-CLI-CITZ-CD-T[30]
        {
                Length = "3";
                CodeSource = "EDIT";
                CodeType = "CITZ";
                SType = "Selection";
                DBTableName = "TCLI";
                Label = "Nationality";
        }
        OUT MIR-INSRD-CLI-PERM-RES-IND-T[30]
        {
                Label = "Permanent Residence";
                Length = "1";
                SType = "Indicator";
        }
        OUT MIR-INSRD-CLI-INCM-EARN-AMT-T[30]
        {
                Label = "Annual Income";
                Length = "16";
                SType = "Text";
        }
        OUT MIR-INSRD-CLI-WGT-T[30]
        {
                Length = "5";
                SType = "Text";
                Label = "Weight";
        }
        OUT MIR-INSRD-CLI-HT-T[30]
        {
                Length = "5";
                SType = "Text";
                Label = "Height";
        }
        OUT MIR-INSRD-CLI-OCCP-ID-T[30]
        {
                Length = "10";
                SType = "Text";
                Label = "Occupation Code";
        }
#CPA001 - 01110802
#       OUT MIR-INSRD-CLI-SHIP-IND-T[30]
        OUT MIR-INSRD-CLI-SHIP-CD-T[30]
#/CPA001 - 01110802
        {
                CodeSource = "DataModel";
                CodeType = "CLI-SHIP-CD";
                SType = "Selection";
                Label = "SHIP";
                Length = "1";
        }
#Payor
        OUT MIR-DV-PAYR-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Text";
        }
        OUT MIR-DV-PAYR-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Payor Benefit
        OUT MIR-DV-PB-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-DV-PB-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Spouse
        OUT MIR-DV-SPOUS-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-DV-SPOUS-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Child
        OUT MIR-DV-CHILD-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-DV-CHILD-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Interested Party
        OUT MIR-DV-IPARTY-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-DV-IPARTY-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Trustee
        OUT MIR-DV-TRST-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-DV-TRST-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Assignee
        OUT MIR-DV-ASIGN-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-DV-ASIGN-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Annuitant
        OUT MIR-DV-ANUTNT-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        OUT MIR-DV-ANUTNT-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#/CPA001 - 08300702
#CPA006 - 09260704
    OUT MIR-POL-PREV-ANNV-DUR
    {
        DisplayOnly;
        Length = "3";
        SType = "Text";
        Label = "Policy Duration";
    }
#/CPA006 - 09260704
#CFA208 - 01240906
        OUT MIR-POL-UL-PRCES-DT
        {
                Label = "Next MAV Due Date";
                Length = "10";
                SType = "Date";
        }
      OUT MIR-POL-UL-PTD-NUM
        {
                Label = "MAV Shortage Start Date";
                Length = "10";
                SType = "Date";
        }
      OUT MIR-POL-UL-SHRT-AMT
        {
                Label = "Policy Shortage Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
#/CFA208 - 01240906
#CPR203 - 09240801
        OUT MIR-NXT-LINT-CAP-DT
        {
                DBTableName = "TPOL";
                Label = "Next Interest Capitalization Date";
                Length = "10";
                SType = "Date";
        }
    OUT MIR-LINT-CAP-DT-TYP-CD
    {
            CodeSource = "DataModel";
                CodeType = "LINT-CAP-DT-TYP-CD";
        DBTableName = "TPOL";
        Label = "Loan Interest Capitalization Basis";
        Length = "1";
        SType = "Selection";
    }
    OUT MIR-LINT-CAP-FREQ-CD
    {
            CodeSource = "DataModel";
                CodeType = "LINT-CAP-FREQ-CD";
        DBTableName = "TPOL";
        Label = "Loan Interest Capitalization Frequency";
        Length = "2";
        SType = "Selection";
    }
#/CPR203 - 09240801
#CPR224 - 05190904
        OUT MIR-OVR-LOAN-RPT-IND
        {
                DBTableName = "TPOL";
                Label = "Over-Loan Report Indicator";
                Length = "1";
                SType = "Indicator";
        }
#/CPR224 - 05190904
#CPR218 - 05130902
    OUT MIR-POL-WAV-STAT-CD
    {
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "POL-WAV-STAT-CD";
        DBTableName = "TZPOL";
        SType = "Text";
        Label = "Waiver Status Code";
    }
    OUT MIR-MAV-WAV-STRT-DT
    {
        Label = "MAV Waiver Start Date";
        Length = "10";
        SType = "Date";
    }
    OUT MIR-PREM-WAV-STRT-DT
    {
        Label = "Premium Waiver Start Date";
        Length = "10";
        SType = "Date";
    }
#/CPR218 - 05130902
#/CPR111 - 03261001
    OUT MIR-CUST-RSK-SCORE
    {
        DisplayOnly;
        Length = "4";
        SType = "Text";
        Label = "Customer Risk Score";
    }
#/CPR111 - 03261001
#CPR301 - 05141207
    OUT MIR-POL-ANTY-OPT-CD
    {
                CodeSource = "DataModel";
                CodeType = "POL-ANTY-OPT-CD";
                DBTableName = "TZPOL";
                Label = "Policy Annuity Option";
                Length = "1";
                SType = "Selection";
    }
    OUT MIR-POL-ANTY-XCES-CD
    {
                CodeSource = "DataModel";
                CodeType = "POL-ANTY-XCES-CD";
                DBTableName = "TZPOL";
                Label = "Policy Excess Annuity Option";
                Length = "1";
                SType = "Selection";
    }
#/CPR301 - 05141207
#CPA301 - 05311204
    OUT MIR-POL-PLEG-TYP-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-PLEG-TYP-CD";
        DBTableName = "TZPOL";
        Label = "Pledge Type Code";
        Length = "1";
        SType = "Selection";
    }
#/CPA301 - 05311204
#CPR311 - 09101201
        OUT MIR-POL-DCA-IND
        {
            DBTableName = "TZPOL";
            Length = "1";
            SType = "Indicator";
            Label = "Parking Fund Option";
        }
#/CPR311 - 09101201
#CBC109 - 05021301
    OUT MIR-POL-CAMP-ID
    {
        Length = "10";
        SType = "Text";
        Label = "Campaign ID";
    }
#/CBC109 - 05021301
#CPR133 - 02241402
    OUT MIR-POL-MPREM-WAV-AMT
    {
        DBTableName = "TPOL";
        Label = "Modal Premium (Waived)";
        Length = "15";
        Signed;
        SType = "Currency";
    }
#/CPR133 - 02241402
#CPR133 - 02261401
    OUT MIR-POL-EMBED-WAV-STAT-CD
    {
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "POL-EMBED-WAV-STAT-CD";
        DBTableName = "TZPOL";
        SType = "Text";
        Label = "Embedded Waiver Status Code";
    }
    OUT MIR-EMBED-PWAV-STRT-DT
    {
        Label = "Embedded Premium Waiver Start Date";
        Length = "10";
        SType = "Date";
    }
#/CPR133 - 02261401
#CPR143 - 05281402
    OUT MIR-IER-CPN-STAT-CD
    {
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "IER-CPN-STAT-CD";
        DBTableName = "TZPOL";
        SType = "Text";
        Label = "IER Coupon Status Code";
    }
    OUT MIR-POL-IER-CPN-STRT-DT
    {
        Label = "Policy IER Coupon Start Date";
        Length = "10";
        SType = "Date";
    }
    OUT MIR-POL-IER-CPN-OPT-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-CPN-OPT-CD";
        Label = "Policy IER Coupon Option";
        Length = "1";
        SType = "Selection";
    }
#/CPR143 - 05281402
#CPR148 - 03201501
    OUT MIR-POL-ANTY-PAYO-STAT-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-ANTY-PAYO-STAT-CD";
        Label = "Policy Annual Payout Status Code";
        Length = "1";
        SType = "Selection";
    }
#/CPR148 - 03201501
#CPR177 - 11131802
    OUT MIR-CLI-TAX-2-ID-T[5]
    {
        Length = "20";
        SType = "Text";
        Label = "ID Card No2";
    }
    OUT MIR-CLI-ID-TYP-2-CD-T[5]
    {
        Length = "2";
        SType = "Selection";
        Label = "ID Type2";
        CodeSource = "EDIT";
        CodeType = "IDTYPE2";
    }
    OUT MIR-INSRD-CLI-TAX-2-ID-T[30]
    {
        Length = "20";
        SType = "Text";
        Label = "ID Card No 2nd";
    }
    OUT MIR-INSRD-CLI-ID-TYP-2-CD-T[30]
    {
        Length = "2";
        SType = "Selection";
        Label = "ID Type";
        CodeSource = "EDIT";
        CodeType = "IDTYPE2";
    }
#/CPR177 - 11131802
}
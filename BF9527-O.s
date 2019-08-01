#<HEADER>
#<COPYRIGHT>
#?2001 INSURANCE SOFTWARE SOLUTIONS CORP.  ALL RIGHTS RESERVED
#</COPYRIGHT>
#<HISTORY>
#<RELEASE>
#6.2
#</RELEASE>
#<COMMENT>
#New for release 6.2
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
#6.3
#</RELEASE>
#<NUMBER>
#017150
#</NUMBER>
#<COMMENT>
#Currency Scaling (6.1.2J)
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
# Converted from PathFinder 2.2 to 3.0 Jan 24, 2005 12:37:10 PM CST
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
#*  ANB007  00002    Aug 7 2002 Sunpachai A.                                   *
#*  ANB007           NB Capture Editing                                        *
#*  AAG008  00002    25 Sep, 2002   Leon liu                                   *
#*  AAG008           Writing Agent                                             *
#*  APA002  00002    OCT 11, 2002 HOLDEN ZHANG                                 *
#*  APA002           POLICY STATUS REASON CODE                                 *
#*  ACL002  00002    NOV 26, 2002 LEON LIU                                     *
#*  ACL002           CLIENT TAX ID EXPANSION                                   *
#*  ANB007  00002    November 29, 2002 Phyllis Lam                             *
#*  ANB007           Add Policy Inforce Date                                   *
#*  ANB007  00002    December 2, 2002 Phyllis Lam                              *
#*  ANB007           Display NB Last Payment Date                              *
#*  ACL002  00002    December 20, 2002 Toby Lam                                *
#*  ACL002           Get List of account from client                           *
#*  APA006  00003    MAR 18, 2003 HOLDEN ZHANG                                 *
#*  APA006           POLICY RESTRICTION                                        *
#*  ANB013  00003    APR 17, 2003 RAIN LIU                                     *
#*  ANB013           CHANGE THE COLUMN HEADER FROM 'Relationship Type' to      *
#*  ANB013           'Bank Account'                                            *
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
#*  ANB006           New Fields on NB Capture Screens                          *
#*  ANB006  00004    MAR 11, 2005 KEN CHAU                                     *
#*  ANB006           PR #08                                                    *
#*  ANB006           ADD NEW FIELD - AGNCY-BR-ID                               *
#*  ANB006           REF: TLD_ING_ULUAT_PIR #624                               *
#*  ANB025  00004    APR 18, 2005  HENRY LIU                                   *
#*  ANB025           PR #02                                                    *
#*  ANB025           ADD CORPORATION ID AND CHANNEL CODE                       *
#*  ANB006  00005    JUN 13, 2005 KEN CHAU                                     *
#*  ANB006           PR #27                                                    *
#*  ANB006           ADD NEW FIELDS - REJECTION REASON CODE,                   *
#*  ANB006           REJECTION REASON CONDITION CODE, NEGATIVE CODE,           *
#*  ANB006           REJECTION REQUEST DATE, REISSUE DATE,                     *
#*  ANB006           REISSUE CANCEL DATE, REISSUE END DATE                     *
#*  ANB006           REF: THD_UAT_IGM_UL_PIR #898                              *
#*  ANB006  00005    SEP 9, 2005  SHERRIE HAN                                  *
#*  ANB006           PR #33                                                    *
#*  ANB006           ADD LEAD CODE                                             *
#*  ANB006  00005    SEP 15, 2005  SHERRIE HAN                                 *
#*  ANB006           PR #33                                                    *
#*  ANB006           SKIP REVERSION 2.18                                       *
#*  ANB006  00005    SEP 15, 2005  SHERRIE HAN                                 *
#*  ANB006           PR #33                                                    *
#*  ANB006           RETROFITTING REVERSION 2.18                               *
#*  ANB028  00005    SEP 14, 2005 SENTHIL V                                    *
#*  ANB028           REF : PR #01                                              *
#*  ANB028           NB APPLICATION ENTRY FOR BATCH UPLOAD ENHANCEMENT         *
#*  ANB028  00005    OCT 10, 2005 JASON ZHOU                                   *
#*  ANB028           PR #2                                                     *
#*  ANB028           SKIP REVISION 2.18                                        *
#*  ANB028  00005    OCT 10, 2005 JASON ZHOU                                   *
#*  ANB028           PR #2                                                     *
#*  ANB028           RETROFITTING REVERSION 2.18                               *
#*  AAG024  00006    OCT 11, 2005  NELSON CHO                                  *
#*  AAG024           PR #06                                                    *
#*  AAG024           ORIGINAL WRITING AGENT                                    *
#*  APA061  00006    NOV 15, 2005 HOLDEN ZHANG                                 *
#*  APA061           PR #05                                                    *
#*  APA061           ATTACH CHANNEL CODE TO ALL POLICIES AT COVERAGE LEVEL     *
#*  APA064  00006    OCT 12, 2005 MICHAEL LAM                                  *
#*  APA064           PR #1                                                     *
#*  APA064           ADD PACKAGE NAME                                          *
#*  APA064           PIR REFERENCE : THD_UAT_IGM_UL_PIR 1421                   *
#*  APA064  00007    FEB 03, 2006 MICHAEL LAM                                  *
#*  APA064           PR #1                                                     *
#*  APA064           FIX STYPE FOR PACKAGE NAME TO MATCH WITH HTML             *
#*  APA064           PIR REFERENCE : THD_UAT_IGM_UL_PIR 1421                   *
#*  ANB006  *****    JUL 25, 2006 DANIEL WU                                    *
#*  ANB006           PIR REFERENCE: THD_PROD_SMRF_PIR #274                     *
#*  ANB006           PR #38                                                    *
#*  ANB006           ADD EXTERNAL REFERENCE TEXT                               *
#*  APA040  *****    JUL 06, 2006 RAY ZHANG                                    *
#*  APA040           PR #01                                                    *
#*  APA040           ADD PAYOR BENEFIT RELATIONSHIP                            *
#*  APA040           PIR REFERENCE : THD_UAT_IGM_UL_PIR #975                   *
#*  APA070  *****    FEB 21, 2006  VERA SONG                                   *
#*  APA070           PR #09                                                    *
#*  APA070           POSITIVE OPTION MODIFICATION                              *
#*  ANB006  *****    SEP 07, 2006 PHYLLIS LAM                                  *
#*  ANB006           = 3.5                                                     *
#*  APA040  *****    OCT 09, 2006  JUSTIN SU                                   *
#*  APA040           = 3.7                                                     *
#*  CFA001  *****    AUG 13, 2007  SARAH MU                                    *
#*  CFA001           FUND ALLOCATION DATE                                      *
#*  CAC001  *****    SEP 13, 2007 DONNY FENG                                   *
#*  CAC001           PR #06                                                    *
#*  CAC001           EXTEND CHANNEL CODE AND CAMPAIGN CODE                     *
#*  CPA001  *****    AUG 30, 2007  GARY HE                                     *
#*  CPA001           PR #02                                                    *
#*  CPA001           ADD OWNER INFO, INSURED INFO AND ADDRESS KEYS             *
#*  CPA001  *****    OCT 10, 2007  GARY HE                                     *
#*  CPA001           PR #02                                                    *
#*  CPA001           COMMENT MIR-CLI-ADDR-TYP-CD-T TO FIX PATHFINDER WARNING   *
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
#*  CPR177  *****    NOV 13, 2018 DONTE CHEN                                   *
#*  CPR177           PR #02                                                    *
#*  CPR177           CLIENT ID CARD ENHANCEMENT                                *
#*******************************************************************************
S-STEP BF9527-O
{
        ATTRIBUTES
        {
                BusinessFunctionType = "Retrieve";
                DelEmptyRows;
                FocusField = "OKButton";
                FocusFrame = "ButtonFrame";
                Type = "Output";
        }
        IN Title;
        IN TitleBar;
        IN TitleBarSize;
        IN ButtonBar;
        IN ButtonBarSize;
        IN MessageFrame;
        IN MessageFrameSize;
        OUT action
        {
                SType = "Hidden";
        }
        OUT index
        {
                SType = "Hidden";
        }
        IN MIR-POL-ID-BASE
        {
                DefaultSession = "MIR-POL-ID-BASE";
                DisplayOnly;
                Key;
                Label = "Policy ID";
                Length = "9";
                SType = "Text";
        }
        IN MIR-POL-ID-SFX
        {
                DefaultSession = "MIR-POL-ID-SFX";
                DisplayOnly;
                Key;
                Label = "Suffix";
                Length = "1";
                SType = "Text";
        }
        IN MIR-ANPAYO-1-DEST-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-DEST-CD";
                DisplayOnly;
                Label = "Annuity 1 Destination Registered Code";
                Length = "1";
                SType = "Text";
        }
        IN MIR-ANPAYO-1-MTHD-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-MTHD-CD";
                DisplayOnly;
                Label = "Method to Pay First Annuitant";
                Length = "40";
                SType = "Text";
        }
        IN MIR-ANPAYO-2-DEST-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-DEST-CD";
                DisplayOnly;
                Label = "Annuity 2 Destination Registered Code";
                Length = "1";
                SType = "Text";
        }
        IN MIR-ANPAYO-2-MTHD-CD
        {
                CodeSource = "DataModel";
                CodeType = "ANPAYO-MTHD-CD";
                DisplayOnly;
                Label = "Method to Pay Second Annuitant";
                Length = "1";
                SType = "Text";
        }
        IN MIR-APP-FORM-TYP-ID
        {
                CodeSource = "EDIT";
                CodeType = "AFTT";
                DisplayOnly;
                Label = "Application Form Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-AUTO-PREM-PMT-IND
        {
                DisplayOnly;
                Label = "Automatic Premium Payment Indicator";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-BILL-LEAD-TIME-DUR
        {
                DisplayOnly;
                Label = "Billing Lead Time";
                Length = "3";
                SType = "Text";
        }
#CPA001 - 08300702
#       IN MIR-CLI-ADDR-TYP-CD-T[5]
#       {
#               CodeSource = "EDIT";
#               CodeType = "ADTYP";
#               DisplayOnly;
#               FieldGroup = "Table1";
#               Index = "1";
#               Label = "Client Address Type";
#               Length = "40";
#               SType = "Text";
#       }
#/CPA001 - 08300702
        IN MIR-CLI-CRNT-LOC-CD
        {
                CodeSource = "EDIT";
                CodeType = "LOCAT";
                DisplayOnly;
                Label = "Client's Current Location";
                Length = "40";
                SType = "Text";
        }
        IN MIR-CLI-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table1";
                Index = "1";
                KeyColumn;
                Label = "Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-CLI-TAX-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Tax ID";
#ACL002 Length = "9";
        Length = "20";
#ACL002
                SType = "Text";
        }
#BAG002
        IN MIR-CMPLN-POL-SERV-AGT-ID
        {
                DisplayOnly;
                Label = "Complaint Policy Servicing Agent";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-CMPLN-POL-SERV-AGT-NM
        {
                DisplayOnly;
                Label = "Complaint Policy Servicing Agent Name";
                Length = "160";
                SType = "Text";
        }
#/BAG002
        IN MIR-CLM-PAYE-CVG-NUM
        {
                DisplayOnly;
                Label = "Coverage Number to which a Claim is Paid";
                Length = "2";
                SType = "Text";
        }
        IN MIR-CLM-PAYE-POL-ID-BASE
        {
                DisplayOnly;
                Label = "Claim Payment Policy ID";
                Length = "9";
                SType = "Text";
        }
        IN MIR-CLM-PAYE-POL-ID-SFX
        {
                DisplayOnly;
                Label = "Claim Payment Policy Suffix";
                Length = "1";
                SType = "Text";
        }
        IN MIR-CLM-PAYE-REL-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLM-PAYE-REL-CD";
                DisplayOnly;
                Label = "Relationship of Recipient of Claim Payment";
                Length = "40";
                SType = "Text";
        }
        IN MIR-CLM-PAYO-MTHD-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLM-PAYO-MTHD-CD";
                DisplayOnly;
                Label = "Claim Payment Method";
                Length = "3";
                SType = "Text";
        }
        IN MIR-CONN-OPTL-POL-ID-BASE
        {
                DisplayOnly;
                Label = "Connected Optional Policy ID";
                Length = "9";
                SType = "Text";
        }
        IN MIR-CONN-OPTL-POL-ID-SFX
        {
                DisplayOnly;
                Label = "Connected Optional Policy Suffix";
                Length = "1";
                SType = "Text";
        }
        IN MIR-DV-AGT-CLI-NM-T[3]
        {
                DisplayOnly;
                FieldGroup = "Table3";
                Index = "1";
                Label = "Agent Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
#AAG024 - 10110506
        IN MIR-DV-ORG-AGT-CLI-NM-T[3]
        {
                DisplayOnly;
                FieldGroup = "Table3";
                Index = "1";
                Label = "Original Writing Agent Name";
               Length = "160";
                SType = "Text";
        }
#/AAG024 - 10110506
        IN MIR-DV-ANUTNT-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DisplayOnly;
                FieldGroup = "Table2";
                Index = "1";
                Label = "Annuitant Client Address Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-ANUTNT-CLI-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table2";
                Index = "1";
                KeyColumn;
                Label = "Annuitant Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-ANUTNT-CLI-NM-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table2";
                Index = "1";
                Label = "Annuitant Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-DV-ANUTNT-SUB-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "DV-ANUTNT-SUB-CD";
                DisplayOnly;
                FieldGroup = "Table2";
                Index = "1";
                Label = "Annuitant Client Relationship Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-ASIGN-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DisplayOnly;
                FieldGroup = "Table4";
                Index = "1";
                Label = "Assignee Client Address Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-ASIGN-CLI-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table4";
                Index = "1";
                KeyColumn;
                Label = "Assignee Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-ASIGN-CLI-NM-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table4";
                Index = "1";
                Label = "Assignee Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-DV-ASIGN-SUB-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "DV-ASIGN-SUB-CD";
                DisplayOnly;
                FieldGroup = "Table4";
                Index = "1";
                Label = "Assignee Client Relationship Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-IPARTY-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DisplayOnly;
                FieldGroup = "Table5";
                Index = "1";
                Label = "Interested Party Client Address Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-IPARTY-CLI-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table5";
                Index = "1";
                KeyColumn;
                Label = "Interested Party Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-IPARTY-CLI-NM-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table5";
                Index = "1";
                Label = "Interested Party Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
#ANB006 IN MIR-DV-LBILL-ADDR-CD
#ANB006 {
#ANB006         CodeSource = "EDIT";
#ANB006         CodeType = "ADTYP";
#ANB006         DisplayOnly;
#ANB006         Label = "ListBill Client Address Type";
#ANB006         Length = "40";
#ANB006         SType = "Text";
#ANB006 }
#ANB006 IN MIR-DV-LBILL-CLI-ID
#ANB006 {
#ANB006         DisplayOnly;
#ANB006         Label = "ListBill Client ID";
#ANB006         Length = "10";
#ANB006         SType = "Text";
#ANB006 }
#ANB006 IN MIR-DV-LBILL-CLI-NM
#ANB006 {
#ANB006         DisplayOnly;
#ANB006         Label = "ListBill Name";
#ANB006#ACL002 Length = "75";
#ANB006        Length = "160";
#ANB006#ACL002
#ANB006         SType = "Text";
#ANB006 }
        IN MIR-DV-OWN-CLI-NM
        {
                DisplayOnly;
                Label = "Owner Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-DV-OWN-CLI-NM-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table1";
                Index = "1";
                Label = "Owner Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-DV-OWN-SUB-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "DV-OWN-SUB-CD";
                DisplayOnly;
                FieldGroup = "Table1";
                Index = "1";
                Label = "Owner Client Relationship Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-PAYR-ADDR-CD
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DisplayOnly;
                Label = "Payor Client Address Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-PAYR-CLI-ID
        {
                DisplayOnly;
                Label = "Payor Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-PAYR-CLI-NM
        {
                DisplayOnly;
                Label = "Payor Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-DV-PAYR-SUB-CD
        {
#ACL002 CodeSource = "DataModel";
#ACL002 CodeType = "DV-PAYR-SUB-CD";
#ACL002 - Start
        CodeSource = "NSOM9025";
        FilterFields = "3";
        FilterField1 = "1";
        FilterField2 = "MIR-DV-PAYR-CLI-ID";
#ANB006 FilterField3 = "MIR-DV-PAYR-CLI-ID";
#ANB006 FilterField3 = " ";
        FilterField3 = "MIR-DV-OWN-CLI-ID";
#ACL002 - End
                DisplayOnly;
#ANB013 Label = "Payor Client Relationship Type";
#ANB013 - Start
        Label = "Bank Account";
#ANB013 - End
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-SERV-AGT-CLI-NM
        {
                DisplayOnly;
                Label = "Servicing Agent Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-DV-SPOUS-ADDR-CD
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DisplayOnly;
                Label = "Spouse Client Address Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-SPOUS-CLI-ID
        {
                DisplayOnly;
                Label = "Spouse Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-SPOUS-CLI-NM
        {
                DisplayOnly;
                Label = "Spouse Name";
#ACL002 Length = "75";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-DV-TRST-ADDR-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                DisplayOnly;
                FieldGroup = "Table6";
                Index = "1";
                Label = "Trustee Client Address Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-DV-TRST-CLI-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table6";
                Index = "1";
                KeyColumn;
                Label = "Trustee Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-TRST-CLI-NM-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table6";
                Index = "1";
                Label = "Trustee Name";
#ACL002 Length = "30";
        Length = "160";
#ACL002
                SType = "Text";
        }
        IN MIR-LINK-POL-ISS-IND
        {
                DisplayOnly;
                Label = "Policy Linked to Others Indicator";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-LOAN-INT-DEDBL-IND
        {
                DisplayOnly;
                Label = "Include Loan Interest in ACB Indicator";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-MODE-FCT-RESTR-IND
        {
                DisplayOnly;
                Label = "Mode Factor Restrict Indicator";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-NXT-ACTV-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "NXT-ACTV-TYP-CD";
                DisplayOnly;
                Label = "Type of Next Automatic Activity";
                Length = "3";
                SType = "Text";
        }
        IN MIR-PLAN-ID
        {
                CodeSource = "EDIT";
                CodeType = "PLAN";
                DisplayOnly;
                Label = "Product Name";
                Length = "40";
                SType = "Text";
        }
        IN MIR-PLAN-PERI-PREM-AMT
        {
                DisplayOnly;
                Label = "Planned Periodic Premium Amount";
                Length = "13";
                SType = "Currency";
        }
        IN MIR-POL-ANPAYO-1-AMT
        {
                DisplayOnly;
                Label = "Amount Payable to First Annuitant";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        IN MIR-POL-ANPAYO-2-AMT
        {
                DisplayOnly;
                Label = "Amount Payable to Second Annuitant";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        IN MIR-POL-ANPAYO-EFF-DT
        {
                DisplayOnly;
                Label = "Effective Date of Annuity";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-ANPAYO-MODE-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-ANPAYO-MODE-CD";
                DisplayOnly;
                Label = "Frequency of Annuity Payments";
                Length = "2";
                SType = "Text";
        }
        IN MIR-POL-ANPAYO-PMT-DT
        {
                DisplayOnly;
                Label = "Date of Last Immediate Annuity Payment";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-APL-IND
        {
                DisplayOnly;
                Label = "APL Separate Option for Nonforfeiture";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-POL-APP-CMPLT-DT
        {
                DisplayOnly;
                Label = "Application Completion Date";
                Length = "10";
                SType = "Date";
        }
#ANB007
    IN MIR-POL-INFC-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Policy Inforce Date";
    }
#/ANB007
#ANB007
    IN MIR-NB-FINAL-PMT-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Last Payment Date";
    }
#/ANB007
        IN MIR-POL-APP-CTR
        {
                DisplayOnly;
                Label = "Application Counter";
                Length = "1";
                SType = "Text";
        }
        # Functional 020460 -  NSCC - expanded from 15 to 20 characters
        IN MIR-POL-APP-FORM-ID
        {
                DisplayOnly;
                Label = "Application Form ID";
                Length = "20";
                SType = "Text";
        }
        IN MIR-POL-APP-RECV-DT
        {
                DisplayOnly;
                Label = "Application Received Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-APP-SIGN-DT
        {
                DisplayOnly;
                Label = "Application Signed Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-APP-SIGN-IND
        {
                CodeSource = "DataModel";
                CodeType = "POL-APP-SIGN-IND";
                DisplayOnly;
                Label = "Application Signed Indicator";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-BILL-MODE-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-BILL-MODE-CD";
                DisplayOnly;
                Label = "Policy Billing Mode";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-BILL-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-BILL-TYP-CD";
                DisplayOnly;
                Label = "Policy Billing Method";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-CLI-ASIGN-DT-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table4";
                Index = "1";
                Label = "Effective Date of Assignment";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-CLI-INSRD-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "OTOI";
                DisplayOnly;
                FieldGroup = "Table1";
                Index = "1";
                Label = "Owner's Relationship to Insured";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-CNFD-IND
        {
                DisplayOnly;
                Label = "Policy Confidential Indicator";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-POL-CRCY-CD
        {
                CodeSource = "XTAB";
                CodeType = "CURR";
                DisplayOnly;
                Label = "Currency Used for Balances";
                Length = "2";
                SType = "Text";
        }
        IN MIR-POL-CRNT-MODE-FCT
        {
                Decimals = "7";
                DisplayOnly;
                Label = "Policy Mode Factor";
                Length = "8";
                Signed;
                SType = "Number";
        }
        IN MIR-POL-CSTAT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-CSTAT-CD";
                DisplayOnly;
                Label = "Current Policy Status";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-CTRY-CD
        {
                CodeSource = "XTAB";
                CodeType = "CNTRY";
                DisplayOnly;
                Label = "Country of Issue Location";
                Length = "2";
                SType = "Text";
        }
        IN MIR-POL-CVG-REC-CTR
        {
                DisplayOnly;
                Label = "Number of Coverages on This Policy";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-DB-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DB-OPT-CD";
                DisplayOnly;
                Label = "Policy Death Benefit Option";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-DIV-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DIV-OPT-CD";
                DisplayOnly;
                Label = "Policy Dividend Option";
                Length = "40";
                SType = "Text";
        }
#APR061
        IN MIR-POL-DIV-XCES-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DIV-XCES-CD";
                DisplayOnly;
                Label = "Policy Excess Dividend Option";
                Length = "40";
                SType = "Text";
        }
#/APR061
        IN MIR-POL-FINAL-DISP-DT
        {
                DisplayOnly;
                Label = "Final Disposition Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-FREE-LK-END-DT
        {
                DisplayOnly;
                Label = "End of Free Look Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-GRS-APREM-AMT
        {
                DisplayOnly;
                Label = "Amount of Gross Annual Premium";
                Length = "15";
                Signed;
                SType = "Currency";
        }
#APA070  02210609
          IN MIR-POF-MPREM-AMT
          {
                    DisplayOnly;
                    Label = "Modal Offer Premium";
                    Length = "17";
                    Signed;
                    SType = "Currency";
          }
          IN MIR-POF-APREM-AMT
          {
                    DisplayOnly;
                    Label = "Gross Annual Offer Premium";
                    Length = "17";
                    Signed;
                    SType = "Currency";
          }
#/APA070 02210609
        IN MIR-POL-INS-PURP-CD
        {
                CodeSource = "EDIT";
                CodeType = "PURP";
                DisplayOnly;
                Label = "Purpose of Insurance";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-ISS-DT-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-ISS-DT-TYP-CD";
                DisplayOnly;
                Label = "Issue Date Rules";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-ISS-EFF-DT
        {
                DisplayOnly;
                Label = "Issue Date of the Policy";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-ISS-LOC-CD
        {
                CodeSource = "CTLC";
                CodeType = "ILOC";
                DisplayOnly;
                FilterField1 = "MIR-POL-CTRY-CD";
                FilterFields = "1";
                Label = "Issue Location of the Policy";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-MAIL-DT
        {
                DisplayOnly;
                Label = "Date of Policy Mailing";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-MAIL-REASN-CD
        {
                DisplayOnly;
                Label = "Reason for Additional Policy Mailing";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-MEC-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-MEC-CD";
                DisplayOnly;
                Label = "Modified Endowement Contract (MEC) Reason";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-MIB-SIGN-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-MIB-SIGN-CD";
                DisplayOnly;
                Label = "MIB Signature Received";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-MPREM-AMT
        {
                DisplayOnly;
                Label = "Modal Premium as of Paid to Date";
                Length = "15";
                Signed;
                SType = "Currency";
        }
        IN MIR-POL-NFO-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-NFO-CD";
                DisplayOnly;
                Label = "Non-Forfeiture Option";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-NXT-ACTV-DT
        {
                DisplayOnly;
                Label = "Date of Next Automatic Process";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-OPTL-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-OPTL-CD";
                DisplayOnly;
                Label = "Key/Optional Status";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-PMT-DRW-DY
        {
                DisplayOnly;
                Label = "Billing Draw Day";
                Length = "2";
                SType = "Day";
        }
        IN MIR-POL-PDF-RFND-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PDF-RFND-CD";
                DisplayOnly;
                Label = "Status of Policy Deposit Fund (PDF) Funds";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-PFEE-FCT
        {
                Decimals = "7";
                DisplayOnly;
                Label = "Policy Fee Factor";
                Length = "8";
                Signed;
                SType = "Number";
        }
        IN MIR-POL-PFEE-RESTR-IND
        {
                DisplayOnly;
                Label = "Restrict Billing of Policy Fee";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-POL-PNSN-QUALF-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PNSN-QUALF-CD";
                DisplayOnly;
                Label = "Pension Qualification Description";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-PNSN-SRC-CD
        {
                CodeSource = "EDIT";
                CodeType = "PENSR";
                DisplayOnly;
                Label = "Financial Institution which Transfered Funds for Payment";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-PREM-DSCNT-PCT
        {
                Decimals = "3";
                DisplayOnly;
                Label = "Policy Discount Percentage Applied to Premium";
                Length = "5";
                Signed;
                SType = "Percent";
        }
        IN MIR-POL-PREM-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PREM-TYP-CD";
                DisplayOnly;
                Label = "Type of Premium Payment";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-REG-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-REG-CD";
                DisplayOnly;
                Label = "Location Policy Registered";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-REG-DT
        {
                DisplayOnly;
                Label = "Date Policy Registered";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-REG-FND-SRC-CD
        {
                CodeSource = "DataModel";
                CodeType = "REG-FND-SRC-CD";
                DisplayOnly;
                Label = "Source of Funds for Payment";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-REINS-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-REINS-CD";
                DisplayOnly;
                Label = "Reinsurance Indicator";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-RUSH-IND
        {
                CodeSource = "DataModel";
                CodeType = "POL-RUSH-IND";
                DisplayOnly;
                Label = "Policy High Priority Indicator";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-SFB-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-SFB-CD";
                DisplayOnly;
                Label = "Number of Special Frequency Bills produced Annually";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-SNDRY-AMT
        {
                DisplayOnly;
                Label = "Sundry Payment Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        IN MIR-POL-SNDRY-REASN-CD
        {
                CodeSource = "EDIT";
                CodeType = "SUNRE";
                DisplayOnly;
                Label = "Sundry Payment Reason";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-SUPRES-ISS-IND
        {
                DisplayOnly;
                Label = "Policy Suppress Issue Indicator";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-POL-TAX-TYP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-TAX-TYP-CD";
                DisplayOnly;
                Label = "Policy Tax Type";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-TXEMP-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-TXEMP-CD";
                DisplayOnly;
                Label = "Tax Exempt Status";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-VPO-PU-DUR
        {
                DisplayOnly;
                Label = "Number of Years Premium Should 'Vanish' By";
                Length = "2";
                SType = "Text";
        }
        IN MIR-PREM-DSCNT-TYP-CD
        {
                CodeSource = "EDIT";
                CodeType = "PDTYP";
                DisplayOnly;
                Label = "Premium Discount Type";
                Length = "40";
                SType = "Text";
        }
        IN MIR-PREM-RECALC-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "PREM-RECALC-OPT-CD";
                DisplayOnly;
                Label = "Recalculated Premium Option";
                Length = "1";
                SType = "Text";
        }
        IN MIR-REG-SAV-PORTN-AMT
        {
                DisplayOnly;
                Label = "Registered Savings Portion Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        IN MIR-REG-SAV-PORTN-CD
        {
                CodeSource = "DataModel";
                CodeType = "REG-SAV-PORTN-CD";
                DisplayOnly;
                Label = "Registered Savings Portion Coder";
                Length = "40";
                SType = "Text";
        }
        IN MIR-REG-SPCL-HNDL-CD
        {
                CodeSource = "DataModel";
                CodeType = "REG-SPCL-HNDL-CD";
                DisplayOnly;
                Label = "Special Handling Type for Tax Receipts";
                Length = "40";
                SType = "Text";
        }
        IN MIR-SBSDRY-CO-ID
        {
                CodeSource = "EDIT";
                CodeType = "SUBCO";
                DisplayOnly;
                Label = "Subsidiary Company ID";
                Length = "40";
                SType = "Text";
        }
        IN MIR-SERV-AGT-ID
        {
                DisplayOnly;
                Label = "Servicing Agent ID";
#AAG001 Length = "6";
        Length = "10";
#/AAG001
                SType = "Text";
        }
        IN MIR-SERV-BR-ID
        {
                CodeSource = "XTAB";
                CodeType = "BRCH";
                DisplayOnly;
                Label = "Servicing Agent's Branch";
                Length = "5";
                SType = "Text";
        }
        IN MIR-SFB-END-DT
        {
                DisplayOnly;
                Label = "SFB End Date";
                Length = "10";
                SType = "Date";
        }
        #
        IN MIR-SFB-GP-END-DT-NUM
        {
                DisplayOnly;
                Label = "SFB Gap End Date";
                Length = "10";
                SType = "Text";
        }
        #
        IN MIR-SFB-GP-STRT-DT-NUM
        {
                DisplayOnly;
                Label = "SFB Gap Start Date";
                Length = "10";
                SType = "Text";
        }
        IN MIR-SFB-NXT-BILL-AMT
        {
                DisplayOnly;
                Label = "SFB Next Billing Amount";
                Length = "15";
                SType = "Currency";
        }
        IN MIR-SFB-SEMI-MTHLY-DY
        {
                DisplayOnly;
                Label = "SFB Semi Monthly Billing Alternate Draw Day";
                Length = "3";
                SType = "Day";
        }
        IN MIR-SFB-STRT-DT
        {
                DisplayOnly;
                Label = "SFB Start Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-TAX-1035-ACB-AMT
        {
                DisplayOnly;
                Label = "ACB on 1035 Exchange Amount";
                Length = "15";
                SType = "Currency";
        }
        IN MIR-TAX-RPT-FREQ-CD
        {
                CodeSource = "DataModel";
                CodeType = "TAX-RPT-FREQ-CD";
                DisplayOnly;
                Label = "Tax Reporting Frequency";
                Length = "40";
                SType = "Text";
        }
        IN MIR-UNMTCH-MAIL-IND
        {
                DisplayOnly;
                Label = "Unmatched Mail Indicator";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-USER-ID
        {
                DisplayOnly;
                Label = "User ID";
                Length = "8";
                SType = "Text";
        }
        IN MIR-AGT-ID-T[3]
        {
                DisplayOnly;
                FieldGroup = "Table3";
                Index = "1";
                KeyColumn;
                Label = "Writing Agent Number";
#AAG001 Length = "6";
        Length = "10";
#/AAG001
                SType = "Text";
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
        IN MIR-POL-AGT-SHR-PCT-T[3]
        {
                Decimals = "2";
                DisplayOnly;
                FieldGroup = "Table3";
                Index = "1";
                Label = "Agent's Share Percentage";
                Length = "5";
                SType = "Percent";
        }
#ANB006 - 03110508
    IN MIR-AGNCY-BR-ID-T[3]
    {
        DisplayOnly;
        FieldGroup = "Table3";
        Index = "1";
        Label = "Agency Code";
        Length = "10";
        SType = "Text";
    }
#/ANB006 - 03110508
#AAG024 - 10110506
        IN MIR-ORG-AGT-ID-T[3]
        {
                DisplayOnly;
                FieldGroup = "Table3";
                Index = "1";
                KeyColumn;
                Label = "Original Writing Agent Number";
               Length = "10";
                SType = "Text";
        }
       INOUT MIR-ORG-WRIT-AGT-OVRID-ID-T[3]
       {
               Length = "2";
               FieldGroup = "Table3";
               SType = "Text";
               Label = "Original Writing Agent Override ID";
               Index = "1";
       }
        IN MIR-ORG-POL-AGT-SHR-PCT-T[3]
        {
                Decimals = "2";
                DisplayOnly;
                FieldGroup = "Table3";
                Index = "1";
                Label = "Original Agent's Share Percentage";
                Length = "5";
                SType = "Percent";
        }
       IN MIR-ORG-AGNCY-BR-ID-T[3]
       {
               DisplayOnly;
               FieldGroup = "Table3";
               Index = "1";
               Label = "Original Agency Code";
               Length = "10";
               SType = "Text";
       }
#/AAG024 - 10110506
        # 21345 - Correct stype from 'text' to 'date'
        IN MIR-POL-PD-TO-DT-NUM
        {
                DisplayOnly;
                Label = "Policy Paid to Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-MPREM-DSCNT-AMT
        {
                DisplayOnly;
                Label = "Mode Premium Discount Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        IN MIR-SERV-AGT-ASIGN-DT
        {
                DisplayOnly;
                Label = "Servicing Agent Assignment Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-PREV-SERV-AGT-ID
        {
                DisplayOnly;
                Label = "Previous Servicing Agent";
#AAG001 Length = "6";
        Length = "10";
#/AAG001
                SType = "Text";
        }
        IN MIR-POL-LOAN-REPAY-AMT
        {
                DisplayOnly;
                Label = "Amount Billed for Repayment of Loans";
                Length = "13";
                Signed;
                SType = "Currency";
        }
        # 21345 - Correct stype from 'text' to 'date'
        IN MIR-POL-BILL-TO-DT-NUM
        {
                DisplayOnly;
                Label = "Policy Billed To Date";
                Length = "10";
                SType = "Date";
        }
        # CGL003 - 03030823
        IN MIR-POL-BILL-TO-DT-YYYY
        {
                  Label = "Policy Billed To Date's Year";
                  Length = "4";
                  SType = "Number";
        }
        IN MIR-POL-BILL-TO-DT-MM
        {
                  Label = "Policy Billed To Date's Month";
                  Length = "2";
                  SType = "Number";
        }
        IN MIR-POL-BILL-TO-DT-DD
        {
                  Label = "Policy Billed To Date's Day";
                  Length = "2";
                  SType = "Number";
        }
        #/CGL003 - 03030823
        IN MIR-UL-INIT-PREM-AMT
        {
                DisplayOnly;
                Label = "Initial Premium Amount";
                Length = "13";
                SType = "Currency";
        }
        IN MIR-BILL-RMND-REASN-CD
        {
                CodeSource = "DataModel";
                CodeType = "BILL-RMND-REASN-CD";
                DisplayOnly;
                Label = "Billing Reminder Notice Type";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-PMT-RETRN-2-DT
        {
                DisplayOnly;
                Label = "Date of Previous Returned Cheque/Charge";
                Length = "9";
                SType = "Date";
        }
        IN MIR-POL-PMT-RETRN-2-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PMT-RETRN-CD";
                DisplayOnly;
                Label = "Reason Previous Cheque/Charge Returned";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-PMT-RETRN-1-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PMT-RETRN-CD";
                DisplayOnly;
                Label = "Reason Most Recent Returned Cheque/Charge Returned";
                Length = "40";
                SType = "Text";
        }
        IN MIR-POL-PMT-RETRN-1-DT
        {
                DisplayOnly;
                Label = "Date of Most Recent Returned Cheque/Charge";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-PMT-REDRW-DT
        {
                DisplayOnly;
                Label = "Date Credit Card/PAC will redraw for premiums";
                Length = "10";
                SType = "Date";
        }
        IN MIR-PMT-REDRW-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "PMT-REDRW-OPT-CD";
                DisplayOnly;
                Label = "Credit Card/PAC Redraw Option";
                Length = "40";
                SType = "Text";
        }
        IN MIR-RBILL-EFF-DT
        {
                DisplayOnly;
                Label = "Restrict Billing Effective Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-RBILL-END-DT
        {
                DisplayOnly;
                Label = "Restrict Billing End Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-RBILL-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-RBILL-CD";
                DisplayOnly;
                Label = "Restrict NFO or Billing Activity Reason";
                Length = "1";
                SType = "Text";
        }
        IN MIR-RBILL-DEPT-ID
        {
                CodeSource = "EDIT";
                CodeType = "DEPT";
                DisplayOnly;
                Label = "Department That Initiated Restrict Billing";
                Length = "20";
                SType = "Text";
        }
        IN MIR-RBILL-MISC-1-CD
        {
                DisplayOnly;
                Label = "Restrict Billing Code #1";
                Length = "40";
                SType = "Text";
        }
        IN MIR-RBILL-MISC-2-CD
        {
                DisplayOnly;
                Label = "Restrict BIlling Code #2";
                Length = "40";
                SType = "Text";
        }
        IN MIR-RBILL-USER-ID
        {
                DisplayOnly;
                Label = "User ID that Initiated Restrict Bill";
                Length = "8";
                SType = "Text";
        }
        IN MIR-GAIN-RPT-TIME-CD
        {
                CodeSource = "DataModel";
                CodeType = "GAIN-RPT-TIME-CD";
                DisplayOnly;
                Label = "Gain on Disposition Reporting Time Code";
                Length = "1";
                SType = "Text";
        }
        IN MIR-LXPCT-CALC-CD
        {
                CodeSource = "DataModel";
                CodeType = "LXPCT-CALC-CD";
                DisplayOnly;
                Label = "Basis of Life Expectancy Factor";
                Length = "40";
                SType = "Text";
        }
        IN MIR-LXPCT-RECALC-IND
        {
                DisplayOnly;
                Label = "Annual Life Expectancy Factor Recalculation Indicator";
                Length = "40";
                SType = "Indicator";
        }
        IN MIR-UL-LAPS-STRT-DT
        {
                DisplayOnly;
                Label = "Lapse Start Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-CEAS-DT
        {
                DisplayOnly;
                Label = "Policy Cease Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-CEAS-REASN-CD
        {
                CodeSource = "EDIT";
                CodeType = "CEASE";
                DisplayOnly;
                Label = "Reason for Policy Termination on Cease Date";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-COMNT-TXT
        {
                DisplayOnly;
                Label = "Comments/Remarks";
                Length = "50";
                SType = "Text";
        }
        IN MIR-POL-ENHC-CHNG-DT
        {
                DisplayOnly;
                Label = "Date of Next Enhancement Option";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-ENHC-NELCT-QTY
        {
                DisplayOnly;
                Label = "Number of Non-Elections for Enhancement Benefit";
                Length = "2";
                SType = "Text";
        }
        IN MIR-ENHC-UWG-REQIR-IND
        {
                CodeSource = "DataModel";
                CodeType = "ENHC-UWG-REQIR-IND";
                DisplayOnly;
                Label = "Underwriting required for Enhancement Indicator";
                Length = "1";
                SType = "Text";
        }
        IN MIR-ENHC-UWG-APROV-IND
        {
                CodeSource = "DataModel";
                CodeType = "ENHC-UWG-APROV-IND";
                DisplayOnly;
                Label = "Underwriting Approved for Enhancement Indicator";
                Length = "1";
                SType = "Text";
        }
        IN MIR-ACRU-CALC-TIME-CD
        {
                CodeSource = "DataModel";
                CodeType = "ACRU-CALC-TIME-CD";
                DisplayOnly;
                Label = "Accrual Income Calculation Time Code";
                Length = "1";
                SType = "Text";
        }
        IN MIR-POL-CTRY-TAX-DT
        {
                DisplayOnly;
                Label = "Policy Country Tax Date";
                Length = "10";
                SType = "Date";
        }
        # Functional 020453 -  Record Policy Settlement Options
        IN MIR-POL-SETL-OPT-DUR
        {
                Decimals = "0";
                DisplayOnly;
                Label = "Policy Settlement Option Term";
                Length = "3";
                SType = "Number";
        }
        # Functional 020453 -  Record Policy Settlement Options
        IN MIR-POL-SETL-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-SETL-OPT-CD";
                DisplayOnly;
                Label = "Policy Settlement Option Type";
                Length = "40";
                SType = "Text";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        IN MIR-POL-DBG-BASIC-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-DBG-BASIC-CD";
                DisplayOnly;
                Label = "Death Benefit Basic Plan Option";
                Length = "40";
                SType = "Text";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        IN MIR-DV-POL-DBG-RESET-IND
        {
                DisplayOnly;
                Label = "Reset/Lock-In";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        IN MIR-DV-ANNV-VALU-IND
        {
                Label = "Account Value on a Specified Anniversary";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        IN MIR-DV-POL-DBG-MAV-IND
        {
                DisplayOnly;
                Label = "Maximum Account Value";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        IN MIR-DV-POL-DBG-ROLU-IND
        {
                DisplayOnly;
                Label = "Premium Roll-Up";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        IN MIR-POL-DBG-LOAN-IND
        {
                DisplayOnly;
                Label = "Loan Inclusion";
                Length = "1";
                SType = "Indicator";
        }
        # Functional 020463 - New field for investor profile display
        IN MIR-PRFL-ID
        {
                CodeSource = "Edit";
                CodeType = "IPROF";
                DisplayOnly;
                Label = "Investor Profile ID";
                Length = "40";
                SType = "Text";
        }
        # Functional 020475 - Add field for Death Benefit Guarantees and Riders
        IN MIR-POL-DBG-LOCK-QTY
        {
                Decimals = "0";
                DisplayOnly;
                Label = "Remaining # of Lock-Ins";
                Length = "4";
                SType = "Number";
        }
        # Functional 20452 - add Date of Last Foreign Content Test field
        IN MIR-POL-FRGN-TST-DT
        {
                DisplayOnly;
                Label = "Date of Last Foreign Content Test";
                Length = "10";
                SType = "Date";
        }
#ACL002
    IN  MIR-DV-OWN-CLI-CLAS-CD-T[5]
    {
        DisplayOnly;
        Length = "40";
        FieldGroup = "Table1";
        CodeSource = "EDIT";
        CodeType = "CLCD";
        SType = "Text";
        Label = "Owner Clint classfication";
        Index = "1";
    }

    IN MIR-DV-PAYR-CLI-CLAS-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "CLCD";
        SType = "Text";
        Label = "Clint classfication";
    }
#/ACL002
#APR005

    IN MIR-POL-MODE-FCT-TYP-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "POL-MODE-FCT-TYP-CD";
        SType = "Text";
        Label = "Mode Factor Type";
    }
#/APR005

#APR002
    IN MIR-PREM-HLDY-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "PREM-HLDY-CD";
        SType = "Text";
        Label = "Premium Holdiay Indicator";
    }

    IN MIR-PREM-HLDY-STAT-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "PREM-HLDY-STAT-CD";
        SType = "Text";
        Label = "Premium Holdiay Status";
    }
#/APR002

#ANB007

    IN MIR-INSRD-APP-MEDIC-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "MEDI";
        SType = "Text";
        Label = "Insured Application Nature";
    }

    IN MIR-PAYR-APP-MEDIC-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "MEDI";
        SType = "Text";
        Label = "Payor Application Nature";
    }

    IN MIR-POL-CNTRCT-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Policy Contract Date";
    }

    IN MIR-INIT-ATOPUP-AMT
     {
        DisplayOnly;
        Length = "15";
        SType = "Currency";
        Label = "Initial Ad-hoc Top-up Amount";
    }

    IN MIR-POL-HLD-COMM-IND
    {
        DisplayOnly;
        Length = "1";
        SType = "Indicator";
        Label = "Withheld Commission Indicator";
    }

    IN MIR-POL-ENTR-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Policy Entry Date";
    }

    IN MIR-INSRD-HLTHANSWR-IND
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "HLTQ";
        SType = "Text";
        Label = "Insured Health Questionnaire Answered";
    }

    IN MIR-PAYR-HLTHANSWR-IND
    {
        DisplayOnly;
        Length = "4";
        CodeSource = "EDIT";
        CodeType = "HLTQ";
        SType = "Text";
        Label = "Payor Health Questionnaired Answered";
    }

    IN MIR-XTRA-COMM-ELIG-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "XCMI";
        SType = "Text";
        Label = "Extra Commission Eligibility";
    }

    IN MIR-POL-REISS-IND
    {
        DisplayOnly;
        Length = "1";
        SType = "Indicator";
        Label = "Policy Reissue Indicator";
    }
#ANB006 - 06130527
    IN MIR-POL-REISS-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Reissue Date";
    }
    IN MIR-POL-REISS-CNCL-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Reissue Cancel Date";
    }
    IN MIR-POL-REISS-END-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Reissue End Date";
    }
#/ANB006 - 06130527

    IN MIR-SPCL-QUOT-IND
    {
        DisplayOnly;
        Length = "1";
        SType = "Indicator";
        Label = "Special Quotation Indicator";
    }

    IN MIR-POL-CSTAT-REASN-CD
    {
        DisplayOnly;
        Length = "40";
#APA002 CodeSource = "EDIT";
#APA002 CodeType = "STRSN";
#APA002
        CodeSource = "DataModel";
        CodeType = "POL-CSTAT-REASN-CD";
#/APA002
        SType = "Text";
        Label = "Policy Status Reason Code";
    }


    IN MIR-PMT-TYP-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "DataModel";
        CodeType = "PMT-TYP-CD";
        SType = "Text";
        Label = "Payment Type Code";
    }

    IN MIR-PREV-CHQ-CLR-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Last Cheque Clearing Date";
    }

#/ANB007

#* APA006 <
    IN MIR-RESTRICT-CD-B
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Bankruptcy";
    }

    IN MIR-RESTRICT-CD-A
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Absolute Assignment";
    }

    IN MIR-RESTRICT-CD-S
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Special Quotation";
    }

    IN MIR-RESTRICT-CD-I
    {
        Length = "1";
        DBTableName = "Derived";
        SType = "Indicator";
        Label = "Irrevocable Beneficiary";
    }

#* APA006 >

#APA022
    IN MIR-LAPSE-START-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Text";
        Label = "Lapse Start Date";
    }
#/APA022
#APA020
    IN MIR-POL-SPND-REASN-CD
    {
        DisplayOnly;
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "POL-SPND-REASN-CD";
        SType = "Text";
        Label = "Suspend Reason";
    }

    IN MIR-POL-SPND-EFF-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Suspend Effective Date";
    }

    IN MIR-POL-SPND-TRMN-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Suspend Terminate Date";
    }

    IN MIR-POL-SPND-USER-ID
    {
        DisplayOnly;
        Length = "8";
        SType = "Text";
        Label = "Suspend By";
    }
#/APA020

#ANB021
    IN MIR-DV-CHILD-ADDR-CD
    {
        DisplayOnly;
        Length = "40";
        CodeSource = "EDIT";
        CodeType = "ADTYP";
        SType = "Text";
        Label = "Child Client Address Type";
    }

    IN MIR-DV-CHILD-CLI-ID
    {
        DisplayOnly;
        Length = "10";
        SType = "Text";
        Label = "Child Client ID";
    }

    IN MIR-DV-CHILD-CLI-NM
    {
        DisplayOnly;
        Length = "160";
        SType = "Text";
        Label = "Child Name";
    }
#/ANB021
#BNB005
#CFA001    IN MIR-POL-RECV-DT
#CFA001    {
#CFA001        DisplayOnly;
#CFA001        Length = "10";
#CFA001        SType = "Text";
#CFA001        Label = "Policy Receive Date";
#CFA001    }
#/BNB005
#APR053
    IN MIR-POL-FREE-LK-XFER-DT
    {
        DisplayOnly;
        Label = "Free Look Transfer Date";
        Length = "10";
        SType = "Date";
    }
#/APR053

#APA060
        IN MIR-PNDFND-UNITIZE-DT
        {
                DisplayOnly;
                Length = "10";
                SType = "Date";
                Label = "Pending Fund Unitization Date";
        }
#/APA060
#APR051
    IN MIR-POL-APL-DUR
    {
        DBTableName = "TPOL";
        Label = "APL stop months";
        Length = "3";
        SType = "Text";
    }

    IN MIR-POL-NFO-RESTR-CD
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
        IN MIR-INSRD-CLI-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table1";
                Index = "1";
                KeyColumn;
                Label = "Client ID";
                Length = "10";
                SType = "Text";
        }

        IN MIR-DV-INSRD-CLI-NM-T[5]
        {
                DisplayOnly;
                Label = "Insured Name";
        Length = "160";
                SType = "Text";
        }

        IN MIR-INSRD-CLI-TAX-ID-T[5]
        {
                DisplayOnly;
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Tax ID";
        Length = "20";
                SType = "Text";
        }

    IN  MIR-DV-INSRD-CLI-CLAS-CD-T[5]
    {
        DisplayOnly;
        Length = "40";
        FieldGroup = "Table1";
        CodeSource = "EDIT";
        CodeType = "CLCD";
        SType = "Text";
        Label = "Insured Clint classfication";
        Index = "1";
    }

    IN MIR-POL-REJ-REASN-CD-TXT
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
        IN MIR-LIST-BILL-CLI-CD
        {
                DisplayOnly;
                Length = "10";
                Label = "List Bill Client";
                SType = "Text";
        }

        IN MIR-POL-PMT-DRW-DY
        {
                DisplayOnly;
                Length = "2";
                Label = "Billing Draw Day";
                SType = "Number";
        }

        IN MIR-INIT-PAYO-MTH-CD
        {
                CodeSource = "DataModel";
                CodeType = "PLAN-PAYO-MTHD-CD";
                DisplayOnly;
                Label = "Contractual Payout Option";
                Length = "10";
                SType = "Text";
        }

        IN MIR-PAYO-BNK-ACCT-NU
        {
                CodeSource = "NSOM9025";
                FilterFields = "3";
                FilterField1 = "MIR-DV-REL-OPTN-CD";
                FilterField2 = " ";
                FilterField3 = "MIR-DV-OWN-CLI-ID";
                DisplayOnly;
                Length = "40";
                SType = "Text";
                Label = "Payout Bank A/C No.";
        }

        IN MIR-POL-INIT-PREM-DED-IND
        {
                DisplayOnly;
                Length = "40";
                CodeSource = "EDIT";
                CodeType = "INITPREMIND";
                SType = "Text";
                Label = "Initial Premium Deduct Agent";
        }

        IN MIR-POL-CONTEST-IND
        {
                DisplayOnly;
                Length = "1";
                SType = "Indicator";
                Label = "Policy Contest Indicator";
        }

        IN MIR-POL-EGP-IND
        {
                DisplayOnly;
                Length = "1";
                SType = "Indicator";
                Label = "EGP Policy";
        }
        IN MIR-DV-OWN-CLI-ID
        {
                DisplayOnly;
                Label = "Owner Client ID";
                Length = "10";
                SType = "Text";
        }
#/ANB006
#APR086 - 09020402
 IN MIR-POL-CPN-OPT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-CPN-OPT-CD";
                DisplayOnly;
                Label = "Policy Coupon Option";
                Length = "40";
                SType = "Text";
        }
 IN MIR-POL-CPN-XCES-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-CPN-XCES-CD";
                DisplayOnly;
                Label = "Policy Excess Coupon Option";
                Length = "40";
                SType = "Text";
        }
#/APR086 - 09020402
#APR079 11260401
        IN MIR-POL-PU-NFO-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-PU-NFO-CD";
                DisplayOnly;
                Label = "Paid Up Non-Forfeiture Option";
                Length = "1";
                SType = "Text";
        }
#/APR079 11260401
#APR087 - 12010402
    IN MIR-CONTEST-MRG-POL-ID
    {
        DisplayOnly;
        Length = "10";
        SType = "Text";
        Label = "Contest Merging Policy";
    }
#/APR087 - 12010402
#ANB006 - 11010422
        IN MIR-NCSH-XF-IND
        {
            DisplayOnly;
            Length = "1";
            SType = "Indicator";
            Label = "Non-Cash Transfer Indicator";
        }
        IN MIR-DV-FAC-REINS-IND
        {
            DisplayOnly;
            Length = "1";
            SType = "Indicator";
            Label = "Facultative Reinsurance Indicator";
        }
            IN MIR-BILL-LEAD-MO-CTL-CD
        {
            DisplayOnly;
            Length = "40";
                SType = "Text";
            CodeSource = "EDIT";
            CodeType = "BILLLEADMOCTL";
                Label = "Billing Use Code";
        }
            IN MIR-BILL-LEAD-MO-DUR
        {
            DisplayOnly;
                Length = "3";
                Label = "Billing Lead Months";
                SType = "Number";
        }
#/ANB006 - 11010422
#ANB006 - 11250420
        IN MIR-PROD-TYP-CD
        {
            DisplayOnly;
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "PRODTYP";
            SType = "Text";
            Label = "Product Type";
        }

        IN MIR-DSTRB-CHNL-CD
        {
            DisplayOnly;
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "DCHNL";
            SType = " Text";
            Label = "Channel";
        }

        IN MIR-DV-PROD-TYP-CD
        {
            DisplayOnly;
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "PRODTYP";
            SType = "Text";
            Label = "Product Type";
        }

        IN MIR-DV-DSTRB-CHNL-CD
        {
            DisplayOnly;
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "DCHNL";
            SType = " Text";
            Label = "Channel";
        }#/ANB006 - 11250420

#APA064 - 10120501
        IN MIR-PKG-PLAN-NM-CD
        {
            DisplayOnly;
            Length = "40";
            CodeSource = "EDIT";
            CodeType = "PLNSP";
        #APA064 - 02030601
        #   SType = "Selection";
            SType = "Text";
        #/APA064 - 02030601
            Label = "Package Name";
        }
#/APA064 - 10120501

#ANB025 - 04180502-START
        IN MIR-DV-WSM-CORP-ID
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
#        IN MIR-DV-WSM-CHNL-CD
#        {
#           Length = "3";
#           SType = "Text";
#           DBTableName = "Derived";
#           Label = "WSM Channel Code";
#       }
#/APA061 - 11150505
#/ANB025 - 04180502-END
#ANB006 - 06130527
    IN MIR-POL-REJ-REASN-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-REJ-REASN-CD";
        DisplayOnly;
        Length = "2";
        SType = "Text";
        Label = "Rejection Reason";
    }
    IN MIR-REJ-REASN-COND-CD
    {
        CodeSource = "EDIT";
        CodeType = "REJCC";
        DisplayOnly;
        Length = "2";
        SType = "Text";
        Label = "Rejection Reason Condition";
    }
    IN MIR-NEG-CD
    {
        CodeSource = "EDIT";
        CodeType = "NEGCOD";
        DisplayOnly;
        Length = "2";
        SType = "Text";
        Label = "Negative Code";
    }
    IN MIR-POL-REJ-RQST-DT
    {
        DisplayOnly;
        Length = "10";
        SType = "Date";
        Label = "Rejection Request Date";
    }
#/ANB006 - 06130527
#ANB006 - 09090533-START
        IN MIR-POL-LEAD-CD
        {
            Length = "6";
            SType = "Text";
            DBTableName = "Derived";
            Label = "Lead Code";
        }
#/ANB006 - 09090533-END
#ANB028 - 09140501
    IN MIR-POL-VERIF-IND
    {
        DisplayOnly;
        Length = "1";
        SType = "Indicator";
        Label = "Policy Verified Indicator";
    }

    IN MIR-CLI-VERIF-IND
    {
        DisplayOnly;
        Length = "1";
        SType = "Indicator";
        Label = "Client Verified Indicator";
    }
#/ANB028 - 09140501
#APA040 - 07060601
    IN MIR-DV-PB-CLI-ID
    {
        DisplayOnly;
        KeyColumn;
        Label = "Payor Benefit Client ID";
        Length = "10";
        SType = "Text";
    }

    IN MIR-DV-PB-CLI-NM
    {
        DisplayOnly;
        Label = "Payor Benefit Client Name";
        Length = "160";
        SType = "Text";
    }

    IN MIR-DV-PB-ADDR-CD
    {
        CodeSource = "EDIT";
        CodeType = "ADTYP";
        DisplayOnly;
        Label = "Payor Benefit Client Address Type";
        Length = "40";
        SType = "Text";
    }
#/APA040 - 07060601
#ANB006 - 07250638-START
        IN MIR-POL-XTRNL-REF-TXT
        {
            Length = "50";
            SType = "Text";
            DBTableName = "Derived";
            Label = "External reference text";
        }
#/ANB006 - 07250638-END
#CFA001 - 08130702
        IN MIR-POL-ACK-SIGN-DT
        {
                DisplayOnly;
                Label = "Acknowledgement Sign Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-ACK-RECV-DT
        {
                DisplayOnly;
                Label = "Acknowledgement Receive Date";
                Length = "10";
                SType = "Date";
        }
        IN MIR-POL-FND-ALLOC-DT
        {
            DisplayOnly;
            Length = "10";
            SType = "Text";
            Label = "Initial Fund Allocation Date";
        }
        IN MIR-POL-PIL-IND
        {
            DisplayOnly;
            Length = "1";
            SType = "Indicator";
            Label = "Immediate Investment Indicator";
        }
#/CFA001 - 08130702
#CPR105 - 01271001
        IN MIR-POL-CNVR-IND
        {
            DisplayOnly;
            Length = "1";
            SType = "Indicator";
            Label = "ILP Conversion Indicator";
        }
#/CPR105 - 01271001
#CPA001 - 08300702
        IN MIR-CLI-ADDR-GR-1-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-CLI-ADDR-TYP-1-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Address Type";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-CLI-ADDR-SEQ-1-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
        IN MIR-CLI-ADDR-GR-2-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-CLI-ADDR-TYP-2-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Address Type";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-CLI-ADDR-SEQ-2-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
        IN MIR-CLI-DAY-PHON-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Day";
        }
        IN MIR-CLI-NIGHT-PHON-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Night";
        }
        IN MIR-CLI-CELL-PHON-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Mobile Phone";
        }
        IN MIR-CLI-CNTCT-MAIL-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Email";
        }
        IN MIR-CLI-TAX-ID-T[5]
        {
                Length = "20";
                SType = "Text";
                Label = "ID Card No";
        }
        IN MIR-CLI-ID-TYP-CD-T[5]
        {
                Length = "2";
                SType = "Selection";
                Label = "ID Type";
                CodeSource = "EDIT";
                CodeType = "IDTYPE";
        }
        IN MIR-CLI-MARIT-STAT-CD-T[5]
        {
                CodeSource = "EDIT";
                CodeType = "MARST";
                Label = "Marital Status";
                Length = "1";
                SType = "Selection";
        }
        IN MIR-CLI-CITZ-CD-T[5]
        {
                Length = "3";
                CodeSource = "EDIT";
                CodeType = "CITZ";
                SType = "Selection";
                DBTableName = "TCLI";
                Label = "Nationality";
        }
        IN MIR-CLI-PERM-RES-IND-T[5]
        {
                Label = "Permanent Residence";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-CLI-INCM-EARN-AMT-T[5]
        {
                Label = "Annual Income";
                Length = "17";
                SType = "Text";
        }
        IN MIR-CLI-WGT-T[5]
        {
                Length = "5";
                SType = "Text";
                Label = "Weight";
        }
        IN MIR-CLI-HT-T[5]
        {
                Length = "5";
                SType = "Text";
                Label = "Height";
        }
        IN MIR-CLI-OCCP-ID-T[5]
        {
                Length = "10";
                SType = "Text";
                Label = "Occupation Code";
        }
#CPA001 - 01110802
#       IN MIR-CLI-SHIP-IND-T[5]
        IN MIR-CLI-SHIP-CD-T[5]
#CPA001 - 01110802
        {
                CodeSource = "DataModel";
                CodeType = "CLI-SHIP-CD";
                SType = "Text";
                Label = "SHIP";
                Length = "1";
        }
#INSURED
        IN MIR-INSRD-CLI-ID-T[30]
        {
                DBTableName = "TPOLC";
                FieldGroup = "Table9";
                Index = "1";
                KeyColumn;
                Label = "Client ID";
                Length = "10";
                SType = "Text";
        }
        IN MIR-DV-INSRD-CLI-NM-T[30]
        {
                DBTableName = "Derived";
                FieldGroup = "Table9";
                Index = "1";
                Label = "Insured Name";
                Length = "160";
                SType = "Text";
        }
        IN MIR-DV-INSRD-CLI-NM-KEY-T[30]
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
        IN MIR-DV-INSRD-SUB-CD-T[30]
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
        IN MIR-CVG-CLI-INSRD-CD-T[30]
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
        IN MIR-INSRD-CLI-ADDR-GR-2-CD-T[30]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-INSRD-CLI-ADDR-TYP-2-CD-T[30]
        {
                CodeSource = "EDIT";
                CodeType = "ADTYP";
                FieldGroup = "Table1";
                Index = "1";
                Label = "Client's Address Type";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-INSRD-CLI-ADDR-SEQ-2-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
        IN MIR-INSRD-CLI-DAY-PHON-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Day";
        }
        IN MIR-INSRD-CLI-NIGHT-PHON-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Phone In Night";
        }
        IN MIR-INSRD-CLI-CELL-PHON-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Mobile Phone";
        }
        IN MIR-INSRD-CLI-CNTCT-MAIL-NUM-T[30]
        {
                Length = "3";
                SType = "Text";
                Label = "Email";
        }
        IN MIR-INSRD-CLI-TAX-ID-T[30]
        {
                Length = "20";
                SType = "Text";
                Label = "ID Card No";
        }
        IN MIR-INSRD-CLI-ID-TYP-CD-T[30]
        {
                Length = "2";
                SType = "Selection";
                Label = "ID Type";
                CodeSource = "EDIT";
                CodeType = "IDTYPE";
        }
        IN MIR-INSRD-CLI-MARIT-STAT-CD-T[30]
        {
                CodeSource = "EDIT";
                CodeType = "MARST";
                Label = "Marital Status";
                Length = "1";
                SType = "Selection";
        }
        IN MIR-INSRD-CLI-CITZ-CD-T[30]
        {
                Length = "3";
                CodeSource = "EDIT";
                CodeType = "CITZ";
                SType = "Selection";
                DBTableName = "TCLI";
                Label = "Nationality";
        }
        IN MIR-INSRD-CLI-PERM-RES-IND-T[30]
        {
                Label = "Permanent Residence";
                Length = "1";
                SType = "Indicator";
        }
        IN MIR-INSRD-CLI-INCM-EARN-AMT-T[30]
        {
                Label = "Annual Income";
                Length = "17";
                SType = "Text";
        }
        IN MIR-INSRD-CLI-WGT-T[30]
        {
                Length = "5";
                SType = "Text";
                Label = "Weight";
        }
        IN MIR-INSRD-CLI-HT-T[30]
        {
                Length = "5";
                SType = "Text";
                Label = "Height";
        }
        IN MIR-INSRD-CLI-OCCP-ID-T[30]
        {
                Length = "10";
                SType = "Text";
                Label = "Occupation Code";
        }
#CPA001 - 01110802
#       IN MIR-INSRD-CLI-SHIP-IND-T[30]
        IN MIR-INSRD-CLI-SHIP-CD-T[30]
#/CPA001 - 01110802
        {
                CodeSource = "DataModel";
                CodeType = "CLI-SHIP-CD";
                SType = "Text";
                Label = "SHIP";
                Length = "1";
        }
#Payor
        IN MIR-DV-PAYR-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Text";
        }
        IN MIR-DV-PAYR-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Payor Benefit
        IN MIR-DV-PB-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Text";
        }
        IN MIR-DV-PB-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Spouse
        IN MIR-DV-SPOUS-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Text";
        }
        IN MIR-DV-SPOUS-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Child
        IN MIR-DV-CHILD-ADDR-GR-CD
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Text";
        }
        IN MIR-DV-CHILD-ADDR-SEQ-NUM
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Interested Party
        IN MIR-DV-IPARTY-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-DV-IPARTY-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Trustee
        IN MIR-DV-TRST-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-DV-TRST-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Assignee
        IN MIR-DV-ASIGN-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-DV-ASIGN-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#Annuitant
        IN MIR-DV-ANUTNT-ADDR-GR-CD-T[5]
        {
                CodeSource = "DataModel";
                CodeType = "CLI-ADDR-GR-CD";
                Label = "Character Set";
                Length = "2";
                SType = "Selection";
        }
        IN MIR-DV-ANUTNT-ADDR-SEQ-NUM-T[5]
        {
                Length = "3";
                SType = "Text";
                Label = "Sequence Number";
        }
#/CPA001 - 08300702
#CPA006 - 09260704
    IN MIR-POL-PREV-ANNV-DUR
    {
        DisplayOnly;
        Length = "3";
        SType = "Text";
        Label = "Policy Duration";
    }
#/CPA006 - 09260704
#CFA208 - 01240906
    IN MIR-POL-UL-PRCES-DT
        {
                DisplayOnly;
                Label = "Next MAV Due Date";
                Length = "10";
                SType = "Date";
        }
    IN MIR-POL-UL-PTD-NUM
        {
                DisplayOnly;
                Label = "MAV Shortage Start Date";
                Length = "10";
                SType = "Date";
        }
    IN MIR-POL-UL-SHRT-AMT
        {
                DisplayOnly;
                Label = "Policy Shortage Amount";
                Length = "13";
                Signed;
                SType = "Currency";
        }
#/CFA208 - 01240906
#CPR203 - 09240801
        IN MIR-NXT-LINT-CAP-DT
        {
                DisplayOnly;
                Label = "Next Interest Capitalization Date";
                Length = "10";
                SType = "Date";
        }
    IN MIR-LINT-CAP-DT-TYP-CD
    {
            CodeSource = "DataModel";
                CodeType = "LINT-CAP-DT-TYP-CD";
        Length = "1";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Loan Interest Capitalization Basis";
    }
    IN MIR-LINT-CAP-FREQ-CD
    {
            CodeSource = "DataModel";
                CodeType = "LINT-CAP-FREQ-CD";
        Length = "2";
        DBTableName = "TPOL";
        SType = "Text";
        Label = "Loan Interest Capitalization Frequency";
    }
#/CPR203 - 09240801
#CPR224 - 05190904
        IN MIR-OVR-LOAN-RPT-IND
        {
                DisplayOnly;
                Label = "Over-Loan Report Indicator";
                Length = "1";
                SType = "Indicator";
        }
#/CPR224 - 05190904
#CPR218 - 05130902
    IN MIR-POL-WAV-STAT-CD
    {
                    DisplayOnly;
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "POL-WAV-STAT-CD";
        DBTableName = "TZPOL";
        SType = "Text";
        Label = "Waiver Status Code";
    }
    IN MIR-MAV-WAV-STRT-DT
    {
                    DisplayOnly;
        Label = "MAV Waiver Start Date";
        Length = "10";
        SType = "Date";
    }
    IN MIR-PREM-WAV-STRT-DT
    {
                    DisplayOnly;
        Label = "Premium Waiver Start Date";
        Length = "10";
        SType = "Date";
    }
#/CPR218 - 05130902
#CPR111 - 03261001
    IN MIR-CUST-RSK-SCORE
    {
        DisplayOnly;
        Length = "4";
        SType = "Text";
        Label = "Customer Risk Score";
    }
#/CPR111 - 03261001
#CPR301 - 05141207
    IN MIR-POL-ANTY-OPT-CD
    {
                CodeSource = "DataModel";
                CodeType = "POL-ANTY-OPT-CD";
                Length = "1";
                DisplayOnly;
                SType = "Text";
                Label = "Policy Annuity Option";
    }
    IN MIR-POL-ANTY-XCES-CD
    {
                CodeSource = "DataModel";
                CodeType = "POL-ANTY-XCES-CD";
                Length = "1";
                DisplayOnly;
                SType = "Text";
                Label = "Policy Excess Annuity Option";
    }
#/CPR301 - 05141207
#CPA301 - 05311204
    IN MIR-POL-PLEG-TYP-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-PLEG-TYP-CD";
        Length = "1";
        DisplayOnly;
        SType = "Text";
        Label = "Pledge Type Code";
    }
#/CPA301 - 05311204
#CPR311 - 09101201
        IN MIR-POL-DCA-IND
        {
            DisplayOnly;
            Length = "1";
            DBTableName = "TZPOL";
            SType = "Indicator";
            Label = "Parking Fund Option";
        }
#/CPR311 - 09101201
#CBC109 - 05021301
    IN MIR-POL-CAMP-ID
    {
        DisplayOnly;
        Length = "10";
        SType = "Text";
        Label = "Campaign ID";
    }
#/CBC109 - 05021301
#CPR133 - 02241402
    IN MIR-POL-MPREM-WAV-AMT
    {
        DisplayOnly;
        Label = "Modal Premium (Waived)";
        Length = "15";
        Signed;
        SType = "Currency";
    }
#/CPR133 - 02241402
#CPR133 - 02261401
    IN MIR-POL-EMBED-WAV-STAT-CD
    {
        DisplayOnly;
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "POL-EMBED-WAV-STAT-CD";
        DBTableName = "TZPOL";
        SType = "Text";
        Label = "Embedded Waiver Status Code";
    }
    IN MIR-EMBED-PWAV-STRT-DT
    {
        DisplayOnly;
        Label = "Embedded Premium Waiver Start Date";
        Length = "10";
        SType = "Date";
    }
#/CPR133 - 02261401
#CPR143 - 05281402
    IN MIR-IER-CPN-STAT-CD
    {
        DisplayOnly;
        Length = "1";
        CodeSource = "DataModel";
        CodeType = "IER-CPN-STAT-CD";
        DBTableName = "TZPOL";
        SType = "Text";
        Label = "IER Coupon Status Code";
    }
    IN MIR-POL-IER-CPN-STRT-DT
    {
        DisplayOnly;
        Label = "Policy IER Coupon Start Date";
        Length = "10";
        SType = "Date";
    }
    IN MIR-POL-IER-CPN-OPT-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-CPN-OPT-CD";
        DisplayOnly;
        Label = "Policy IER Coupon Option";
        Length = "40";
        SType = "Text";
    }
#/CPR143 - 05281402
#CPR148 - 03201501
    IN MIR-POL-ANTY-PAYO-STAT-CD
    {
        CodeSource = "DataModel";
        CodeType = "POL-ANTY-PAYO-STAT-CD";
        DisplayOnly;
        Label = "Policy Annual Payout Status Code";
        Length = "40";
        SType = "Text";
    }
#/CPR148 - 03201501
#CPR177 - 11131802
    IN MIR-CLI-TAX-2-ID-T[5]
    {
        Length = "20";
        SType = "Text";
        Label = "ID Card No2";
    }
    IN MIR-CLI-ID-TYP-2-CD-T[5]
    {
        Length = "2";
        SType = "Selection";
        Label = "ID Type2";
        CodeSource = "EDIT";
        CodeType = "IDTYPE2";
    }
    IN MIR-INSRD-CLI-TAX-2-ID-T[30]
    {
        Length = "20";
        SType = "Text";
        Label = "ID Card No 2nd";
    }
    IN MIR-INSRD-CLI-ID-TYP-2-CD-T[30]
    {
        Length = "2";
        SType = "Selection";
        Label = "ID Type";
        CodeSource = "EDIT";
        CodeType = "IDTYPE2";
    }
#/CPR177 - 11131802
}
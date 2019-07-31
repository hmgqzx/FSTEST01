      *************************
       IDENTIFICATION DIVISION.
      *************************

       PROGRAM-ID. CSOM9527.

       COPY XCWWCRHT.

      *****************************************************************

      /
      **********************
       ENVIRONMENT DIVISION.
      **********************

      ***************
       DATA DIVISION.
      ***************

       WORKING-STORAGE SECTION.

       COPY XCWWPGWS REPLACING '$VAR1' BY 'CSOM9527'.

       COPY SQLCA.

014590*COPY XCWL0030.
       COPY XCWL8090.
      /
       01  WS-WORKING-STORAGE.
           05  WS-BUS-FCN-ID                           PIC X(04).
               88  WS-BUS-FCN-RETRIEVE                 VALUE '8000'.
           05  WS-PRIM-OWNER-IND                       PIC X(01).
               88  WS-PRIM-OWNER                       VALUE 'Y'.
               88  WS-NOT-PRIM-OWNER                   VALUE 'N'.
           05  WS-OWNER-PRIMARY-SW                     PIC X(01).
               88  NO-PRIMARY-FOUND                    VALUE 'N'.
               88  OWNER-PRIMARY-FOUND                 VALUE 'Y'.
CPA001     05  WS-INSRD-PRIMARY-SW                     PIC X(01).       08300702
CPA001         88  WS-PRIMARY-INSRD-FOUND              VALUE 'Y'.       08300702
CPA001         88  WS-PRIMARY-INSRD-NOT-FOUND          VALUE 'N'.       08300702
CPR105     05  WS-POL-CNVR-IND                         PIC X(001).      01271001
CPR105         88  WS-POL-CNVR-OLAS                    VALUE 'Y'.       01271001
CPR105         88  WS-POL-CNVR-OLAS-NO                 VALUE 'N'.       01271001
016548*    05  WS-SUB                                  PIC S9(04) COMP.
016548     05  WS-SUB                                  PIC S9(04)
016548                                                 BINARY.
016548*    05  WS-HOLD-SUB                             PIC S9(04) COMP.
016548     05  WS-HOLD-SUB                             PIC S9(04)
016548                                                 BINARY.
016548*    05  WS-WORK-SUB                             PIC S9(04) COMP.
016548     05  WS-WORK-SUB                             PIC S9(04)
016548                                                 BINARY.
WNB015     05  WS-MAX-CFN-LIST-LINES                   PIC S9(04)
WNB015                                                 BINARY VALUE 200.
           05  WS-NUMERIC-CONVERSIONS.
               10  WS-PIC-S99                          PIC S99.
               10  WS-PIC-CHANGE.
                   15  WS-PIC-SIGN                     PIC X.
                   15  WS-PIC-NUM                      PIC XX.
               10  WS-N-99V97                          PIC S99V9(7).
               10  WS-PIC-99V97                        PIC 99.9(7).
               10  WS-N-92                             PIC 99.
               10  WS-PIC-99V999                       PIC 9(02).9(03).
ANB008     05  WS-MQ-CALL-SW                           PIC X(01).
ANB008         88  WS-MQ-CALL-YES                      VALUE 'Y'.
ANB008         88  WS-MQ-CALL-NO                       VALUE 'N'.
ANB007     05  WS-OWNER-INSRD-SAME                     PIC X(01).
ANB007         88  WS-OWNER-INSRD-SAME-YES             VALUE 'Y'.
ANB007         88  WS-OWNER-INSRD-SAME-NO              VALUE 'N'.
ANB007     05  WS-INSRD-CTR                            PIC 99.
ANB008     05  WS-PAY-AMT                              PIC 9(13)V9(2).  10200405
ANB006     05  WS-LFCM-CO-ID                           PIC X(03).       03110508
ANB025     05  WS-TMP-CVG-NUM                          PIC 9(02).       04180502
APA036     05  WS-RETRN-CD                             PIC X(01).       04210507
APA036         88  WS-RETRN-OK                         VALUE 'Y'.       04210507
APA036         88  WS-RETRN-ERROR                      VALUE 'N'.       04210507
ANB028*ANB028     05  WS-OWNER-CLI-STATUS             PIC X(01).1103050111090501
ANB028*ANB028         88  WS-OWNER-CLI-STATUS-YES     VALUE 'Y'.1103050111090501
ANB028*ANB028         88  WS-OWNER-CLI-STATUS-NO      VALUE 'N'.1103050111090501
ANB028*ANB028     05  WS-INSRD-CLI-STATUS             PIC X(01).1103050111090501
ANB028*ANB028         88  WS-INSRD-CLI-STATUS-YES     VALUE 'Y'.1103050111090501
ANB028*ANB028         88  WS-INSRD-CLI-STATUS-NO      VALUE 'N'.1103050111090501
ANB028*ANB028     05  WS-PAYR-CLI-STATUS              PIC X(01).1103050111090501
ANB028*ANB028         88  WS-PAYR-CLI-STATUS-YES      VALUE 'Y'.1103050111090501
ANB028*ANB028         88  WS-PAYR-CLI-STATUS-NO       VALUE 'N'.1103050111090501
WBC018     05  WS-PREV-BILL-TYP-CD                     PIC X(01).
WBC018         88  WS-PREV-BILL-TYP-CRC                VALUE 'C'.
APA070     05  WS-LATEST-OFFR-DT           PIC X(10).                   02210609
APA070     05  WS-POF-APREM-AMT            PIC S9(13)V9(2) COMP-3.      02210609
APA070     05  WS-POF-MPREM-AMT            PIC S9(13)V9(2) COMP-3.      02210609

018633*01  WS-TWRK-KEY                     PIC X(04)  VALUE '8000'.
018633*01  WS-WORK-AREA.
018633*    05  WS-HOLD-CLI-REL-INFO.
018633*        10  FILLER                           PIC X(02).
018633*        10  WS-HOLD-CLI-TABLE-AREA.
018633*            15  WS-HOLD-CLI-TABLE            OCCURS 30.
018633*                20  WS-HOLD-CLI-ID           PIC X(10).
018633*                20  WS-HOLD-CLI-REL-TYP-CD   PIC X(01).
018633*        10  FILLER                           PIC X(18).
018633 COPY XCWLCOMM REPLACING '$VAR1' BY '8000'.
018633     15  LCOMM-CLI-REL-INFO.
018633         20  FILLER                           PIC X(02).
018633         20  LCOMM-CLI-TABLE-AREA.
CPA001*018633             25  LCOMM-CLI-TABLE              OCCURS 30.   08300702
CPA001             25  LCOMM-CLI-TABLE              OCCURS 60.          08300702
018633                 30  LCOMM-CLI-ID             PIC X(10).
018633                 30  LCOMM-CLI-REL-TYP-CD     PIC X(01).
018633         20  FILLER                           PIC X(18).
018633
WNB003     05  WS-BASE-CVG-NUM                      PIC 9(04).
WNB003     05  WS-BASE-CVG-NUM-R REDEFINES WS-BASE-CVG-NUM.
WNB003         10  WS-BASE-CVG-NUM-F                PIC X(02).
WNB003         10  WS-BASE-CVG-NUM-B                PIC X(02).
WNB022     05  WS-POL-PIL-IND.
WNB022         10  WS-POL-PIL-IND-Y         PIC X(01)  VALUE 'Y'.
WNB022         10  WS-POL-PIL-IND-N         PIC X(01)  VALUE 'N'.
WNB022     05  WS-POL-MAIL-DT.
WPR018*WNB022         10  WS-MAIL-DT-EAAS-Y        PIC 9(02)  VALUE 18.
WPR018*WNB022         10  WS-MAIL-DT-EAAS-N        PIC 9(02)  VALUE 13.
WPR018*WNB022         10  WS-MAIL-DT-RECV-Y        PIC 9(02)  VALUE 28.
WPR018*WNB022         10  WS-MAIL-DT-RECV-N        PIC 9(02)  VALUE 18.
WPR018*WNB022         10  WS-MAIL-DT-FINAL-Y       PIC 9(02)  VALUE 31.
WPR018*WNB022         10  WS-MAIL-DT-FINAL-N       PIC 9(02)  VALUE 21.
WPR018*WNB022         10  WS-MAIL-DT-FREELK        PIC 9(02)  VALUE 15.
WPR018         10  WS-MAIL-DT-EAAS-Y        PIC 9(02).
WPR018         10  WS-MAIL-DT-EAAS-N        PIC 9(02).
WPR018         10  WS-MAIL-DT-RECV-Y        PIC 9(02).
WPR018         10  WS-MAIL-DT-RECV-N        PIC 9(02).
WPR018         10  WS-MAIL-DT-FINAL-Y       PIC 9(02).
WPR018         10  WS-MAIL-DT-FINAL-N       PIC 9(02).
WPR018         10  WS-MAIL-DT-FREELK        PIC 9(02).
WPR018         10  WS-POL-RPT-EXT-DT        PIC X(10).
CPA001     05  WS-POL-CLI-INSRD-CD                 PIC X(05).           12110704
CPA001         88  WS-POL-CLI-INSRD-REL-SAME       VALUE 'SAME' 'I'.    12110704
CGL003     05  WS-BILL-TO-DATE.                                         03030823
CGL003         10  WS-BILL-TO-DATE-YYYY    PIC X(04).                   03030823
CGL003         10  FILLER                  PIC X(01).                   03030823
CGL003         10  WS-BILL-TO-DATE-MM      PIC X(02).                   03030823
CGL003         10  FILLER                  PIC X(01).                   03030823
CGL003         10  WS-BILL-TO-DATE-DD      PIC X(02).                   03030823
CPR149     05  WS-CVG-CLI-INSRD-CD                 PIC X(01).           06171505
CPR149         88  WS-CVG-CLI-INSRD-SAME           VALUE 'I'.           06171504
CPA001     05  WS-CVG-CLI-INSRD-SW              PIC X(01).              06171504
CPA001         88  WS-CVG-CLI-INSRD-FOUND          VALUE 'Y'.           06171504
CPA001         88  WS-CVG-CLI-INSRD-NOT-FOUND      VALUE 'N'.           06171504
      *****************************************************************
      *  COMMON COPYBOOKS                                             *
      *****************************************************************
016537*COPY CCWWFRMT.
       COPY CCWWINDX.
016537*COPY XCWEBLCH.
016537*COPY XCWWWKDT.
WNB003 COPY XCWWWKDT.
014221 COPY CCWWLOCK.
AGL139*APA036 COPY XCWWWKDT.                                04210507    10110501
      /
      *****************************************************************
      *  I/O COPYBOOKS                                                *
      *****************************************************************
      /
       COPY CCFWPOL.
       COPY CCFRPOL.
      /
       COPY CCFWPOLC.
       COPY CCFRPOLC.
      /
016537*COPY CCFWEDIT.
016537*COPY CCFREDIT.
      /
       COPY CCWL0083.
       COPY CCWL0144.
       COPY CCWL0620.
       COPY CCWL2430.
       COPY CCWL2435.
       COPY CCWL2480.
       COPY CCWL2520.
020463 COPY CCWL2735.
       COPY CCWL5400.
020475 COPY CCWL7306.
       COPY CCWL8240.
AAG008 COPY CCWL9081.
       COPY CCWLPGA.
APA006 COPY CCWL9159.
ANB024 COPY CCWL9B58.                                                   08100506
ANB024 COPY CCWWCVGS.                                                   08100506
AGL139*ANB024 COPY CCFWCVG.                                 08100506    10110501
AGL139*ANB024 COPY CCFRCVG.                                 08100506    10110501
ANB007 COPY NCWL2437.
      /
WNB015 COPY CCWL2440.
WNB015/
ANB007 COPY CCFWCLI.
ANB007 COPY CCFRCLI.
ANB007 COPY CCFWAG.
ANB007 COPY CCFRAG.
ANB007/
ANB007 COPY CCFWCVGC.
ANB007 COPY CCFRCVGC.
ANB007/
ANB007 COPY XCFWDMAD.
ANB007 COPY XCFRDMAD.
ANB006                                                                  03110508
ANB006 COPY CCFWZAGS.                                                   03110508
ANB006 COPY CCFRZAGS.                                                   03110508
APA036 COPY CCFRZPIL.                                                   04210507
APA036 COPY CCFWZPIL.                                                   04210507
WNB003*WNB003 COPY CCFRZPAY.
WNB003*WBN003 COPY CCFWZPAY.
WNB003 COPY NCFRZPAY.
WNB003 COPY NCFWZPAY.
      /
WNB003 COPY CCFRCVG.
WNB003 COPY CCFWCVG.
      /
WNB015 COPY CCFRPOLP.
WNB015 COPY CCFWPOLZ.
WNB015/
WNB015 COPY CCFWCAIN.
WNB015 COPY CCFRCAIN.
WNB015 COPY CCFRCDSI.
WNB015 COPY CCFWCDSJ.
WNB015 COPY SCFWFC.
WNB015 COPY SCFRFC.
      /
WPR018* ADD ACKNOWLEDGEMENT EXTENSION INDICATOR
WPR018 COPY CCFRPD.
WPR018 COPY CCFWPD.
WPR018 COPY CCFRPH.
WPR018 COPY CCFWPH.
AAG024/                                                                 10130506
AAG024 COPY CCFWZCVJ.                                                   10130506
AAG024 COPY CCFRZCVH.                                                   10130506
WNB015/
CBC109 COPY CCFWZPCM.                                                   05021301
CBC109 COPY CCFRZPCM.                                                   05021301
CBC109/                                                                 05021301
ANB008***************************************************************
ANB008* RELEASE BY KELVIN FOR THE TESTING OF INTEGRATING NB SCREEN
ANB008* AND 9075 CALL.
ANB008***************************************************************
ANB008 COPY CCWL9075.
ANB008 COPY NCFRTTAB.
ANB008 COPY NCFWTTAB.
ANB008/
AAG005 COPY CCFRMAST.
ANB025 COPY CCFRZCHL.                                                   04180502
ANB025 COPY CCFWZCHL.                                                   04180502
APA070 COPY CCFWZPOF.                                                   02210609
APA070 COPY CCFRZPOF.                                                   02210609
      *****************************************************************
      *  CALLED MODULE PARAMETER INFORMATION                         *
      *****************************************************************
       COPY XCWLDTLK.
018764*COPY XCWLPTR.
016537*COPY XCWL0280.
       COPY XCWL0290.
       COPY XCWL1640.
AAG005 COPY UCWL9001.
WNB022 COPY XCWL1650.
WNB022 COPY XCWL1670.
WNB022 COPY XCWL1680.
AGL139*APA036 COPY XCWL1670.                                04210507    10110501
AGL139*APA036 COPY XCWL1680.                                04210507    10110501
      /
WNB015 COPY XCWL1660.
WNB015/
CPR147 COPY CCWL9M2C.                                                   01151505
      /
      *****************************************************************
      *  INPUT PARAMETER INFORMATION                                  *
      *****************************************************************
      /
      *****************
       LINKAGE SECTION.
      *****************

       01 WGLOB-GLOBAL-AREA.
       COPY XCWWGLOB.
       COPY CCWM9527.
      /
       PROCEDURE DIVISION USING WGLOB-GLOBAL-AREA
                                MIR-PARM-AREA.
      *--------------
       0000-MAINLINE.
      *--------------

           PERFORM  ABND-1000-HANDLE-ABEND
               THRU ABND-1000-HANDLE-ABEND-X.

           PERFORM  INIT-1000-INITIALIZE
               THRU INIT-1000-INITIALIZE-X.

018633     PERFORM  COMM-1000-INITIALIZE
018633         THRU COMM-1000-INITIALIZE-X.
018633
           PERFORM  2000-PROCESS-TRANSACTIONS
               THRU 2000-PROCESS-TRANSACTIONS-X.

           PERFORM  EXIT-1000-FINALIZE
               THRU EXIT-1000-FINALIZE-X.

       0000-MAINLINE-X.
           GOBACK.

      /
      *--------------------------
       2000-PROCESS-TRANSACTIONS.
      *--------------------------

           PERFORM  0290-1000-BUILD-PARM-INFO
               THRU 0290-1000-BUILD-PARM-INFO-X.

           PERFORM  9300-SETUP-MSIN-REFERENCE
               THRU 9300-SETUP-MSIN-REFERENCE-X.

           IF  WGLOB-MSG-ERROR-SW > ZERO
               SET  WGLOB-RETURN-ERROR TO TRUE
               GO TO 2000-PROCESS-TRANSACTIONS-X
           END-IF.
      *
      *   CHECK ENTER CODE FOR FUNCTION REQUESTED
      *
           MOVE MIR-BUS-FCN-ID
             TO WS-BUS-FCN-ID.
ANB008     MOVE MIR-DV-MQ-CALL-SW
ANB008       TO WS-MQ-CALL-SW.
ANB008     MOVE 'N'
ANB008       TO MIR-DV-MQ-CALL-SW.

           EVALUATE TRUE

               WHEN WS-BUS-FCN-RETRIEVE
                    PERFORM  3000-RETRIEVE
                        THRU 3000-RETRIEVE-X

               WHEN OTHER
      *MSG: INVALID FUNCTION ID - PROCESSING STOPPED
                    MOVE MIR-BUS-FCN-ID           TO WGLOB-MSG-PARM (1)
                    MOVE 'CSOM8000'               TO WGLOB-MSG-PARM (2)
                    MOVE 'XS00000237'             TO WGLOB-MSG-REF-INFO
                    PERFORM  0260-1000-GENERATE-MESSAGE
                        THRU 0260-1000-GENERATE-MESSAGE-X
                    SET MIR-RETRN-INVALD-RQST TO TRUE

           END-EVALUATE.

       2000-PROCESS-TRANSACTIONS-X.
           EXIT.

      /
      *-------------
       3000-RETRIEVE.
      *-------------

018633*    PERFORM  9900-DELETE-TWRK
018633*        THRU 9900-DELETE-TWRK-X.
018633     PERFORM  COMM-3000-DELETE-TWRK
018633         THRU COMM-3000-DELETE-TWRK-X.

018633*    MOVE SPACES         TO WS-WORK-AREA.
      *
      *  THE RECORD MUST EXIST ON AN INQUIRE
      *
           PERFORM  7100-BUILD-KEYS
               THRU 7100-BUILD-KEYS-X.

           IF  WGLOB-MSG-ERROR-SW > ZERO
               PERFORM  8100-BLANK-DATA-FIELDS
                   THRU 8100-BLANK-DATA-FIELDS-X
               GO TO 3000-RETRIEVE-X
           END-IF.

014221*    PERFORM  POL-1000-READ
014221*        THRU POL-1000-READ-X.
APA036*014221     PERFORM  POL-1000-READ-TWRK-TS                        04210507
APA036*014221         THRU POL-1000-READ-TWRK-TS-X                      04210507

APA036*    IF  WPOL-IO-NOT-FOUND                                        04210507
APA036*MSG: RECORD @1 NOT FOUND                                         04210507
APA036*        MOVE WPOL-KEY           TO WGLOB-MSG-PARM (1)            04210507
APA036*        MOVE 'XS00000001'       TO WGLOB-MSG-REF-INFO            04210507
APA036*        PERFORM  0260-1000-GENERATE-MESSAGE                      04210507
APA036*            THRU 0260-1000-GENERATE-MESSAGE-X                    04210507
APA036*        PERFORM  8100-BLANK-DATA-FIELDS                          04210507
APA036*            THRU 8100-BLANK-DATA-FIELDS-X                        04210507
APA036*        GO TO 3000-RETRIEVE-X                                    04210507
APA036*    END-IF.                                                      04210507
APA036     IF  MIR-MAST-DISP-TERM                                       04210507
APA036* READ TERMINATE MASTER ZPIL                                      04210507
APA036         INITIALIZE  RZPIL-REC-INFO                               04210507
APA036         PERFORM  9400-BROWSE-PREV-ZPIL                           04210507
APA036             THRU 9400-BROWSE-PREV-ZPIL-X                         04210507
APA036* RESTORE DATA FROM TERMINATE MASTER                              04210507
APA036         IF WZPIL-IO-OK                                           04210507
APA036             MOVE RZPIL-POL-REC-INFO TO RPOL-REC-INFO             04210507
APA036         END-IF                                                   04210507
APA036                                                                  04210507
APA036         PERFORM  ZPIL-3000-END-BROWSE-PREV                       04210507
APA036             THRU ZPIL-3000-END-BROWSE-PREV-X                     04210507
APA036     ELSE                                                         04210507
APA036         PERFORM  POL-1000-READ-TWRK-TS                           04210507
APA036             THRU POL-1000-READ-TWRK-TS-X                         04210507
APA036         IF  WPOL-IO-NOT-FOUND                                    04210507
APA036*MSG: RECORD @1 NOT FOUND                                         04210507
APA036             MOVE WPOL-KEY           TO WGLOB-MSG-PARM (1)        04210507
APA036             MOVE 'XS00000001'       TO WGLOB-MSG-REF-INFO        04210507
APA036             PERFORM  0260-1000-GENERATE-MESSAGE                  04210507
APA036                 THRU 0260-1000-GENERATE-MESSAGE-X                04210507
APA036             IF  WGLOB-MSG-SEVRTY-FATAL                           04210507
APA036                 SET WS-RETRN-ERROR  TO TRUE                      04210507
APA036             END-IF                                               04210507
APA036         END-IF                                                   04210507
APA036     END-IF.                                                      04210507
APA036     IF WS-RETRN-ERROR                                            04210507
APA036         PERFORM  8100-BLANK-DATA-FIELDS                          04210507
APA036             THRU 8100-BLANK-DATA-FIELDS-X                        04210507
APA036         GO TO 3000-RETRIEVE-X                                    04210507
APA036     END-IF.                                                      04210507

APR088     IF  RPOL-POL-STAT-PREM-PAYING                                07290508
APR088     AND NOT (RPOL-PREM-HLDY-STAT-NORM-PREM)                      07290508
APR088*                                                                 07290508
APR088*    MSG: POLICY IS IN PREMIUM HOLIDAY                            07290508
APR088*                                                                 07290508
APR088         MOVE 'CS80009002' TO WGLOB-MSG-REF-INFO                  07290508
APR088         PERFORM  0260-1000-GENERATE-MESSAGE                      07290508
APR088             THRU 0260-1000-GENERATE-MESSAGE-X                    07290508
APR088         IF  WGLOB-MSG-SEVRTY-FATAL                               07290508
APR088             SET WGLOB-RETURN-ERROR  TO TRUE                      07290508
APR088             GO TO 3000-RETRIEVE-X                                07290508
APR088         END-IF                                                   07290508
APR088     END-IF.                                                      07290508

           PERFORM  PGA-1000-BUILD-PARMS
               THRU PGA-1000-BUILD-PARMS-X.

APA020     SET L5400-POL-SSPND-CHK-REQD TO TRUE.
           PERFORM 5400-1000-BUILD-PARM-INFO
              THRU 5400-1000-BUILD-PARM-INFO-X.

           PERFORM 5400-1000-POL-CHK
              THRU 5400-1000-POL-CHK-X.

           IF L5400-CNFD-ACCS-RESTRICTED
           OR L5400-BRCH-ACCS-RESTRICTED
APA020     OR L5400-SSPND-ACCS-RESTRICTED
               PERFORM  8100-BLANK-DATA-FIELDS
                   THRU 8100-BLANK-DATA-FIELDS-X
               GO TO 3000-RETRIEVE-X
           END-IF.
ANB006                                                                  03110508
ANB006     PERFORM  7200-GET-LFCM-CO-ID                                 03110508
ANB006         THRU 7200-GET-LFCM-CO-ID-X.                              03110508
ANB008
ANB008     IF  RPOL-POL-STAT-COMPLETE
ANB008     AND WS-MQ-CALL-YES
ANB008         PERFORM  9075-0000-INIT-PARM-INFO
ANB008            THRU 9075-0000-INIT-PARM-INFO-X
ANB008
ANB008* PREPARE PARAMETERS
ANB008
ANB008*GET LFCM CO-ID ('TH' --> '051')
ANB006*ANB008         MOVE 'COMP'                 TO WTTAB-ETBL-TYP-ID  03110508
ANB006*ANB008         MOVE WGLOB-COMPANY-CODE     TO WTTAB-ETBL-VALU-ID 03110508
ANB006*ANB008         MOVE 'LFCM'                 TO WTTAB-TTBL-SYS-ID  03110508
ANB006*ANB008         PERFORM TTAB-1000-READ                            03110508
ANB006*ANB008            THRU TTAB-1000-READ-X                          03110508
ANB006*ANB008         IF WTTAB-IO-OK                                    03110508
ANB006*ANB008             MOVE RTTAB-TTBL-VALU-TXT      TO L9075-CO-ID  03110508
ANB006*ANB008         ELSE                                              03110508
ANB006*ANB008             MOVE SPACES                   TO L9075-CO-ID  03110508
ANB006*ANB008         END-IF                                            03110508
ANB006         MOVE WS-LFCM-CO-ID       TO L9075-CO-ID                  03110508
ANB008
ANB008         MOVE MIR-POL-ID-BASE     TO L9075-POL-ID-BASE
ANB008         MOVE MIR-POL-ID-SFX      TO L9075-POL-ID-SFX
ANB008
ANB008*IF POLICY CREATED ON CURRENT DATE, GET STANDALONE PAYMENT
ANB008         IF  RPOL-POL-ENTR-DT = WGLOB-PROCESS-DATE
ANB008*FOR UL OR ILP POLICY, ALWAYS CHECK CASHIER SCREEN FILE           07290405
ANB006*ANB008         AND NOT (RPOL-APP-FORM-TYP-JV-UL     OR           11240420
ANB006*ANB008                  RPOL-APP-FORM-TYP-ADULT-UL  OR           11240420
ANB006*ANB008                  RPOL-APP-FORM-TYP-JV-ILP    OR           11240420
ANB006*ANB008                  RPOL-APP-FORM-TYP-ADULT-ILP  )           11240420
ANB006             AND NOT (RPOL-PROD-TYP-UL OR RPOL-PROD-TYP-ILP)      11240420
ANB008*ANB008      SET L9075-RQST-LFCM-STANDALONE-PMT    TO TRUE
ANB008             PERFORM  9075-2000-GET-LFCM-SD-PAY
ANB008                THRU  9075-2000-GET-LFCM-SD-PAY-X
ANB008                                                                  10200405
ANB008             MOVE     L9075-PAY-AMT      TO WS-PAY-AMT            10200405
ANB008                                                                  10200405
ANB008             PERFORM  9075-1000-GET-LFCM-PAY-AMT                  10200405
ANB008                THRU  9075-1000-GET-LFCM-PAY-AMT-X                10200405
ANB008                                                                  10200405
ANB008             ADD      WS-PAY-AMT         TO L9075-PAY-AMT         10200405
ANB008                                                                  10200405
ANB008         ELSE
ANB008*ANB008      MOVE 'NB'                   TO L9075-RQST-CD
ANB008*ANB008      SET L9075-RQST-LFCM-NB-DPOS           TO TRUE
ANB008         PERFORM  9075-1000-GET-LFCM-PAY-AMT
ANB008            THRU 9075-1000-GET-LFCM-PAY-AMT-X
ANB008         END-IF
ANB008
ANB008* PERFORM CALL
ANB008*ANB008         PERFORM  9075-1000-GET-LFCM-PAY-AMT
ANB008*ANB008            THRU 9075-1000-GET-LFCM-PAY-AMT-X
ANB008
ANB008     END-IF.
ANB008
      *
      *  MOVE RECORD INFORMATION TO THE MIR
      *
           PERFORM  8200-MOVE-RECORD-TO-MIR
               THRU 8200-MOVE-RECORD-TO-MIR-X.

018633*    PERFORM  9800-WRITE-TWRK
018633*        THRU 9800-WRITE-TWRK-X.
018633     PERFORM  COMM-2000-WRITE-TWRK
018633         THRU COMM-2000-WRITE-TWRK-X.

       3000-RETRIEVE-X.
           EXIT.

      /
      *----------------
       7100-BUILD-KEYS.
      *----------------
      *
      *  BUILD THE RECORD KEY FROM THE MIR FIELDS
      *
           MOVE MIR-POL-ID-BASE     TO WPOL-POL-ID-BASE.
           MOVE MIR-POL-ID-SFX      TO WPOL-POL-ID-SFX.

       7100-BUILD-KEYS-X.
           EXIT.
      /
ANB006*--------------------                                             03110508
ANB006 7200-GET-LFCM-CO-ID.                                             03110508
ANB006*--------------------                                             03110508
ANB006                                                                  03110508
ANB006     MOVE 'COMP'                       TO WTTAB-ETBL-TYP-ID.      03110508
ANB006     MOVE WGLOB-COMPANY-CODE           TO WTTAB-ETBL-VALU-ID.     03110508
ANB006     MOVE 'LFCM'                       TO WTTAB-TTBL-SYS-ID.      03110508
ANB006     PERFORM  TTAB-1000-READ                                      03110508
ANB006         THRU TTAB-1000-READ-X.                                   03110508
ANB006     IF  WTTAB-IO-OK                                              03110508
ANB006         MOVE RTTAB-TTBL-VALU-TXT      TO WS-LFCM-CO-ID           03110508
ANB006     ELSE                                                         03110508
ANB006         MOVE SPACES                   TO WS-LFCM-CO-ID           03110508
ANB006     END-IF.                                                      03110508
ANB006                                                                  03110508
ANB006 7200-GET-LFCM-CO-ID-X.                                           03110508
ANB006     EXIT.                                                        03110508
ANB006                                                                  03110508
      *-----------------------
       8100-BLANK-DATA-FIELDS.
      *-----------------------

           MOVE SPACES              TO MIR-OUTPUT-AREA.

       8100-BLANK-DATA-FIELDS-X.
           EXIT.
      /
      *--------------------------
       8200-MOVE-RECORD-TO-MIR.
      *--------------------------

           PERFORM  8100-BLANK-DATA-FIELDS
               THRU 8100-BLANK-DATA-FIELDS-X.

           PERFORM  8400-MOVE-POL-REC-TO-MIR
               THRU 8400-MOVE-POL-REC-TO-MIR-X.

           PERFORM  8500-MOVE-POLC-REC-TO-MIR
               THRU 8500-MOVE-POLC-REC-TO-MIR-X.

ANB028*ANB028     SET WS-INSRD-CLI-STATUS-YES   TO TRUE.        1103050111090501
ANB028*ANB028                                                   1103050111090501
CPA001*ANB007     IF  WS-OWNER-INSRD-SAME-NO                            08300702
CPA001*ANB007         PERFORM  8800-MOVE-CVGC-REC-TO-MIR                08300702
CPA001*ANB007            THRU  8800-MOVE-CVGC-REC-TO-MIR-X              08300702
CPA001*ANB007     END-IF.                                               08300702

APA006     PERFORM  8600-MOVE-RESTRICT-TO-MIR
APA006         THRU 8600-MOVE-RESTRICT-TO-MIR-X.
ANB025                                                                  04180502
ANB025     PERFORM  8210-MOVE-CORP-CHNL-TO-MIR                          04180502
ANB025         THRU 8210-MOVE-CORP-CHNL-TO-MIR-X.                       04180502
ANB025                                                                  04180502
ANB024     PERFORM  CVGS-1000-LOAD-CVGS-ARRAY                           08100506
ANB024         THRU CVGS-1000-LOAD-CVGS-ARRAY-X.                        08100506
ANB024     PERFORM  9B58-1000-BUILD-PARM-INFO                           08100506
ANB024         THRU 9B58-1000-BUILD-PARM-INFO-X.                        08100506
ANB024     PERFORM  9B58-1000-CALC-PREM                                 08100506
ANB024         THRU 9B58-1000-CALC-PREM-X.                              08100506
ANB024     MOVE L9B58-MIN-PREM-AMT        TO L0290-INPUT-V02.           08100506
ANB024     MOVE 2                         TO L0290-PRECISION.           08100506
ANB024     MOVE LENGTH OF MIR-POL-REQ-PREM                              08100506
ANB024                                    TO L0290-MAX-OUT-LEN.         08100506
ANB024     PERFORM 0290-2000-FORMAT-FOR-MIR                             08100506
ANB024        THRU 0290-2000-FORMAT-FOR-MIR-X.                          08100506
ANB024     MOVE L0290-OUTPUT-DATA         TO MIR-POL-REQ-PREM.          08100506

WNB003     PERFORM  8800-MOVE-CVG-CAMP-CD-TO-MIR
WNB003         THRU 8800-MOVE-CVG-CAMP-CD-TO-MIR-X.

CPR143     PERFORM  8850-MOVE-CVG-REC-TO-MIR                            05281402
CPR143         THRU 8850-MOVE-CVG-REC-TO-MIR-X.                         05281402
CPR143                                                                  05281402
WNB015     PERFORM  8900-MOVE-ASSET-REBAL-TO-MIR
WNB015         THRU 8900-MOVE-ASSET-REBAL-TO-MIR-X.

WNB015     PERFORM  9000-MOVE-CDSI-REC-TO-MIR
WNB015         THRU 9000-MOVE-CDSI-REC-TO-MIR-X.

      * THE FOLLOWING WAS ALSO RELEASE BY KELVIN.
ANB008*
ANB008     IF (NOT RPOL-POL-STAT-COMPLETE)
ANB008     OR (NOT WS-MQ-CALL-YES)
ANB008         MOVE ZERO                  TO L9075-PAY-AMT
ANB008     END-IF.
ANB008
AGL079*ANB008     COMPUTE L0290-INPUT-NUMBER = L9075-PAY-AMT * 100.
AGL079     MOVE L9075-PAY-AMT             TO L0290-INPUT-V02.
ANB008     MOVE 2                         TO L0290-PRECISION.
ANB008     MOVE LENGTH OF MIR-DV-NON-POST-DEP-AMT
ANB008                                    TO L0290-MAX-OUT-LEN.
AGL079*ANB008     PERFORM  0290-1000-NUMERIC-FORMAT
AGL079*ANB008         THRU 0290-1000-NUMERIC-FORMAT-X.
AGL079     PERFORM 0290-2000-FORMAT-FOR-MIR
AGL079        THRU 0290-2000-FORMAT-FOR-MIR-X.
ANB008
ANB008     MOVE L0290-OUTPUT-DATA         TO MIR-DV-NON-POST-DEP-AMT.
ANB008
ANB028*ANB028     IF  WS-OWNER-CLI-STATUS-YES                   1103050111090501
ANB028*ANB028     AND WS-INSRD-CLI-STATUS-YES                   1103050111090501
ANB028*ANB028     AND WS-PAYR-CLI-STATUS-YES                    1103050111090501
ANB028*ANB028         SET MIR-CLI-VERIFIED       TO TRUE        1103050111090501
ANB028*ANB028     ELSE                                          1103050111090501
ANB028*ANB028         SET MIR-CLI-NOT-VERIFIED   TO TRUE        1103050111090501
ANB028*ANB028     END-IF.                                       1103050111090501
ANB028*ANB028                                                   1103050111090501
CBC109                                                                  05021301
CBC109     MOVE RPOL-POL-ID              TO WZPCM-POL-ID.               05021301
CBC109     MOVE LOW-VALUES               TO WZPCM-CAMP-CD.              05021301
CBC109     MOVE WZPCM-KEY                TO WZPCM-ENDBR-KEY.            05021301
CBC109     MOVE HIGH-VALUES              TO WZPCM-ENDBR-CAMP-CD.        05021301
CBC109                                                                  05021301
CBC109     PERFORM  ZPCM-1000-BROWSE                                    05021301
CBC109         THRU ZPCM-1000-BROWSE-X.                                 05021301
CBC109                                                                  05021301
CBC109      PERFORM                                                     05021301
CBC109          UNTIL NOT WZPCM-IO-OK                                   05021301
CBC109                                                                  05021301
CBC109          IF  WZPCM-IO-OK                                         05021301
CBC109              PERFORM  ZPCM-2000-READ-NEXT                        05021301
CBC109                  THRU ZPCM-2000-READ-NEXT-X                      05021301
CBC109                                                                  05021301
CBC109              IF  RZPCM-CAMP-TYP-NMP                              05021301
CBC109              AND WZPCM-IO-OK                                     05021301
CBC109                  MOVE RZPCM-CAMP-CD                              05021301
CBC109                                   TO MIR-POL-CAMP-ID             05021301
CBC109              END-IF                                              05021301
CBC109          END-IF                                                  05021301
CBC109      END-PERFORM.                                                05021301
CBC109                                                                  05021301
CBC109      PERFORM  ZPCM-3000-END-BROWSE                               05021301
CBC109          THRU ZPCM-3000-END-BROWSE-X.                            05021301
CBC109                                                                  05021301
CPR133* ADD NEW FIELD FOR POLICY MODAL PREMIUM (WAIVED)                 02241402
CPR133     MOVE ZEROS                     TO L0290-INPUT-V02.           02241402
CPR133     PERFORM                                                      02241402
CPR133         VARYING I FROM 1 BY 1                                    02241402
CPR133         UNTIL I > RPOL-POL-CVG-REC-CTR-N                         02241402
CPR133                                                                  02241402
CPR133         IF  WCVGS-CVG-STAT-PREM-PAY-WAV (I)                      05041412
CPR133             ADD WCVGS-CVG-MPREM-AMT (I)                          02241402
CPR133                                    TO L0290-INPUT-V02            02241402
CPR133         END-IF                                                   02241402
CPR133     END-PERFORM.                                                 02241402
CPR133     MOVE 2                         TO L0290-PRECISION.           02241402
CPR133     MOVE LENGTH OF MIR-POL-MPREM-WAV-AMT                         02241402
CPR133                                    TO L0290-MAX-OUT-LEN.         02241402
CPR133     PERFORM 0290-2000-FORMAT-FOR-MIR                             02241402
CPR133        THRU 0290-2000-FORMAT-FOR-MIR-X.                          02241402
CPR133     MOVE L0290-OUTPUT-DATA         TO MIR-POL-MPREM-WAV-AMT.     02241402
CPR133                                                                  02241402
CPR147* CHANGE TO SHOW A ESTIMATE IER COUPON START DATE                 01151505
CPR147     IF  RPOL-IER-CPN-STAT-NONE                                   01151505
CPR147         MOVE RPOL-POL-IER-CPN-STRT-DT                            01151505
CPR147                                   TO L1640-INTERNAL-DATE         01151505
CPR147     ELSE                                                         01151505
CPR147         PERFORM  9M2C-1000-BUILD-PARM-INFO                       01151505
CPR147             THRU 9M2C-1000-BUILD-PARM-INFO-X                     01151505
CPR147         PERFORM  9M2C-4000-CALC-IER-STRT-DT                      01151505
CPR147             THRU 9M2C-4000-CALC-IER-STRT-DT-X                    01151505
CPR147         IF  L9M2C-RETRN-OK                                       01151505
CPR147             MOVE L9M2C-ESTMT-IER-CPN-STRT-DT                     01151505
CPR147                                   TO L1640-INTERNAL-DATE         01151505
CPR147         ELSE                                                     01151505
CPR147             MOVE WWKDT-ZERO-DT    TO L1640-INTERNAL-DATE         01151505
CPR147         END-IF                                                   01151505
CPR147     END-IF.                                                      01151505
CPR147     PERFORM  1640-8000-INTERNAL-TO-MIR                           01151505
CPR147         THRU 1640-8000-INTERNAL-TO-MIR-X.                        01151505
CPR147     IF  L1640-VALID                                              01151505
CPR147         MOVE L1640-EXTERNAL-DATE  TO MIR-POL-IER-CPN-STRT-DT     01151505
CPR147     ELSE                                                         01151505
CPR147         MOVE SPACES               TO MIR-POL-IER-CPN-STRT-DT     01151505
CPR147     END-IF.                                                      01151505
CPR147                                                                  01151505
       8200-MOVE-RECORD-TO-MIR-X.
           EXIT.
      /
ANB025*-------------------------                                        04180502
ANB025 8210-MOVE-CORP-CHNL-TO-MIR.                                      04180502
ANB025*-------------------------                                        04180502
ANB025     MOVE WGLOB-COMPANY-CODE          TO WZCHL-CO-ID.             04180502
ANB025     MOVE RPOL-POL-ID                 TO WZCHL-POL-ID.            04180502
ANB025     MOVE RPOL-POL-BASE-CVG-NUM       TO WS-TMP-CVG-NUM.          04180502
ANB025     MOVE WS-TMP-CVG-NUM              TO WZCHL-CVG-NUM-N.         04180502
ANB025                                                                  04180502
ANB025     PERFORM  ZCHL-1000-READ                                      04180502
ANB025         THRU ZCHL-1000-READ-X.                                   04180502
ANB025     IF  WZCHL-IO-OK                                              04180502
APA061*ANB025  MOVE RZCHL-MKT-CHNL-CD     TO MIR-DV-WSM-CHNL-CD 0418050211150505
ANB025         MOVE RZCHL-MKT-CAMPGN-CD     TO MIR-DV-WSM-CORP-ID       04180502
ANB025                                                                  04180502
ANB025     ELSE                                                         04180502
ANB025         MOVE SPACES                  TO MIR-DV-WSM-CORP-ID       04180502
APA061*ANB025  MOVE SPACES                TO MIR-DV-WSM-CHNL-CD 0418050211150505
ANB025     END-IF.                                                      04180502
ANB025                                                                  04180502
ANB025 8210-MOVE-CORP-CHNL-TO-MIR-X.                                    04180502
ANB025     EXIT.                                                        04180502
ANB025/                                                                 04180502
      *-------------------------
       8400-MOVE-POL-REC-TO-MIR.
      *-------------------------

WNB003*  ZPAY Retrieval for new policy

WNB003     IF  RPOL-POL-STAT-PENDING
WNB003     OR  RPOL-POL-STAT-COMPLETE
WNB003         PERFORM  8405-RETRIEVE-ZPAY
WNB003             THRU 8405-RETRIEVE-ZPAY-X
WNB003     END-IF.

CPR301     MOVE RPOL-POL-ANTY-OPT-CD       TO MIR-POL-ANTY-OPT-CD.      05141207
CPR301     MOVE RPOL-POL-ANTY-XCES-CD      TO MIR-POL-ANTY-XCES-CD.     05141207
CPA301     MOVE RPOL-POL-PLEG-TYP-CD       TO MIR-POL-PLEG-TYP-CD.      05311204
CPR311     MOVE RPOL-POL-DCA-IND           TO MIR-POL-DCA-IND.          09101201
           MOVE RPOL-ACRU-CALC-TIME-CD     TO MIR-ACRU-CALC-TIME-CD.
           MOVE RPOL-ANPAYO-1-MTHD-CD      TO MIR-ANPAYO-1-MTHD-CD.
           MOVE RPOL-ANPAYO-2-MTHD-CD      TO MIR-ANPAYO-2-MTHD-CD.
           MOVE RPOL-AUTO-PREM-PMT-IND     TO MIR-AUTO-PREM-PMT-IND.

           MOVE RPOL-BILL-LEAD-TIME-DUR    TO WS-PIC-S99.
           MOVE WS-PIC-S99                 TO WS-PIC-NUM.
           IF WS-PIC-S99 < ZERO
               MOVE '-'                    TO WS-PIC-SIGN
           ELSE
               MOVE '+'                    TO WS-PIC-SIGN
           END-IF.
           MOVE WS-PIC-CHANGE              TO MIR-BILL-LEAD-TIME-DUR.

           MOVE RPOL-BILL-RMND-REASN-CD    TO MIR-BILL-RMND-REASN-CD.
           MOVE RPOL-CLI-CRNT-LOC-CD       TO MIR-CLI-CRNT-LOC-CD.
           MOVE RPOL-CLM-PAYE-CVG-NUM      TO MIR-CLM-PAYE-CVG-NUM.
           MOVE RPOL-CLM-PAYE-POL-ID       TO MIR-CLM-PAYE-POL-ID.
           MOVE RPOL-CLM-PAYE-REL-CD       TO MIR-CLM-PAYE-REL-CD.
           MOVE RPOL-CLM-PAYO-MTHD-CD      TO MIR-CLM-PAYO-MTHD-CD.
           MOVE RPOL-CONN-OPTL-POL-ID      TO MIR-CONN-OPTL-POL-ID.


           MOVE RPOL-ENHC-UWG-APROV-IND    TO MIR-ENHC-UWG-APROV-IND.
           MOVE RPOL-ENHC-UWG-REQIR-IND    TO MIR-ENHC-UWG-REQIR-IND.
           MOVE RPOL-GAIN-RPT-TIME-CD      TO MIR-GAIN-RPT-TIME-CD.
           MOVE RPOL-LINK-POL-ISS-IND      TO MIR-LINK-POL-ISS-IND.
           MOVE RPOL-LOAN-INT-DEDBL-IND    TO MIR-LOAN-INT-DEDBL-IND.
           MOVE RPOL-MODE-FCT-RESTR-IND    TO MIR-MODE-FCT-RESTR-IND.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-MPREM-DSCNT-AMT * 100.
020874     MOVE RPOL-MPREM-DSCNT-AMT       TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-MPREM-DSCNT-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    SET  L0290-LEAD-ZEROS-SUPPRESS  TO TRUE.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-MPREM-DSCNT-AMT.

           MOVE RPOL-NXT-ACTV-TYP-CD       TO MIR-NXT-ACTV-TYP-CD.
016395*    MOVE RPOL-PAC-REDRW-OPT-CD      TO MIR-PAC-REDRW-OPT-CD.
016395*    MOVE RPOL-PMT-REDRW-OPT-CD      TO MIR-PAC-REDRW-OPT-CD.
016395     MOVE RPOL-PMT-REDRW-OPT-CD      TO MIR-PMT-REDRW-OPT-CD.
           MOVE RPOL-PLAN-ID               TO MIR-PLAN-ID.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-PLAN-PERI-PREM-AMT * 100.
020874     MOVE RPOL-PLAN-PERI-PREM-AMT    TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-PLAN-PERI-PREM-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    SET L0290-LEAD-ZEROS-SUPPRESS   TO TRUE.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-PLAN-PERI-PREM-AMT.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-ANPAYO-1-AMT * 100.
020874     MOVE RPOL-POL-ANPAYO-1-AMT      TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-POL-ANPAYO-1-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-POL-ANPAYO-1-AMT.


020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-MISC-SUSP-AMT * 100.
020874     MOVE RPOL-POL-MISC-SUSP-AMT     TO L0290-INPUT-V02.
016440     MOVE 2                          TO L0290-PRECISION.
016440     MOVE LENGTH OF MIR-POL-MISC-SUSP-AMT
016440                                     TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
016440
016440     MOVE L0290-OUTPUT-DATA          TO MIR-POL-MISC-SUSP-AMT.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-ANPAYO-2-AMT * 100.
020874     MOVE RPOL-POL-ANPAYO-2-AMT      TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-POL-ANPAYO-2-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-POL-ANPAYO-2-AMT.

           MOVE RPOL-ANPAYO-1-DEST-CD      TO MIR-ANPAYO-1-DEST-CD.
           MOVE RPOL-ANPAYO-2-DEST-CD      TO MIR-ANPAYO-2-DEST-CD.

           MOVE RPOL-POL-ANPAYO-EFF-DT     TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-ANPAYO-EFF-DT.

WPR018     MOVE RPOL-ANTY-GUAR-YR-DUR      TO MIR-ANTY-GUAR-YR-DUR.
WPR019     MOVE RPOL-POL-ANPAYO-OPT-CD     TO MIR-POL-ANPAYO-OPT-CD.

           MOVE RPOL-POL-ANPAYO-PMT-DT     TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-ANPAYO-PMT-DT.

APR053     MOVE RPOL-POL-FREE-LK-XFER-DT   TO L1640-INTERNAL-DATE.
APR053     PERFORM  1640-8000-INTERNAL-TO-MIR
APR053         THRU 1640-8000-INTERNAL-TO-MIR-X.
APR053     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-FREE-LK-XFER-DT.

           MOVE RPOL-POL-ANPAYO-MODE-CD-N  TO MIR-POL-ANPAYO-MODE-CD.
           MOVE RPOL-POL-APL-IND           TO MIR-POL-APL-IND.

           MOVE RPOL-POL-APP-CMPLT-DT      TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-APP-CMPLT-DT.

           MOVE RPOL-POL-APP-CTR           TO MIR-POL-APP-CTR.
           MOVE RPOL-POL-APP-FORM-ID       TO MIR-POL-APP-FORM-ID.
           MOVE RPOL-APP-FORM-TYP-ID       TO MIR-APP-FORM-TYP-ID.

ANB006     MOVE RPOL-PROD-TYP-CD           TO MIR-PROD-TYP-CD.          11240420
ANB006     MOVE RPOL-DSTRB-CHNL-CD         TO MIR-DSTRB-CHNL-CD.        11240420
ANB006     MOVE RPOL-PKG-PLAN-NM-CD        TO MIR-PKG-PLAN-NM-CD.       11240420
ANB006     MOVE RPOL-PROD-TYP-CD           TO MIR-DV-PROD-TYP-CD.       11240420
ANB006     MOVE RPOL-DSTRB-CHNL-CD         TO MIR-DV-DSTRB-CHNL-CD.     11240420
ANB006     MOVE RPOL-POL-LEAD-CD           TO MIR-POL-LEAD-CD.          09090533

           MOVE RPOL-POL-APP-RECV-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-APP-RECV-DT.

           MOVE RPOL-POL-APP-SIGN-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-APP-SIGN-DT.

           MOVE RPOL-POL-APP-SIGN-IND      TO MIR-POL-APP-SIGN-IND.

           MOVE RPOL-POL-BILL-TYP-CD       TO MIR-POL-BILL-TYP-CD.

           MOVE RPOL-POL-BILL-MODE-CD      TO MIR-POL-BILL-MODE-CD.


CGL003     MOVE RPOL-POL-BILL-TO-DT-NUM    TO WS-BILL-TO-DATE.          03030823
CGL003     MOVE WS-BILL-TO-DATE-YYYY       TO MIR-POL-BILL-TO-DT-YYYY.  03030823
CGL003     MOVE WS-BILL-TO-DATE-MM         TO MIR-POL-BILL-TO-DT-MM.    03030823
CGL003     MOVE WS-BILL-TO-DATE-DD         TO MIR-POL-BILL-TO-DT-DD.    03030823
           MOVE RPOL-POL-BILL-TO-DT-NUM    TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-BILL-TO-DT-NUM.

           MOVE RPOL-POL-CEAS-DT           TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-CEAS-DT.

           MOVE RPOL-POL-CEAS-REASN-CD     TO MIR-POL-CEAS-REASN-CD.
           MOVE RPOL-POL-CNFD-IND          TO MIR-POL-CNFD-IND.
           MOVE RPOL-POL-COMNT-TXT         TO MIR-POL-COMNT-TXT.
           MOVE RPOL-POL-CRCY-CD           TO MIR-POL-CRCY-CD.
CPR203     MOVE RPOL-NXT-LINT-CAP-DT       TO L1640-INTERNAL-DATE.      09240801
CPR203     PERFORM  1640-8000-INTERNAL-TO-MIR                           09240801
CPR203         THRU 1640-8000-INTERNAL-TO-MIR-X.                        09240801
CPR203     MOVE L1640-EXTERNAL-DATE        TO MIR-NXT-LINT-CAP-DT.      09240801

016641*    MOVE RPOL-POL-CRNT-MODE-FCT     TO WS-N-99V97.
016641*    MOVE WS-N-99V97                 TO WS-PIC-99V97.
016641*    MOVE WS-PIC-99V97               TO MIR-POL-CRNT-MODE-FCT.
016641
020874*    COMPUTE L0290-INPUT-NUMBER =
020874*                            RPOL-POL-CRNT-MODE-FCT * 10000000.
020874     MOVE RPOL-POL-CRNT-MODE-FCT     TO L0290-INPUT-V07.
016641     MOVE 7                          TO L0290-PRECISION.
016641     MOVE LENGTH OF MIR-POL-CRNT-MODE-FCT
016641                                     TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
016641     MOVE L0290-OUTPUT-DATA          TO MIR-POL-CRNT-MODE-FCT.

           MOVE RPOL-POL-CSTAT-CD          TO MIR-POL-CSTAT-CD.
ANB007
ANB007     IF  RPOL-POL-STAT-REJECTED
ANB007
ANB007         PERFORM  8490-SET-POL-REJ-REASN-TXT
ANB007            THRU  8490-SET-POL-REJ-REASN-TXT-X
ANB007
ANB007     END-IF.
ANB007
           MOVE RPOL-POL-CTRY-CD           TO MIR-POL-CTRY-CD.
           MOVE RPOL-POL-CVG-REC-CTR       TO MIR-POL-CVG-REC-CTR.
           MOVE RPOL-POL-DB-OPT-CD         TO MIR-POL-DB-OPT-CD.
           MOVE RPOL-POL-DIV-OPT-CD        TO MIR-POL-DIV-OPT-CD.
APR061     MOVE RPOL-POL-DIV-XCES-CD       TO MIR-POL-DIV-XCES-CD.
APR086     MOVE RPOL-POL-CPN-OPT-CD        TO MIR-POL-CPN-OPT-CD.       09527402
APR086     MOVE RPOL-POL-CPN-XCES-CD       TO MIR-POL-CPN-XCES-CD.      09020402
           MOVE RPOL-POL-ENHC-CHNG-DT      TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-ENHC-CHNG-DT.

           MOVE RPOL-POL-ENHC-NELCT-QTY-N  TO MIR-POL-ENHC-NELCT-QTY.

           MOVE RPOL-POL-FINAL-DISP-DT     TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-FINAL-DISP-DT.

           MOVE RPOL-POL-FREE-LK-END-DT    TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-FREE-LK-END-DT.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-GRS-APREM-AMT * 100.
020874     MOVE RPOL-POL-GRS-APREM-AMT     TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-POL-GRS-APREM-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    SET  L0290-LEAD-ZEROS-SUPPRESS  TO TRUE.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-POL-GRS-APREM-AMT.

APA070                                                                  07140609
APA070     IF  RPOL-POL-STAT-PREM-PAYING                                07140609
APA070                                                                  02210609
APA070*APA070 MOVE ZEROS          TO WS-POF-APREM-AMT.          0221060907140609
APA070*APA070 MOVE ZEROS          TO WS-POF-MPREM-AMT.          0221060907140609
APA070*APA070 MOVE RPOL-CO-ID     TO WZPOF-CO-ID.               0221060907140609
APA070*APA070 MOVE RPOL-POL-ID    TO WZPOF-POL-ID.              0221060907140609
APA070*APA070 MOVE LOW-VALUES     TO WZPOF-MKT-CAMPGN-CD.       0221060907140609
APA070*APA070 MOVE LOW-VALUES     TO WZPOF-OFFR-SEG-CD.         0221060907140609
APA070         MOVE ZEROS               TO WS-POF-APREM-AMT             07140609
APA070         MOVE ZEROS               TO WS-POF-MPREM-AMT             07140609
APA070         MOVE RPOL-CO-ID          TO WZPOF-CO-ID                  07140609
APA070         MOVE RPOL-POL-ID         TO WZPOF-POL-ID                 07140609
APA070         MOVE LOW-VALUES          TO WZPOF-MKT-CAMPGN-CD          07140609
APA070         MOVE LOW-VALUES          TO WZPOF-OFFR-SEG-CD            07140609
APA070                                                                  02210609
APA070*APA070 MOVE WZPOF-KEY      TO WZPOF-ENDBR-KEY.           0221060907140609
APA070*APA070 MOVE HIGH-VALUES    TO WZPOF-ENDBR-MKT-CAMPGN-CD. 0221060907140609
APA070*APA070 MOVE HIGH-VALUES    TO WZPOF-ENDBR-OFFR-SEG-CD.   0221060907140609
APA070         MOVE WZPOF-KEY           TO WZPOF-ENDBR-KEY              07140609
APA070         MOVE HIGH-VALUES         TO WZPOF-ENDBR-MKT-CAMPGN-CD    07140609
APA070         MOVE HIGH-VALUES         TO WZPOF-ENDBR-OFFR-SEG-CD      07140609
APA070                                                                  02210609
APA070     PERFORM  ZPOF-1000-BROWSE                                    02210609
APA070             THRU ZPOF-1000-BROWSE-X                              07140609
APA070*APA070  THRU ZPOF-1000-BROWSE-X.                         0221060907140609
APA070                                                                  02210609
APA070     IF  WZPOF-IO-OK                                              02210609
APA070         PERFORM  ZPOF-2000-READ-NEXT                             02210609
APA070             THRU ZPOF-2000-READ-NEXT-X                           02210609
APA070         MOVE SPACES              TO WS-LATEST-OFFR-DT            02210609
APA070         PERFORM  5000-CHECK-OFFR-PREM                            02210609
APA070             THRU 5000-CHECK-OFFR-PREM-X                          02210609
APA070             UNTIL WZPOF-IO-EOF                                   02210609
APA070         PERFORM  ZPOF-3000-END-BROWSE                            02210609
APA070             THRU ZPOF-3000-END-BROWSE-X                          02210609
APA070         END-IF                                                   07140609
APA070*APA070  END-IF.                                          0221060907140609
APA070                                                                  02210609
APA070     IF WS-POF-APREM-AMT NOT = ZEROS                              02210609
APA070        ADD  RPOL-POL-GRS-APREM-AMT       TO WS-POF-APREM-AMT     02210609
APA070        ADD  RPOL-POL-MPREM-AMT           TO WS-POF-MPREM-AMT     02210609
APA070         END-IF                                                   07140609
APA070*APA070  END-IF.                                          0221060907140609
APA070                                                                  02210609
APA070         MOVE WS-POF-APREM-AMT            TO L0290-INPUT-V02      07140609
APA070         MOVE 2                           TO L0290-PRECISION      07140609
APA070         MOVE LENGTH OF MIR-POF-MPREM-AMT TO L0290-MAX-OUT-LEN    07140609
APA070         PERFORM 0290-2000-FORMAT-FOR-MIR                         07140609
APA070            THRU 0290-2000-FORMAT-FOR-MIR-X                       07140609
APA070         MOVE L0290-OUTPUT-DATA           TO MIR-POF-APREM-AMT    07140609
APA070                                                                  07140609
APA070         MOVE WS-POF-MPREM-AMT            TO L0290-INPUT-V02      07140609
APA070         MOVE 2                           TO L0290-PRECISION      07140609
APA070         MOVE LENGTH OF MIR-POF-APREM-AMT TO L0290-MAX-OUT-LEN    07140609
APA070         PERFORM 0290-2000-FORMAT-FOR-MIR                         07140609
APA070            THRU 0290-2000-FORMAT-FOR-MIR-X                       07140609
APA070         MOVE L0290-OUTPUT-DATA           TO MIR-POF-MPREM-AMT    07140609
APA070                                                                  07140609
APA070*APA070 MOVE WS-POF-APREM-AMT     TO L0290-INPUT-V02.     0221060907140609
APA070*APA070 MOVE 2                    TO L0290-PRECISION.     0221060907140609
APA070*APA070 MOVE LENGTH OF MIR-POF-MPREM-AMT    TO L0290-MAX-OUT-LEN. 07140609
APA070*APA070 PERFORM 0290-2000-FORMAT-FOR-MIR                  0221060907140609
APA070*APA070    THRU 0290-2000-FORMAT-FOR-MIR-X.               0221060907140609
APA070*APA070 MOVE L0290-OUTPUT-DATA    TO MIR-POF-APREM-AMT.   0221060907140609
APA070*APA070                                                   0221060907140609
APA070*APA070 MOVE WS-POF-MPREM-AMT     TO L0290-INPUT-V02.     0221060907140609
APA070*APA070 MOVE 2                    TO L0290-PRECISION.     0221060907140609
APA070*APA070 MOVE LENGTH OF MIR-POF-APREM-AMT    TO L0290-MAX-OUT-LEN. 07140609
APA070*APA070 PERFORM 0290-2000-FORMAT-FOR-MIR                  0221060907140609
APA070*APA070    THRU 0290-2000-FORMAT-FOR-MIR-X.               0221060907140609
APA070*APA070 MOVE L0290-OUTPUT-DATA    TO MIR-POF-MPREM-AMT.   0221060907140609
APA070*APA070                                                   0221060907140609
APA070     END-IF.                                                      07140609
APA070                                                                  07140609
           MOVE RPOL-POL-INS-PURP-CD       TO MIR-POL-INS-PURP-CD.
           MOVE RPOL-POL-ISS-DT-TYP-CD     TO MIR-POL-ISS-DT-TYP-CD.

           MOVE RPOL-POL-ISS-EFF-DT        TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-ISS-EFF-DT.

           MOVE RPOL-POL-ISS-LOC-CD        TO MIR-POL-ISS-LOC-CD.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-LOAN-REPAY-AMT * 100.
020874     MOVE RPOL-POL-LOAN-REPAY-AMT    TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-POL-LOAN-REPAY-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-POL-LOAN-REPAY-AMT.

           MOVE RPOL-POL-MAIL-DT           TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-MAIL-DT.

WPR018* SPDA

WPR018     MOVE ZERO                     TO WS-MAIL-DT-EAAS-Y.
WPR018     MOVE ZERO                     TO WS-MAIL-DT-EAAS-N.
WPR018     MOVE ZERO                     TO WS-MAIL-DT-RECV-Y.
WPR018     MOVE ZERO                     TO WS-MAIL-DT-RECV-N.
WPR018     MOVE ZERO                     TO WS-MAIL-DT-FINAL-Y.
WPR018     MOVE ZERO                     TO WS-MAIL-DT-FINAL-N.
WPR018     MOVE ZERO                     TO WS-MAIL-DT-FREELK.
WPR018     MOVE SPACES                   TO WS-POL-RPT-EXT-DT.

WPR018* ADD ACKNOWLEDGEMENT EXTENSION INDICATOR
WPR018     MOVE RPOL-CO-ID                     TO WPH-CO-ID.
WPR018     MOVE RPOL-PLAN-ID                   TO WPD-PLAN-ID.
WPR018     PERFORM  PD-1000-READ
WPR018         THRU PD-1000-READ-X.
WPR018     IF  WPD-IO-OK
WPR018         MOVE RPOL-CO-ID               TO WPH-CO-ID
WPR018         MOVE RPOL-PLAN-ID             TO WPH-PLAN-ID
WPR018         PERFORM  PH-1000-READ
WPR018             THRU PH-1000-READ-X
WPR018         IF  WPH-IO-OK
WPR018             MOVE RPH-URACK-SPIL-PND-DUR   TO WS-MAIL-DT-EAAS-Y
WPR018             MOVE RPH-URACK-UPIL-PND-DUR   TO WS-MAIL-DT-EAAS-N
WPR018             MOVE RPH-URACK-SPIL-RCV-DUR   TO WS-MAIL-DT-RECV-Y
WPR018             MOVE RPH-URACK-UPIL-RCV-DUR   TO WS-MAIL-DT-RECV-N
WPR018             MOVE RPH-COMM-REVRS-PIL-YES-DUR
WPR018                                           TO WS-MAIL-DT-FINAL-Y
WPR018             MOVE RPH-COMM-REVRS-PIL-NO-DUR
WPR018                                           TO WS-MAIL-DT-FINAL-N
WPR018         END-IF
WPR018     END-IF.

WPR018     IF   RPOL-POL-RPT-EXT-DT NOT = ZERO
WPR018          MOVE RPOL-POL-RPT-EXT-DT      TO L1680-INTERNAL-1
WPR018          MOVE ZERO                     TO L1680-NUMBER-OF-YEARS
WPR018          MOVE ZERO                     TO L1680-NUMBER-OF-MONTHS
WPR018          MOVE WS-MAIL-DT-EAAS-N        TO L1680-NUMBER-OF-DAYS

WPR018          PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WPR018             THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WPR018
WPR018          MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WPR018          PERFORM 1640-2000-INTERNAL-TO-EXT
WPR018             THRU 1640-2000-INTERNAL-TO-EXT-X
WPR018          IF  L1640-VALID
WPR018              MOVE L1640-EXTERNAL-DATE TO WS-POL-RPT-EXT-DT
WPR018          END-IF
WPR018     END-IF.

WPR018     IF   RPOL-POL-RPT-EXT-DT NOT = ZERO
WPR018          MOVE RPOL-POL-RPT-EXT-DT      TO L1680-INTERNAL-1
WPR018          MOVE ZERO                     TO L1680-NUMBER-OF-YEARS
WPR018          MOVE ZERO                     TO L1680-NUMBER-OF-MONTHS
WPR018          MOVE WS-MAIL-DT-EAAS-N        TO L1680-NUMBER-OF-DAYS

WPR018          PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WPR018             THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WPR018
WPR018          MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WPR018          PERFORM 1640-2000-INTERNAL-TO-EXT
WPR018             THRU 1640-2000-INTERNAL-TO-EXT-X
WPR018          IF  L1640-VALID
WPR018              MOVE L1640-EXTERNAL-DATE TO WS-POL-RPT-EXT-DT
WPR018          END-IF
WPR018     END-IF.

WPR018* ADD ACKNOWLEDGEMENT EXTENSION INDICATOR
WPR018     IF RPD-PLAN-BUS-CLAS-LIFE
WPR018* e-AAS Pending Memo Date
WPR018* Agent requested extension indicator = YES
WPR018         IF RPOL-POL-ACK-EXT-YES
WPR018            MOVE RPOL-POL-RPT-EXT-DT   TO L1680-INTERNAL-1
WPR018            MOVE ZERO                  TO L1680-NUMBER-OF-YEARS
WPR018            MOVE ZERO                  TO L1680-NUMBER-OF-MONTHS
WPR018            MOVE WS-MAIL-DT-EAAS-Y     TO L1680-NUMBER-OF-DAYS
WPR018* Agent requested extension indicator = NO
WPR018         ELSE
WPR018            MOVE RPOL-POL-MAIL-DT      TO L1680-INTERNAL-1
WPR018            MOVE ZERO                  TO L1680-NUMBER-OF-YEARS
WPR018            MOVE ZERO                  TO L1680-NUMBER-OF-MONTHS
WPR018            MOVE WS-MAIL-DT-EAAS-N     TO L1680-NUMBER-OF-DAYS
WPR018         END-IF
WPR018         PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WPR018            THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WPR018         MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WNR018         PERFORM 1640-2000-INTERNAL-TO-EXT
WPR018            THRU 1640-2000-INTERNAL-TO-EXT-X
WPR018         IF L1640-VALID
WPR018            MOVE L1640-EXTERNAL-DATE  TO MIR-DV-EAAS-PEND-DT
WPR018         END-IF

WPR018* Acknowledgement Due Received Date
WPR018* Agent requested extension indicator = YES
WPR018         IF RPOL-POL-ACK-EXT-YES
WPR018            MOVE WS-MAIL-DT-RECV-Y    TO L1680-NUMBER-OF-DAYS
WPR018* Agent requested extension indicator = NO
WPR018         ELSE
WPR018            MOVE WS-MAIL-DT-RECV-N    TO L1680-NUMBER-OF-DAYS
WPR018         END-IF
WPR018         MOVE RPOL-POL-MAIL-DT        TO L1680-INTERNAL-1
WPR018         MOVE ZERO                    TO L1680-NUMBER-OF-YEARS
WPR018         MOVE ZERO                    TO L1680-NUMBER-OF-MONTHS
WPR018         PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WPR018            THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WPR018         MOVE L1680-INTERNAL-2        TO L1640-INTERNAL-DATE
WNR018         PERFORM 1640-2000-INTERNAL-TO-EXT
WPR018            THRU 1640-2000-INTERNAL-TO-EXT-X
WPR018         IF L1640-VALID
WPR018            MOVE L1640-EXTERNAL-DATE  TO MIR-DV-ACK-RECV-DT
WPR018         END-IF

WPR018* Acknowledgement Due Final Date
WPR018* Agent requested extension indicator = YES
WPR018         IF RPOL-POL-ACK-EXT-YES
WPR018            MOVE WS-MAIL-DT-FINAL-Y    TO L1680-NUMBER-OF-DAYS
WPR018* Agent requested extension indicator = NO
WPR018         ELSE
WPR018            MOVE WS-MAIL-DT-FINAL-N    TO L1680-NUMBER-OF-DAYS
WPR018         END-IF
WPR018         PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WPR018            THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WPR018         MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WNR018         PERFORM 1640-2000-INTERNAL-TO-EXT
WPR018            THRU 1640-2000-INTERNAL-TO-EXT-X
WPR018         IF L1640-VALID
WPR018            MOVE L1640-EXTERNAL-DATE  TO MIR-DV-ACK-FINAL-DT
WPR018         END-IF

WPR018     ELSE

WNB022* 1.E-AAS PENDING MEMO DATE; PIL=Y MAILING DAY + 18 DAYS
WNB022*                            PIL=N MAILING DAY + 13 DAYS

WNB022         MOVE RPOL-POL-MAIL-DT      TO L1680-INTERNAL-1
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-YEARS
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-MONTHS
WNB022         IF   RPOL-POL-PIL-IND = WS-POL-PIL-IND-Y
WNB022              MOVE WS-MAIL-DT-EAAS-Y     TO L1680-NUMBER-OF-DAYS
WNB022         ELSE
WNB022              MOVE WS-MAIL-DT-EAAS-N     TO L1680-NUMBER-OF-DAYS
WNB022         END-IF

WNB022         PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WNB022            THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WNB022
WNB022         MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WNB022         PERFORM 1640-2000-INTERNAL-TO-EXT
WNB022            THRU 1640-2000-INTERNAL-TO-EXT-X
WNB022         IF L1640-VALID
WNB022            MOVE L1640-EXTERNAL-DATE  TO MIR-DV-EAAS-PEND-DT
WNB022         END-IF

WNB022* 2.ACKNOWLEDGEMENT RECEIVED DATE; PIL=Y MAILING DAY + 28 DAYS
WNB022*                                  PIL=N MAILING DAY + 18 DAYS

WNB022         MOVE RPOL-POL-MAIL-DT      TO L1680-INTERNAL-1
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-YEARS
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-MONTHS
WNB022         IF   RPOL-POL-PIL-IND = WS-POL-PIL-IND-Y
WNB022              MOVE WS-MAIL-DT-RECV-Y     TO L1680-NUMBER-OF-DAYS
WNB022         ELSE
WNB022              MOVE WS-MAIL-DT-RECV-N     TO L1680-NUMBER-OF-DAYS
WNB022         END-IF

WNB022         PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WNB022            THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WNB022
WNB022         MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WNB022         PERFORM 1640-2000-INTERNAL-TO-EXT
WNB022            THRU 1640-2000-INTERNAL-TO-EXT-X
WNB022         IF L1640-VALID
WNB022            MOVE L1640-EXTERNAL-DATE TO MIR-DV-ACK-RECV-DT
WNB022         END-IF

WNB022* 3.ACKNOWLEDGEMENT FINAL DATE; PIL=Y MAILING DAY + 31 DAYS
WNB022*                               PIL=N MAILING DAY + 21 DAYS

WNB022         MOVE RPOL-POL-MAIL-DT      TO L1680-INTERNAL-1
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-YEARS
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-MONTHS
WNB022         IF   RPOL-POL-PIL-IND = WS-POL-PIL-IND-Y
WNB022              MOVE WS-MAIL-DT-FINAL-Y     TO L1680-NUMBER-OF-DAYS
WNB022         ELSE
WNB022              MOVE WS-MAIL-DT-FINAL-N     TO L1680-NUMBER-OF-DAYS
WNB022         END-IF
WNB022         PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WNB022            THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WNB022
WNB022         MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WNB022         PERFORM 1640-2000-INTERNAL-TO-EXT
WNB022            THRU 1640-2000-INTERNAL-TO-EXT-X
WNB022         IF L1640-VALID
WNB022            MOVE L1640-EXTERNAL-DATE TO MIR-DV-ACK-FINAL-DT
WNB022         END-IF

WNB022* 4.END OF FREE LOOK DATE FOR AGENT; MAILING DAY + 15 DAYS

WNB022         MOVE RPOL-POL-MAIL-DT      TO L1680-INTERNAL-1
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-YEARS
WNB022         MOVE ZERO                  TO L1680-NUMBER-OF-MONTHS
WNB022         MOVE WS-MAIL-DT-FREELK     TO L1680-NUMBER-OF-DAYS
WNB022         PERFORM 1680-3000-ADD-Y-M-D-TO-DATE
WNB022            THRU 1680-3000-ADD-Y-M-D-TO-DATE-X
WNB022
WNB022         MOVE L1680-INTERNAL-2   TO L1640-INTERNAL-DATE
WNB022         PERFORM 1640-2000-INTERNAL-TO-EXT
WNB022            THRU 1640-2000-INTERNAL-TO-EXT-X
WNB022         IF L1640-VALID
WNB022            MOVE L1640-EXTERNAL-DATE TO MIR-DV-END-FREELK-DT
WNB022         END-IF

WPR018     END-IF.

           MOVE RPOL-POL-MAIL-REASN-CD     TO MIR-POL-MAIL-REASN-CD.
           MOVE RPOL-POL-MEC-CD            TO MIR-POL-MEC-CD.
           MOVE RPOL-POL-MIB-SIGN-CD       TO MIR-POL-MIB-SIGN-CD.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-MPREM-AMT * 100.
020874     MOVE RPOL-POL-MPREM-AMT         TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-POL-MPREM-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    SET  L0290-LEAD-ZEROS-SUPPRESS  TO TRUE.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-POL-MPREM-AMT.

WBC028     MOVE RPOL-RTOPUP-PREM-AMT       TO L0290-INPUT-V02.
WBC028     MOVE 2                          TO L0290-PRECISION.
WBC028     MOVE LENGTH OF MIR-RTOPUP-PREM-AMT
WBC028                                     TO L0290-MAX-OUT-LEN.
WBC028     PERFORM 0290-2000-FORMAT-FOR-MIR
WBC028        THRU 0290-2000-FORMAT-FOR-MIR-X.
WBC028     MOVE L0290-OUTPUT-DATA          TO MIR-RTOPUP-PREM-AMT.

           MOVE RPOL-POL-PREM-TYP-CD       TO MIR-POL-PREM-TYP-CD.
           MOVE RPOL-POL-NFO-CD            TO MIR-POL-NFO-CD.

           MOVE RPOL-POL-NXT-ACTV-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-NXT-ACTV-DT.

           MOVE RPOL-POL-OPTL-CD           TO MIR-POL-OPTL-CD.

016395*    MOVE RPOL-POL-PAC-DRW-DY        TO WS-N-92.
020874*    MOVE RPOL-POL-PMT-DRW-DY        TO WS-N-92.
016395*    MOVE WS-N-92                    TO MIR-POL-PAC-DRW-DY.
020874*    MOVE WS-N-92                    TO MIR-POL-PMT-DRW-DY.
020874     MOVE RPOL-POL-PMT-DRW-DY        TO L0290-INPUT-V00.
020874     MOVE 0                          TO L0290-PRECISION.
020874     MOVE LENGTH OF MIR-POL-PMT-DRW-DY
020874                                     TO L0290-MAX-OUT-LEN.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
020874     MOVE L0290-OUTPUT-DATA          TO MIR-POL-PMT-DRW-DY.

016395*    MOVE RPOL-POL-PAC-REDRW-DT      TO L1640-INTERNAL-DATE.
016395     MOVE RPOL-POL-PMT-REDRW-DT      TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
016395*    MOVE L1640-EXTERNAL-DATE        TO MIR-POL-PAC-REDRW-DT.
016395     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-PMT-REDRW-DT.

016395*    MOVE RPOL-POL-PAC-RETRN-CD (1)  TO MIR-POL-PAC-RETRN-1-CD.
016395*    MOVE RPOL-POL-PAC-RETRN-CD (1)  TO MIR-POL-PMT-RETRN-1-CD.
016395     MOVE RPOL-POL-PMT-RETRN-CD (1)  TO MIR-POL-PMT-RETRN-1-CD.
016395*    MOVE RPOL-POL-PAC-RETRN-CD (2)  TO MIR-POL-PAC-RETRN-2-CD.
016395*    MOVE RPOL-POL-PAC-RETRN-CD (2)  TO MIR-POL-PMT-RETRN-2-CD.
016395     MOVE RPOL-POL-PMT-RETRN-CD (2)  TO MIR-POL-PMT-RETRN-2-CD.

016395*    MOVE RPOL-POL-PAC-RETRN-DT (1)  TO L1640-INTERNAL-DATE.
016395     MOVE RPOL-POL-PMT-RETRN-DT (1)  TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
016395*    MOVE L1640-EXTERNAL-DATE        TO MIR-POL-PAC-RETRN-1-DT.
016395     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-PMT-RETRN-1-DT.

016395*    MOVE RPOL-POL-PAC-RETRN-DT (2)  TO L1640-INTERNAL-DATE.
016395     MOVE RPOL-POL-PMT-RETRN-DT (2)  TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
016395*    MOVE L1640-EXTERNAL-DATE        TO MIR-POL-PAC-RETRN-2-DT.
016395     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-PMT-RETRN-2-DT.

           MOVE RPOL-POL-PD-TO-DT-NUM      TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-PD-TO-DT-NUM.

           MOVE RPOL-POL-PDF-RFND-CD       TO MIR-POL-PDF-RFND-CD.

016641*    MOVE RPOL-POL-PFEE-FCT          TO WS-N-99V97.
016641*    MOVE WS-N-99V97                 TO WS-PIC-99V97.
016641*    MOVE WS-PIC-99V97               TO MIR-POL-PFEE-FCT.
016641
016641
020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-PFEE-FCT * 10000000.
020874     MOVE RPOL-POL-PFEE-FCT          TO L0290-INPUT-V07.
016641     MOVE 7                          TO L0290-PRECISION.
016641     MOVE LENGTH OF MIR-POL-PFEE-FCT TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
016641     MOVE L0290-OUTPUT-DATA          TO MIR-POL-PFEE-FCT.

           MOVE RPOL-POL-PFEE-RESTR-IND    TO MIR-POL-PFEE-RESTR-IND.
           MOVE RPOL-POL-PNSN-QUALF-CD     TO MIR-POL-PNSN-QUALF-CD.
           MOVE RPOL-POL-PNSN-SRC-CD       TO MIR-POL-PNSN-SRC-CD.

020874*    MOVE RPOL-POL-PREM-DSCNT-PCT    TO WS-PIC-99V999.
020874*    MOVE WS-PIC-99V999              TO MIR-POL-PREM-DSCNT-PCT.
020874     MOVE RPOL-POL-PREM-DSCNT-PCT    TO L0290-INPUT-V03.
020874     MOVE 3                          TO L0290-PRECISION.
020874     MOVE LENGTH OF MIR-POL-PREM-DSCNT-PCT
020874                                     TO L0290-MAX-OUT-LEN.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
020874     MOVE L0290-OUTPUT-DATA          TO MIR-POL-PREM-DSCNT-PCT.

           MOVE RPOL-PREM-RECALC-OPT-CD    TO MIR-PREM-RECALC-OPT-CD.
           MOVE RPOL-POL-RBILL-CD          TO MIR-POL-RBILL-CD.
           MOVE RPOL-POL-REG-CD            TO MIR-POL-REG-CD.

           MOVE RPOL-POL-REG-DT            TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-POL-REG-DT.

           MOVE RPOL-POL-REG-FND-SRC-CD    TO MIR-POL-REG-FND-SRC-CD.
           MOVE RPOL-POL-REINS-CD          TO MIR-POL-REINS-CD.
           MOVE RPOL-POL-RUSH-IND          TO MIR-POL-RUSH-IND.
           MOVE RPOL-POL-SFB-CD            TO MIR-POL-SFB-CD.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-POL-SNDRY-AMT * 100.
020874     MOVE RPOL-POL-SNDRY-AMT         TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-POL-SNDRY-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-POL-SNDRY-AMT.

ABC003     MOVE RPOL-POL-SPND-IND          TO MIR-POL-SPND-IND.
ABC003
           MOVE RPOL-POL-SNDRY-REASN-CD    TO MIR-POL-SNDRY-REASN-CD.
           MOVE RPOL-POL-SUPRES-ISS-IND    TO MIR-POL-SUPRES-ISS-IND.
           MOVE RPOL-POL-TAX-TYP-CD        TO MIR-POL-TAX-TYP-CD.
           MOVE RPOL-POL-TXEMP-CD          TO MIR-POL-TXEMP-CD.
           MOVE RPOL-POL-VPO-PU-DUR-N      TO MIR-POL-VPO-PU-DUR.
           MOVE RPOL-PREM-DSCNT-TYP-CD     TO MIR-PREM-DSCNT-TYP-CD.
           MOVE RPOL-PREV-SERV-AGT-ID      TO MIR-PREV-SERV-AGT-ID.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-REG-SAV-PORTN-AMT * 100.
020874     MOVE RPOL-REG-SAV-PORTN-AMT     TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-REG-SAV-PORTN-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-REG-SAV-PORTN-AMT.

           MOVE RPOL-REG-SAV-PORTN-CD      TO MIR-REG-SAV-PORTN-CD.
           MOVE RPOL-REG-SPCL-HNDL-CD      TO MIR-REG-SPCL-HNDL-CD.
           MOVE RPOL-SBSDRY-CO-ID          TO MIR-SBSDRY-CO-ID.
BAG002     SET L9001-AGT-UPD-N             TO TRUE.
AAG005     PERFORM 9001-EXTERNAL-SERV-AGT
AAG005        THRU 9001-EXTERNAL-SERV-AGT-X.
BAG002*    MOVE RPOL-SERV-AGT-ID           TO MIR-SERV-AGT-ID.
BAG002*AAG005     IF RPOL-SERV-AGT-ID NOT = SPACES
BAG002*AAG005        MOVE RPOL-SERV-AGT-ID TO  WAG-AGT-ID
AAG022*BAG002     IF L9001-SERV-AGT-ID NOT = SPACES                     01070502
AAG022*BAG002         MOVE L9001-SERV-AGT-ID          TO MIR-SERV-AGT-ID01070502
AAG022*BAG002     ELSE                                                  01070502
AAG022*BAG002         MOVE RPOL-SERV-AGT-ID           TO MIR-SERV-AGT-ID01070502
AAG022*BAG002     END-IF.                                               01070502
AAG022     MOVE RPOL-SERV-AGT-ID           TO MIR-SERV-AGT-ID.          01070502
BAG002     IF MIR-SERV-AGT-ID NOT = SPACES
BAG002        MOVE MIR-SERV-AGT-ID TO  WAG-AGT-ID
AAG005        PERFORM  L9005-1000-READ
AAG005            THRU L9005-1000-READ-X
AAG005        MOVE RAG-AGNCY-ID     TO MIR-SERV-AGY-ID
AAG005     END-IF.
AAG005
BAG002*    IF RPOL-SERV-AGT-ID NOT = SPACES
BAG002*BAG002     IF L9001-SERV-AGT-ID NOT = SPACES
BAG002     IF MIR-SERV-AGT-ID NOT = SPACES
              PERFORM  8436-MOVE-SERV-AGT-NAME
                  THRU 8436-MOVE-SERV-AGT-NAME-X
           END-IF.

           MOVE RPOL-SERV-AGT-ASIGN-DT     TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-SERV-AGT-ASIGN-DT.

           MOVE RPOL-SERV-BR-ID            TO MIR-SERV-BR-ID.
           MOVE RPOL-TAX-RPT-FREQ-CD-N     TO MIR-TAX-RPT-FREQ-CD.

020874*    COMPUTE L0290-INPUT-NUMBER = RPOL-UL-INIT-PREM-AMT * 100.
020874     MOVE RPOL-UL-INIT-PREM-AMT      TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-UL-INIT-PREM-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-UL-INIT-PREM-AMT.

           MOVE RPOL-UL-LAPS-STRT-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-UL-LAPS-STRT-DT.

CPA006     MOVE RPOL-POL-PREV-ANNV-DUR     TO MIR-POL-PREV-ANNV-DUR.    09260704
APA022     IF RPOL-POL-STAT-LAPSED
CPR228     OR RPOL-POL-STAT-LAPS-TRMN                                   12150804
APA022        IF (RPOL-POL-INS-TYP-SEG-FUND OR
APA022            RPOL-POL-INS-TYP-UL)
APA022           MOVE MIR-UL-LAPS-STRT-DT  TO MIR-LAPSE-START-DT
APA022        ELSE
APA022           MOVE MIR-POL-PD-TO-DT-NUM TO MIR-LAPSE-START-DT
APA022        END-IF
APA022     END-IF.
APA022
           MOVE RPOL-UNMTCH-MAIL-IND       TO MIR-UNMTCH-MAIL-IND.
           MOVE RPOL-USER-ID               TO MIR-USER-ID.
           MOVE RPOL-POL-INS-TYP-CD        TO MIR-POL-INS-TYP-CD.
016440*    MOVE RPOL-POL-APPL-CTL-CD       TO MIR-POL-APPL-CTL-CD.
016440     MOVE RPOL-POL-BUS-CLAS-CD       TO MIR-POL-BUS-CLAS-CD.

013697     MOVE RPOL-POL-CTRY-TAX-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
013697     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-CTRY-TAX-DT.

020453     MOVE RPOL-POL-SETL-OPT-CD       TO MIR-POL-SETL-OPT-CD.
020453     MOVE RPOL-POL-SETL-OPT-DUR      TO L0290-INPUT-V00.
020453     MOVE ZERO                       TO L0290-PRECISION.
020453     MOVE LENGTH OF MIR-POL-SETL-OPT-DUR TO L0290-MAX-OUT-LEN.
020453     PERFORM  0290-2000-FORMAT-FOR-MIR
020453         THRU 0290-2000-FORMAT-FOR-MIR-X.
020453     MOVE L0290-OUTPUT-DATA          TO MIR-POL-SETL-OPT-DUR.

020452     MOVE RPOL-POL-FRGN-TST-DT  TO L1640-INTERNAL-DATE.
020452     PERFORM  1640-8000-INTERNAL-TO-MIR
020452         THRU 1640-8000-INTERNAL-TO-MIR-X.
020452     MOVE L1640-EXTERNAL-DATE   TO MIR-POL-FRGN-TST-DT.
APR005
APR005     MOVE RPOL-POL-MODE-FCT-TYP-CD   TO MIR-POL-MODE-FCT-TYP-CD.
APR002     MOVE RPOL-PREM-HLDY-CD          TO MIR-PREM-HLDY-CD.
APR002     MOVE RPOL-PREM-HLDY-STAT-CD     TO MIR-PREM-HLDY-STAT-CD.
APR051     MOVE RPOL-POL-APL-DUR           TO MIR-POL-APL-DUR.
APR051     MOVE RPOL-POL-NFO-RESTR-CD      TO MIR-POL-NFO-RESTR-CD.
ANB007     MOVE RPOL-INSRD-APP-MEDIC-CD    TO MIR-INSRD-APP-MEDIC-CD.
ANB007     MOVE RPOL-PAYR-APP-MEDIC-CD     TO MIR-PAYR-APP-MEDIC-CD.
ANB007
ANB007     MOVE RPOL-POL-CNTRCT-DT         TO L1640-INTERNAL-DATE.
AGL079*ANB007     PERFORM  1640-2000-INTERNAL-TO-EXT
AGL079*ANB007         THRU 1640-2000-INTERNAL-TO-EXT-X.
AGL079     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL079         THRU 1640-8000-INTERNAL-TO-MIR-X.
ANB007     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-CNTRCT-DT.
ANB007
AGL079*ANB007  COMPUTE L0290-INPUT-NUMBER = RPOL-INIT-ATOPUP-AMT * 100.
AGL079     MOVE RPOL-INIT-ATOPUP-AMT       TO L0290-INPUT-V02.
ANB007     MOVE 2                          TO L0290-PRECISION.
ANB007     MOVE LENGTH OF MIR-INIT-ATOPUP-AMT
ANB007                                     TO L0290-MAX-OUT-LEN.
AGL079*ANB007     PERFORM  0290-1000-NUMERIC-FORMAT
AGL079*ANB007         THRU 0290-1000-NUMERIC-FORMAT-X.
AGL079     PERFORM  0290-2000-FORMAT-FOR-MIR
AGL079         THRU 0290-2000-FORMAT-FOR-MIR-X
ANB007     MOVE L0290-OUTPUT-DATA          TO MIR-INIT-ATOPUP-AMT.
ANB007
ANB007     MOVE RPOL-POL-HLD-COMM-IND      TO MIR-POL-HLD-COMM-IND.
ANB007
ANB007     MOVE RPOL-POL-ENTR-DT           TO L1640-INTERNAL-DATE.
AGL079*ANB007     PERFORM  1640-2000-INTERNAL-TO-EXT
AGL079*ANB007         THRU 1640-2000-INTERNAL-TO-EXT-X.
AGL079     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL079         THRU 1640-8000-INTERNAL-TO-MIR-X.
ANB007     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-ENTR-DT.
ANB007
ANB007     MOVE RPOL-POL-INFC-DT           TO L1640-INTERNAL-DATE.
AGL079*ANB007     PERFORM  1640-2000-INTERNAL-TO-EXT
AGL079*ANB007         THRU 1640-2000-INTERNAL-TO-EXT-X.
AGL079     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL079         THRU 1640-8000-INTERNAL-TO-MIR-X.
ANB007     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-INFC-DT.
ANB007
ANB007     MOVE RPOL-NB-FINAL-PMT-DT       TO L1640-INTERNAL-DATE.
AGL079*ANB007     PERFORM  1640-2000-INTERNAL-TO-EXT
AGL079*ANB007         THRU 1640-2000-INTERNAL-TO-EXT-X.
AGL079     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL079         THRU 1640-8000-INTERNAL-TO-MIR-X.
ANB007     MOVE L1640-EXTERNAL-DATE        TO MIR-NB-FINAL-PMT-DT.
ANB007
ANB007     MOVE RPOL-INSRD-HLTHANSWR-IND   TO MIR-INSRD-HLTHANSWR-IND.
WNB015     MOVE RPOL-INSRD-DCLR-1-CD       TO MIR-INSRD-DCLR-1-CD.
WNB015     MOVE RPOL-INSRD-DCLR-2-CD       TO MIR-INSRD-DCLR-2-CD.
WNB015     MOVE RPOL-INSRD-DCLR-3-CD       TO MIR-INSRD-DCLR-3-CD.
ANB007     MOVE RPOL-PAYR-HLTHANSWR-IND    TO MIR-PAYR-HLTHANSWR-IND.
ANB007     MOVE RPOL-XTRA-COMM-ELIG-CD     TO MIR-XTRA-COMM-ELIG-CD.
ANB007     MOVE RPOL-POL-REISS-IND         TO MIR-POL-REISS-IND.
ANB006                                                                  06130527
ANB006     MOVE RPOL-POL-REISS-DT          TO L1640-INTERNAL-DATE.      06130527
ANB006     PERFORM  1640-8000-INTERNAL-TO-MIR                           06130527
ANB006         THRU 1640-8000-INTERNAL-TO-MIR-X.                        06130527
ANB006     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-REISS-DT.         06130527
ANB006                                                                  06130527
ANB006     MOVE RPOL-POL-REISS-CNCL-DT     TO L1640-INTERNAL-DATE.      06130527
ANB006     PERFORM  1640-8000-INTERNAL-TO-MIR                           06130527
ANB006         THRU 1640-8000-INTERNAL-TO-MIR-X.                        06130527
ANB006     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-REISS-CNCL-DT.    06130527
ANB006                                                                  06130527
ANB006     MOVE RPOL-POL-REISS-END-DT      TO L1640-INTERNAL-DATE.      06130527
ANB006     PERFORM  1640-8000-INTERNAL-TO-MIR                           06130527
ANB006         THRU 1640-8000-INTERNAL-TO-MIR-X.                        06130527
ANB006     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-REISS-END-DT.     06130527
ANB006                                                                  06130527
ANB007     MOVE RPOL-SPCL-QUOT-IND         TO MIR-SPCL-QUOT-IND.
ANB007     MOVE RPOL-POL-CSTAT-REASN-CD    TO MIR-POL-CSTAT-REASN-CD.
ANB007     MOVE RPOL-PMT-TYP-CD            TO MIR-PMT-TYP-CD.
ANB007
ANB007     MOVE RPOL-PREV-CHQ-CLR-DT       TO L1640-INTERNAL-DATE.
AGL079*ANB007     PERFORM  1640-2000-INTERNAL-TO-EXT
AGL079*ANB007         THRU 1640-2000-INTERNAL-TO-EXT-X.
AGL079     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL079         THRU 1640-8000-INTERNAL-TO-MIR-X.
ANB007     MOVE L1640-EXTERNAL-DATE        TO MIR-PREV-CHQ-CLR-DT.
APA030     MOVE RPOL-POL-SPND-REASN-CD     TO MIR-POL-SPND-REASN-CD.
APA020     MOVE RPOL-POL-SPND-EFF-DT       TO L1640-INTERNAL-DATE.
AGL079*APA020     PERFORM  1640-2000-INTERNAL-TO-EXT
AGL079*APA020         THRU 1640-2000-INTERNAL-TO-EXT-X.
AGL079     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL079         THRU 1640-8000-INTERNAL-TO-MIR-X.

APA020     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-SPND-EFF-DT.
APA020     MOVE RPOL-POL-SPND-TRMN-DT      TO L1640-INTERNAL-DATE.
AGL079*APA020     PERFORM  1640-2000-INTERNAL-TO-EXT
AGL079*APA020         THRU 1640-2000-INTERNAL-TO-EXT-X.
AGL079     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL079         THRU 1640-8000-INTERNAL-TO-MIR-X.
APA020     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-SPND-TRMN-DT.
APA020     MOVE RPOL-POL-SPND-USER-ID      TO MIR-POL-SPND-USER-ID.
BNB005
BNB005     MOVE RPOL-POL-RECV-DT-TXT         TO L1640-INTERNAL-DATE.
BNB005     PERFORM 1640-8000-INTERNAL-TO-MIR
BNB005        THRU 1640-8000-INTERNAL-TO-MIR-X.
BNB005     IF  L1640-VALID
BNB005         MOVE L1640-EXTERNAL-DATE      TO MIR-POL-RECV-DT
BNB005     ELSE
BNB005         MOVE SPACES                   TO MIR-POL-RECV-DT
BNB005     END-IF.
BNB005
BAG002     MOVE RPOL-CMPLN-POL-SERV-AGT-ID TO MIR-CMPLN-POL-SERV-AGT-ID.
BAG002     IF RPOL-CMPLN-POL-SERV-AGT-ID NOT = SPACES
BAG002         PERFORM  0083-0000-INIT-PARM-INFO
BAG002            THRU 0083-0000-INIT-PARM-INFO-X
BAG002
BAG002         SET L0083-AGENT-NAME-REQD  TO TRUE
BAG002
BAG002         MOVE RPOL-CMPLN-POL-SERV-AGT-ID TO L0083-AGENT-ID
BAG002
BAG002         PERFORM  0083-1000-RETRIEVE-AGT-INFO
BAG002            THRU 0083-1000-RETRIEVE-AGT-INFO-X
BAG002
BAG002         IF  L0083-RETRN-OK
BAG002             INITIALIZE L0620-INPUT-PARM-INFO
BAG002             MOVE L0083-AGENT-GIV-NM    TO L0620-CLI-GIV-NM
BAG002             MOVE L0083-AGENT-SUR-NM    TO L0620-CLI-SUR-NM
BAG002             MOVE L0083-AGENT-MID-INIT  TO L0620-CLI-MID-INIT-NM
BAG002             MOVE L0083-CLI-SFX-NM      TO L0620-CLI-SFX-NM
BAG002             PERFORM  0620-1000-FORMAT-SCREEN-NAME
BAG002                 THRU 0620-1000-FORMAT-SCREEN-NAME-X
BAG002             MOVE L0620-SCREEN-NAME
BAG002                             TO MIR-DV-CMPLN-POL-SERV-AGT-NM
CPA001             MOVE L0083-OLS-AGT-ID (5:9)                          01150804
CPA001                             TO MIR-CMPLN-POL-SERV-AGT-ID         01150804
BAG002         END-IF
BAG002     END-IF.
           PERFORM  8420-MOVE-TO-PAYR
               THRU 8420-MOVE-TO-PAYR-X.

           PERFORM  8430-MOVE-TO-WRIT-AGT-REC
               THRU 8430-MOVE-TO-WRIT-AGT-REC-X.

AAG008     PERFORM  8700-MOVE-ZCVW-REC-TO-MIR
AAG008        THRU  8700-MOVE-ZCVW-REC-TO-MIR-X.
AAG008
AAG024     PERFORM  8750-MOVE-ZCVH-REC-TO-MIR                           10130506
AAG024        THRU  8750-MOVE-ZCVH-REC-TO-MIR-X.                        10130506
AAG024                                                                  10130506
           PERFORM  8440-MOVE-TO-LXPCT-REC
               THRU 8440-MOVE-TO-LXPCT-REC-X.

           PERFORM  8450-MOVE-TO-RBILL-REC
               THRU 8450-MOVE-TO-RBILL-REC-X.

           PERFORM  8460-MOVE-TO-SFB-REC
               THRU 8460-MOVE-TO-SFB-REC-X.

020475     PERFORM  8470-MOVE-TO-POLG-DB
020475         THRU 8470-MOVE-TO-POLG-DB-X.

WNB002     MOVE RPOL-POL-PIL-IND           TO MIR-POL-PIL-IND.
WNB002     MOVE RPOL-POL-ACK-SIGN-DT       TO L1640-INTERNAL-DATE.

WNB002     PERFORM  1640-8000-INTERNAL-TO-MIR
WNB002         THRU 1640-8000-INTERNAL-TO-MIR-X.

WNB002     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-ACK-SIGN-DT.
WNB002     MOVE RPOL-POL-ACK-RECV-DT       TO L1640-INTERNAL-DATE.

WNB002     PERFORM  1640-8000-INTERNAL-TO-MIR
WNB002         THRU 1640-8000-INTERNAL-TO-MIR-X.

WNB002     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-ACK-RECV-DT.
WNB002     MOVE RPOL-POL-ACK-EXT-IND       TO MIR-POL-ACK-EXT-IND.
WNB002     MOVE RPOL-POL-ACK-STAT-CD       TO MIR-POL-ACK-STAT-CD.
WNB002     MOVE RPOL-POL-REPRT-DT          TO L1640-INTERNAL-DATE.

WNB002     PERFORM  1640-8000-INTERNAL-TO-MIR
WNB002         THRU 1640-8000-INTERNAL-TO-MIR-X.

WNB002     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-REPRT-DT.
WNB003     MOVE RPOL-POL-BILL-HLD-CD       TO MIR-POL-BILL-HLD-CD.
WNB003     MOVE RPOL-AGT-AGRE-IND          TO MIR-POL-AGT-AGRE-IND.
WNB003     MOVE RPOL-CLI-SIGN-NOTE-IND     TO MIR-POL-IMPRT-SIGN-IND.
WNB003     MOVE RPOL-AGT-SHOW-LIC-IND      TO MIR-POL-SHOW-LIC-IND.
WNB003     MOVE RPOL-AGT-PRVD-SIS-IND      TO MIR-POL-SIS-IND.
020463     PERFORM  8480-MOVE-TO-INV-PRFL
020463         THRU 8480-MOVE-TO-INV-PRFL-X.

AGL116     MOVE RPOL-PNDFND-UNITIZE-DT     TO L1640-INTERNAL-DATE.
AGL116     PERFORM  1640-8000-INTERNAL-TO-MIR
AGL116         THRU 1640-8000-INTERNAL-TO-MIR-X.
AGL116     MOVE L1640-EXTERNAL-DATE        TO MIR-PNDFND-UNITIZE-DT.
WNB012     MOVE RPOL-POL-EMPLE-IND         TO MIR-POL-EMPLE-IND.
WNB014     MOVE RPOL-POL-CCAS-IND          TO MIR-POL-CCAS-IND.
WNB014     MOVE RPOL-OTHR-ISS-REQIR-IND    TO MIR-OTHR-ISS-REQIR-IND.

WBC018     IF  MIR-DV-ACCT-TYP-CD = SPACE
WBC018         MOVE MIR-POL-BILL-TYP-CD TO MIR-DV-ACCT-TYP-CD
WBC018         IF  NOT MIR-DV-ACCT-TYP-VALID
WBC018         AND MIR-DV-PAYR-CLI-ID NOT = SPACES
WBC018*WBC018             SET MIR-DV-ACCT-TYP-PAC TO TRUE
WBC018             MOVE RPOL-PREV-BILL-TYP-CD
WBC018               TO WS-PREV-BILL-TYP-CD
WBC018             IF  WS-PREV-BILL-TYP-CRC
WBC018                 SET MIR-DV-ACCT-TYP-CRC TO TRUE
WBC018             ELSE
WBC018                 SET MIR-DV-ACCT-TYP-PAC TO TRUE
WBC018             END-IF
WBC018         END-IF
WBC018         IF  MIR-DV-PAYR-CLI-ID = SPACES
WBC018             MOVE SPACE           TO MIR-DV-ACCT-TYP-CD
WBC018         END-IF
WBC018     END-IF.

WNB021     MOVE RPOL-NB-INIT-PMT-DT      TO L1640-INTERNAL-DATE.
WNB021     PERFORM  1640-8000-INTERNAL-TO-MIR
WNB021         THRU 1640-8000-INTERNAL-TO-MIR-X.
WNB021     MOVE L1640-EXTERNAL-DATE        TO MIR-NB-INIT-PMT-DT.

WPR018     MOVE RPOL-POL-RPT-EXT-DT      TO L1640-INTERNAL-DATE.
WPR018     PERFORM  1640-8000-INTERNAL-TO-MIR
WPR018         THRU 1640-8000-INTERNAL-TO-MIR-X.
WPR018     MOVE L1640-EXTERNAL-DATE        TO MIR-POL-RPT-EXT-DT.

ANB006     MOVE RPOL-POL-INIT-PAYO-MTHD-CD  TO MIR-INIT-PAYO-MTH-CD.
ANB006     MOVE RPOL-PAYO-BNK-ACCT-NUM TO L0290-INPUT-V00.
ANB006     MOVE 0                      TO L0290-PRECISION.
ANB006     MOVE LENGTH OF MIR-PAYO-BNK-ACCT-NU
ANB006                                 TO L0290-MAX-OUT-LEN.
ANB006     PERFORM 0290-2000-FORMAT-FOR-MIR
ANB006        THRU 0290-2000-FORMAT-FOR-MIR-X.
ANB006     MOVE L0290-OUTPUT-DATA      TO MIR-PAYO-BNK-ACCT-NU.
ANB006     MOVE RPOL-POL-INIT-PREM-DED-CD  TO MIR-POL-INIT-PREM-DED-IND.
ANB006     MOVE RPOL-POL-ALLOW-CONTEST-IND TO MIR-POL-CONTEST-IND.
ANB006     MOVE RPOL-EGP-POL-IND       TO MIR-POL-EGP-IND.
APR079     MOVE RPOL-POL-PU-NFO-CD     TO MIR-POL-PU-NFO-CD.            11260401
APR087     MOVE RPOL-CONTEST-MRG-POL-ID    TO MIR-CONTEST-MRG-POL-ID.   12010402
ANB006     MOVE RPOL-NCSH-XF-IND       TO MIR-NCSH-XF-IND.              10270422
ANB006     IF RPOL-FAC-REINS-COMM-PCT > ZEROS                           10270422
ANB006        SET MIR-DV-FAC-REINS TO TRUE                              10270422
ANB006     ELSE                                                         10270422
ANB006        SET MIR-DV-FAC-REINS-NO TO TRUE                           10270422
ANB006     END-IF.                                                      10270422
ANB006     MOVE RPOL-BILL-LEAD-MO-CTL-CD TO MIR-BILL-LEAD-MO-CTL-CD     11250422
ANB006     MOVE RPOL-BILL-LEAD-MO-DUR    TO L0290-INPUT-V00.            11250422
ANB006     MOVE ZERO                     TO L0290-PRECISION.            11250422
ANB006     MOVE LENGTH OF MIR-BILL-LEAD-MO-DUR TO L0290-MAX-OUT-LEN.    11250422
ANB006     PERFORM  0290-2000-FORMAT-FOR-MIR                            11250422
ANB006         THRU 0290-2000-FORMAT-FOR-MIR-X.                         11250422
ANB006     MOVE L0290-OUTPUT-DATA        TO MIR-BILL-LEAD-MO-DUR.       11250422
APR077     MOVE RPOL-POL-CRCY-CD         TO MIR-POL-CURR-CD.            02280512
ANB006     MOVE RPOL-POL-REJ-REASN-CD    TO MIR-POL-REJ-REASN-CD.       06130527
ANB006     MOVE RPOL-REJ-REASN-COND-CD   TO MIR-REJ-REASN-COND-CD.      06130527
ANB006     MOVE RPOL-NEG-CD              TO MIR-NEG-CD.                 06130527
ANB006                                                                  06130527
ANB006     MOVE RPOL-POL-REJ-RQST-DT     TO L1640-INTERNAL-DATE.        06130527
ANB006     PERFORM  1640-8000-INTERNAL-TO-MIR                           06130527
ANB006         THRU 1640-8000-INTERNAL-TO-MIR-X.                        06130527
ANB006     MOVE L1640-EXTERNAL-DATE      TO MIR-POL-REJ-RQST-DT.        06130527
ANB028     MOVE RPOL-POL-VERIF-IND       TO MIR-POL-VERIF-IND.          09140501
ANB028     MOVE RPOL-CLI-VERIF-IND       TO MIR-CLI-VERIF-IND.          09140501
ANB006     MOVE RPOL-POL-XTRNL-REF-TXT   TO MIR-POL-XTRNL-REF-TXT.      07250638
CFA001     MOVE RPOL-POL-FND-ALLOC-DT    TO L1640-INTERNAL-DATE.        08130702
CFA001     PERFORM  1640-8000-INTERNAL-TO-MIR                           08130702
CFA001         THRU 1640-8000-INTERNAL-TO-MIR-X.                        08130702
CFA001     IF  L1640-VALID                                              08130702
CFA001         MOVE L1640-EXTERNAL-DATE  TO MIR-POL-FND-ALLOC-DT        08130702
CFA001     ELSE                                                         08130702
CFA001         MOVE SPACES               TO MIR-POL-FND-ALLOC-DT        08130702
CFA001     END-IF.                                                      08130702
CFA001                                                                  08130702
CFA208* GET MONTHIVERSARY INFORMATION                                   01240906
CFA208     MOVE RPOL-POL-UL-PRCES-DT     TO L1640-INTERNAL-DATE.        01240906
CFA208     PERFORM  1640-8000-INTERNAL-TO-MIR                           01240906
CFA208         THRU 1640-8000-INTERNAL-TO-MIR-X.                        01240906
CFA208     IF  L1640-VALID                                              01240906
CFA208         MOVE L1640-EXTERNAL-DATE  TO MIR-POL-UL-PRCES-DT         01240906
CFA208     ELSE                                                         01240906
CFA208         MOVE SPACES               TO MIR-POL-UL-PRCES-DT         01240906
CFA208     END-IF.                                                      01240906
CFA208                                                                  01240906
CFA208     MOVE RPOL-POL-UL-PTD-NUM      TO L1640-INTERNAL-DATE.        01240906
CFA208     PERFORM  1640-8000-INTERNAL-TO-MIR                           01240906
CFA208         THRU 1640-8000-INTERNAL-TO-MIR-X.                        01240906
CFA208     IF  L1640-VALID                                              01240906
CFA208         MOVE L1640-EXTERNAL-DATE  TO MIR-POL-UL-PTD-NUM          01240906
CFA208     ELSE                                                         01240906
CFA208         MOVE SPACES               TO MIR-POL-UL-PTD-NUM          01240906
CFA208     END-IF.                                                      01240906
CFA208                                                                  01240906
CFA208     MOVE RPOL-POL-UL-SHRT-AMT     TO L0290-INPUT-V02.            01240906
CFA208     MOVE 2                        TO L0290-PRECISION.            01240906
CFA208     MOVE LENGTH OF MIR-POL-UL-SHRT-AMT  TO L0290-MAX-OUT-LEN.    01240906
CFA208     PERFORM  0290-2000-FORMAT-FOR-MIR                            01240906
CFA208         THRU 0290-2000-FORMAT-FOR-MIR-X.                         01240906
CFA208     MOVE L0290-OUTPUT-DATA        TO MIR-POL-UL-SHRT-AMT.        01240906
CFA208                                                                  01240906
CPR224     MOVE RPOL-OVR-LOAN-RPT-IND    TO MIR-OVR-LOAN-RPT-IND.       05190904
CPR224                                                                  05190904
CPR203     MOVE RPOL-LINT-CAP-DT-TYP-CD  TO MIR-LINT-CAP-DT-TYP-CD.     09240801
CPR203     MOVE RPOL-LINT-CAP-FREQ-CD    TO MIR-LINT-CAP-FREQ-CD.       09240801
CPR218                                                                  05130902
CPR218     MOVE RPOL-POL-WAV-STAT-CD     TO MIR-POL-WAV-STAT-CD.        05130902
CPR218                                                                  05130902
CPR218     MOVE RPOL-MAV-WAV-STRT-DT     TO L1640-INTERNAL-DATE.        05130902
CPR218     PERFORM  1640-8000-INTERNAL-TO-MIR                           05130902
CPR218         THRU 1640-8000-INTERNAL-TO-MIR-X.                        05130902
CPR218     IF  L1640-VALID                                              05130902
CPR218         MOVE L1640-EXTERNAL-DATE  TO MIR-MAV-WAV-STRT-DT         05130902
CPR218     ELSE                                                         05130902
CPR218         MOVE SPACES               TO MIR-MAV-WAV-STRT-DT         05130902
CPR218     END-IF.                                                      05130902
CPR218                                                                  05130902
CPR218     MOVE RPOL-PREM-WAV-STRT-DT    TO L1640-INTERNAL-DATE.        05130902
CPR218     PERFORM  1640-8000-INTERNAL-TO-MIR                           05130902
CPR218         THRU 1640-8000-INTERNAL-TO-MIR-X.                        05130902
CPR218     IF  L1640-VALID                                              05130902
CPR218         MOVE L1640-EXTERNAL-DATE  TO MIR-PREM-WAV-STRT-DT        05130902
CPR218     ELSE                                                         05130902
CPR218         MOVE SPACES               TO MIR-PREM-WAV-STRT-DT        05130902
CPR218     END-IF.                                                      05130902
CPR105                                                                  01271001
CPR133     MOVE RPOL-POL-EMBED-WAV-STAT-CD                              02261401
CPR133                                   TO MIR-POL-EMBED-WAV-STAT-CD.  02261401
CPR133                                                                  02261401
CPR133     MOVE RPOL-EMBED-PWAV-STRT-DT  TO L1640-INTERNAL-DATE.        02261401
CPR133     PERFORM  1640-8000-INTERNAL-TO-MIR                           02261401
CPR133         THRU 1640-8000-INTERNAL-TO-MIR-X.                        02261401
CPR133     IF  L1640-VALID                                              02261401
CPR133         MOVE L1640-EXTERNAL-DATE  TO MIR-EMBED-PWAV-STRT-DT      02261401
CPR133     ELSE                                                         02261401
CPR133         MOVE SPACES               TO MIR-EMBED-PWAV-STRT-DT      02261401
CPR133     END-IF.                                                      02261401
CPR133                                                                  02261401
CPR105     IF  RPOL-POL-SRC-SYS-OLAS                                    01271001
CPR105         SET WS-POL-CNVR-OLAS      TO TRUE                        01271001
CPR105     ELSE                                                         01271001
CPR105         SET WS-POL-CNVR-OLAS-NO   TO TRUE                        01271001
CPR105     END-IF.                                                      01271001
CPR105     MOVE WS-POL-CNVR-IND          TO MIR-POL-CNVR-IND.           01271001
CPR105                                                                  01271001
CPR111     MOVE RPOL-CUST-RSK-SCORE      TO MIR-CUST-RSK-SCORE.         03261001
CPR111                                                                  03261001
CPR143     MOVE RPOL-IER-CPN-STAT-CD     TO MIR-IER-CPN-STAT-CD.        05281402
CPR143                                                                  05281402
CPR148     MOVE RPOL-POL-ANTY-PAYO-STAT-CD                              03201501
CPR148                                   TO MIR-POL-ANTY-PAYO-STAT-CD.  03201501
CPR148                                                                  03201501
CPR147* CHANGE TO SHOW A ESTIMATE IER COUPON START DATE,                01151505
CPR147* AND IT NEED CVG INFORMATION FOR CALCULATION,                    01151505
CPR147* SO MOVE THIS FIELD TO AFTER CVG INFORMATION IS LOADED.          01151505
CPR147*CPR143     MOVE RPOL-POL-IER-CPN-STRT-DT TO L1640-INTERNAL-DATE. 01151505
CPR147*CPR143     PERFORM  1640-8000-INTERNAL-TO-MIR            0528140201151505
CPR147*CPR143         THRU 1640-8000-INTERNAL-TO-MIR-X.         0528140201151505
CPR147*CPR143     IF  L1640-VALID                               0528140201151505
CPR147*CPR143         MOVE L1640-EXTERNAL-DATE  TO MIR-POL-IER-CPN-STRT-DT 51505
CPR147*CPR143     ELSE                                          0528140201151505
CPR147*CPR143         MOVE SPACES               TO MIR-POL-IER-CPN-STRT-DT 51505
CPR147*CPR143     END-IF.                                       0528140201151505
CPR143                                                                  05281402
       8400-MOVE-POL-REC-TO-MIR-X.
           EXIT.
      /
      *-------------------------
WNB003 8405-RETRIEVE-ZPAY.
      *-------------------------

WNB003     MOVE LOW-VALUES             TO WZPAY-KEY.
WNB003     MOVE MIR-POL-ID-BASE        TO WZPAY-POL-ID-BASE.
WNB003     MOVE MIR-POL-ID-SFX         TO WZPAY-POL-ID-SFX.
WNB003     MOVE WWKDT-LOW-DT           TO WZPAY-NB-PMT-TRXN-DT.
WNB003     MOVE '000'                  TO WZPAY-NB-PMT-SEQ-NUM.

WNB003     MOVE HIGH-VALUES            TO WZPAY-ENDBR-KEY.
WNB003     MOVE MIR-POL-ID-BASE        TO WZPAY-ENDBR-POL-ID-BASE.
WNB003     MOVE MIR-POL-ID-SFX         TO WZPAY-ENDBR-POL-ID-SFX.
WNB003     MOVE WWKDT-HIGH-DT          TO WZPAY-ENDBR-NB-PMT-TRXN-DT.
WNB003     MOVE '999'                  TO WZPAY-ENDBR-NB-PMT-SEQ-NUM.

WNB003     PERFORM  ZPAY-1000-BROWSE
WNB003         THRU ZPAY-1000-BROWSE-X.

WNB003     IF NOT WZPAY-IO-OK
WNB003        GO TO 8405-RETRIEVE-ZPAY
WNB003     END-IF.

WNB003     PERFORM  ZPAY-2000-READ-NEXT
WNB003         THRU ZPAY-2000-READ-NEXT-X.

WNB003     MOVE ZERO                   TO MIR-NB-PMT-TRXN-AMT.

WNB003     PERFORM  8410-SUMMARIZE-ZPAY
WNB003         THRU 8410-SUMMARIZE-ZPAY-X
WNB003        UNTIL NOT WZPAY-IO-OK.

WNB003     PERFORM  ZPAY-3000-END-BROWSE
WNB003         THRU ZPAY-3000-END-BROWSE-X.

WNB003 8405-RETRIEVE-ZPAY-X.
           EXIT.

      *-------------------------
WNB003 8410-SUMMARIZE-ZPAY.
      *-------------------------

WNB003     IF  RZPAY-NB-PMT-STAT-PEND
WNB003         ADD  RZPAY-NB-PMT-TRXN-AMT       TO MIR-NB-PMT-TRXN-AMT
WNB003     END-IF.

WNB003     PERFORM  ZPAY-2000-READ-NEXT
WNB003         THRU ZPAY-2000-READ-NEXT-X.

WNB003 8410-SUMMARIZE-ZPAY-X.
           EXIT.


      *---------------------------
       8420-MOVE-TO-PAYR.
      *---------------------------

           MOVE SPACES               TO MIR-DV-PAYR-CLI-ID.
           MOVE SPACES               TO MIR-DV-PAYR-SUB-CD.
CPA001     MOVE SPACES TO MIR-DV-PAYR-ADDR-GR-CD.                       08300702
           MOVE SPACES               TO MIR-DV-PAYR-ADDR-CD.
CPA001     MOVE SPACES TO MIR-DV-PAYR-ADDR-SEQ-NUM.                     08300702
           MOVE SPACES               TO MIR-DV-PAYR-CLI-NM.
ACL002     MOVE SPACES               TO MIR-DV-PAYR-CLI-CLAS-CD.
ANB028*ANB028     SET WS-PAYR-CLI-STATUS-YES         TO TRUE.   1103050111090501

           MOVE ZERO                          TO I.
           PERFORM  2430-1000-BUILD-PARM-INFO
               THRU 2430-1000-BUILD-PARM-INFO-X.
CPA001                                                                  08300702
CPA001     SET L2430-CLI-ADDR-CORSP-2 TO TRUE.                          08300702
CPA001                                                                  08300702
           PERFORM  2430-2200-GET-PAYOR
               THRU 2430-2200-GET-PAYOR-X.

           IF  L2430-RETRN-OK
               NEXT SENTENCE
           ELSE
               GO TO 8420-MOVE-TO-PAYR-X
           END-IF.

           MOVE L2430-CLI-ID         TO MIR-DV-PAYR-CLI-ID.
           MOVE L2430-CLI-REL-SUB-CD TO MIR-DV-PAYR-SUB-CD.
CPA001     MOVE L2430-CLI-ADDR-GR-CD TO MIR-DV-PAYR-ADDR-GR-CD.         11200702
           MOVE L2430-CLI-ADDR-TYP-CD
                                     TO MIR-DV-PAYR-ADDR-CD.
CPA001     MOVE L2430-CLI-ADDR-SEQ-NUM TO MIR-DV-PAYR-ADDR-SEQ-NUM.     11200702
ACL002     MOVE L2430-CLI-CLAS-CD    TO MIR-DV-PAYR-CLI-CLAS-CD.

           INITIALIZE L0620-INPUT-PARM-INFO.
           IF  L2430-CLI-SEX-COMPANY
               MOVE L2430-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
           ELSE
               MOVE L2430-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
               MOVE L2430-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
               MOVE L2430-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
               MOVE L2430-CLI-SFX-NM      TO L0620-CLI-SFX-NM
           END-IF.
           MOVE L2430-CLI-SEX-CD          TO L0620-CLI-SEX-CD.
           PERFORM  0620-1000-FORMAT-SCREEN-NAME
               THRU 0620-1000-FORMAT-SCREEN-NAME-X.
           MOVE L0620-SCREEN-NAME         TO MIR-DV-PAYR-CLI-NM.
AGL149     MOVE L2430-CLI-NM-TYP-CD       TO                            03160603
AGL149                                 MIR-DV-PAYR-CLI-NM-KEY(1:2)      03160603
AGL149     MOVE L2430-CLI-NM-SEQ-NUM      TO                            03160603
AGL149                                 MIR-DV-PAYR-CLI-NM-KEY(3:3)      03160603

ANB028     IF L2430-CLI-STATUS-IS-ACTL                                  09140502
ANB028        MOVE  'Y'             TO MIR-PAYR-CLI-STATUS-CD           09140502
ANB028*ANB028        SET WS-PAYR-CLI-STATUS-YES  TO TRUE        1103050111090501
ANB028     ELSE                                                         09140502
ANB028        MOVE  'N'             TO MIR-PAYR-CLI-STATUS-CD           09140502
ANB028*ANB028        SET WS-PAYR-CLI-STATUS-NO   TO TRUE        1103050111090501
ANB028     END-IF.                                                      09140502
ANB028                                                                  09140502
           MOVE 1                         TO WS-WORK-SUB.
           MOVE L2430-CLI-ID              TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE 'P'                       TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).

       8420-MOVE-TO-PAYR-X.
           EXIT.
      /
      *--------------------------
       8430-MOVE-TO-WRIT-AGT-REC.
      *--------------------------

           PERFORM  8240-1000-BUILD-PARM-INFO
               THRU 8240-1000-BUILD-PARM-INFO-X.

           MOVE RPOL-POL-ID                 TO L8240-POL-ID.

           PERFORM  8240-1000-RETRIEVE-POLW
               THRU 8240-1000-RETRIEVE-POLW-X.

           PERFORM  8435-MOVE-AGT-REC
               THRU 8435-MOVE-AGT-REC-X
               VARYING I FROM 1 BY 1
                 UNTIL I > 3.

       8430-MOVE-TO-WRIT-AGT-REC-X.
           EXIT.

      *-------------------
       8435-MOVE-AGT-REC.
      *-------------------

           MOVE L8240-AGT-ID (I)       TO MIR-AGT-ID-T (I).

020874*    MULTIPLY L8240-AGT-SHR-PCT (I) BY +100
020874*            GIVING    L0290-INPUT-NUMBER.
020874     MOVE L8240-AGT-SHR-PCT (I)  TO L0290-INPUT-V02.

           MOVE +2                     TO L0290-PRECISION.
           MOVE LENGTH OF MIR-POL-AGT-SHR-PCT-T (I)
                                       TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA      TO MIR-POL-AGT-SHR-PCT-T (I).

WAG005     MOVE L8240-PRIM-WRIT-AGT-IND (I)
WAG005                                 TO MIR-PRIM-WRIT-AGT-IND-T (I).
           MOVE SPACES                 TO MIR-DV-AGT-CLI-NM-T (I).

           IF   L8240-AGT-ID (I) = SPACES
               GO TO 8435-MOVE-AGT-REC-X
           END-IF.

           PERFORM  0083-0000-INIT-PARM-INFO
               THRU 0083-0000-INIT-PARM-INFO-X.

           SET L0083-AGENT-NAME-REQD  TO TRUE.

           MOVE L8240-AGT-ID (I)          TO L0083-AGENT-ID

           PERFORM  0083-1000-RETRIEVE-AGT-INFO
               THRU 0083-1000-RETRIEVE-AGT-INFO-X

ANB007      MOVE L8240-AGT-ID (I)          TO WAG-AGT-ID.
ANB007      MOVE SPACES                    TO RAG-AGNCY-ID.
WNB003      MOVE SPACES                    TO RAG-AGT-CLAS-CD.
WNB003      MOVE SPACES                    TO RAG-AGT-CAT-CD.
WNB003      MOVE SPACES                    TO RAG-AGT-CNTRCT-STRT-DT.
ANB007      PERFORM  L9005-1000-READ
ANB007          THRU L9005-1000-READ-X.
CPR316                                                                  03071305
CPR316     IF  NOT WAG-IO-OK                                            03071305
CPR316         GO TO 8435-MOVE-AGT-REC-X                                03071305
CPR316     END-IF.                                                      03071305
ANB007
ANB007     MOVE RAG-PREM-AGT-STAT-CD    TO MIR-AGT-PREM-AGT-STAT-T (I).
AGL079*ANB007     MULTIPLY RAG-HS-LOS-RATIO-PCT BY +100
AGL079*ANB007             GIVING    L0290-INPUT-NUMBER.
AGL079     MOVE RAG-HS-LOS-RATIO-PCT    TO L0290-INPUT-V02.
ANB007     MOVE +2                      TO L0290-PRECISION.
ANB007     MOVE LENGTH OF MIR-AGT-HS-LOS-RATIO-T (I)
ANB007                                   TO L0290-MAX-OUT-LEN.
AGL079*ANB007     PERFORM 0290-1000-NUMERIC-FORMAT
AGL079*ANB007        THRU 0290-1000-NUMERIC-FORMAT-X.
AGL079     PERFORM 0290-2000-FORMAT-FOR-MIR
AGL079        THRU 0290-2000-FORMAT-FOR-MIR-X.

ANB007     MOVE L0290-OUTPUT-DATA
ANB007          TO MIR-AGT-HS-LOS-RATIO-T (I).
AAG008*ANB007      MOVE RAG-AGNCY-ID            TO MIR-AGENCY-CD-T (I). 08210603
WNB003     MOVE RAG-AGT-CLAS-CD          TO MIR-AGT-CLAS-CD-T (I).
WNB003     MOVE RAG-AGT-CAT-CD           TO MIR-AGT-CAT-CD-T (I).
WNB003     MOVE RAG-AGT-CNTRCT-STRT-DT   TO L1640-INTERNAL-DATE.
WNB003     PERFORM  1640-8000-INTERNAL-TO-MIR
WNB003         THRU 1640-8000-INTERNAL-TO-MIR-X.
WNB003     MOVE L1640-EXTERNAL-DATE      TO MIR-LIC-EFF-DT-T (I).

           IF  L0083-RETRN-OK
017207         INITIALIZE L0620-INPUT-PARM-INFO
               MOVE L0083-AGENT-GIV-NM    TO L0620-CLI-GIV-NM
               MOVE L0083-AGENT-SUR-NM    TO L0620-CLI-SUR-NM
               MOVE L0083-AGENT-MID-INIT  TO L0620-CLI-MID-INIT-NM
               MOVE L0083-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
               MOVE L0620-SCREEN-NAME  TO MIR-DV-AGT-CLI-NM-T (I)
           END-IF.

       8435-MOVE-AGT-REC-X.
           EXIT.

      *------------------------
       8436-MOVE-SERV-AGT-NAME.
      *------------------------

           PERFORM  0083-0000-INIT-PARM-INFO
               THRU 0083-0000-INIT-PARM-INFO-X.

           SET L0083-AGENT-NAME-REQD  TO TRUE.

BAG002*    MOVE RPOL-SERV-AGT-ID      TO L0083-AGENT-ID.
BAG002     MOVE  MIR-SERV-AGT-ID      TO L0083-AGENT-ID.

           PERFORM  0083-1000-RETRIEVE-AGT-INFO
               THRU 0083-1000-RETRIEVE-AGT-INFO-X.

           IF  L0083-RETRN-OK
017207         INITIALIZE L0620-INPUT-PARM-INFO
               MOVE L0083-AGENT-GIV-NM    TO L0620-CLI-GIV-NM
               MOVE L0083-AGENT-SUR-NM    TO L0620-CLI-SUR-NM
               MOVE L0083-AGENT-MID-INIT  TO L0620-CLI-MID-INIT-NM
               MOVE L0083-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
015904*        MOVE L0620-SCREEN-NAME  TO MIR-DV-SERV-AGT-NM
015904         MOVE L0620-SCREEN-NAME  TO MIR-DV-SERV-AGT-CLI-NM
CPA001         MOVE L0083-OLS-AGT-ID (5:9)                              01150804
CPA001                                 TO MIR-SERV-AGT-ID               01150804
           END-IF.

       8436-MOVE-SERV-AGT-NAME-X.
           EXIT.

      /
      *-----------------------
       8440-MOVE-TO-LXPCT-REC.
      *-----------------------

           PERFORM  0144-1000-BUILD-PARM-INFO
               THRU 0144-1000-BUILD-PARM-INFO-X.

           PERFORM  0144-1000-OBT-POL-TAX-INFO
               THRU 0144-1000-OBT-POL-TAX-INFO-X.

           IF NOT L0144-RETRN-OK
               MOVE 'XS00000210'         TO WGLOB-MSG-REF-INFO
               MOVE L0144-POL-ID         TO WGLOB-MSG-PARM (1)
               PERFORM  0260-1000-GENERATE-MESSAGE
                   THRU 0260-1000-GENERATE-MESSAGE-X
               GO TO 8440-MOVE-TO-LXPCT-REC-X
           END-IF.

           MOVE L0144-LXPCT-CALC-CD      TO MIR-LXPCT-CALC-CD.
           MOVE L0144-LXPCT-RECALC-IND   TO MIR-LXPCT-RECALC-IND.

020874*    COMPUTE L0290-INPUT-NUMBER = L0144-TAX-1035-ACB-AMT * 100.
020874     MOVE L0144-TAX-1035-ACB-AMT   TO L0290-INPUT-V02.
           MOVE 2                        TO L0290-PRECISION.
           MOVE LENGTH OF MIR-TAX-1035-ACB-AMT
                                         TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA        TO MIR-TAX-1035-ACB-AMT.

       8440-MOVE-TO-LXPCT-REC-X.
           EXIT.
      /
      *-----------------------
       8450-MOVE-TO-RBILL-REC.
      *-----------------------

           PERFORM  2480-1000-BUILD-PARM-INFO
               THRU 2480-1000-BUILD-PARM-INFO-X.

           PERFORM  2480-1000-READ-RBILL
               THRU 2480-1000-READ-RBILL-X.

           MOVE L2480-RBILL-DEPT-ID      TO MIR-RBILL-DEPT-ID.
           MOVE L2480-RBILL-MISC-1-CD    TO MIR-RBILL-MISC-1-CD.
           MOVE L2480-RBILL-MISC-2-CD    TO MIR-RBILL-MISC-2-CD.
           MOVE L2480-RBILL-USER-ID      TO MIR-RBILL-USER-ID.

           MOVE L2480-RBILL-EFF-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE      TO MIR-RBILL-EFF-DT.

           MOVE L2480-RBILL-END-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE      TO MIR-RBILL-END-DT.

       8450-MOVE-TO-RBILL-REC-X.
           EXIT.
      /
      *---------------------
       8460-MOVE-TO-SFB-REC.
      *---------------------

           IF RPOL-POL-SFB-CD = SPACES
               MOVE '00'                   TO MIR-SFB-SEMI-MTHLY-DY
               MOVE SPACES                 TO MIR-SFB-STRT-DT
               MOVE SPACES                 TO MIR-SFB-END-DT
               MOVE SPACES                 TO MIR-SFB-GP-STRT-DT-NUM
               MOVE SPACES                 TO MIR-SFB-GP-END-DT-NUM

020874*        MOVE ZEROS                  TO L0290-INPUT-NUMBER
020874         MOVE ZEROS                  TO L0290-INPUT-V02
               MOVE 2                      TO L0290-PRECISION
               MOVE LENGTH OF MIR-SFB-NXT-BILL-AMT
                                           TO L0290-MAX-OUT-LEN
020874*        PERFORM 0290-1000-NUMERIC-FORMAT
020874*           THRU 0290-1000-NUMERIC-FORMAT-X
020874         PERFORM 0290-2000-FORMAT-FOR-MIR
020874            THRU 0290-2000-FORMAT-FOR-MIR-X
               MOVE L0290-OUTPUT-DATA      TO MIR-SFB-NXT-BILL-AMT

               GO TO 8460-MOVE-TO-SFB-REC-X
           END-IF.

           PERFORM  2520-1000-BUILD-PARM-INFO
               THRU 2520-1000-BUILD-PARM-INFO-X.

           MOVE RPOL-POL-ID                TO L2520-POL-ID.
           MOVE RPOL-PLAN-ID               TO L2520-PLAN-ID.

           PERFORM  2520-1000-GET-SFB-INFO
               THRU 2520-1000-GET-SFB-INFO-X.

           MOVE L2520-SFB-SEMI-MTHLY-DY    TO MIR-SFB-SEMI-MTHLY-DY.

           MOVE L2520-SFB-STRT-DT          TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-SFB-STRT-DT.

           MOVE L2520-SFB-END-DT           TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-SFB-END-DT.

           MOVE L2520-SFB-GP-STRT-DT-NUM   TO L1640-INTERNAL-DATE.
           PERFORM  1640-4000-INTERNAL-TO-EXT-S
               THRU 1640-4000-INTERNAL-TO-EXT-S-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-SFB-GP-STRT-DT-NUM.

           MOVE L2520-SFB-GP-END-DT-NUM    TO L1640-INTERNAL-DATE.
           PERFORM  1640-4000-INTERNAL-TO-EXT-S
               THRU 1640-4000-INTERNAL-TO-EXT-S-X.
           MOVE L1640-EXTERNAL-DATE        TO MIR-SFB-GP-END-DT-NUM.

020874*    COMPUTE L0290-INPUT-NUMBER = L2520-SFB-NXT-BILL-AMT * 100.
020874     MOVE L2520-SFB-NXT-BILL-AMT     TO L0290-INPUT-V02.
           MOVE 2                          TO L0290-PRECISION.
           MOVE LENGTH OF MIR-SFB-NXT-BILL-AMT
                                           TO L0290-MAX-OUT-LEN.
020874*    PERFORM 0290-1000-NUMERIC-FORMAT
020874*       THRU 0290-1000-NUMERIC-FORMAT-X.
020874     PERFORM 0290-2000-FORMAT-FOR-MIR
020874        THRU 0290-2000-FORMAT-FOR-MIR-X.
           MOVE L0290-OUTPUT-DATA          TO MIR-SFB-NXT-BILL-AMT.

       8460-MOVE-TO-SFB-REC-X.
           EXIT.

020475*--------------------
020475 8470-MOVE-TO-POLG-DB.
020475*--------------------
020475
020475     IF RPOL-POL-DBG-NO
020475        GO TO 8470-MOVE-TO-POLG-DB-X
020475     END-IF.
020475
020475     PERFORM  7306-1000-BUILD-PARM-INFO
020475         THRU 7306-1000-BUILD-PARM-INFO-X.
020475     MOVE RPOL-POL-ID         TO L7306-POL-ID.
020475
020475     PERFORM  7306-1000-GET-DBG-INFO
020475         THRU 7306-1000-GET-DBG-INFO-X.
020475
020475     IF L7306-RETRN-ERROR
020475        GO TO 8470-MOVE-TO-POLG-DB-X
020475     END-IF.
020475
020475     MOVE L7306-POL-DBG-BASIC-CD   TO MIR-POL-DBG-BASIC-CD.
020475     MOVE L7306-POL-DBG-RESET-IND  TO MIR-DV-POL-DBG-RESET-IND.
020475     MOVE L7306-POL-DBG-ANNV-VALU-IND
020475                                   TO MIR-DV-ANNV-VALU-IND.
020475     MOVE L7306-POL-DBG-MAV-IND    TO MIR-DV-POL-DBG-MAV-IND.
020475     MOVE L7306-POL-DBG-ROLU-IND   TO MIR-DV-POL-DBG-ROLU-IND.
020475
020475     COMPUTE L0290-INPUT-NUMBER = L7306-POL-DBG-LOCK-QTY.
020475     MOVE 0                          TO L0290-PRECISION.
020475     MOVE LENGTH OF MIR-POL-DBG-LOCK-QTY
020475                                     TO L0290-MAX-OUT-LEN.
020475     PERFORM  0290-1000-NUMERIC-FORMAT
020475         THRU 0290-1000-NUMERIC-FORMAT-X.
020475     MOVE L0290-OUTPUT-DATA          TO MIR-POL-DBG-LOCK-QTY.
020475     MOVE RPOL-POL-DBG-IND           TO MIR-POL-DBG-IND.
020475     MOVE RPOL-POL-DBG-LOAN-IND      TO MIR-POL-DBG-LOAN-IND.
020475
020475 8470-MOVE-TO-POLG-DB-X.
020475     EXIT.

020463*--------------------
020463 8480-MOVE-TO-INV-PRFL.
020463*--------------------
020463
020463* NEED TO GET INVESTOR PROFILE INFORMATION.

020463     PERFORM 2735-1000-BUILD-PARM-INFO
020463        THRU 2735-1000-BUILD-PARM-INFO-X.
020463     MOVE RPOL-POL-ID                TO L2735-POL-ID.
020463     PERFORM 2735-1000-GET-PRFL
020463        THRU 2735-1000-GET-PRFL-X.

020463     IF  L2735-RETRN-PRFL-FND
020463         MOVE L2735-PRFL-ID TO MIR-PRFL-ID
020463     END-IF.
020463
020463 8480-MOVE-TO-INV-PRFL-X.
020463     EXIT.
ANB007/
ANB007*---------------------------
ANB007 8490-SET-POL-REJ-REASN-TXT.
ANB007*---------------------------
ANB007
ANB007     IF  RPOL-POL-REJ-REASN-CD NOT = SPACE
ANB007         MOVE RPOL-POL-REJ-REASN-CD  TO WDMAD-DM-AV-CD
ANB007         MOVE 'POL-REJ-REASN-CD'     TO WDMAD-DM-AV-TBL-CD
ANB007         MOVE WGLOB-USER-LANG        TO WDMAD-DM-AV-DESC-LANG-CD
ANB007         PERFORM  DMAD-1000-READ
ANB007             THRU DMAD-1000-READ-X
ANB007
ANB007         STRING
ANB007             ' - '
ANB007             SPACE
ANB007             RDMAD-DM-AV-DESC-TXT
ANB007             DELIMITED BY SIZE
ANB007             INTO MIR-POL-REJ-REASN-CD-TXT
ANB007         END-STRING
ANB007
ANB007     ELSE
ANB007         MOVE SPACE                  TO MIR-POL-REJ-REASN-CD-TXT
ANB007     END-IF.
ANB007
ANB007 8490-SET-POL-REJ-REASN-TXT-X.
ANB007     EXIT.
ANB007/
      *--------------------------
       8500-MOVE-POLC-REC-TO-MIR.
      *--------------------------

           PERFORM  8520-MOVE-TO-OWNER-RECORDS
               THRU 8520-MOVE-TO-OWNER-RECORDS-X.

           PERFORM  8530-MOVE-TO-ASSIGN-RECORDS
               THRU 8530-MOVE-TO-ASSIGN-RECORDS-X.

           PERFORM  8540-MOVE-TO-ANUTNT-RECORDS
               THRU 8540-MOVE-TO-ANUTNT-RECORDS-X.

           PERFORM  8550-MOVE-TO-IPARTY-RECORDS
               THRU 8550-MOVE-TO-IPARTY-RECORDS-X.

           PERFORM  8560-MOVE-TO-TRST-RECORDS
               THRU 8560-MOVE-TO-TRST-RECORDS-X.

           PERFORM  8570-MOVE-TO-SPOUS-RECORDS
               THRU 8570-MOVE-TO-SPOUS-RECORDS-X.

           PERFORM  8580-MOVE-TO-LBILL-RECORDS
               THRU 8580-MOVE-TO-LBILL-RECORDS-X.

ANB021     PERFORM  8590-MOVE-TO-CHILD-RECORDS
ANB021         THRU 8590-MOVE-TO-CHILD-RECORDS-X.
ANB021
APA040     PERFORM  8595-MOVE-TO-PB-RECORDS                             08040601
APA040         THRU 8595-MOVE-TO-PB-RECORDS-X.                          08040601
CPA001                                                                  08300702
CPA001     PERFORM  8610-MOVE-TO-INSURED-RECORDS                        08300702
CPA001         THRU 8610-MOVE-TO-INSURED-RECORDS-X.                     08300702
       8500-MOVE-POLC-REC-TO-MIR-X.
           EXIT.
      /
      *---------------------------
       8520-MOVE-TO-OWNER-RECORDS.
      *---------------------------
      *
      * MOVE PRIMARY OWNERS FIRST, THEN MOVE CONT OWNERS
      *
           MOVE SPACES               TO MIR-CLI-ID-G.
           MOVE SPACES               TO MIR-DV-OWN-SUB-CD-G.
           MOVE SPACES               TO MIR-POL-CLI-INSRD-CD-G.
CPA001*           MOVE SPACES               TO MIR-CLI-ADDR-TYP-CD-G.   08300702
           MOVE SPACES               TO MIR-DV-OWN-CLI-NM-G.
AGL149     MOVE SPACES               TO MIR-DV-OWN-CLI-NM-KEY-G.        03160603
CPA001     MOVE SPACES TO MIR-CLI-ADDR-GR-1-CD-G.                       08300702
CPA001     MOVE SPACES TO MIR-CLI-ADDR-TYP-1-CD-G.                      08300702
CPA001     MOVE SPACES TO MIR-CLI-ADDR-SEQ-1-NUM-G.                     08300702
CPA001     MOVE SPACES TO MIR-CLI-ADDR-GR-2-CD-G.                       08300702
CPA001     MOVE SPACES TO MIR-CLI-ADDR-TYP-2-CD-G.                      08300702
CPA001     MOVE SPACES TO MIR-CLI-ADDR-SEQ-2-NUM-G.                     08300702
CPA001     MOVE SPACES TO MIR-CLI-DAY-PHON-NUM-G.                       08300702
CPA001     MOVE SPACES TO MIR-CLI-NIGHT-PHON-NUM-G.                     08300702
CPA001     MOVE SPACES TO MIR-CLI-CELL-PHON-NUM-G.                      08300702
CPA001     MOVE SPACES TO MIR-CLI-CNTCT-MAIL-NUM-G.                     08300702
           MOVE SPACES               TO MIR-CLI-BTH-DT-G.
           MOVE SPACES               TO MIR-CLI-TAX-ID-G.
CPA001     MOVE SPACES TO MIR-CLI-ID-TYP-CD-G.                          08300702
CPA001     MOVE SPACES TO MIR-CLI-MARIT-STAT-CD-G.                      08300702
CPA001     MOVE SPACES TO MIR-CLI-CITZ-CD-G.                            08300702
CPA001     MOVE SPACES TO MIR-CLI-PERM-RES-IND-G.                       08300702
CPA001     MOVE SPACES TO MIR-CLI-INCM-EARN-AMT-G.                      08300702
CPA001     MOVE SPACES TO MIR-CLI-WGT-G.                                08300702
CPA001     MOVE SPACES TO MIR-CLI-HT-G.                                 08300702
CPA001     MOVE SPACES TO MIR-CLI-OCCP-ID-G.                            08300702
CPA001     MOVE SPACES TO MIR-CLI-SHIP-CD-G.                            01110802
ACL002     MOVE SPACES               TO MIR-DV-OWN-CLI-CLAS-CD-G.

ANB007     SET  WS-OWNER-INSRD-SAME-YES TO TRUE.
           SET NO-PRIMARY-FOUND      TO TRUE.
           MOVE 1                    TO WS-SUB.
           MOVE 2                    TO WS-WORK-SUB.

           MOVE LOW-VALUES           TO WPOLC-KEY.
           MOVE 'O'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE WPOLC-KEY            TO WPOLC-ENDBR-KEY.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X

           PERFORM  8521-READ-PRI-OWNER-RECORDS
               THRU 8521-READ-PRI-OWNER-RECORDS-X
                   UNTIL WPOLC-IO-EOF
                   OR    WS-SUB > 5.

           PERFORM  POLC-3000-END-BROWSE
               THRU POLC-3000-END-BROWSE-X.

           MOVE LOW-VALUES           TO WPOLC-KEY.
           MOVE 'O'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE WPOLC-KEY            TO WPOLC-ENDBR-KEY.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X

           PERFORM  8522-READ-CONT-OWNER-RECORDS
               THRU 8522-READ-CONT-OWNER-RECORDS-X
                   UNTIL WPOLC-IO-EOF
                   OR    WS-SUB > 5.

           PERFORM  POLC-3000-END-BROWSE
               THRU POLC-3000-END-BROWSE-X.

       8520-MOVE-TO-OWNER-RECORDS-X.
           EXIT.
      /
      *---------------------------
       8521-READ-PRI-OWNER-RECORDS.
      *---------------------------

           IF  RPOLC-POL-CLI-REL-SUB-CD NOT = 'P'
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               GO TO 8521-READ-PRI-OWNER-RECORDS-X
           END-IF.

           PERFORM  8523-MOVE-OWNER-TO-MIR
               THRU 8523-MOVE-OWNER-TO-MIR-X.
WNB015*
WNB015     IF  RPOLC-POL-CLI-REL-TYP-OWNER
WNB015         PERFORM  8524-GET-CLI-ADDRESS-INFO
WNB015             THRU 8524-GET-CLI-ADDRESS-INFO-X
WNB015     END-IF.

CPA001     MOVE RPOLC-POL-CLI-INSRD-CD                                  12110704
CPA001                              TO WS-POL-CLI-INSRD-CD.             12110704
ANB007
CPA001*ANB007     IF  RPOLC-POL-CLI-INSRD-CD NOT = 'SAME'               12110704
CPA001     IF NOT WS-POL-CLI-INSRD-REL-SAME                             12110704
ANB007         SET  WS-OWNER-INSRD-SAME-NO    TO TRUE
ANB007     END-IF.
ANB007
           ADD +1                   TO WS-SUB.
           ADD +1                   TO WS-WORK-SUB.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X.

       8521-READ-PRI-OWNER-RECORDS-X.
           EXIT.
      /
      *----------------------------
       8522-READ-CONT-OWNER-RECORDS.
      *----------------------------

           IF  RPOLC-POL-CLI-REL-SUB-CD = 'P'
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               GO TO 8522-READ-CONT-OWNER-RECORDS-X
           END-IF.

           PERFORM  8523-MOVE-OWNER-TO-MIR
               THRU 8523-MOVE-OWNER-TO-MIR-X.

           ADD +1                   TO WS-SUB.
           ADD +1                   TO WS-WORK-SUB.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X.

       8522-READ-CONT-OWNER-RECORDS-X.
           EXIT.

      *-----------------------
       8523-MOVE-OWNER-TO-MIR.
      *-----------------------
      *
           MOVE RPOLC-CLI-ID             TO MIR-CLI-ID-T (WS-SUB).
           MOVE RPOLC-POL-CLI-REL-SUB-CD TO
                                  MIR-DV-OWN-SUB-CD-T (WS-SUB).
           MOVE RPOLC-POL-CLI-INSRD-CD   TO
                                  MIR-POL-CLI-INSRD-CD-T (WS-SUB).
CPA001*           MOVE RPOLC-CLI-ADDR-TYP-CD    TO                      08300702
CPA001*                                  MIR-CLI-ADDR-TYP-CD-T (WS-SUB).08300702

           MOVE RPOLC-CLI-ID             TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
ANB006                            MIR-DV-OWN-CLI-ID
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE RPOLC-POL-CLI-REL-TYP-CD TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).
CPA001     MOVE RPOLC-CLI-ADDR-GR-1-CD TO                               08300702
CPA001          MIR-CLI-ADDR-GR-1-CD-T (WS-SUB).                        08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-1-CD TO                              08300702
CPA001          MIR-CLI-ADDR-TYP-1-CD-T (WS-SUB).                       08300702
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-1-NUM TO                             08300702
CPA001          MIR-CLI-ADDR-SEQ-1-NUM-T (WS-SUB).                      08300702
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD TO                               08300702
CPA001          MIR-CLI-ADDR-GR-2-CD-T (WS-SUB).                        08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO                              08300702
CPA001          MIR-CLI-ADDR-TYP-2-CD-T (WS-SUB).                       08300702
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM TO                             08300702
CPA001          MIR-CLI-ADDR-SEQ-2-NUM-T (WS-SUB).                      08300702
CPA001     MOVE RPOLC-POL-DAY-PHON-NUM TO                               08300702
CPA001          MIR-CLI-DAY-PHON-NUM-T (WS-SUB).                        08300702
CPA001     MOVE RPOLC-POL-NIGHT-PHON-NUM TO                             03240802
CPA001          MIR-CLI-NIGHT-PHON-NUM-T (WS-SUB).                      08300702
CPA001     MOVE RPOLC-POL-CELL-PHON-NUM TO                              08300702
CPA001          MIR-CLI-CELL-PHON-NUM-T (WS-SUB).                       08300702
CPA001     MOVE RPOLC-POL-CNTCT-MAIL-CD TO                              08300702
CPA001          MIR-CLI-CNTCT-MAIL-NUM-T (WS-SUB).                      08300702
CPA001     MOVE RPOLC-CLI-TAX-ID TO                                     08300702
CPA001          MIR-CLI-TAX-ID-T (WS-SUB).                              08300702
CPA001     MOVE RPOLC-CLI-ID-TYP-CD TO                                  08300702
CPA001          MIR-CLI-ID-TYP-CD-T (WS-SUB).                           08300702
CPA001     MOVE RPOLC-CLI-MARIT-STAT-CD TO                              08300702
CPA001          MIR-CLI-MARIT-STAT-CD-T (WS-SUB).                       08300702
CPA001     MOVE RPOLC-CLI-CITZ-CD TO                                    08300702
CPA001          MIR-CLI-CITZ-CD-T (WS-SUB).                             08300702
CPA001     MOVE RPOLC-CLI-PERM-RES-IND TO                               08300702
CPA001          MIR-CLI-PERM-RES-IND-T (WS-SUB).                        08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-INCM-EARN-AMT TO L0290-INPUT-V02.                 08300702
CPA001     MOVE 2 TO L0290-PRECISION.                                   08300702
CPA001     MOVE LENGTH OF MIR-CLI-INCM-EARN-AMT-T (WS-SUB) TO           08300702
CPA001          L0290-MAX-OUT-LEN.                                      08300702
CPA001     PERFORM 0290-2000-FORMAT-FOR-MIR                             08300702
CPA001        THRU 0290-2000-FORMAT-FOR-MIR-X.                          08300702
CPA001     MOVE L0290-OUTPUT-DATA TO MIR-CLI-INCM-EARN-AMT-T (WS-SUB).  08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-CLI-WGT TO L0290-INPUT-V01.                       08300702
CPA001     MOVE 1 TO L0290-PRECISION.                                   08300702
CPA001     MOVE LENGTH OF MIR-CLI-WGT-T (WS-SUB) TO L0290-MAX-OUT-LEN.  08300702
CPA001     PERFORM 0290-2000-FORMAT-FOR-MIR                             08300702
CPA001        THRU 0290-2000-FORMAT-FOR-MIR-X.                          08300702
CPA001     MOVE L0290-OUTPUT-DATA TO MIR-CLI-WGT-T (WS-SUB).            08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-CLI-HT TO L0290-INPUT-V01.                        08300702
CPA001     MOVE 1 TO L0290-PRECISION.                                   08300702
CPA001     MOVE LENGTH OF MIR-CLI-HT-T (WS-SUB) TO L0290-MAX-OUT-LEN.   08300702
CPA001     PERFORM 0290-2000-FORMAT-FOR-MIR                             08300702
CPA001        THRU 0290-2000-FORMAT-FOR-MIR-X.                          08300702
CPA001     MOVE L0290-OUTPUT-DATA TO MIR-CLI-HT-T (WS-SUB).             08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-CLI-OCCP-ID TO                                    08300702
CPA001          MIR-CLI-OCCP-ID-T (WS-SUB).                             08300702
CPA001     MOVE RPOLC-CLI-SHIP-CD TO                                    01110802
CPA001          MIR-CLI-SHIP-CD-T (WS-SUB).                             01110802
WCL002     MOVE RPOLC-CLI-QTR-STMT-NOTI-CD
WCL002                                   TO  MIR-CLI-QTR-STMT-NOTI-CD.
CPA001*WCL002   MOVE RPOLC-POL-CNTCT-MAIL-CD  TO  MIR-POL-CNTCT-MAIL-CD.08300702
CPA001*WCL002     MOVE RPOLC-CLI-ADDR-GR-1-CD                           08300702
CPA001*WCL002                                  TO  MIR-CLI-ADDR-GR-1-CD.08300702
CPA001*WCL002     MOVE RPOLC-CLI-ADDR-TYP-1-CD                          08300702
CPA001*WCL002                                 TO  MIR-CLI-ADDR-TYP-1-CD.08300702
CPA001*WCL002     MOVE RPOLC-CLI-ADDR-SEQ-1-NUM                         08300702
CPA001*WCL002                                TO  MIR-CLI-ADDR-SEQ-1-NUM.08300702
CPA001*WCL002     MOVE RPOLC-CLI-ADDR-GR-2-CD                           08300702
CPA001*WCL002                                  TO  MIR-CLI-ADDR-GR-2-CD.08300702
CPA001*WCL002     MOVE RPOLC-CLI-ADDR-TYP-2-CD                          08300702
CPA001*WCL002                                 TO  MIR-CLI-ADDR-TYP-2-CD.08300702
CPA001*WCL002     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM                         08300702
CPA001*WCL002                                TO  MIR-CLI-ADDR-SEQ-2-NUM.08300702


           PERFORM  2435-1000-BUILD-PARM-INFO
               THRU 2435-1000-BUILD-PARM-INFO-X.

           MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
AGL149     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603

           PERFORM  2435-1000-OBTAIN-CLI-INFO
               THRU 2435-1000-OBTAIN-CLI-INFO-X.

           IF  L2435-RETRN-OK
               INITIALIZE L0620-INPUT-PARM-INFO
               IF  L2435-CLI-SEX-CD = 'C'
                   MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
               ELSE
                   MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
                   MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
                   MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
                   MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               END-IF
               MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
               MOVE L0620-SCREEN-NAME         TO
                                  MIR-DV-OWN-CLI-NM-T (WS-SUB)
AGL149         MOVE RPOLC-CLI-NM-TYP-CD       TO                        03160603
AGL149                            MIR-DV-OWN-CLI-NM-KEY-T (WS-SUB)(1:2) 03160603
AGL149         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                            MIR-DV-OWN-CLI-NM-KEY-T (WS-SUB)(3:3) 03160603
AGL149         MOVE MIR-DV-OWN-CLI-NM-KEY-T (WS-SUB) TO                 03160603
AGL149                            MIR-DV-OWN-CLI-NM-KEY                 03160603
           END-IF.

           MOVE L2435-CLI-BTH-DT       TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE           TO
                                  MIR-CLI-BTH-DT-T (WS-SUB).

CPA001*           MOVE L2435-CLI-TAX-ID              TO                 08300702
CPA001*                                  MIR-CLI-TAX-ID-T (WS-SUB).     08300702
ACL002     MOVE L2435-CLI-CLAS-CD             TO
ACL002                            MIR-DV-OWN-CLI-CLAS-CD-T (WS-SUB).

ANB028     IF L2435-CLI-STATUS-IS-ACTL                                  09140502
ANB028        MOVE  'Y'           TO MIR-OWN-CLI-STATUS-CD-T (WS-SUB)   09140502
ANB028*ANB028        SET WS-OWNER-CLI-STATUS-YES     TO TRUE    1103050111090501
ANB028     ELSE                                                         09140502
ANB028        MOVE  'N'           TO MIR-OWN-CLI-STATUS-CD-T (WS-SUB)   09140502
ANB028*ANB028        SET WS-OWNER-CLI-STATUS-NO      TO TRUE    1103050111090501
ANB028     END-IF.                                                      09140502
ANB028                                                                  09140502
           IF  RPOLC-POL-CLI-REL-SUB-CD = 'P'
           AND NO-PRIMARY-FOUND
               MOVE L0620-SCREEN-NAME         TO MIR-DV-OWN-CLI-NM
               SET OWNER-PRIMARY-FOUND        TO TRUE
           END-IF.

       8523-MOVE-OWNER-TO-MIR-X.
           EXIT.

WNB015*----------------------------
WNB015 8524-GET-CLI-ADDRESS-INFO.
WNB015*----------------------------
WNB015
WNB015     MOVE RPOLC-CLI-ID                 TO L2440-CLI-ID.
WNB015     MOVE RPOLC-CLI-ADDR-TYP-1-CD      TO L2440-CLI-ADDR-TYP-CD.
WNB015     MOVE RPOLC-CLI-ADDR-SEQ-1-NUM     TO L2440-CLI-ADDR-SEQ-NUM.
CPA001     MOVE RPOLC-CLI-ADDR-GR-1-CD       TO L2440-CLI-ADDR-GR-CD.   11200702
WNB015
WNB015     IF  L2440-CLI-ADDR-TYP-CD = 'PR'
WNB015         PERFORM  2440-1000-PRIMARY-ADDRESS
WNB015             THRU 2440-1000-PRIMARY-ADDRESS-X
WNB015     ELSE
WNB015         SET L2440-CLI-ADDR-CHK-Y      TO TRUE
WNB015         PERFORM  2440-2000-OTHER-ADDRESS
WNB015             THRU 2440-2000-OTHER-ADDRESS-X
WNB015     END-IF.
WNB015
WNB015     IF  L2440-RETRN-OK
WNB015         MOVE L2440-CLI-CNTY-CD        TO MIR-POL-CTRY-CD-1
WNB015         MOVE L2440-CLI-CITY-NM-TXT    TO MIR-CLI-CITY-NM-1-TXT
WNB015         MOVE L2440-CLI-ADDR-LN-1-TXT  TO MIR-CLI-ADDR-1-TXT
WNB015         MOVE L2440-CLI-ADDR-LN-2-TXT  TO MIR-CLI-ADDR-1-TXT-2
WNB015         MOVE L2440-CLI-ADDR-LN-3-TXT  TO MIR-CLI-ADDR-1-TXT-3
ACL013         MOVE L2440-CLI-ADDR-LN-4-TXT  TO MIR-CLI-ADDR-1-TXT-4    02130601
ACL013         MOVE L2440-CLI-ADDR-LN-5-TXT  TO MIR-CLI-ADDR-1-TXT-5    02130601
WNB015     END-IF.
WNB015
WNB015     MOVE RPOLC-CLI-ID                 TO L2440-CLI-ID.
WNB015     MOVE RPOLC-CLI-ADDR-TYP-2-CD      TO L2440-CLI-ADDR-TYP-CD.
WNB015     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM     TO L2440-CLI-ADDR-SEQ-NUM.
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD       TO L2440-CLI-ADDR-GR-CD.   11200702
WNB015
WNB015     IF  L2440-CLI-ADDR-TYP-CD = 'PR'
WNB015         PERFORM  2440-1000-PRIMARY-ADDRESS
WNB015             THRU 2440-1000-PRIMARY-ADDRESS-X
WNB015     ELSE
WNB015         SET L2440-CLI-ADDR-CHK-Y      TO TRUE
WNB015         PERFORM  2440-2000-OTHER-ADDRESS
WNB015             THRU 2440-2000-OTHER-ADDRESS-X
WNB015     END-IF.
WNB015
WNB015     IF  L2440-RETRN-OK
WNB015         MOVE L2440-CLI-CNTY-CD        TO MIR-POL-CTRY-CD-2
WNB015         MOVE L2440-CLI-CITY-NM-TXT    TO MIR-CLI-CITY-NM-2-TXT
WNB015         MOVE L2440-CLI-ADDR-LN-1-TXT  TO MIR-CLI-ADDR-2-TXT
WNB015         MOVE L2440-CLI-ADDR-LN-2-TXT  TO MIR-CLI-ADDR-2-TXT-2
WNB015         MOVE L2440-CLI-ADDR-LN-3-TXT  TO MIR-CLI-ADDR-2-TXT-3
ACL013         MOVE L2440-CLI-ADDR-LN-4-TXT  TO MIR-CLI-ADDR-2-TXT-4    02130601
ACL013         MOVE L2440-CLI-ADDR-LN-5-TXT  TO MIR-CLI-ADDR-2-TXT-5    02130601
WNB015     END-IF.
WNB015
WNB015 8524-GET-CLI-ADDRESS-INFO-X.
WNB015     EXIT.
      /
      *----------------------------
       8530-MOVE-TO-ASSIGN-RECORDS.
      *----------------------------

           MOVE SPACES               TO MIR-DV-ASIGN-CLI-ID-G.
           MOVE SPACES               TO MIR-DV-ASIGN-SUB-CD-G.
CPA001     MOVE SPACES TO MIR-DV-ASIGN-ADDR-GR-CD-G.                    08300702
           MOVE SPACES               TO MIR-DV-ASIGN-ADDR-CD-G.
CPA001     MOVE SPACES TO MIR-DV-ASIGN-ADDR-SEQ-NUM-G.                  08300702
           MOVE SPACES               TO MIR-DV-ASIGN-CLI-NM-G.
           MOVE SPACES               TO MIR-POL-CLI-ASIGN-DT-G.

           MOVE 'A'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE 'A'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.

           MOVE LOW-VALUES           TO WPOLC-CLI-ID.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           MOVE +7    TO WS-WORK-SUB.

           IF WPOLC-IO-OK
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               PERFORM  8531-READ-ASSIGN-RECORDS
                   THRU 8531-READ-ASSIGN-RECORDS-X
                   VARYING WS-SUB FROM 1 BY 1
                       UNTIL WS-SUB > 5
                          OR WPOLC-IO-EOF
               PERFORM  POLC-3000-END-BROWSE
                   THRU POLC-3000-END-BROWSE-X
           END-IF.

       8530-MOVE-TO-ASSIGN-RECORDS-X.
           EXIT.
      /
      *-------------------------
       8531-READ-ASSIGN-RECORDS.
      *-------------------------

           PERFORM  8532-MOVE-ASSIGN-TO-MIR
               THRU 8532-MOVE-ASSIGN-TO-MIR-X.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X.

       8531-READ-ASSIGN-RECORDS-X.
           EXIT.
      /
      *------------------------
       8532-MOVE-ASSIGN-TO-MIR.
      *------------------------

           MOVE RPOLC-CLI-ID          TO MIR-DV-ASIGN-CLI-ID-T (WS-SUB).
           MOVE RPOLC-POL-CLI-REL-SUB-CD TO
                                      MIR-DV-ASIGN-SUB-CD-T (WS-SUB).

           MOVE RPOLC-POL-CLI-ASIGN-DT TO L1640-INTERNAL-DATE.
020462*    PERFORM  1640-2000-INTERNAL-TO-EXT
020462*        THRU 1640-2000-INTERNAL-TO-EXT-X.
020462     PERFORM  1640-8000-INTERNAL-TO-MIR
020462         THRU 1640-8000-INTERNAL-TO-MIR-X.
           MOVE L1640-EXTERNAL-DATE    TO
                                      MIR-POL-CLI-ASIGN-DT-T (WS-SUB).

CPA001*           MOVE RPOLC-CLI-ADDR-TYP-CD  TO                        08300702
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD                                  08300702
CPA001       TO MIR-DV-ASIGN-ADDR-GR-CD-T (WS-SUB).                     08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO                              08300702
                                      MIR-DV-ASIGN-ADDR-CD-T (WS-SUB).
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM                                08300702
CPA001       TO MIR-DV-ASIGN-ADDR-SEQ-NUM-T (WS-SUB).                   08300702

           MOVE RPOLC-CLI-ID             TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE RPOLC-POL-CLI-REL-TYP-CD TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).

           PERFORM  2435-1000-BUILD-PARM-INFO
               THRU 2435-1000-BUILD-PARM-INFO-X.

           MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
AGL149     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603

           PERFORM  2435-1000-OBTAIN-CLI-INFO
               THRU 2435-1000-OBTAIN-CLI-INFO-X.

           IF  L2435-RETRN-OK
               INITIALIZE L0620-INPUT-PARM-INFO
               IF  L2435-CLI-SEX-CD = 'C'
                   MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
               ELSE
                   MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
                   MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
                   MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
                   MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               END-IF
               MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
               MOVE L0620-SCREEN-NAME         TO
                                  MIR-DV-ASIGN-CLI-NM-T (WS-SUB)
AGL149         MOVE RPOLC-CLI-NM-TYP-CD       TO                        03160603
AGL149                          MIR-DV-ASIGN-CLI-NM-KEY-T (WS-SUB)(1:2) 03160603
AGL149         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                          MIR-DV-ASIGN-CLI-NM-KEY-T (WS-SUB)(3:3) 03160603
           END-IF.
           ADD 1                       TO  WS-WORK-SUB.

       8532-MOVE-ASSIGN-TO-MIR-X.
           EXIT.
      /
      *----------------------------
       8540-MOVE-TO-ANUTNT-RECORDS.
      *----------------------------

           MOVE SPACES               TO MIR-DV-ANUTNT-CLI-ID-G.
           MOVE SPACES               TO MIR-DV-ANUTNT-SUB-CD-G.
CPA001     MOVE SPACES TO MIR-DV-ANUTNT-ADDR-GR-CD-G.                   08300702
           MOVE SPACES               TO MIR-DV-ANUTNT-ADDR-CD-G.
CPA001     MOVE SPACES TO MIR-DV-ANUTNT-ADDR-SEQ-NUM-G.                 08300702
           MOVE SPACES               TO MIR-DV-ANUTNT-CLI-NM-G.

           MOVE 'D'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE 'D'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.

           MOVE LOW-VALUES           TO WPOLC-CLI-ID.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           MOVE +12      TO WS-WORK-SUB.

           IF WPOLC-IO-OK
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               PERFORM  8541-READ-ANUTNT-RECORDS
                   THRU 8541-READ-ANUTNT-RECORDS-X
                   VARYING WS-SUB FROM 1 BY 1
                       UNTIL WS-SUB > 5
                          OR WPOLC-IO-EOF
               PERFORM  POLC-3000-END-BROWSE
                   THRU POLC-3000-END-BROWSE-X
           END-IF.

       8540-MOVE-TO-ANUTNT-RECORDS-X.
           EXIT.
      /
      *-------------------------
       8541-READ-ANUTNT-RECORDS.
      *-------------------------

           PERFORM  8542-MOVE-ANUTNT-TO-MIR
               THRU 8542-MOVE-ANUTNT-TO-MIR-X.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X.

       8541-READ-ANUTNT-RECORDS-X.
           EXIT.
      /
      *------------------------
       8542-MOVE-ANUTNT-TO-MIR.
      *------------------------

           MOVE RPOLC-CLI-ID         TO MIR-DV-ANUTNT-CLI-ID-T (WS-SUB).
           MOVE RPOLC-POL-CLI-REL-SUB-CD TO
                                      MIR-DV-ANUTNT-SUB-CD-T (WS-SUB).
CPA001*           MOVE RPOLC-CLI-ADDR-TYP-CD  TO                        08300702
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD                                  08300702
CPA001       TO MIR-DV-ANUTNT-ADDR-GR-CD-T (WS-SUB).                    08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO                              08300702
                                      MIR-DV-ANUTNT-ADDR-CD-T (WS-SUB).
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM                                08300702
CPA001       TO MIR-DV-ANUTNT-ADDR-SEQ-NUM-T (WS-SUB).                  08300702

           MOVE RPOLC-CLI-ID             TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE RPOLC-POL-CLI-REL-TYP-CD TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).

           PERFORM  2435-1000-BUILD-PARM-INFO
               THRU 2435-1000-BUILD-PARM-INFO-X.

           MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
AGL149     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603

           PERFORM  2435-1000-OBTAIN-CLI-INFO
               THRU 2435-1000-OBTAIN-CLI-INFO-X.

           IF  L2435-RETRN-OK
               INITIALIZE L0620-INPUT-PARM-INFO
               IF  L2435-CLI-SEX-CD = 'C'
                   MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
               ELSE
                   MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
                   MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
                   MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
                   MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               END-IF
               MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
               MOVE L0620-SCREEN-NAME         TO
                                  MIR-DV-ANUTNT-CLI-NM-T (WS-SUB)
AGL149         MOVE RPOLC-CLI-NM-TYP-CD       TO                        03160603
AGL149                      MIR-DV-ANUTNT-CLI-NM-KEY-T (WS-SUB)(1:2)    03160603
AGL149         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                      MIR-DV-ANUTNT-CLI-NM-KEY-T (WS-SUB)(3:3)    03160603
           END-IF.
           ADD 1                       TO  WS-WORK-SUB.

       8542-MOVE-ANUTNT-TO-MIR-X.
           EXIT.
      /
      *----------------------------
       8550-MOVE-TO-IPARTY-RECORDS.
      *----------------------------

           MOVE SPACES               TO MIR-DV-IPARTY-CLI-ID-G.
           MOVE SPACES               TO MIR-DV-IPARTY-SUB-CD-G.
           MOVE SPACES               TO MIR-DV-IPARTY-ADDR-CD-G.
           MOVE SPACES               TO MIR-DV-IPARTY-CLI-NM-G.

           MOVE 'E'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE 'E'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.

           MOVE LOW-VALUES           TO WPOLC-CLI-ID.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           MOVE +17      TO WS-WORK-SUB.

           IF WPOLC-IO-OK
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               PERFORM  8551-READ-IPARTY-RECORDS
                   THRU 8551-READ-IPARTY-RECORDS-X
                   VARYING WS-SUB FROM 1 BY 1
                       UNTIL WS-SUB > 5
                          OR WPOLC-IO-EOF
               PERFORM  POLC-3000-END-BROWSE
                  THRU POLC-3000-END-BROWSE-X
           END-IF.

       8550-MOVE-TO-IPARTY-RECORDS-X.
           EXIT.
      /
      *-------------------------
       8551-READ-IPARTY-RECORDS.
      *-------------------------

           PERFORM  8552-MOVE-IPARTY-TO-MIR
               THRU 8552-MOVE-IPARTY-TO-MIR-X.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X.

       8551-READ-IPARTY-RECORDS-X.
           EXIT.
      /
      *------------------------
       8552-MOVE-IPARTY-TO-MIR.
      *------------------------

           MOVE RPOLC-CLI-ID         TO MIR-DV-IPARTY-CLI-ID-T (WS-SUB).
           MOVE RPOLC-POL-CLI-REL-SUB-CD TO
                                      MIR-DV-IPARTY-SUB-CD-T (WS-SUB).
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD                                  08300702
CPA001       TO MIR-DV-IPARTY-ADDR-GR-CD-T (WS-SUB).                    08300702
CPA001*           MOVE RPOLC-CLI-ADDR-TYP-CD  TO                        08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO                              08300702
                                      MIR-DV-IPARTY-ADDR-CD-T (WS-SUB).
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM                                08300702
CPA001       TO MIR-DV-IPARTY-ADDR-SEQ-NUM-T (WS-SUB).                  08300702

           MOVE RPOLC-CLI-ID             TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE RPOLC-POL-CLI-REL-TYP-CD TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).

           PERFORM  2435-1000-BUILD-PARM-INFO
               THRU 2435-1000-BUILD-PARM-INFO-X.

           MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
AGL149     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603

           PERFORM  2435-1000-OBTAIN-CLI-INFO
               THRU 2435-1000-OBTAIN-CLI-INFO-X.

           IF  L2435-RETRN-OK
               INITIALIZE L0620-INPUT-PARM-INFO
               IF  L2435-CLI-SEX-CD = 'C'
                   MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
               ELSE
                   MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
                   MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
                   MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
                   MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               END-IF
               MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
               MOVE L0620-SCREEN-NAME         TO
                                  MIR-DV-IPARTY-CLI-NM-T (WS-SUB)
AGL149         MOVE RPOLC-CLI-NM-TYP-CD       TO                        03160603
AGL149                        MIR-DV-IPARTY-CLI-NM-KEY-T (WS-SUB)(1:2)  03160603
AGL149         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                        MIR-DV-IPARTY-CLI-NM-KEY-T (WS-SUB)(3:3)  03160603
           END-IF.
           ADD 1                       TO  WS-WORK-SUB.

       8552-MOVE-IPARTY-TO-MIR-X.
           EXIT.
      /
      *----------------------------
       8560-MOVE-TO-TRST-RECORDS.
      *----------------------------

           MOVE SPACES               TO MIR-DV-TRST-CLI-ID-G.
           MOVE SPACES               TO MIR-DV-TRST-SUB-CD-G.
CPA001     MOVE SPACES TO MIR-DV-TRST-ADDR-GR-CD-G.                     08300702
           MOVE SPACES               TO MIR-DV-TRST-ADDR-CD-G.
CPA001     MOVE SPACES TO MIR-DV-TRST-ADDR-SEQ-NUM-G.                   08300702
           MOVE SPACES               TO MIR-DV-TRST-CLI-NM-G.

           MOVE 'T'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE 'T'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.

           MOVE LOW-VALUES           TO WPOLC-CLI-ID.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           MOVE +22      TO WS-WORK-SUB.

           IF WPOLC-IO-OK
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               PERFORM  8561-READ-TRST-RECORDS
                   THRU 8561-READ-TRST-RECORDS-X
                   VARYING WS-SUB FROM 1 BY 1
                       UNTIL WS-SUB > 5
                          OR WPOLC-IO-EOF
               PERFORM  POLC-3000-END-BROWSE
                   THRU POLC-3000-END-BROWSE-X
           END-IF.

       8560-MOVE-TO-TRST-RECORDS-X.
           EXIT.
      /
      *-------------------------
       8561-READ-TRST-RECORDS.
      *-------------------------

           PERFORM  8562-MOVE-TRST-TO-MIR
               THRU 8562-MOVE-TRST-TO-MIR-X.

           PERFORM  POLC-2000-READ-NEXT
               THRU POLC-2000-READ-NEXT-X.

       8561-READ-TRST-RECORDS-X.
           EXIT.
      /
      *------------------------
       8562-MOVE-TRST-TO-MIR.
      *------------------------

           MOVE RPOLC-CLI-ID          TO MIR-DV-TRST-CLI-ID-T (WS-SUB).
           MOVE RPOLC-POL-CLI-REL-SUB-CD TO
                                      MIR-DV-TRST-SUB-CD-T (WS-SUB).
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD                                  08300702
CPA001       TO MIR-DV-TRST-ADDR-GR-CD-T (WS-SUB).                      08300702
CPA001*           MOVE RPOLC-CLI-ADDR-TYP-CD  TO                        08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO                              08300702
                                      MIR-DV-TRST-ADDR-CD-T (WS-SUB).
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM                                08300702
CPA001       TO MIR-DV-TRST-ADDR-SEQ-NUM-T (WS-SUB).                    08300702

           MOVE RPOLC-CLI-ID             TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE RPOLC-POL-CLI-REL-TYP-CD TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).

           PERFORM  2435-1000-BUILD-PARM-INFO
               THRU 2435-1000-BUILD-PARM-INFO-X.

           MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
AGL149     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603

           PERFORM  2435-1000-OBTAIN-CLI-INFO
               THRU 2435-1000-OBTAIN-CLI-INFO-X.

           IF  L2435-RETRN-OK
               INITIALIZE L0620-INPUT-PARM-INFO
               IF  L2435-CLI-SEX-CD = 'C'
                   MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
               ELSE
                   MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
                   MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
                   MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
                   MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               END-IF
               MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
               MOVE L0620-SCREEN-NAME         TO
                                  MIR-DV-TRST-CLI-NM-T (WS-SUB)
AGL149         MOVE RPOLC-CLI-NM-TYP-CD       TO                        03160603
AGL149                          MIR-DV-TRST-CLI-NM-KEY-T (WS-SUB)(1:2)  03160603
AGL149         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                          MIR-DV-TRST-CLI-NM-KEY-T (WS-SUB)(3:3)  03160603
           END-IF.
           ADD 1                       TO  WS-WORK-SUB.

       8562-MOVE-TRST-TO-MIR-X.
           EXIT.
      /
      *---------------------------
       8570-MOVE-TO-SPOUS-RECORDS.
      *---------------------------

           MOVE SPACES               TO MIR-DV-SPOUS-CLI-ID.
           MOVE SPACES               TO MIR-DV-SPOUS-SUB-CD.
CPA001     MOVE SPACES TO MIR-DV-SPOUS-ADDR-GR-CD.                      08300702
           MOVE SPACES               TO MIR-DV-SPOUS-ADDR-CD.
CPA001     MOVE SPACES TO MIR-DV-SPOUS-ADDR-SEQ-NUM.                    08300702
           MOVE SPACES               TO MIR-DV-SPOUS-CLI-NM.

           MOVE 'S'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE 'S'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.

           MOVE LOW-VALUES           TO WPOLC-CLI-ID.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           MOVE +27      TO WS-WORK-SUB.

           IF WPOLC-IO-OK
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               IF NOT WPOLC-IO-EOF
                  PERFORM  8571-READ-SPOUS-RECORDS
                      THRU 8571-READ-SPOUS-RECORDS-X
               END-IF
               PERFORM  POLC-3000-END-BROWSE
                   THRU POLC-3000-END-BROWSE-X
           END-IF.

       8570-MOVE-TO-SPOUS-RECORDS-X.
           EXIT.
      /
      *-------------------------
       8571-READ-SPOUS-RECORDS.
      *-------------------------

           MOVE RPOLC-CLI-ID             TO MIR-DV-SPOUS-CLI-ID.
           MOVE RPOLC-POL-CLI-REL-SUB-CD TO MIR-DV-SPOUS-SUB-CD.
CPA001*           MOVE RPOLC-CLI-ADDR-TYP-CD    TO MIR-DV-SPOUS-ADDR-CD.08300702
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD TO MIR-DV-SPOUS-ADDR-GR-CD.      08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO MIR-DV-SPOUS-ADDR-CD.        08300702
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM TO MIR-DV-SPOUS-ADDR-SEQ-NUM.  08300702

           MOVE RPOLC-CLI-ID             TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE RPOLC-POL-CLI-REL-TYP-CD TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).

           PERFORM  2435-1000-BUILD-PARM-INFO
               THRU 2435-1000-BUILD-PARM-INFO-X.

           MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
AGL149     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603

           PERFORM  2435-1000-OBTAIN-CLI-INFO
               THRU 2435-1000-OBTAIN-CLI-INFO-X.

           IF  L2435-RETRN-OK
               INITIALIZE L0620-INPUT-PARM-INFO
               IF  L2435-CLI-SEX-CD = 'C'
                   MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
               ELSE
                   MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
                   MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
                   MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
                   MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
               END-IF
               MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
               PERFORM  0620-1000-FORMAT-SCREEN-NAME
                   THRU 0620-1000-FORMAT-SCREEN-NAME-X
               MOVE L0620-SCREEN-NAME         TO
                                  MIR-DV-SPOUS-CLI-NM
AGL149         MOVE RPOLC-CLI-NM-TYP-CD       TO                        03160603
AGL149                        MIR-DV-SPOUS-CLI-NM-KEY(1:2)              03160603
AGL149         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                        MIR-DV-SPOUS-CLI-NM-KEY(3:3)              03160603
ANB028         IF L2435-CLI-STATUS-IS-ACTL                              09140502
ANB028            MOVE  'Y'           TO MIR-SPOUS-CLI-STATUS-CD        09140502
ANB028         ELSE                                                     09140502
ANB028            MOVE  'N'           TO MIR-SPOUS-CLI-STATUS-CD        09140502
ANB028         END-IF                                                   09140502
           END-IF.

       8571-READ-SPOUS-RECORDS-X.
           EXIT.
      /
      *---------------------------
       8580-MOVE-TO-LBILL-RECORDS.
      *---------------------------

ANB006*    MOVE SPACES               TO MIR-DV-LBILL-CLI-ID.
ANB006*    MOVE SPACES               TO MIR-DV-LBILL-SUB-CD.
ANB006*    MOVE SPACES               TO MIR-DV-LBILL-ADDR-CD.
ANB006*    MOVE SPACES               TO MIR-DV-LBILL-CLI-NM.
ANB006     MOVE SPACES               TO MIR-LIST-BILL-CLI-CD.

           MOVE 'L'                  TO WPOLC-POL-CLI-REL-TYP-CD.
           MOVE 'L'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD.
           MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
           MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.

           MOVE LOW-VALUES           TO WPOLC-CLI-ID.
           MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.

           PERFORM  POLC-1000-BROWSE
               THRU POLC-1000-BROWSE-X.

           MOVE +28      TO WS-WORK-SUB.

           IF WPOLC-IO-OK
               PERFORM  POLC-2000-READ-NEXT
                   THRU POLC-2000-READ-NEXT-X
               IF NOT WPOLC-IO-EOF
                   PERFORM  8581-READ-LBILL-RECORDS
                       THRU 8581-READ-LBILL-RECORDS-X
               END-IF
               PERFORM  POLC-3000-END-BROWSE
                   THRU POLC-3000-END-BROWSE-X
           END-IF.

       8580-MOVE-TO-LBILL-RECORDS-X.
           EXIT.
      /
      *-------------------------
       8581-READ-LBILL-RECORDS.
      *-------------------------

ANB006*    MOVE RPOLC-CLI-ID             TO MIR-DV-LBILL-CLI-ID.
ANB006*    MOVE RPOLC-POL-CLI-REL-SUB-CD TO MIR-DV-LBILL-SUB-CD.
ANB006*    MOVE RPOLC-CLI-ADDR-TYP-CD    TO MIR-DV-LBILL-ADDR-CD.
ANB006     MOVE RPOLC-CLI-ID             TO MIR-LIST-BILL-CLI-CD.

           MOVE RPOLC-CLI-ID             TO
018633*                           WS-HOLD-CLI-ID (WS-WORK-SUB).
018633                            LCOMM-CLI-ID (WS-WORK-SUB).
           MOVE RPOLC-POL-CLI-REL-TYP-CD TO
018633*                           WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
018633                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).

ANB006*    PERFORM  2435-1000-BUILD-PARM-INFO
ANB006*        THRU 2435-1000-BUILD-PARM-INFO-X.
ANB006*
ANB006*    MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
ANB006*
ANB006*    PERFORM  2435-1000-OBTAIN-CLI-INFO
ANB006*        THRU 2435-1000-OBTAIN-CLI-INFO-X.
ANB006*
ANB006*    IF  L2435-RETRN-OK
ANB006*        INITIALIZE L0620-INPUT-PARM-INFO
ANB006*        IF  L2435-CLI-SEX-CD = 'C'
ANB006*            MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
ANB006*        ELSE
ANB006*            MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
ANB006*            MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
ANB006*            MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
ANB006*            MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
ANB006*        END-IF
ANB006*        MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
ANB006*        PERFORM  0620-1000-FORMAT-SCREEN-NAME
ANB006*            THRU 0620-1000-FORMAT-SCREEN-NAME-X
ANB006*        MOVE L0620-SCREEN-NAME         TO
ANB006*                           MIR-DV-LBILL-CLI-NM
ANB006*    END-IF.

       8581-READ-LBILL-RECORDS-X.
           EXIT.
ANB021/
ANB021*---------------------------
ANB021 8590-MOVE-TO-CHILD-RECORDS.
ANB021*---------------------------
ANB021
ANB021     MOVE SPACES               TO MIR-DV-CHILD-CLI-ID.
ANB021     MOVE SPACES               TO MIR-DV-CHILD-SUB-CD.
CPA001     MOVE SPACES TO MIR-DV-CHILD-ADDR-GR-CD.                      08300702
ANB021     MOVE SPACES               TO MIR-DV-CHILD-ADDR-CD.
CPA001     MOVE SPACES TO MIR-DV-CHILD-ADDR-SEQ-NUM.                    08300702
ANB021     MOVE SPACES               TO MIR-DV-CHILD-CLI-NM.
ANB021
ANB021     MOVE 'K'                  TO WPOLC-POL-CLI-REL-TYP-CD.
ANB021     MOVE 'K'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD.
ANB021     MOVE RPOL-POL-ID          TO WPOLC-POL-ID.
ANB021     MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.
ANB021
ANB021     MOVE LOW-VALUES           TO WPOLC-CLI-ID.
ANB021     MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.
ANB021
ANB021     PERFORM  POLC-1000-BROWSE
ANB021         THRU POLC-1000-BROWSE-X.
ANB021
ANB021     MOVE +29      TO WS-WORK-SUB.
ANB021
ANB021     IF WPOLC-IO-OK
ANB021         PERFORM  POLC-2000-READ-NEXT
ANB021             THRU POLC-2000-READ-NEXT-X
ANB021         IF NOT WPOLC-IO-EOF
ANB021            PERFORM  8591-READ-CHILD-RECORDS
ANB021                THRU 8591-READ-CHILD-RECORDS-X
ANB021         END-IF
ANB021         PERFORM  POLC-3000-END-BROWSE
ANB021             THRU POLC-3000-END-BROWSE-X
ANB021     END-IF.
ANB021
ANB021 8590-MOVE-TO-CHILD-RECORDS-X.
ANB021     EXIT.
ANB021/
ANB021*-------------------------
ANB021 8591-READ-CHILD-RECORDS.
ANB021*-------------------------
ANB021
ANB021     MOVE RPOLC-CLI-ID             TO MIR-DV-CHILD-CLI-ID.
ANB021     MOVE RPOLC-POL-CLI-REL-SUB-CD TO MIR-DV-CHILD-SUB-CD.
CPA001*ANB021     MOVE RPOLC-CLI-ADDR-TYP-CD    TO MIR-DV-CHILD-ADDR-CD.08300702
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD TO MIR-DV-CHILD-ADDR-GR-CD.      08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO MIR-DV-CHILD-ADDR-CD.        08300702
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM TO MIR-DV-CHILD-ADDR-SEQ-NUM.  08300702
ANB021
ANB021     MOVE RPOLC-CLI-ID             TO
AGL079*ANB021                     WS-HOLD-CLI-ID (WS-WORK-SUB).
AGL079                            LCOMM-CLI-ID (WS-WORK-SUB).
ANB021     MOVE RPOLC-POL-CLI-REL-TYP-CD TO
AGL079*ANB021                     WS-HOLD-CLI-REL-TYP-CD (WS-WORK-SUB).
AGL079                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).
ANB021
ANB021     PERFORM  2435-1000-BUILD-PARM-INFO
ANB021         THRU 2435-1000-BUILD-PARM-INFO-X.
ANB021
ANB021     MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.
AGL149     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603
ANB021
ANB021     PERFORM  2435-1000-OBTAIN-CLI-INFO
ANB021         THRU 2435-1000-OBTAIN-CLI-INFO-X.
ANB021
ANB021     IF  L2435-RETRN-OK
ANB021         INITIALIZE L0620-INPUT-PARM-INFO
ANB021         IF  L2435-CLI-SEX-CD = 'C'
ANB021             MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
ANB021         ELSE
ANB021             MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
ANB021             MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
ANB021             MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
ANB021             MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
ANB021         END-IF
ANB021         MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
ANB021         PERFORM  0620-1000-FORMAT-SCREEN-NAME
ANB021             THRU 0620-1000-FORMAT-SCREEN-NAME-X
ANB021         MOVE L0620-SCREEN-NAME         TO MIR-DV-CHILD-CLI-NM
AGL149         MOVE RPOLC-CLI-NM-TYP-CD       TO                        03160603
AGL149                                MIR-DV-CHILD-CLI-NM-KEY(1:2)      03160603
AGL149         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                                MIR-DV-CHILD-CLI-NM-KEY(3:3)      03160603
ANB028         IF L2435-CLI-STATUS-IS-ACTL                              09140502
ANB028            MOVE  'Y'           TO MIR-CHILD-CLI-STATUS-CD        09140502
ANB028         ELSE                                                     09140502
ANB028            MOVE  'N'           TO MIR-CHILD-CLI-STATUS-CD        09140502
ANB028         END-IF                                                   09140502
ANB021     END-IF.
ANB021
ANB021 8591-READ-CHILD-RECORDS-X.
ANB021     EXIT.
      /
APA040*---------------------------                                      08040601
APA040 8595-MOVE-TO-PB-RECORDS.                                         08040601
APA040*---------------------------                                      08040601
APA040                                                                  08040601
APA040     MOVE SPACES               TO MIR-DV-PB-CLI-ID.               08040601
APA040     MOVE SPACES               TO MIR-DV-PB-SUB-CD.               08040601
APA040     MOVE SPACES               TO MIR-DV-PB-ADDR-CD.              08040601
APA040     MOVE SPACES               TO MIR-DV-PB-CLI-NM.               08040601
CPA001     MOVE SPACES TO MIR-DV-PB-ADDR-GR-CD.                         08300702
CPA001     MOVE SPACES TO MIR-DV-PB-ADDR-SEQ-NUM.                       08300702
APA040                                                                  08040601
APA040     MOVE 'X'                  TO WPOLC-POL-CLI-REL-TYP-CD.       08040601
APA040     MOVE 'X'                  TO WPOLC-ENDBR-POL-CLI-REL-TYP-CD. 08040601
APA040     MOVE RPOL-POL-ID          TO WPOLC-POL-ID.                   08040601
APA040     MOVE RPOL-POL-ID          TO WPOLC-ENDBR-POL-ID.             08040601
APA040                                                                  08040601
APA040     MOVE LOW-VALUES           TO WPOLC-CLI-ID.                   08040601
APA040     MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.             08040601
APA040                                                                  08040601
APA040     PERFORM  POLC-1000-BROWSE                                    08040601
APA040         THRU POLC-1000-BROWSE-X.                                 08040601
APA040                                                                  08040601
APA040     MOVE +30      TO WS-WORK-SUB.                                08040601
APA040                                                                  08040601
APA040     IF WPOLC-IO-OK                                               08040601
APA040         PERFORM  POLC-2000-READ-NEXT                             08040601
APA040             THRU POLC-2000-READ-NEXT-X                           08040601
APA040         IF NOT WPOLC-IO-EOF                                      08040601
APA040            PERFORM  8596-READ-PB-RECORDS                         08040601
APA040                THRU 8596-READ-PB-RECORDS-X                       08040601
APA040         END-IF                                                   08040601
APA040         PERFORM  POLC-3000-END-BROWSE                            08040601
APA040             THRU POLC-3000-END-BROWSE-X                          08040601
APA040     END-IF.                                                      08040601
APA040                                                                  08040601
APA040 8595-MOVE-TO-PB-RECORDS-X.                                       08040601
APA040     EXIT.                                                        08040601
APA040/                                                                 08040601
APA040*-------------------------                                        08040601
APA040 8596-READ-PB-RECORDS.                                            08040601
APA040*-------------------------                                        08040601
APA040                                                                  08040601
APA040     MOVE RPOLC-CLI-ID             TO MIR-DV-PB-CLI-ID.           08040601
APA040     MOVE RPOLC-POL-CLI-REL-SUB-CD TO MIR-DV-PB-SUB-CD.           08040601
CPA001*APA040     MOVE RPOLC-CLI-ADDR-TYP-CD    TO MIR-DV-PB-ADDR-CD.   08040601
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD TO MIR-DV-PB-ADDR-GR-CD.         08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD TO MIR-DV-PB-ADDR-CD.           08300702
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM TO MIR-DV-PB-ADDR-SEQ-NUM.     08300702
APA040                                                                  08040601
APA040     MOVE RPOLC-CLI-ID             TO                             08040601
APA040                            LCOMM-CLI-ID (WS-WORK-SUB).           08040601
APA040     MOVE RPOLC-POL-CLI-REL-TYP-CD TO                             08040601
APA040                            LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).   08040601
APA040                                                                  08040601
APA040     PERFORM  2435-1000-BUILD-PARM-INFO                           08040601
APA040         THRU 2435-1000-BUILD-PARM-INFO-X.                        08040601
APA040                                                                  08040601
APA040     MOVE RPOLC-CLI-ID             TO L2435-CLI-ID.               08040601
APA040     MOVE RPOLC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        08040601
APA040     MOVE RPOLC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       08040601
APA040                                                                  08040601
APA040     PERFORM  2435-1000-OBTAIN-CLI-INFO                           08040601
APA040         THRU 2435-1000-OBTAIN-CLI-INFO-X.                        08040601
APA040                                                                  08040601
APA040     IF  L2435-RETRN-OK                                           08040601
APA040         INITIALIZE L0620-INPUT-PARM-INFO                         08040601
APA040         IF  L2435-CLI-SEX-CD = 'C'                               08040601
APA040             MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM        08040601
APA040         ELSE                                                     08040601
APA040             MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM       08040601
APA040             MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM       08040601
APA040             MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM  08040601
APA040             MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM       08040601
APA040         END-IF                                                   08040601
APA040         MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD       08040601
APA040         PERFORM  0620-1000-FORMAT-SCREEN-NAME                    08040601
APA040             THRU 0620-1000-FORMAT-SCREEN-NAME-X                  08040601
APA040         MOVE L0620-SCREEN-NAME         TO MIR-DV-PB-CLI-NM       08040601
APA040         MOVE RPOLC-CLI-NM-TYP-CD       TO                        08040601
APA040                                MIR-DV-PB-CLI-NM-KEY(1:2)         08040601
APA040         MOVE RPOLC-CLI-NM-SEQ-NUM      TO                        08040601
APA040                                MIR-DV-PB-CLI-NM-KEY(3:3)         08040601
APA040         IF L2435-CLI-STATUS-IS-ACTL                              08040601
APA040            MOVE  'Y'           TO MIR-PB-CLI-STATUS-CD           08040601
APA040         ELSE                                                     08040601
APA040            MOVE  'N'           TO MIR-PB-CLI-STATUS-CD           08040601
APA040         END-IF                                                   08040601
APA040     END-IF.                                                      08040601
APA040                                                                  08040601
APA040 8596-READ-PB-RECORDS-X.                                          08040601
APA040     EXIT.                                                        08040601
APA040                                                                  08040601
APA006*--------------------------
APA006 8600-MOVE-RESTRICT-TO-MIR.
APA006*--------------------------
APA006
APA006     PERFORM  9159-1000-BUILD-PARM-INFO
APA006         THRU 9159-1000-BUILD-PARM-INFO-X.
APA006
APA006     MOVE MIR-CLI-ID-T (1)    TO L9159-OWNER-CLI-ID.
APA006
APA006     PERFORM  9159-1000-GET-ALL-RESTR-CD
APA006         THRU 9159-1000-GET-ALL-RESTR-CD-X.
APA006
APA006     MOVE L9159-RESTRICT-CD-A TO  MIR-RESTRICT-CD-A.
APA006     MOVE L9159-RESTRICT-CD-B TO  MIR-RESTRICT-CD-B.
APA006     MOVE L9159-RESTRICT-CD-S TO  MIR-RESTRICT-CD-S.
APA006     MOVE L9159-RESTRICT-CD-I TO  MIR-RESTRICT-CD-I.
APA006
APA006 8600-MOVE-RESTRICT-TO-MIR-X.
APA006     EXIT.
APA006/
CPA001*-----------------------------                                    08300702
CPA001 8610-MOVE-TO-INSURED-RECORDS.                                    08300702
CPA001*-----------------------------                                    08300702
CPA001*                                                                 08300702
CPA001* MOVE PRIMARY INSURED FIRST, THEN MOVE RIDER INSURED             08300702
CPA001*                                                                 08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-ID-G.                           08300702
CPA001     MOVE SPACES TO MIR-DV-INSRD-CLI-NM-G.                        08300702
CPA001     MOVE SPACES TO MIR-DV-INSRD-CLI-NM-KEY-G.                    08300702
CPA001     MOVE SPACES TO MIR-DV-INSRD-SUB-CD-G.                        08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-ADDR-GR-2-CD-G.                 08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-ADDR-TYP-2-CD-G.                08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-ADDR-SEQ-2-NUM-G.               08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-DAY-PHON-NUM-G.                 08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-NIGHT-PHON-NUM-G.               08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-CELL-PHON-NUM-G.                08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-CNTCT-MAIL-NUM-G.               08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-TAX-ID-G.                       08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-ID-TYP-CD-G.                    08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-MARIT-STAT-CD-G.                08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-CITZ-CD-G.                      08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-PERM-RES-IND-G.                 08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-INCM-EARN-AMT-G.                08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-WGT-G.                          08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-HT-G.                           08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-OCCP-ID-G.                      08300702
CPA001     MOVE SPACES TO MIR-INSRD-CLI-SHIP-CD-G.                      01110802
CPR149     MOVE SPACES TO MIR-CVG-CLI-INSRD-CD-G.                       06171504
CPR149     MOVE SPACE  TO WS-CVG-CLI-INSRD-CD.                          06171504
CPA001                                                                  08300702
CPA001     MOVE 1 TO WS-SUB.                                            08300702
CPA001     MOVE 31 TO WS-WORK-SUB.                                      08300702
CPA001                                                                  08300702
CPA001     MOVE LOW-VALUES           TO WPOLC-KEY.                      08300702
CPA001     SET WPOLC-POL-CLI-REL-TYP-INSURED TO TRUE.                   08300702
CPA001     MOVE RPOL-POL-ID          TO WPOLC-POL-ID.                   08300702
CPA001     MOVE WPOLC-KEY            TO WPOLC-ENDBR-KEY.                08300702
CPA001     MOVE HIGH-VALUES          TO WPOLC-ENDBR-CLI-ID.             08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-1000-BROWSE                                    08300702
CPA001         THRU POLC-1000-BROWSE-X.                                 08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-2000-READ-NEXT                                 08300702
CPA001         THRU POLC-2000-READ-NEXT-X                               08300702
CPA001                                                                  08300702
CPA001     SET WS-PRIMARY-INSRD-NOT-FOUND TO TRUE.                      08300702
CPA001                                                                  08300702
CPA001     PERFORM  8611-READ-PRI-INSRD-RECORDS                         08300702
CPA001         THRU 8611-READ-PRI-INSRD-RECORDS-X                       08300702
CPA001             UNTIL WPOLC-IO-EOF                                   08300702
CPA001                OR WS-SUB > 30                                    08300702
CPA001                OR WS-PRIMARY-INSRD-FOUND.                        08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-3000-END-BROWSE                                08300702
CPA001         THRU POLC-3000-END-BROWSE-X.                             08300702
CPA001                                                                  08300702
CPA001     MOVE LOW-VALUES TO WPOLC-KEY.                                08300702
CPA001     SET WPOLC-POL-CLI-REL-TYP-INSURED TO TRUE.                   08300702
CPA001     MOVE RPOL-POL-ID TO WPOLC-POL-ID.                            08300702
CPA001     MOVE WPOLC-KEY TO WPOLC-ENDBR-KEY.                           08300702
CPA001     MOVE HIGH-VALUES TO WPOLC-ENDBR-CLI-ID.                      08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-1000-BROWSE                                    08300702
CPA001         THRU POLC-1000-BROWSE-X.                                 08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-2000-READ-NEXT                                 08300702
CPA001         THRU POLC-2000-READ-NEXT-X                               08300702
CPA001                                                                  08300702
CPA001     PERFORM  8612-READ-RDR-INSRD-RECORDS                         08300702
CPA001         THRU 8612-READ-RDR-INSRD-RECORDS-X                       08300702
CPA001             UNTIL WPOLC-IO-EOF                                   08300702
CPA001                OR WS-SUB > 30.                                   08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-3000-END-BROWSE                                08300702
CPA001         THRU POLC-3000-END-BROWSE-X.                             08300702
CPA001                                                                  08300702
CPA001 8610-MOVE-TO-INSURED-RECORDS-X.                                  08300702
CPA001     EXIT.                                                        08300702
CPA001/                                                                 08300702
CPA001*----------------------------                                     08300702
CPA001 8611-READ-PRI-INSRD-RECORDS.                                     08300702
CPA001*----------------------------                                     08300702
CPA001     IF  RPOLC-POL-CLI-REL-SUB-CD NOT = 'P'                       08300702
CPA001         PERFORM  POLC-2000-READ-NEXT                             08300702
CPA001             THRU POLC-2000-READ-NEXT-X                           08300702
CPA001         GO TO 8611-READ-PRI-INSRD-RECORDS-X                      08300702
CPA001     END-IF.                                                      08300702
CPA001                                                                  08300702
CPA001     SET WS-PRIMARY-INSRD-FOUND TO TRUE.                          08300702
CPR149* SET SAME PERSON FOR PRIMARY INSURED                             06171504
CPR149     SET WS-CVG-CLI-INSRD-SAME  TO TRUE.                          06171504
CPA001                                                                  08300702
CPA001     PERFORM  8613-MOVE-INSRD-TO-MIR                              08300702
CPA001         THRU 8613-MOVE-INSRD-TO-MIR-X.                           08300702
CPA001                                                                  08300702
CPA001     ADD +1 TO WS-SUB.                                            08300702
CPA001     ADD +1 TO WS-WORK-SUB.                                       08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-2000-READ-NEXT                                 08300702
CPA001         THRU POLC-2000-READ-NEXT-X.                              08300702
CPA001                                                                  08300702
CPA001 8611-READ-PRI-INSRD-RECORDS-X.                                   08300702
CPA001     EXIT.                                                        08300702
CPA001/                                                                 08300702
CPA001*----------------------------                                     08300702
CPA001 8612-READ-RDR-INSRD-RECORDS.                                     08300702
CPA001*----------------------------                                     08300702
CPA001     IF  RPOLC-POL-CLI-REL-SUB-CD = 'P'                           08300702
CPA001         PERFORM  POLC-2000-READ-NEXT                             08300702
CPA001             THRU POLC-2000-READ-NEXT-X                           08300702
CPA001         GO TO 8612-READ-RDR-INSRD-RECORDS-X                      08300702
CPA001     END-IF.                                                      08300702
CPA001                                                                  08300702
CPR149* READ TCVGC FOR THE RELATIONSHIP TO PRIMARY INSURED              06171504
CPR149     PERFORM  8614-READ-CVGC-CLI-INSRD-CD                         06171504
CPR149        THRU  8614-READ-CVGC-CLI-INSRD-CD-X.                      06171504
CPR149                                                                  06171504
CPA001     PERFORM  8613-MOVE-INSRD-TO-MIR                              08300702
CPA001         THRU 8613-MOVE-INSRD-TO-MIR-X.                           08300702
CPA001                                                                  08300702
CPA001     ADD +1                   TO WS-SUB.                          08300702
CPA001     ADD +1                   TO WS-WORK-SUB.                     08300702
CPA001                                                                  08300702
CPA001     PERFORM  POLC-2000-READ-NEXT                                 08300702
CPA001         THRU POLC-2000-READ-NEXT-X.                              08300702
CPA001                                                                  08300702
CPA001 8612-READ-RDR-INSRD-RECORDS-X.                                   08300702
CPA001     EXIT.                                                        08300702
CPA001/                                                                 08300702
CPA001*-----------------------                                          08300702
CPA001 8613-MOVE-INSRD-TO-MIR.                                          08300702
CPA001*-----------------------                                          08300702
CPA001     MOVE RPOLC-CLI-ID TO MIR-INSRD-CLI-ID-T (WS-SUB)             08300702
CPA001                          LCOMM-CLI-ID (WS-WORK-SUB)              08300702
CPA001     MOVE RPOLC-POL-CLI-REL-SUB-CD                                08300702
CPA001       TO MIR-DV-INSRD-SUB-CD-T (WS-SUB).                         08300702
CPA001     MOVE RPOLC-POL-CLI-REL-TYP-CD                                08300702
CPA001       TO LCOMM-CLI-REL-TYP-CD (WS-WORK-SUB).                     08300702
CPA001     MOVE RPOLC-CLI-ADDR-GR-2-CD                                  08300702
CPA001       TO MIR-INSRD-CLI-ADDR-GR-2-CD-T(WS-SUB).                   08300702
CPA001     MOVE RPOLC-CLI-ADDR-TYP-2-CD                                 08300702
CPA001       TO MIR-INSRD-CLI-ADDR-TYP-2-CD-T (WS-SUB).                 08300702
CPA001     MOVE RPOLC-CLI-ADDR-SEQ-2-NUM                                08300702
CPA001       TO MIR-INSRD-CLI-ADDR-SEQ-2-NUM-T (WS-SUB).                08300702
CPA001     MOVE RPOLC-POL-DAY-PHON-NUM                                  08300702
CPA001       TO MIR-INSRD-CLI-DAY-PHON-NUM-T (WS-SUB).                  08300702
CPA001     MOVE RPOLC-POL-NIGHT-PHON-NUM                                03240802
CPA001       TO MIR-INSRD-CLI-NIGHT-PHON-NUM-T (WS-SUB).                08300702
CPA001     MOVE RPOLC-POL-CELL-PHON-NUM                                 08300702
CPA001       TO MIR-INSRD-CLI-CELL-PHON-NUM-T (WS-SUB).                 08300702
CPA001     MOVE RPOLC-POL-CNTCT-MAIL-CD                                 08300702
CPA001       TO MIR-INSRD-CLI-CNTCT-MAIL-NUM-T (WS-SUB).                08300702
CPA001     MOVE RPOLC-CLI-TAX-ID                                        08300702
CPA001       TO MIR-INSRD-CLI-TAX-ID-T (WS-SUB).                        08300702
CPA001     MOVE RPOLC-CLI-ID-TYP-CD                                     08300702
CPA001       TO MIR-INSRD-CLI-ID-TYP-CD-T (WS-SUB).                     08300702
CPA001     MOVE RPOLC-CLI-MARIT-STAT-CD                                 08300702
CPA001       TO MIR-INSRD-CLI-MARIT-STAT-CD-T (WS-SUB).                 08300702
CPA001     MOVE RPOLC-CLI-CITZ-CD                                       08300702
CPA001       TO MIR-INSRD-CLI-CITZ-CD-T (WS-SUB).                       08300702
CPA001     MOVE RPOLC-CLI-PERM-RES-IND                                  08300702
CPA001       TO MIR-INSRD-CLI-PERM-RES-IND-T (WS-SUB).                  08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-INCM-EARN-AMT TO L0290-INPUT-V02.                 08300702
CPA001     MOVE 2 TO L0290-PRECISION.                                   08300702
CPA001     MOVE LENGTH OF MIR-INSRD-CLI-INCM-EARN-AMT-T (WS-SUB)        08300702
CPA001       TO L0290-MAX-OUT-LEN.                                      08300702
CPA001     PERFORM 0290-2000-FORMAT-FOR-MIR                             08300702
CPA001        THRU 0290-2000-FORMAT-FOR-MIR-X.                          08300702
CPA001     MOVE L0290-OUTPUT-DATA                                       08300702
CPA001       TO MIR-INSRD-CLI-INCM-EARN-AMT-T (WS-SUB).                 08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-CLI-WGT TO L0290-INPUT-V01.                       08300702
CPA001     MOVE 1 TO L0290-PRECISION.                                   08300702
CPA001     MOVE LENGTH OF MIR-INSRD-CLI-WGT-T (WS-SUB)                  08300702
CPA001       TO L0290-MAX-OUT-LEN.                                      08300702
CPA001     PERFORM 0290-2000-FORMAT-FOR-MIR                             08300702
CPA001        THRU 0290-2000-FORMAT-FOR-MIR-X.                          08300702
CPA001     MOVE L0290-OUTPUT-DATA TO MIR-INSRD-CLI-WGT-T (WS-SUB).      08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-CLI-HT TO L0290-INPUT-V01.                        08300702
CPA001     MOVE 1 TO L0290-PRECISION.                                   08300702
CPA001     MOVE LENGTH OF MIR-INSRD-CLI-HT-T (WS-SUB)                   08300702
CPA001       TO L0290-MAX-OUT-LEN.                                      08300702
CPA001     PERFORM 0290-2000-FORMAT-FOR-MIR                             08300702
CPA001        THRU 0290-2000-FORMAT-FOR-MIR-X.                          08300702
CPA001     MOVE L0290-OUTPUT-DATA TO MIR-INSRD-CLI-HT-T (WS-SUB).       08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-CLI-OCCP-ID                                       08300702
CPA001       TO MIR-INSRD-CLI-OCCP-ID-T (WS-SUB).                       08300702
CPA001     MOVE RPOLC-CLI-SHIP-CD                                       01110802
CPA001       TO MIR-INSRD-CLI-SHIP-CD-T (WS-SUB).                       01110802
CPA001                                                                  08300702
CPA001     PERFORM  2435-1000-BUILD-PARM-INFO                           08300702
CPA001         THRU 2435-1000-BUILD-PARM-INFO-X.                        08300702
CPA001                                                                  08300702
CPA001     MOVE RPOLC-CLI-ID TO L2435-CLI-ID.                           08300702
CPA001     MOVE RPOLC-CLI-NM-TYP-CD TO L2435-CLI-NM-TYP-CD.             08300702
CPA001     MOVE RPOLC-CLI-NM-SEQ-NUM TO L2435-CLI-NM-SEQ-NUM.           08300702
CPA001                                                                  08300702
CPA001     PERFORM  2435-1000-OBTAIN-CLI-INFO                           08300702
CPA001         THRU 2435-1000-OBTAIN-CLI-INFO-X.                        08300702
CPA001                                                                  08300702
CPA001     IF  L2435-RETRN-OK                                           08300702
CPA001         INITIALIZE L0620-INPUT-PARM-INFO                         08300702
CPA001         IF  L2435-CLI-SEX-CD = 'C'                               08300702
CPA001             MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM        08300702
CPA001         ELSE                                                     08300702
CPA001             MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM       08300702
CPA001             MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM       08300702
CPA001             MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM  08300702
CPA001             MOVE L2435-CLI-SFX-NM TO L0620-CLI-SFX-NM            08300702
CPA001         END-IF                                                   08300702
CPA001         MOVE L2435-CLI-SEX-CD TO L0620-CLI-SEX-CD                08300702
CPA001         PERFORM  0620-1000-FORMAT-SCREEN-NAME                    08300702
CPA001             THRU 0620-1000-FORMAT-SCREEN-NAME-X                  08300702
CPA001         MOVE L0620-SCREEN-NAME TO MIR-DV-INSRD-CLI-NM-T (WS-SUB) 08300702
CPA001         MOVE RPOLC-CLI-NM-TYP-CD                                 08300702
CPA001           TO MIR-DV-INSRD-CLI-NM-KEY-T (WS-SUB)(1:2)             08300702
CPA001         MOVE RPOLC-CLI-NM-SEQ-NUM                                08300702
CPA001           TO MIR-DV-INSRD-CLI-NM-KEY-T (WS-SUB)(3:3)             08300702
CPA001     END-IF.                                                      08300702
CPR149                                                                  06171504
CPR149     MOVE WS-CVG-CLI-INSRD-CD TO MIR-CVG-CLI-INSRD-CD-T (WS-SUB). 06171504
CPA001 8613-MOVE-INSRD-TO-MIR-X.                                        08300702
CPA001     EXIT.                                                        08300702
CPA001/                                                                 08300702
CPR149*----------------------------                                     06171504
CPR149 8614-READ-CVGC-CLI-INSRD-CD.                                     06171504
CPR149*----------------------------                                     06171504
CPR149     MOVE  LOW-VALUES          TO WCVGC-KEY.                      06171504
CPR149     MOVE  HIGH-VALUES         TO WCVGC-ENDBR-KEY.                06171504
CPR149     MOVE  RPOL-POL-ID         TO WCVGC-POL-ID                    06171504
CPR149                                  WCVGC-ENDBR-POL-ID.             06171504
CPR149                                                                  06171504
CPR149     PERFORM  CVGC-1000-BROWSE                                    06171504
CPR149         THRU CVGC-1000-BROWSE-X.                                 06171504
CPR149                                                                  06171504
CPR149     IF  WCVGC-IO-EOF                                             06171504
CPR149         GO TO  8614-READ-CVGC-CLI-INSRD-CD-X                     06171504
CPR149     END-IF.                                                      06171504
CPR149                                                                  06171504
CPR149     PERFORM  CVGC-2000-READ-NEXT                                 06171504
CPR149         THRU CVGC-2000-READ-NEXT-X.                              06171504
CPR149                                                                  06171504
CPR149     SET  WS-CVG-CLI-INSRD-NOT-FOUND TO TRUE.                     06171504
CPR149     PERFORM  8615-SET-UP-CVGC-CLI-INSRD                          06171504
CPR149         THRU 8615-SET-UP-CVGC-CLI-INSRD-X                        06171504
CPR149         UNTIL  WCVGC-IO-EOF                                      06171504
CPR149            OR  WS-CVG-CLI-INSRD-FOUND.                           06171504
CPR149                                                                  06171504
CPR149     PERFORM  CVGC-3000-END-BROWSE                                06171504
CPR149         THRU CVGC-3000-END-BROWSE-X.                             06171504
CPR149                                                                  06171504
CPR149 8614-READ-CVGC-CLI-INSRD-CD-X.                                   06171504
CPR149     EXIT.                                                        06171504
CPR149/                                                                 06171504
CPR149*-----------------------------                                    06171504
CPR149 8615-SET-UP-CVGC-CLI-INSRD.                                      06171504
CPR149*-----------------------------                                    06171504
CPR149     IF  RCVGC-INSRD-CLI-ID = RPOLC-CLI-ID                        06171504
CPR149         SET  WS-CVG-CLI-INSRD-FOUND TO TRUE                      06171504
CPR149         MOVE RCVGC-CVG-CLI-INSRD-CD TO WS-CVG-CLI-INSRD-CD       06171504
CPR149         GO TO 8615-SET-UP-CVGC-CLI-INSRD-X                       06171504
CPR149     END-IF.                                                      06171504
CPR149                                                                  06171504
CPR149     PERFORM  CVGC-2000-READ-NEXT                                 06171504
CPR149         THRU CVGC-2000-READ-NEXT-X.                              06171504
CPR149                                                                  06171504
CPR149 8615-SET-UP-CVGC-CLI-INSRD-X.                                    06171504
CPR149     EXIT.                                                        06171504
CPR149/                                                                 06171504
AAG008*--------------------------
AAG008 8700-MOVE-ZCVW-REC-TO-MIR.
AAG008*--------------------------
AAG008     MOVE RPOL-POL-BASE-CVG-NUM TO I.
AAG008     PERFORM  9081-1000-BUILD-PARM-INFO
AAG008        THRU  9081-1000-BUILD-PARM-INFO-X.
AAG008     PERFORM  9081-2000-READ-CVG-AGENTS
AAG008        THRU  9081-2000-READ-CVG-AGENTS-X.
AAG008
AAG008     PERFORM  8711-LOAD-DATA-LINE
AAG008         THRU 8711-LOAD-DATA-LINE-X
AAG008         VARYING WS-SUB FROM 1 BY 1
AAG008         UNTIL WS-SUB > 3.
AAG008
AAG008
AAG008 8700-MOVE-ZCVW-REC-TO-MIR-X.
AAG008     EXIT.
AAG008/
AAG008*--------------------
AAG008 8711-LOAD-DATA-LINE.
AAG008*--------------------
AAG008     MOVE L9081-AGT-ID (I, WS-SUB)
AAG008                              TO MIR-AGT-ID-T (WS-SUB).
AAG008     IF  L9081-AGT-ID (I, WS-SUB) = SPACES
AAG008         MOVE SPACES         TO MIR-DV-AGT-CLI-NM-T (WS-SUB)
AAG008     ELSE
AAG008         PERFORM  0083-0000-INIT-PARM-INFO
AAG008             THRU 0083-0000-INIT-PARM-INFO-X
AAG008         SET L0083-AGENT-NAME-REQD  TO TRUE
AAG008         MOVE L9081-AGT-ID (I, WS-SUB)
AAG008                                    TO L0083-AGENT-ID
AAG008         PERFORM  0083-1000-RETRIEVE-AGT-INFO
AAG008             THRU 0083-1000-RETRIEVE-AGT-INFO-X
AAG008         IF  L0083-RETRN-OK
AAG008             INITIALIZE L0620-INPUT-PARM-INFO
AAG008             MOVE L0083-AGENT-GIV-NM    TO L0620-CLI-GIV-NM
AAG008             MOVE L0083-AGENT-SUR-NM    TO L0620-CLI-SUR-NM
AAG008             MOVE L0083-CLI-SFX-NM      TO L0620-CLI-SFX-NM
AAG008             PERFORM  0620-1000-FORMAT-SCREEN-NAME
AAG008                 THRU 0620-1000-FORMAT-SCREEN-NAME-X
AAG008             MOVE L0620-SCREEN-NAME
AAG008                             TO MIR-DV-AGT-CLI-NM-T (WS-SUB)
CPA001             MOVE L0083-OLS-AGT-ID (5:9)                          01150804
CPA001                             TO MIR-AGT-ID-T (WS-SUB)             01150804
AAG008         ELSE
AAG008             MOVE SPACES
AAG008                             TO MIR-DV-AGT-CLI-NM-T (WS-SUB)
AAG008         END-IF
ANB006                                                                  03110508
ANB006         MOVE WS-LFCM-CO-ID             TO WZAGS-LFCM-CO-ID       03110508
ANB006         MOVE L9081-AGT-ID (I, WS-SUB)  TO WZAGS-LVL-1-CD         03110508
ANB006         MOVE L9081-WRIT-AGT-OVRID-ID (I, WS-SUB)                 03110508
ANB006                                        TO WZAGS-SITU-CD          03110508
ANB006         MOVE '1'                       TO WZAGS-HIRE-LVL-CD      03110508
ANB006         PERFORM  ZAGS-1000-READ                                  03110508
ANB006             THRU ZAGS-1000-READ-X                                03110508
ANB006         IF  WZAGS-IO-OK                                          03110508
ANB006             MOVE RZAGS-AGNCY-BR-ID (6:5)                         03110508
ANB006                                    TO MIR-AGNCY-BR-ID-T (WS-SUB) 03110508
AAG008                                       MIR-AGENCY-CD-T (WS-SUB)   08210603
ANB006         END-IF                                                   03110508
AAG008     END-IF.
AAG008
AAG008     MOVE L9081-WRIT-AGT-OVRID-ID (I, WS-SUB)
AAG008                             TO MIR-WRIT-AGT-OVRID-ID-T (WS-SUB).
AGL079*AAG008     MULTIPLY L9081-WRIT-AGT-SHR-PCT (I, WS-SUB) BY +100
AGL079*AAG008             GIVING    L0290-INPUT-NUMBER.
AGL079     MOVE L9081-WRIT-AGT-SHR-PCT (I, WS-SUB)
AGL079                             TO L0290-INPUT-V02.
AAG008
AAG008     MOVE +2                     TO L0290-PRECISION.
AAG008     MOVE LENGTH OF MIR-POL-AGT-SHR-PCT-T (I)
AAG008                                 TO L0290-MAX-OUT-LEN.
AGL079*AAG008     PERFORM  0290-1000-NUMERIC-FORMAT
AGL079*AAG008         THRU 0290-1000-NUMERIC-FORMAT-X.
AGL079     PERFORM 0290-2000-FORMAT-FOR-MIR
AGL079        THRU 0290-2000-FORMAT-FOR-MIR-X.
AAG008     MOVE L0290-OUTPUT-DATA      TO MIR-POL-AGT-SHR-PCT-T (WS-SUB).
AAG008      MOVE L9081-AGT-ID (I, WS-SUB)  TO WAG-AGT-ID.
AAG008      MOVE SPACES                    TO RAG-AGNCY-ID.
WNB003      MOVE SPACES                    TO RAG-AGT-CLAS-CD.
WNB003      MOVE SPACES                    TO RAG-AGT-CAT-CD.
WNB003      MOVE SPACES                    TO RAG-AGT-CNTRCT-STRT-DT.
AAG008      PERFORM  L9005-1000-READ
AAG008          THRU L9005-1000-READ-X.
AAG008*AAG008  MOVE RAG-AGNCY-ID            TO MIR-AGENCY-CD-T (WS-SUB).08210603
WNB003      MOVE RAG-AGT-CLAS-CD         TO MIR-AGT-CLAS-CD-T (WS-SUB).
WNB003      MOVE RAG-AGT-CAT-CD          TO MIR-AGT-CAT-CD-T (WS-SUB).
WNB003      MOVE RAG-AGT-CNTRCT-STRT-DT  TO L1640-INTERNAL-DATE.
WNB003      PERFORM  1640-8000-INTERNAL-TO-MIR
WNB003          THRU 1640-8000-INTERNAL-TO-MIR-X.
WNB003      MOVE L1640-EXTERNAL-DATE     TO MIR-LIC-EFF-DT-T (WS-SUB).
AAG008
AAG008 8711-LOAD-DATA-LINE-X.
AAG008     EXIT.
AAG008/
AAG024*--------------------------                                       10130506
AAG024 8750-MOVE-ZCVH-REC-TO-MIR.                                       10130506
AAG024*--------------------------                                       10130506
AAG024     MOVE LOW-VALUE                TO WZCVJ-KEY.                  10130506
AAG024     MOVE HIGH-VALUE               TO WZCVJ-ENDBR-KEY.            10130506
AAG024     MOVE RPOL-POL-ID              TO WZCVJ-POL-ID                10130506
AAG024                                      WZCVJ-ENDBR-POL-ID.         10130506
AAG024     MOVE RPOL-POL-BASE-CVG-NUM    TO WZCVJ-CVG-NUM-N             10130506
AAG024                                      WZCVJ-ENDBR-CVG-NUM-N.      10130506
AAG024     MOVE 'O'                      TO WZCVJ-WRIT-HIST-TYP-CD      10130506
AAG024                                   WZCVJ-ENDBR-WRIT-HIST-TYP-CD.  10130506
AAG024     MOVE WWKDT-LOW-DT             TO WZCVJ-WRIT-HIST-DT.         10130506
AAG024     MOVE WWKDT-HIGH-DT            TO WZCVJ-ENDBR-WRIT-HIST-DT.   10130506
AAG024                                                                  10130506
AAG024     PERFORM  ZCVJ-1000-BROWSE                                    10130506
AAG024        THRU  ZCVJ-1000-BROWSE-X.                                 10130506
AAG024                                                                  10130506
AAG024     IF WZCVJ-IO-OK                                               10130506
AAG024        PERFORM  ZCVJ-2000-READ-NEXT                              10130506
AAG024           THRU  ZCVJ-2000-READ-NEXT-X                            10130506
AAG024                                                                  10130506
AAG024        PERFORM  8751-LOAD-DATA-LINE                              10130506
AAG024            THRU 8751-LOAD-DATA-LINE-X                            10130506
AAG024            VARYING WS-SUB FROM 1 BY 1                            10130506
AAG024              UNTIL WS-SUB > 3                                    10130506
AAG024                 OR WZCVJ-IO-EOF                                  10130506
AAG024     END-IF.                                                      10130506
AAG024                                                                  10130506
AAG024 8750-MOVE-ZCVH-REC-TO-MIR-X.                                     10130506
AAG024     EXIT.                                                        10130506
AAG024/                                                                 10130506
AAG024*--------------------                                             10130506
AAG024 8751-LOAD-DATA-LINE.                                             10130506
AAG024*--------------------                                             10130506
AAG024                                                                  10130506
AAG024     MOVE RZCVH-AGT-ID       TO MIR-ORG-AGT-ID-T (WS-SUB).        10130506
AAG024     IF  RZCVH-AGT-ID = SPACES                                    10130506
AAG024         MOVE SPACES         TO MIR-DV-ORG-AGT-CLI-NM-T (WS-SUB)  10130506
AAG024     ELSE                                                         10130506
AAG024         PERFORM  0083-0000-INIT-PARM-INFO                        10130506
AAG024             THRU 0083-0000-INIT-PARM-INFO-X                      10130506
AAG024         SET L0083-AGENT-NAME-REQD  TO TRUE                       10130506
AAG024         MOVE RZCVH-AGT-ID          TO L0083-AGENT-ID             10130506
AAG024         PERFORM  0083-1000-RETRIEVE-AGT-INFO                     10130506
AAG024             THRU 0083-1000-RETRIEVE-AGT-INFO-X                   10130506
AAG024         IF  L0083-RETRN-OK                                       10130506
AAG024             INITIALIZE L0620-INPUT-PARM-INFO                     10130506
AAG024             MOVE L0083-AGENT-GIV-NM    TO L0620-CLI-GIV-NM       10130506
AAG024             MOVE L0083-AGENT-SUR-NM    TO L0620-CLI-SUR-NM       10130506
AAG024             MOVE L0083-CLI-SFX-NM      TO L0620-CLI-SFX-NM       10130506
AAG024             PERFORM  0620-1000-FORMAT-SCREEN-NAME                10130506
AAG024                 THRU 0620-1000-FORMAT-SCREEN-NAME-X              10130506
AAG024             MOVE L0620-SCREEN-NAME                               10130506
AAG024                             TO MIR-DV-ORG-AGT-CLI-NM-T (WS-SUB)  10130506
CPA001             MOVE L0083-OLS-AGT-ID (5:9)                          01150804
CPA001                             TO MIR-ORG-AGT-ID-T (WS-SUB)         01150804
AAG024         ELSE                                                     10130506
AAG024             MOVE SPACES                                          10130506
AAG024                             TO MIR-DV-ORG-AGT-CLI-NM-T (WS-SUB)  10130506
AAG024         END-IF                                                   10130506
AAG024                                                                  10130506
AAG024         MOVE WS-LFCM-CO-ID             TO WZAGS-LFCM-CO-ID       10130506
AAG024         MOVE RZCVH-AGT-ID              TO WZAGS-LVL-1-CD         10130506
AAG024         MOVE RZCVH-WRIT-AGT-OVRID-ID   TO WZAGS-SITU-CD          10130506
AAG024         MOVE '1'                       TO WZAGS-HIRE-LVL-CD      10130506
AAG024         PERFORM  ZAGS-1000-READ                                  10130506
AAG024             THRU ZAGS-1000-READ-X                                10130506
AAG024         IF  WZAGS-IO-OK                                          10130506
AAG024             MOVE RZAGS-AGNCY-BR-ID (6:5)                         10130506
AAG024                                TO MIR-ORG-AGNCY-BR-ID-T (WS-SUB) 10130506
AAG024         END-IF                                                   10130506
AAG024     END-IF.                                                      10130506
AAG024                                                                  10130506
AAG024     MOVE RZCVH-WRIT-AGT-OVRID-ID                                 10130506
AAG024                          TO MIR-ORG-WRIT-AGT-OVRID-ID-T (WS-SUB).10130506
AAG024     MOVE RZCVH-WRIT-AGT-SHR-PCT TO L0290-INPUT-V02.              10130506
AAG024                                                                  10130506
AAG024     MOVE +2                     TO L0290-PRECISION.              10130506
AAG024     MOVE LENGTH OF MIR-ORG-POL-AGT-SHR-PCT-T (WS-SUB)            10130506
AAG024                                 TO L0290-MAX-OUT-LEN.            10130506
AAG024     PERFORM 0290-2000-FORMAT-FOR-MIR                             10130506
AAG024        THRU 0290-2000-FORMAT-FOR-MIR-X.                          10130506
AAG024     MOVE L0290-OUTPUT-DATA      TO                               10130506
AAG024                             MIR-ORG-POL-AGT-SHR-PCT-T (WS-SUB).  10130506
AAG024      MOVE RZCVH-AGT-ID          TO WAG-AGT-ID.                   10130506
AAG024      MOVE SPACES                TO RAG-AGNCY-ID.                 10130506
AAG024      PERFORM  L9005-1000-READ                                    10130506
AAG024          THRU L9005-1000-READ-X.                                 10130506
AAG024      MOVE RAG-AGNCY-ID          TO MIR-ORG-AGENCY-CD-T (WS-SUB). 10130506
AAG024                                                                  10130506
AAG024      PERFORM ZCVJ-2000-READ-NEXT                                 10130506
AAG024         THRU ZCVJ-2000-READ-NEXT-X.                              10130506
AAG024                                                                  10130506
AAG024 8751-LOAD-DATA-LINE-X.                                           10130506
AAG024     EXIT.                                                        10130506
AAG024/                                                                 10130506
ANB007*--------------------------
ANB007 8800-MOVE-CVGC-REC-TO-MIR.
ANB007*--------------------------
ANB007
ANB007     MOVE SPACES               TO MIR-INSRD-CLI-ID-G.
ANB007     MOVE SPACES               TO MIR-DV-INSRD-CLI-NM-G.
ANB007     MOVE SPACES               TO MIR-INSRD-CLI-TAX-ID-G.
ANB007     MOVE SPACES               TO MIR-DV-INSRD-CLI-CLAS-CD-G.
ANB007
ANB007     MOVE 1                    TO WS-SUB.
ANB007
ANB007     MOVE  LOW-VALUES          TO WCVGC-KEY.
ANB007     MOVE  HIGH-VALUES         TO WCVGC-ENDBR-KEY.
ANB007     MOVE  RPOL-POL-ID         TO WCVGC-POL-ID
ANB007                                  WCVGC-ENDBR-POL-ID.
ANB007
ANB007     PERFORM  CVGC-1000-BROWSE
ANB007         THRU CVGC-1000-BROWSE-X.
ANB007
ANB007     PERFORM  CVGC-2000-READ-NEXT
ANB007         THRU CVGC-2000-READ-NEXT-X.
ANB007
ANB007     PERFORM  8801-READ-PRI-INSRD-RECORDS
ANB007         THRU 8801-READ-PRI-INSRD-RECORDS-X
ANB007             UNTIL WCVGC-IO-EOF
ANB007             OR    WS-SUB > 5.
ANB007
ANB007     PERFORM  CVGC-3000-END-BROWSE
ANB007         THRU CVGC-3000-END-BROWSE-X.
ANB007*
ANB007     MOVE  LOW-VALUES          TO WCVGC-KEY.
ANB007     MOVE  HIGH-VALUES         TO WCVGC-ENDBR-KEY.
ANB007     MOVE  RPOL-POL-ID         TO WCVGC-POL-ID
ANB007                                  WCVGC-ENDBR-POL-ID.
ANB007
ANB007     PERFORM  CVGC-1000-BROWSE
ANB007         THRU CVGC-1000-BROWSE-X.
ANB007
ANB007     PERFORM  CVGC-2000-READ-NEXT
ANB007         THRU CVGC-2000-READ-NEXT-X.
ANB007
ANB007     PERFORM  8802-READ-CONT-INSRD-RECORDS
ANB007         THRU 8802-READ-CONT-INSRD-RECORDS-X
ANB007             UNTIL WCVGC-IO-EOF
ANB007             OR    WS-SUB > 5.
ANB007
ANB007     PERFORM  CVGC-3000-END-BROWSE
ANB007         THRU CVGC-3000-END-BROWSE-X.
ANB007
ANB007 8800-MOVE-CVGC-REC-TO-MIR-X.
ANB007     EXIT.
ANB007/
ANB007*----------------------------
ANB007 8801-READ-PRI-INSRD-RECORDS.
ANB007*----------------------------
ANB007*
ANB007     IF  RCVGC-CVG-CLI-REL-TYP-CD NOT =  'P'
ANB007         PERFORM  CVGC-2000-READ-NEXT
ANB007             THRU CVGC-2000-READ-NEXT-X
ANB007         GO TO 8801-READ-PRI-INSRD-RECORDS-X
ANB007     END-IF.
ANB007
ANB007     PERFORM  8803-MOVE-INSRD-TO-MIR
ANB007         THRU 8803-MOVE-INSRD-TO-MIR-X.
ANB007
ANB007     PERFORM  CVGC-2000-READ-NEXT
ANB007         THRU CVGC-2000-READ-NEXT-X.
ANB007
ANB007 8801-READ-PRI-INSRD-RECORDS-X.
ANB007     EXIT.
ANB007/
ANB007*-----------------------------
ANB007 8802-READ-CONT-INSRD-RECORDS.
ANB007*-----------------------------
ANB007
ANB007     IF  RCVGC-CVG-CLI-REL-TYP-CD  =  'P'
ANB007         PERFORM  CVGC-2000-READ-NEXT
ANB007             THRU CVGC-2000-READ-NEXT-X
ANB007         GO TO 8802-READ-CONT-INSRD-RECORDS-X
ANB007     END-IF.
ANB007
ANB007     PERFORM  8803-MOVE-INSRD-TO-MIR
ANB007         THRU 8803-MOVE-INSRD-TO-MIR-X.
ANB007
ANB007     PERFORM  CVGC-2000-READ-NEXT
ANB007         THRU CVGC-2000-READ-NEXT-X.
ANB007
ANB007 8802-READ-CONT-INSRD-RECORDS-X.
ANB007     EXIT.
ANB007/
ANB007*-----------------------
ANB007 8803-MOVE-INSRD-TO-MIR.
ANB007*-----------------------
ANB007*
ANB007     PERFORM
ANB007        VARYING WS-INSRD-CTR FROM 1 BY 1
ANB007        UNTIL WS-INSRD-CTR > 5
ANB007
ANB007        IF RCVGC-INSRD-CLI-ID = MIR-INSRD-CLI-ID-T (WS-INSRD-CTR)
ANB007            GO TO 8803-MOVE-INSRD-TO-MIR-X
ANB007        END-IF
ANB007
ANB007     END-PERFORM.
ANB007
ANB007     MOVE RCVGC-INSRD-CLI-ID      TO MIR-INSRD-CLI-ID-T (WS-SUB).
ANB007
ANB007     PERFORM  2435-1000-BUILD-PARM-INFO
ANB007         THRU 2435-1000-BUILD-PARM-INFO-X.
ANB007
ANB007     MOVE RCVGC-INSRD-CLI-ID      TO L2435-CLI-ID.
AGL149     MOVE RCVGC-CLI-NM-TYP-CD      TO L2435-CLI-NM-TYP-CD.        03160603
AGL149     MOVE RCVGC-CLI-NM-SEQ-NUM     TO L2435-CLI-NM-SEQ-NUM.       03160603
ANB007
ANB007     PERFORM  2435-1000-OBTAIN-CLI-INFO
ANB007         THRU 2435-1000-OBTAIN-CLI-INFO-X.
ANB007
ANB007     IF  L2435-RETRN-OK
ANB007         INITIALIZE L0620-INPUT-PARM-INFO
ANB007         IF  L2435-CLI-SEX-CD = 'C'
ANB007             MOVE L2435-CLI-ENTR-CO-NM  TO L0620-CLI-CO-NM
ANB007         ELSE
ANB007             MOVE L2435-CLI-ENTR-GIV-NM TO L0620-CLI-GIV-NM
ANB007             MOVE L2435-CLI-ENTR-SUR-NM TO L0620-CLI-SUR-NM
ANB007             MOVE L2435-CLI-MID-INIT-NM TO L0620-CLI-MID-INIT-NM
ANB007             MOVE L2435-CLI-SFX-NM      TO L0620-CLI-SFX-NM
ANB007         END-IF
ANB007         MOVE L2435-CLI-SEX-CD          TO L0620-CLI-SEX-CD
ANB007         PERFORM  0620-1000-FORMAT-SCREEN-NAME
ANB007             THRU 0620-1000-FORMAT-SCREEN-NAME-X
ANB007         MOVE L0620-SCREEN-NAME
ANB007                              TO MIR-DV-INSRD-CLI-NM-T (WS-SUB)
AGL149         MOVE RCVGC-CLI-NM-TYP-CD       TO                        03160603
AGL149                          MIR-DV-INSRD-CLI-NM-KEY-T (WS-SUB)(1:2) 03160603
AGL149         MOVE RCVGC-CLI-NM-SEQ-NUM      TO                        03160603
AGL149                          MIR-DV-INSRD-CLI-NM-KEY-T (WS-SUB)(3:3) 03160603
AGL149         MOVE MIR-DV-INSRD-CLI-NM-KEY-T (1) TO                    03160603
AGL149                          MIR-DV-INSRD-CLI-NM-KEY                 03160603
ANB007     END-IF.
ANB007
CPA001*ANB007MOVE L2435-CLI-TAX-ID   TO MIR-INSRD-CLI-TAX-ID-T (WS-SUB).12170702
ANB007     MOVE L2435-CLI-CLAS-CD
ANB007                          TO MIR-DV-INSRD-CLI-CLAS-CD-T (WS-SUB).
ANB007
ANB028*ANB028     IF  MIR-INSRD-CLI-ID-T (WS-SUB) NOT = SPACES  1103050111090501
ANB028*ANB028         IF  L2435-CLI-STATUS-IS-ACTL              1103050111090501
ANB028*ANB028             SET WS-INSRD-CLI-STATUS-YES   TO TRUE 1103050111090501
ANB028*ANB028         ELSE                                      1103050111090501
ANB028*ANB028             SET WS-INSRD-CLI-STATUS-NO    TO TRUE 1103050111090501
ANB028*ANB028         END-IF                                    1103050111090501
ANB028*ANB028     END-IF.                                       1103050111090501
ANB028*ANB028                                                   1103050111090501
ANB007     ADD +1               TO WS-SUB.
ANB007
ANB007 8803-MOVE-INSRD-TO-MIR-X.
ANB007     EXIT.
ANB007/
WNB003*-----------------------------
WNB003 8800-MOVE-CVG-CAMP-CD-TO-MIR.
WNB003*-----------------------------

WNB003     MOVE RPOL-POL-ID            TO WCVG-POL-ID.
WNB003     MOVE RPOL-POL-BASE-CVG-NUM  TO WS-BASE-CVG-NUM.
WNB003     MOVE WS-BASE-CVG-NUM-B  TO WCVG-CVG-NUM.
WNB003     PERFORM CVG-1000-READ
WNB003         THRU CVG-1000-READ-X.
WNB003     IF WCVG-IO-OK
CAC001*START                                                            09130706
CAC001*WNB003        MOVE RCVG-CVG-CAMP-CD    TO MIR-CVG-CAMP-CD
CAC001*WAG012        MOVE RCVG-CVG-CHNL-CD    TO MIR-CVG-CHNL-CD
CAC001*START                                                            09210706
CAC001*CAC001        MOVE RCVG-CVG-CAMP-CD    TO MIR-MKT-CAMPGN-CD
CAC001*CAC001        MOVE RCVG-CVG-CHNL-CD    TO MIR-MKT-CHNL-CD
CAC001               MOVE RCVG-CVG-CAMP-CD    TO MIR-CVG-CAMP-CD
CAC001               MOVE RCVG-CVG-CHNL-CD    TO MIR-CVG-CHNL-CD
CAC001*END                                                              09210706
CAC001*END                                                              09130706
WNB003     ELSE
CAC001*START                                                            09130706
CAC001*WNB003        MOVE SPACE               TO MIR-CVG-CAMP-CD
CAC001*WAG012        MOVE SPACE               TO MIR-CVG-CHNL-CD
CAC001*START                                                            09210706
CAC001*CAC001        MOVE SPACE               TO MIR-MKT-CAMPGN-CD
CAC001*CAC001        MOVE SPACE               TO MIR-MKT-CHNL-CD
CAC001               MOVE SPACE               TO MIR-CVG-CAMP-CD
CAC001               MOVE SPACE               TO MIR-CVG-CHNL-CD
CAC001*END                                                              09210706
CAC001*END                                                              09130706
WNB003     END-IF.
WNB003
WNB003 8800-MOVE-CVG-CAMP-CD-TO-MIR-X.
WNB003     EXIT.

CPR143*---------------------------------                                05281402
CPR143 8850-MOVE-CVG-REC-TO-MIR.                                        05281402
CPR143*---------------------------------                                05281402
CPR143     MOVE RPOL-POL-ID                   TO WCVG-POL-ID.           05281402
CPR143     MOVE RPOL-POL-BASE-CVG-NUM         TO WS-BASE-CVG-NUM.       05281402
CPR143     MOVE WS-BASE-CVG-NUM-B             TO WCVG-CVG-NUM.          05281402
CPR143     PERFORM  CVG-1000-READ                                       05281402
CPR143         THRU CVG-1000-READ-X.                                    05281402
CPR143     IF  WCVG-IO-OK                                               05281402
CPR143         MOVE RCVG-CVG-IER-CPN-OPT-CD   TO MIR-POL-IER-CPN-OPT-CD 05281402
CPR143     ELSE                                                         05281402
CPR143         MOVE SPACE                     TO MIR-POL-IER-CPN-OPT-CD 05281402
CPR143     END-IF.                                                      05281402
CPR143                                                                  05281402
CPR143 8850-MOVE-CVG-REC-TO-MIR-X.                                      05281402
CPR143     EXIT.                                                        05281402
CPR143/                                                                 05281402
WNB015*---------------------------------
WNB015 8900-MOVE-ASSET-REBAL-TO-MIR.
WNB015*---------------------------------
WNB015     MOVE LOW-VALUES      TO WPOLZ-KEY.
WNB015
WMB015     MOVE RPOL-POL-ID     TO WPOLZ-POL-ID.
WNB015     MOVE 'A'             TO WPOLZ-POL-PAYO-STAT-CD.
WNB015     MOVE 'R'             TO WPOLZ-POL-PAYO-TYP-CD.
WNB015     MOVE ZEROES          TO WPOLZ-POL-PAYO-NUM.
WNB015
WNB015     MOVE WPOLZ-KEY       TO WPOLZ-ENDBR-KEY
WNB015     MOVE +99999          TO WPOLZ-ENDBR-POL-PAYO-NUM.
WNB015
WNB015     PERFORM  POLZ-1000-BROWSE
WNB015         THRU POLZ-1000-BROWSE-X.
WNB015
WNB015     PERFORM  POLZ-2000-READ-NEXT
WNB015         THRU POLZ-2000-READ-NEXT-X.
WNB015
WNB015     IF WPOLZ-IO-OK
WNB015        SET  MIR-DV-ASSET-REBAL-YES  TO TRUE
WNB015     ELSE
WNB015        SET  MIR-DV-ASSET-REBAL-NO   TO TRUE
WNB015     END-IF.
WNB015
WNB015     PERFORM  POLZ-3000-END-BROWSE
WNB015         THRU POLZ-3000-END-BROWSE-X.
WNB015
WNB015 8900-MOVE-ASSET-REBAL-TO-MIR-X.
WNB015     EXIT.
WNB015*---------------------------------
WNB015 9000-MOVE-CDSI-REC-TO-MIR.
WNB015*---------------------------------
WNB015
WNB015*    BUILD CAIN KEY
WNB015     MOVE RPOL-POL-ID             TO WCAIN-POL-ID.
WNB015     SET WCAIN-CDI-TYP-INIT-CVG-PREM TO TRUE.
WNB015     MOVE ZEROES                  TO WCAIN-POL-PAYO-NUM.
WNB015     MOVE RPOL-POL-ISS-EFF-DT     TO L1660-INTERNAL-DATE.
WNB015     PERFORM  1660-2000-CONVERT-INT-TO-INV
WNB015         THRU 1660-2000-CONVERT-INT-TO-INV-X.
WNB015     MOVE L1660-INVERTED-DATE     TO WCAIN-CDI-EFF-IDT-NUM-N.
WNB015
WNB015     PERFORM  CAIN-1000-READ
WNB015         THRU CAIN-1000-READ-X.
WNB015     IF WCAIN-IO-NOT-FOUND
WNB015         GO TO 9000-MOVE-CDSI-REC-TO-MIR-X
WNB015     END-IF.
WNB015
WNB015*    BUILD DETAIL KEY
WNB015     MOVE RCAIN-CO-ID             TO WCDSJ-CO-ID.
WNB015     MOVE RCAIN-POL-ID            TO WCDSJ-POL-ID.
WNB015     MOVE RCAIN-CDI-TYP-CD        TO WCDSJ-CDI-TYP-CD.
WNB015     MOVE RCAIN-POL-PAYO-NUM      TO WCDSJ-POL-PAYO-NUM.
WNB015     MOVE RCAIN-CDI-EFF-IDT-NUM   TO WCDSJ-CDI-EFF-IDT-NUM.
WNB015     MOVE ZEROS                   TO WCDSJ-CDI-ALLOC-NUM.
WNB015     MOVE WCDSJ-KEY               TO WCDSJ-ENDBR-KEY.
WNB015
WNB015     MOVE LOW-VALUES              TO WCDSJ-CVG-NUM.
WNB015     MOVE HIGH-VALUES             TO WCDSJ-ENDBR-CVG-NUM.
WNB015
WNB015     MOVE 999                     TO WCDSJ-ENDBR-CDI-ALLOC-NUM.
WNB015
WNB015     MOVE ZERO                    TO WS-SUB.
WNB015     MOVE SPACE                   TO WFC-CVG-NUM.
WNB015
WNB015     PERFORM CDSJ-1000-BROWSE
WNB015        THRU CDSJ-1000-BROWSE-X.
WNB015     PERFORM
WNB015       UNTIL WCDSJ-IO-EOF
WNB015       OR WS-SUB >= WS-MAX-CFN-LIST-LINES
WNB015         PERFORM CDSJ-2000-READ-NEXT
WNB015            THRU CDSJ-2000-READ-NEXT-X
WNB015         IF  WCDSJ-IO-OK
WNB015         AND RCDSI-CDI-TYP-CD = RCAIN-CDI-TYP-CD
WNB015         AND RCDSI-CDI-EFF-IDT-NUM = RCAIN-CDI-EFF-IDT-NUM
WNB015             ADD 1               TO WS-SUB
WNB015
WNB015             PERFORM 9010-MOVE-FND-ALLOC-TO-MIR
WNB015                THRU 9010-MOVE-FND-ALLOC-TO-MIR-X
WNB015         END-IF
WNB015     END-PERFORM.
WNB015     PERFORM CDSJ-3000-END-BROWSE
WNB015        THRU CDSJ-3000-END-BROWSE-X.
WNB015
WNB015 9000-MOVE-CDSI-REC-TO-MIR-X.
WNB015     EXIT.
WNB015/
WNB015*---------------------------
WNB015 9010-MOVE-FND-ALLOC-TO-MIR.
WNB015*---------------------------
WNB015*
WNB015     MOVE RCDSI-DEST-FND-ID       TO MIR-FND-ID-T (WS-SUB).
WNB015     MOVE RCAIN-CDI-STAT-CD       TO
WNB015                                  MIR-FND-CDI-STAT-CD-T (WS-SUB).
WNB015*
WNB015     IF RCDSI-CDI-ALLOC-PCT < ZERO
WNB015         COMPUTE L0290-INPUT-V04    = -1
WNB015                                    * RCDSI-CDI-ALLOC-PCT
WNB015     ELSE
WNB015         MOVE RCDSI-CDI-ALLOC-PCT TO L0290-INPUT-V04
WNB015     END-IF.
WNB015     MOVE 4                       TO L0290-PRECISION.
WNB015     MOVE LENGTH OF MIR-CDI-ALLOC-PCT-T (WS-SUB) TO
WNB015                                     L0290-MAX-OUT-LEN.
WNB015     PERFORM 0290-2000-FORMAT-FOR-MIR
WNB015        THRU 0290-2000-FORMAT-FOR-MIR-X.
WNB015     MOVE L0290-OUTPUT-DATA       TO MIR-CDI-ALLOC-PCT-T (WS-SUB).
WNB015*
WNB015     IF RCDSI-CVG-NUM NOT EQUAL WFC-CVG-NUM
WNB015         MOVE RPOL-POL-ID         TO WFC-POL-ID
WNB015         MOVE RCDSI-CVG-NUM       TO WFC-CVG-NUM
WNB015         PERFORM  FC-1000-READ
WNB015             THRU FC-1000-READ-X
WNB015     END-IF.
WNB015     MOVE RFC-PLAN-ID             TO MIR-CFN-PLAN-ID-T (WS-SUB).
WNB015*
WNB015 9010-MOVE-FND-ALLOC-TO-MIR-X.
WNB015     EXIT.
WNB015*
      *--------------------------
       9300-SETUP-MSIN-REFERENCE.
      *--------------------------

           MOVE SPACES
             TO WGLOB-MSIN-REFERENCE.
           MOVE WGLOB-COMPANY-CODE
             TO WGLOB-REF-COMPANY-CODE.
      *
      * FOR POLICY RELATED TRANSACTION
      *
           SET  WGLOB-REF-POLICY          TO TRUE.

           MOVE MIR-POL-ID-BASE           TO WGLOB-REF-POLICY-NUMBER.
           MOVE MIR-POL-ID-SFX            TO WGLOB-REF-POLICY-SUFFIX.

       9300-SETUP-MSIN-REFERENCE-X.
           EXIT.
      /
APA036 9400-BROWSE-PREV-ZPIL.                                           04210507
APA036                                                                  04210507
APA036     MOVE MIR-POL-ID             TO WZPIL-POL-ID.                 04210507
APA036                                                                  04210507
APA036* GET TERMINATE MASTER RECORD                                     04210507
APA036     SET  WZPIL-ZPIL-TYP-TERM    TO TRUE.                         04210507
APA036                                                                  04210507
APA036     MOVE WWKDT-HIGH-DT          TO L1680-INTERNAL-1.             04210507
APA036     MOVE ZERO                   TO L1680-NUMBER-OF-YEARS.        04210507
APA036     MOVE ZERO                   TO L1680-NUMBER-OF-MONTHS.       04210507
APA036     MOVE ZERO                   TO L1680-NUMBER-OF-DAYS.         04210507
APA036     PERFORM  1680-3000-ADD-Y-M-D-TO-DATE                         04210507
APA036         THRU 1680-3000-ADD-Y-M-D-TO-DATE-X.                      04210507
APA036     MOVE L1680-INTERNAL-2       TO WZPIL-ZPIL-EFF-DT.            04210507
APA036                                                                  04210507
APA036* GET RECORD WITH ACTIVE STATUS                                   04210507
APA036     SET  WZPIL-ZPIL-STAT-ACTIVE TO TRUE.                         04210507
APA036                                                                  04210507
APA036     MOVE WZPIL-KEY              TO WZPIL-ENDBR-KEY.              04210507
APA036     MOVE WWKDT-LOW-DT           TO L1680-INTERNAL-1.             04210507
APA036     MOVE ZERO                   TO L1680-NUMBER-OF-YEARS.        04210507
APA036     MOVE ZERO                   TO L1680-NUMBER-OF-MONTHS.       04210507
APA036     MOVE ZERO                   TO L1680-NUMBER-OF-DAYS.         04210507
APA036     PERFORM  1680-3000-ADD-Y-M-D-TO-DATE                         04210507
APA036         THRU 1680-3000-ADD-Y-M-D-TO-DATE-X.                      04210507
APA036     MOVE L1680-INTERNAL-2       TO WZPIL-ENDBR-ZPIL-EFF-DT.      04210507
APA036                                                                  04210507
APA036     PERFORM  ZPIL-1000-BROWSE-PREV                               04210507
APA036         THRU ZPIL-1000-BROWSE-PREV-X.                            04210507
APA036     IF  WZPIL-IO-OK                                              04210507
APA036         PERFORM  ZPIL-2000-READ-PREV                             04210507
APA036             THRU ZPIL-2000-READ-PREV-X                           04210507
APA036         IF  WZPIL-IO-EOF                                         04210507
APA036*MSG: NO TERMINATE MASTER RECORD FOUND                            04210507
APA036             MOVE 'CS80009001'          TO WGLOB-MSG-REF-INFO     04210507
APA036             PERFORM  0260-1000-GENERATE-MESSAGE                  04210507
APA036                 THRU 0260-1000-GENERATE-MESSAGE-X                04210507
APA036             IF  WGLOB-MSG-SEVRTY-FATAL                           04210507
APA036                 SET WS-RETRN-ERROR     TO TRUE                   04210507
APA036             END-IF                                               04210507
APA036         END-IF                                                   04210507
APA036     END-IF.                                                      04210507
APA036                                                                  04210507
APA036 9400-BROWSE-PREV-ZPIL-X.                                         04210507
APA036     EXIT.                                                        04210507
APA036/                                                                 04210507
018633*--------------------
018633*9500-BUILD-TWRK-KEY.
018633*--------------------
018633*
018633*    MOVE WS-TWRK-KEY               TO  L8090-BUS-FCN-ID.
018633*    MOVE ZEROS                     TO  L8090-TEMP-WRK-SEQ-NUM.
018633*    SET  L8090-USAGE-COMM          TO TRUE.
018633*
018633*9500-BUILD-TWRK-KEY-X.
018633*    EXIT.
018633*
018633*----------------
018633*9800-WRITE-TWRK.
018633*----------------
018633*
018633*    PERFORM  9500-BUILD-TWRK-KEY
018633*        THRU 9500-BUILD-TWRK-KEY-X.
018633*
018633*    MOVE 350              TO  L8090-AREA-LEN.
018633*    MOVE WS-WORK-AREA     TO  L8090-AREA-INFO-TEXT.
018633*    SET L8090-USAGE-COMM  TO TRUE.
018633*
018633*    PERFORM  8090-1000-WRITE-TWRK
018633*        THRU 8090-1000-WRITE-TWRK-X.
018633*
018633*9800-WRITE-TWRK-X.
018633*    EXIT.
018633*
018633*-----------------
018633*9900-DELETE-TWRK.
018633*-----------------
018633*
018633*    PERFORM  9500-BUILD-TWRK-KEY
018633*        THRU 9500-BUILD-TWRK-KEY-X.
018633*
018633*    PERFORM  8090-3000-DELETE-TWRK
018633*        THRU 8090-3000-DELETE-TWRK-X.
018633*
018633*
018633*9900-DELETE-TWRK-X.
018633*    EXIT.
018633*
APA070                                                                  02210609
APA070 5000-CHECK-OFFR-PREM.                                            02210609
APA070*------------------------                                         02210609
APA070                                                                  02210609
APA070     IF RZPOF-IND-OFFR AND RZPOF-OFFR-DT > WS-LATEST-OFFR-DT      02210609
APA070        MOVE RZPOF-OFFR-DT             TO WS-LATEST-OFFR-DT       02210609
APA070        MOVE RZPOF-ANN-INCR-MPREM-AMT  TO WS-POF-APREM-AMT        02210609
APA070        EVALUATE TRUE                                             02210609
APA070           WHEN  RPOL-POL-BILL-MODE-ANNUALLY                      02210609
APA070                 MOVE RZPOF-ANN-INCR-MPREM-AMT                    02210609
APA070                                       TO WS-POF-MPREM-AMT        02210609
APA070           WHEN  RPOL-POL-BILL-MODE-SEMI-ANN                      02210609
APA070                 MOVE RZPOF-SEMI-INCR-MPREM-AMT                   02210609
APA070                                       TO WS-POF-MPREM-AMT        02210609
APA070           WHEN  RPOL-POL-BILL-MODE-QUARTERLY                     02210609
APA070                 MOVE RZPOF-QTR-INCR-MPREM-AMT                    02210609
APA070                                       TO WS-POF-MPREM-AMT        02210609
APA070           WHEN  RPOL-POL-BILL-MODE-MONTHLY                       02210609
APA070                 MOVE RZPOF-MTHLY-INCR-MPREM-AMT                  02210609
APA070                                       TO WS-POF-MPREM-AMT        02210609
APA070         END-EVALUATE                                             02210609
APA070     END-IF.                                                      02210609
APA070                                                                  02210609
APA070     PERFORM  ZPOF-2000-READ-NEXT                                 02210609
APA070         THRU ZPOF-2000-READ-NEXT-X.                              02210609
APA070                                                                  02210609
APA070 5000-CHECK-OFFR-PREM-X.                                          02210609
APA070     EXIT.                                                        02210609
APA070                                                                  02210609
      *****************************************************************
      *  PROCESSING COPYBOOKS                                         *
      *****************************************************************
      /
       COPY CCPSPGA.
       COPY CCPS0083.
       COPY CCPS0144.
       COPY CCPS2430.
       COPY CCPS2435.
       COPY CCPS2480.
       COPY CCPS2520.
       COPY CCPS5400.
020475 COPY CCPS7306.
       COPY CCPS8240.
AAG008 COPY CCPS9081.
       COPY XCPS0290.
      * RELEASE BY KELVIN
ANB008 COPY CCPS9075.
APA006 COPY CCPS9159.
ANB024 COPY CCPS9B58.                                                   08100506
      /
016537*COPY CCPERELA.
      /
ANB025 COPY CCPNZCHL.                                                   04180502
AGL139*ANB024 COPY CCPNCVG.                                 08100506    10110501
ANB024 COPY NCPPCVGS.                                                   08100506
       COPY XCPPINIT.
       COPY XCPPEXIT.
018633 COPY XCPSCOMM.
018633 COPY XCPPCOMM.
014221 COPY CCPPTWTS REPLACING ==:VAR1:== BY POL
014221                         '$VAR2' BY 'POL'.
014660*COPY XCPPMEXT.
      /
      *****************************************************************
      *  LINKAGE PROCESSING COPYBOOKS                                 *
      *****************************************************************
      /
018764*COPY CCCL0083.
018764 COPY CCPL0083.
018764*COPY CCCL0144.
018764 COPY CCPL0144.
018764*COPY CCCL2430.
018764 COPY CCPL2430.
018764*COPY CCCL2435.
018764 COPY CCPL2435.
018764*COPY CCCL2480.
018764 COPY CCPL2480.
018764*COPY CCCL2520.
018764 COPY CCPL2520.
018764*COPY CCCL5400.
018764 COPY CCPL5400.
020475 COPY CCPL7306.
018764*COPY CCCL8240.
018764 COPY CCPL8240.
AAG008 COPY CCPL9081.
ANB024 COPY CCPL9B58.                                                   08100506
018764*COPY XCCL0260.
018764 COPY XCPL0260.
018764*COPY XCCL8090.
018633 COPY XCPS8090.
018764 COPY XCPL8090.
      /
020463 COPY CCPS2735.
020463 COPY CCPL2735.
      /
       COPY CCPL0620.
016537*COPY XCPL0280.
       COPY XCPL0290.
       COPY XCPL1640.
AGL139*APA036 COPY XCPL1680.                                04210507    10110501
      /
      * RELEASE BY KELVIN.
ANB008 COPY CCPL9075.
ANB008/
AAG005 COPY UCPL9001.
APA006 COPY CCPL9159.
WNB015 COPY CCPL2440.
WNB015 COPY XCPL1660.
ANB007 COPY NCPL2437.
CPR147/                                                                 01151505
CPR147 COPY CCPS9M2C.                                                   01151505
CPR147 COPY CCPL9M2C.                                                   01151505
CPR147/                                                                 01151505
      *****************************************************************
      *  FILE I/O PROCESS MODULES                                     *
      *****************************************************************
      /
       COPY CCPBPOLC.
016537*COPY CCPNEDIT.
       COPY CCPNPOL.
014221 COPY CCPUPOL.
      /
ANB007 COPY CCPNCLI.
ANB007 COPY CCPL9005.
      /
ANB008 COPY NCPNTTAB.
ANB008/
ANB007 COPY CCPBCVGC.
ANB007/
ANB007 COPY XCPNDMAD.
ANB007/
ANB006 COPY CCPNZAGS.                                                   03110508
ANB006                                                                  03110508
APA036 COPY CCPVZPIL.                                                   04210507
APA036/                                                                 04210507
WNB003 COPY NCPBZPAY.
WNB003 COPY NCPNZPAY.
      /
WNB003 COPY CCPNCVG.
AGL156 COPY CCPMCVG.                                                    08310601
      /
WNB015 COPY CCPBPOLZ.
      /
WNB022 COPY XCPL1650.
WNB022 COPY XCPL1670.
WNB022 COPY XCPL1680.
WNB015/
WNB015 COPY CCPNCAIN.
WNB015 COPY CCPBCDSJ.
WNB015 COPY SCPNFC.
      /
AAG024 COPY CCPBZCVJ.                                                   10130506
AAG024/                                                                 10130506
WPR018 COPY CCPNPD.
WPR018 COPY CCPNPH.
APA070 COPY CCPBZPOF.                                                   02210609
CBC109/                                                                 05021301
CBC109 COPY CCPBZPCM.                                                   05021301
CBC109/                                                                 05021301
      *****************************************************************
      *  ERROR HANDLING ROUTINES                                      *
      *****************************************************************
       COPY XCCPABND.
       COPY XCCP0030.

      *****************************************************************
      **                 END OF PROGRAM CSOM8000                     **
      *****************************************************************


       01  MIR-PARM-AREA.

           05  MIR-CONTROL-AREA.
               10  MIR-BUS-FCN-ID                   PIC X(04).
               10  MIR-LENGTH                       PIC X(05).
               10  MIR-RETRN-CD                     PIC X(02).
                   88  MIR-RETRN-OK                 VALUE '00'.
                   88  MIR-RETRN-EDIT-ERROR         VALUE '01'.
                   88  MIR-RETRN-RQST-FAILED        VALUE '02'.
                   88  MIR-RETRN-TS-MISMATCH        VALUE '05'.
                   88  MIR-RETRN-INVALD-RQST        VALUE '99'.
           05  MIR-INPUT-AREA.
               10  MIR-POL-ID.
                   15  MIR-POL-ID-BASE               PIC X(009).
                   15  MIR-POL-ID-SFX                PIC X(001).

           05  MIR-IO-AREA.
               10  MIR-DV-MQ-CALL-SW                 PIC X(001).
               10  FILLER                            PIC X(001).

           05  MIR-OUTPUT-AREA.
               10  MIR-APP-FORM-TYP-ID               PIC X(001).
               10  MIR-POL-BILL-MODE-CD              PIC X(002).
               10  MIR-POL-CSTAT-CD                  PIC X(004).
               10  MIR-POL-CVG-REC-CTR               PIC X(003).
               10  MIR-POL-ISS-EFF-DT                PIC X(010).
               10  MIR-POL-REJ-REASN-CD-TXT          PIC X(20).
               10  MIR-CVG-NUM-T                      OCCURS 10 TIMES
                                                      PIC X(10).
               10  MIR-PLAN-ID-T                      OCCURS 10 TIMES
                                                      PIC X(10).
               10  MIR-CVG-ISS-EFF-DT-T               OCCURS 10 TIMES
                                                      PIC X(10).
               10  MIR-CVG-CSTAT-CD-T                 OCCURS 10 TIMES
                                                      PIC X(10).
               10  MIR-CVG-FACE-AMT-T                 OCCURS 10 TIMES
                                                      PIC S9(13)V99.
               10  MIR-CVG-MPREM-AMT-T                OCCURS 10 TIMES
                                                      PIC S9(11)V99.
      *****************************************************************
      **                 END OF COPYBOOK CCWM9527                    **
      *****************************************************************

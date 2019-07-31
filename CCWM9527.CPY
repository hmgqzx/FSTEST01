
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
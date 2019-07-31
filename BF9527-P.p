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
#POL
        OUT MIR-POL-ISS-EFF-DT
        {
                DBTableName = "TPOL";
                Label = "Issue Date of the Policy";
                Length = "10";
                SType = "Date";
        }

        OUT MIR-POL-CVG-REC-CTR
        {
                DBTableName = "TPOL";
                Label = "Number of Coverages on This Policy";
                Length = "40";
                SType = "Text";
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

         OUT MIR-APP-FORM-TYP-ID
             {
                        DBTableName = "TPOL";
                        Label = "Policy Type";
                        Length = "10";
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




#CVG
            OUT MIR-CVG-NUM-T[10]
            {
                        Length = "10";
                        FieldGroup = "Table3";
                        DBTableName = "TCVG";
                        SType = "Text";
                        Label = "Coverage Number";
                        Index = "1";

            }

            OUT MIR-PLAN-ID-T[10]
            {
                        Length = "10";
                        FieldGroup = "Table3";
                        DBTableName = "TCVG";
                        SType = "Text";
                        Label = "Plan ID";
                        Index = "1";

            }

            OUT MIR-CVG-ISS-EFF-DT-T[10]
            {
                        Length = "10";
                        FieldGroup = "Table3";
                        DBTableName = "TCVG";
                        SType = "Date";
                        Label = "Issue Date";
                        Index = "1";

            }

            OUT MIR-CVG-CSTAT-CD-T[10]
            {

                        Length = "10";
                        FieldGroup = "Table3";
                        DBTableName = "TCVG";
                        SType = "Text";
                        Label = "Coverage Status";
                        Index = "1";

            }

            OUT MIR-CVG-FACE-AMT-T[10]
            {
                        Length = "10";
                        FieldGroup = "Table3";
                        DBTableName = "TCVG";
                        SType = "Currency";
                        Label = "Face Amount";
                        Index = "1";

            }


            OUT MIR-CVG-MPREM-AMT-T[10]
            {
                        Length = "10";
                        FieldGroup = "Table3";
                        DBTableName = "TCVG";
                        SType = "Currency";
                        Label = "Modal Premium";
                        Index = "1";

            }
}

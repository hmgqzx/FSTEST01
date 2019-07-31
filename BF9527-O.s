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

#POL
         IN MIR-POL-ISS-EFF-DT
        {
                DisplayOnly;
                Label = "Effective Date";
                Length = "10";
                SType = "Date";
        }

        IN MIR-POL-CVG-REC-CTR
        {
                DisplayOnly;
                Label = "Number of Coverages";
                Length = "40";
                SType = "Text";
        }

        IN MIR-POL-CSTAT-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-CSTAT-CD";
                DisplayOnly;
                Label = "Policy Status";
                Length = "40";
                SType = "Text";
        }

          IN MIR-APP-FORM-TYP-ID
        {
                CodeSource = "EDIT";
                CodeType = "AFTT";
                DisplayOnly;
                Label = "Policy Type";
                Length = "40";
                SType = "Text";
        }

        IN MIR-POL-BILL-MODE-CD
        {
                CodeSource = "DataModel";
                CodeType = "POL-BILL-MODE-CD";
                DisplayOnly;
                Label = "Billing Mode";
                Length = "40";
                SType = "Text";
        }


#CVG
        IN MIR-CVG-NUM-T[10]
            {
                        DisplayOnly;
                        FieldGroup = "Table3";
                        Index = "1";
                        Label = "Coverage Number";
                        Length = "10";
                        SType = "Text";
            }

             IN MIR-PLAN-ID-T[10]
            {
                    CodeSource = "EDIT";
                    CodeType = "PLNSA";
                        DisplayOnly;
                        FieldGroup = "Table3";
                        Index = "1";
                        Label = "Plan ID";
                        Length = "10";
                        SType = "Text";
            }

            IN MIR-CVG-ISS-EFF-DT-T[10]
            {
                        DisplayOnly;
                        FieldGroup = "Table3";
                        Index = "1";
                        Label = "Effective Date";
                        Length = "10";
                        SType = "Date";
            }

            IN MIR-CVG-CSTAT-CD-T[10]
            {
                    CodeSource = "DataModel";
                CodeType = "CVG-CSTAT-CD";
                        DisplayOnly;
                        FieldGroup = "Table3";
                        Index = "1";
                        Label = "Coverage Status";
                        Length = "10";
                        SType = "Text";
            }


            IN MIR-CVG-FACE-AMT-T[10]
            {
                        DisplayOnly;
                        FieldGroup = "Table3";
                        Index = "1";
                        Label = "Face Amount";
                        Length = "10";
                        SType = "Currency";
            }

            IN MIR-CVG-MPREM-AMT-T[10]
            {
                        DisplayOnly;
                        FieldGroup = "Table3";
                        Index = "1";
                        Label = "";
                        Length = "10";
                        SType = "Currency";
            }

}
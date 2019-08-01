#<HEADER>
#<COPYRIGHT>
#© 2001 INSURANCE SOFTWARE SOLUTIONS CORP.  ALL RIGHTS RESERVED
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
#</HEADER>
# Converted from PathFinder 2.2 to 3.0 Jan 24, 2005 12:37:10 PM CST
# Converted to Enterprise Designer 1.1 format on Oct 4, 2002 1:52:07 PM EDT
#*******************************************************************************
#*  Chg#    Release  Description                                               *
#*                                                                             *
#*  APA036  00002    APR 21, 2005 RICHARD HU                                   *
#*  APA036           PR #07                                                    *
#*  APA036           ONLIINE INQUIRY OF TERMINATE MASTERS                      *
#*******************************************************************************
S-STEP BF9527-I
{
    ATTRIBUTES
    {
        BusinessFunctionType = "Retrieve";
        FocusField = "MIR-POL-ID-BASE";
        FocusFrame = "ContentFrame";
        Type = "Input";
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
    INOUT MIR-POL-ID-BASE
    {
        DefaultSession = "MIR-POL-ID-BASE";
        Key;
        Label = "Policy ID";
        Length = "9";
        Mandatory;
        SType = "Text";
    }
    INOUT MIR-POL-ID-SFX
    {
        DefaultSession = "MIR-POL-ID-SFX";
        Key;
        Label = "Suffix";
        Length = "1";
        SType = "Text";
    }
#APA036 - 04210507
        INOUT MIR-MAST-DISP-CD
        {
                CodeSource = "DataModel";
                CodeType = "DV-MAST-DISP-CD";
                DefaultConstant = "P";
                Key;
                Label = "Display Type";
                Length = "40";
                Mandatory;
                SType = "Selection";
        }
#/APA036 - 04210507

}
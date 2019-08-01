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
#<HISTORY>
#<RELEASE>
#6.2
#</RELEASE>
#<COMMENT>
#Changes for Release 6.2
#</COMMENT>
#</HISTORY>
#</HEADER>
# Converted from PathFinder 2.2 to 3.0 on Jan 24, 2005 12:36:15 PM CST
# Converted to Enterprise Designer 1.1 format on Oct 4, 2002 1:52:07 PM EDT
PROCESS BF9527Retrieve
{

    STEP Main
    {
        USES PROCESS "GenRetrieve";
        ATTRIBUTES
        {
            GetMessages = "NO";
        }
        STRINGTABLE.IDS_TITLE_BF8000Retrieve -> Title;
        "BF9527-I" -> InputS;
        "BF9527-P" -> RetrieveP;
        "BF9527-O" -> OutputS;
    }

    IF DisplayInput == "FALSE"
    {
        EXIT;

    }

    IF action == "ACTION_BACK"
    {
        EXIT;

    }

    BRANCH Main;
}
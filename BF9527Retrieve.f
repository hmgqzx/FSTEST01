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

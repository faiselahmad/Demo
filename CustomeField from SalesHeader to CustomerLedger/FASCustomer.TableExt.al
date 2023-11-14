tableextension 50123 "FAS Customer" extends Customer
{
    fields
    {
        field(50000; "FAS Demo Description"; Text[250])
        {
            Caption = 'Demo Description';
            DataClassification = CustomerContent;
        }
        field(50001; "FAS Facebook URL"; Text[300]) // Used for BC Crm Sync Scenario
        {
            Caption = 'Facebook URL';
            DataClassification = CustomerContent;
        }
        field(50002; "FAS Twitter URL"; Text[300]) // Used for BC Crm Sync Scenario
        {
            Caption = 'Twitter URL';
            DataClassification = CustomerContent;
        }
    }
}
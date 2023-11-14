tableextension 50122 "FAS Gen. Journal Line" extends "Gen. Journal Line"
{
    fields
    {
        field(50000; "FAS Demo Description"; Text[250])
        {
            Caption = 'FAS Demo Description';
            DataClassification = CustomerContent;
        }
    }
}
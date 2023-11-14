tableextension 50124 "FAS Cust. Ledger Entry" extends "Cust. Ledger Entry"
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
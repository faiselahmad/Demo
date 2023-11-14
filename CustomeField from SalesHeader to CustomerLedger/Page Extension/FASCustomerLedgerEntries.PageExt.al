pageextension 50126 "FAS Customer Ledger Entries" extends "Customer Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("SDH Demo Description"; Rec."FAS Demo Description")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SDH Demo Description field.';
            }
        }
    }
}
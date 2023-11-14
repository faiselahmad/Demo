pageextension 50114 TransferRcptOrderExt extends "Posted Transfer Receipt"
{
    layout
    {
        addafter("Posting Date")
        {
            field(PartyNo; Rec."Party No.")
            {
                Caption = 'Party No.';
                ApplicationArea = All;
            }
        }
    }

}
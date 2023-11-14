pageextension 50113 TransferOrderExt extends "Transfer Order"
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
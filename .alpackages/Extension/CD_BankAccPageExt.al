pageextension 50112 "Bank Account Extension" extends "Bank Account Card"
{

    actions
    {
        addafter("Payment Journals")
        {
            action("Copy Bank Account")
            {
                ApplicationArea = ALL;
                Promoted = true;
                PromotedCategory = Process;
                Image = Copy;

                trigger OnAction()
                var
                    CopyBankAcc: Page "Copy Bank Account";
                begin
                    CopyBankAcc.SetBankAcc(Rec);
                    CopyBankAcc.RunModal();

                end;
            }
        }
    }
}
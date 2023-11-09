page 50101 "Copy Bank Account"
{
    ApplicationArea = All;
    PageType = StandardDialog;


    layout
    {
        area(content)
        {
            Group("Bank Account Details")
            {
                field(OldBankAccNo; OldBankAcc."No.")
                {
                    Caption = 'Old Bank Account';

                }
                field(NewBankAccNo; NewBankAccNo)
                {
                    Caption = 'New Bank Account No.';
                }
            }
        }
    }
    procedure SetBankAcc(BankAcc: Record "Bank Account")

    begin
        OldBankAcc := BankAcc;
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        NewBankAcc: Record "Bank Account";
        erro_bankAcc: Label 'Please Specify the bank Account No...';
    begin
        if CloseAction = CloseAction::OK then begin

            IF NewBankAccNo = '' then
                Error(erro_bankAcc);

            NewBankAcc.Init();
            NewBankAcc.TransferFields(OldBankAcc);
            NewBankAcc."No." := NewBankAccNo;
            NewBankAcc.Insert();

            Page.Run(Page::"Bank Account Card", NewBankAcc);

        end;

    end;

    var
        OldBankAcc: Record "Bank Account";
        NewBankAccNo: Code[20];
}


pageextension 50115 "BCS Company Information" extends "Company Information"
{
    layout
    {
        addlast(General)
        {
            field("Master Company"; Rec."Master Company")
            {
                ApplicationArea = All;
            }
        }

    }

}
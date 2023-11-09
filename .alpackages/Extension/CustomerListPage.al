page 50108 CustomerListP
{
    PageType = List;
    SourceTable = A_B_C;
    ApplicationArea = All;
    //DelayedInsert = true;
    UsageCategory = Lists;
    CardPageId = 50106;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                }
                field("Address."; Rec."Address.")
                {
                    ApplicationArea = All;
                }
                field("Qualification"; Rec.Qualification)
                {
                    ApplicationArea = All;
                }
                field("E-mail"; Rec.Email)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
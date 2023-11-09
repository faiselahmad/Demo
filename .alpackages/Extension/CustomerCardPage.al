page 50106 "Customer_Card_Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "A_B_C";

    layout
    {
        area(Content)
        {
            group(General)
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

    actions
    {
        area(Processing)
        {
            action(Action)
            {
                Caption = 'Attachment Documents';
                ApplicationArea = All;

                trigger OnAction()
                var
                    DocumentAttachmentDetails: Page "Document Attachment Details";
                    RecRef: RecordRef;
                begin
                    RecRef.GetTable(Rec);
                    DocumentAttachmentDetails.OpenForRecRef(RecRef);
                    DocumentAttachmentDetails.RunModal();
                end;

            }
            action(EmailAttachement)
            {
                Caption = 'Email Attachment';
                ApplicationArea = All;

                trigger OnAction()
                var
                    TempEmailItem: Record "Email Item" temporary;
                    EmailScenario: Enum "Email Scenario";
                begin
                    TempEmailItem.AddSourceDocument(Database::Customer, Rec.SystemId);
                    TempEmailitem."Send to" := Rec."EMail";
                    TempEmailItem.Send(false, EmailScenario::Default);
                end;
            }

        }

    }

    var
        myInt: Integer;
}
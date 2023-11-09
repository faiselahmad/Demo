pageextension 50102 CustList extends "Order Processor Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {

        addafter("Posted Documents")
        {
            group("HR and PayRoll")
            {
                Caption = 'HR&PayRoll';
                action(Emp)
                {
                    ApplicationArea = All;
                    Caption = 'Employee';
                    Image = HRSetup;
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST(Item),
                                        Recurring = CONST(false));
                }
                action(Emp1)
                {
                    ApplicationArea = All;
                    Caption = 'GJB';
                    Image = HRSetup;
                    RunObject = Page "General Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST(Purchases),
                                        Recurring = CONST(false));
                }
                action(Emp2)
                {
                    ApplicationArea = All;
                    Caption = 'IJB';
                    Image = HRSetup;
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST(Transfer),
                                        Recurring = CONST(false));
                }
                action(Emp3)
                {
                    ApplicationArea = All;
                    Caption = 'SOL';
                    Image = HRSetup;
                    RunObject = Page "Sales Order List";
                    RunPageView = WHERE(Amount = CONST(101013),
                                   "Allow Line Disc." = CONST(false));
                }
                action(Emp4)
                {
                    ApplicationArea = All;
                    Caption = 'Activity List';
                    Image = HRSetup;
                    RunObject = Page "Activity List";



                }
            }

        }

    }

}
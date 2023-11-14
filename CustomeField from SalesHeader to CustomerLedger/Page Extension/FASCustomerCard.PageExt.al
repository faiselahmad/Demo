pageextension 50127 "FAS Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("SDH Demo Description"; Rec."FAS Demo Description")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SDH Demo Description field.';
            }
            field("SDH Facebook URL"; Rec."FAS Facebook URL")  // Used for BC Crm Sync Scenario
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Facebook URL field.';
                ExtendedDatatype = Url;
            }
            field("SDH Twitter URL"; Rec."FAS Twitter URL") // Used for BC Crm Sync Scenario
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Twitter URL field.';
                ExtendedDatatype = Url;
            }
        }
    }
}
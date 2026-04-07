pageextension 70002 "Purchase Invoice Line Page Ext" extends "Purch. Invoice Subform"
{
    layout
    {
        addafter("Quantity")
        {
            field("Quantity 2"; Rec."Quantity 2")
            {
                ApplicationArea = All;
                Caption = 'Quantity 2';
            }
        }
        addafter("Unit of Measure Code")
        {
            field("Unit of Measure Code 2"; Rec."Unit of Measure Code 2")
            {
                ApplicationArea = All;
                Caption = 'Unit of Measure Code 2';
            }
        }
    }
}
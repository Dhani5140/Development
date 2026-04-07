pageextension 70003 "Posted Purch. Inv. Page Ext" extends "Posted Purch. Invoice Subform"
{
    layout
    {
        addafter("Quantity")
        {
            field(Quantity2; Rec.Quantity2)
            {
                ApplicationArea = All;
                Caption = 'Quantity 2';
            }
        }
        addafter("Unit of Measure Code")
        {
            field(UnitofMeasureCode2; Rec.UnitofMeasureCode2)
            {
                ApplicationArea = All;
                Caption = 'Unit of Measure Code 2';
            }
        }
    }
}
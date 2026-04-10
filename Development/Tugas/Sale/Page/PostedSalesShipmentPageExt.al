pageextension 70005 "Posted Sales Shpt. Page Ext" extends "Posted Sales Shpt. Subform"
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
        addafter("Qty. Shipped Not Invoiced")
        {
            field(QtyShippedNotInvoiced2; Rec.QtyShippedNotInvoiced2)
            {
                ApplicationArea = All;
                Caption = 'Qty. Shipped Not Invoiced 2';
            }
        }
        addafter("Quantity Invoiced")
        {
            field(QtyInvoiced2; Rec.QtyInvoiced2)
            {
                ApplicationArea = All;
                Caption = 'Qty. Invoiced 2';
            }
        }
    }
}
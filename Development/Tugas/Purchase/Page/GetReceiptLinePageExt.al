pageextension 70009 "GetReceiptLinePageExt" extends "Get Receipt Lines"
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
        addafter("Quantity Invoiced")
        {
            field(QtyInvoiced2; Rec.QtyInvoiced2)
            {
                ApplicationArea = All;
                Caption = 'Qty. Invoiced 2';
            }
        }
        addafter("Qty. Rcd. Not Invoiced")
        {
            field(QtyReceivedNotInvoiced2; Rec.QtyReceivedNotInvoiced2)
            {
                ApplicationArea = All;
                Caption = 'Qty. Rcd. Not Invoiced 2';
            }
        }
    }
}
pageextension 70004 "Sales Line Page Ext" extends "Sales Order Subform"
{
    layout
    {
        addlast()
        {
            field(Quantity2; Rec.Quantity2)
            {
                ApplicationArea = All;
                Caption = 'Quantity 2';
            }
            field(UnitofMeasureCode2; Rec.UnitofMeasureCode2)
            {
                ApplicationArea = All;
                Caption = 'Unit of Measure Code 2';
            }
            field(QtytoReceive2; Rec.QtytoReceive2)
            {
                ApplicationArea = All;
                Caption = 'Qty. to Receive 2';
            }
            field(QtyReceived2; Rec.QtyReceived2)
            {
                ApplicationArea = All;
                Caption = 'Qty. Received 2';
            }
            field(QtytoInvoice2; Rec.QtytoInvoice2)
            {
                ApplicationArea = All;
                Caption = 'Qty. to Invoice 2';
            }
            field(QtyInvoiced2; Rec.QtyInvoiced2)
            {
                ApplicationArea = All;
                Caption = 'Qty. Invoiced 2';
            }
        }
    }
}
pageextension 70000 "Purchase Line Page Ext" extends "Purchase Order Subform"
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
        addafter("Qty. to Receive")
        {
            field(QtytoReceive2; Rec.QtytoReceive2)
            {
                ApplicationArea = All;
                Caption = 'Qty. to Receive 2';
            }
        }
        addafter("Quantity Received")
        {
            field(QtyReceived2; Rec.QtyReceived2)
            {
                AccessByPermission = TableData "Purch. Rcpt. Header" = R;
                ApplicationArea = All;
                Caption = 'Quantity Received 2';
                Editable = false;
                ToolTip = 'Specifies how many units of the item on the line have been posted as received.';
            }
        }
        addafter("Qty. to Invoice")
        {
            field(QtytoInvoice2; Rec.QtytoInvoice2)
            {
                ApplicationArea = All;
                Caption = 'Qty. to Invoice 2';
            }
        }
        addafter("Quantity Invoiced")
        {
            field(QtyInvoiced2; Rec.QtyInvoiced2)
            {
                ApplicationArea = All;
                Caption = 'Quantity Invoiced 2';
            }
        }
    }
}
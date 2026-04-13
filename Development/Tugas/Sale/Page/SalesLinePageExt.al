pageextension 70004 "Sales Line Page Ext" extends "Sales Order Subform"
{
    layout
    {
        addafter("Quantity")
        {
            field(Quantity2; Rec.Quantity2)
            {
                ApplicationArea = All;
                Caption = 'Quantity 2';
                DecimalPlaces = 0 : 5;
            }
        }
        addafter("Unit of Measure Code")
        {
            field(UnitofMeasureCode2; Rec.UnitofMeasureCode2)
            {
                ApplicationArea = All;
                Caption = 'Unit of Measure Code 2';
                TableRelation = "Unit of Measure";
            }
        }
        addafter("Qty. to Ship")
        {
            field(QtytoShip2; Rec.QtytoShip2)
            {
                ApplicationArea = All;
                Caption = 'Qty. to Ship 2';
                DecimalPlaces = 0 : 5;
            }
        }
        addafter("Quantity Shipped")
        {
            field(QtyShipped2; Rec.QtyShipped2)
            {
                AccessByPermission = TableData "Sales Shipment Header" = R;
                ApplicationArea = All;
                Caption = 'Qty. Shipped 2';
                DecimalPlaces = 0 : 5;
                Editable = false;
                ToolTip = 'Specifies how many units of the item on the line have been posted as shipped.';
            }
        }
        addafter("Qty. to Invoice")
        {
            field(QtytoInvoice2; Rec.QtytoInvoice2)
            {
                ApplicationArea = All;
                Caption = 'Qty. to Invoice 2';
                DecimalPlaces = 0 : 5;
            }
        }
        addafter("Quantity Invoiced")
        {
            field(QtyInvoiced2; Rec.QtyInvoiced2)
            {
                ApplicationArea = All;
                Caption = 'Qty. Invoiced 2';
                DecimalPlaces = 0 : 5;
            }
        }
    }
}
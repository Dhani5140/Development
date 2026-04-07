tableextension 70004 "Sales Line Table Ext" extends "Sales Line"
{
    fields
    {
        field(70000; Quantity2; Decimal)
        {
            Caption = 'Quantity 2';
            DataClassification = ToBeClassified;
        }
        field(70001; UnitofMeasureCode2; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit of Measure Code 2';
        }
        field(70002; QtytoShip2; Decimal)
        {
            Caption = 'Qty. to Ship 2';
            DataClassification = ToBeClassified;
        }
        field(70003; QtyShipped2; Decimal)
        {
            Caption = 'Qty. Shipped 2';
            DataClassification = ToBeClassified;
        }
        field(70004; QtyToInvoice2; Decimal)
        {
            Caption = 'Qty. to Invoice 2';
            DataClassification = ToBeClassified;
        }
        field(70005; QtyInvoiced2; Decimal)
        {
            Caption = 'Qty. Invoiced 2';
            DataClassification = ToBeClassified;
        }
    }
}
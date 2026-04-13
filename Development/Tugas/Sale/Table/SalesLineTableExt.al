tableextension 70004 "Sales Line Table Ext" extends "Sales Line"
{
    fields
    {
        field(70000; Quantity2; Decimal)
        {
            Caption = 'Quantity 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            trigger OnValidate()
            begin
                "QtytoShip2" := Quantity2 - QtyShipped2;
                "QtyToInvoice2" := QtytoShip2 + QtyShipped2;
            end;
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
            DecimalPlaces = 0 : 5;
            trigger OnValidate()
            begin
                if QtytoShip2 > Quantity2 then
                    Error('Qty. to Ship cannot be greater than Quantity.');
                "QtyToInvoice2" := QtytoShip2 + QtyShipped2;
            end;
        }
        field(70003; QtyShipped2; Decimal)
        {
            Caption = 'Qty. Shipped 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
            BlankZero = true;
        }
        field(70004; QtyToInvoice2; Decimal)
        {
            Caption = 'Qty. to Invoice 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            trigger OnValidate()
            begin
                if QtyToInvoice2 > QtytoShip2 then
                    Error('Qty. to Invoice cannot be greater than Quantity to Ship.');
            end;
        }
        field(70005; QtyInvoiced2; Decimal)
        {
            Caption = 'Qty. Invoiced 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
            BlankZero = true;
        }
    }
}
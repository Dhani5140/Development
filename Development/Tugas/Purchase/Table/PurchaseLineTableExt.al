tableextension 70000 "Purchase Line Table Ext" extends "Purchase Line"
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
                "QtytoReceive2" := Quantity2 - QtyReceived2;
                "QtyToInvoice2" := QtytoReceive2 + QtyReceived2;
            end;
        }
        field(70001; UnitofMeasureCode2; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit of Measure Code 2';
            TableRelation = "Unit of Measure";
        }
        field(70002; QtytoReceive2; Decimal)
        {
            Caption = 'Qty. to Receive 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            trigger OnValidate()
            begin
                if QtytoReceive2 > Quantity2 then
                    Error('Qty. to Receive cannot be greater than Quantity.');
                "QtyToInvoice2" := QtytoReceive2 + QtyReceived2;
            end;
        }
        field(70003; QtyReceived2; Decimal)
        {
            Caption = 'Quantity Received 2';
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
                if QtyToInvoice2 > Quantity2 then
                    Error('Qty. to Invoice cannot be greater than Quantity.');
            end;
        }
        field(70005; QtyInvoiced2; Decimal)
        {
            Caption = 'Quantity Invoiced 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
            BlankZero = true;
        }
    }
    trigger OnAfterModify()
    var
        myInt: Integer;
    begin

    end;
}
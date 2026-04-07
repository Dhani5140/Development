tableextension 70000 "Purchase Line Table Ext" extends "Purchase Line"
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
        field(70002; QtytoReceive2; Decimal)
        {
            Caption = 'Qty. to Receive 2';
            DataClassification = ToBeClassified;
        }
        field(70003; QtyReceived2; Decimal)
        {
            Caption = 'Qty. Received 2';
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
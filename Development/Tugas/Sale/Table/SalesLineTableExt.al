tableextension 70004 "Sales Line Table Ext" extends "Sales Line"
{
    fields
    {
        field(70000; "Quantity 2"; Decimal)
        {
            Caption = 'Quantity 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
        }
        field(70001; "Unit of Measure Code 2"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit of Measure Code 2';
            TableRelation = "Unit of Measure";
        }
        field(70002; "Qty. to Ship 2"; Decimal)
        {
            Caption = 'Qty. to Ship 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
        }
        field(70003; "Quantity Shipped 2"; Decimal)
        {
            Caption = 'Quantity Shipped 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(70004; "Qty. to Invoice 2"; Decimal)
        {
            Caption = 'Qty. to Invoice 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
        }
        field(70005; "Quantity Invoiced 2"; Decimal)
        {
            Caption = 'Quantity Invoiced 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
    }
}
tableextension 70002 "Purch. Inv. Line Table Ext" extends "Purch. Inv. Line"
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
    }
}
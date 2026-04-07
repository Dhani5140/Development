tableextension 70006 "Sales Inv. Line Table Ext" extends "Sales Invoice Line"
{
    fields
    {
        field(70000; "Quantity 2"; Decimal)
        {
            Caption = 'Quantity 2';
            DataClassification = ToBeClassified;
        }
        field(70001; "Unit of Measure Code 2"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit of Measure Code 2';
            TableRelation = "Unit of Measure";
        }
    }
}
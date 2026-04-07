tableextension 70001 "Purchase Receipt Table Ext" extends "Purch. Rcpt. Line"
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
        field(70002; "Qty. Rcd. Not Invoiced 2"; Decimal)
        {
            Caption = 'Qty. Rcd. Not Invoiced 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
        }
        field(70003; "Qty. Invoiced 2"; Decimal)
        {
            Caption = 'Qty. Invoiced 2';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
        }
    }
}
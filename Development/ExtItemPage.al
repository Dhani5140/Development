pageextension 70199 EXTItemCard extends "Item Card"
{
    layout
    {
        addafter("Base Unit of Measure")
        {
            field("Base Of Unit measure 2")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
pageextension 70012 PostedPurchaseInvoicePageExt2 extends "Posted Purchase Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Processing)
        {
            action(TestAction)
            {
                ApplicationArea = All;
                Caption = 'Test Action';
                Image = Test;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    Message('Test Action executed');
                end;
            }
        }
    }

    var
        myInt: Integer;
}
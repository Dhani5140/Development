codeunit 70000 PurchaseCode
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterGetItem', '', false, false)]
    local procedure UoM_OnAfterGetItem(var Item: Record Item; var PurchaseLine: Record "Purchase Line")
    begin
        PurchaseLine."UnitofMeasureCode2" := Item."Base Unit of Measure";
    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterInitQtyToReceive', '', false, false)]
    local procedure QtyToReceive_OnAfterInitQtyToReceive(var PurchLine: Record "Purchase Line"; CurrFieldNo: Integer)
    begin
        if PurchLine."Quantity2" = 0 then
            PurchLine."QtytoReceive2" := PurchLine."Quantity2" - PurchLine."QtyReceived2";
    end;

}
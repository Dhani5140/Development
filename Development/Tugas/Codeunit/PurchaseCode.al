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
        if PurchLine."Quantity2" <> 0 then
            PurchLine."QtytoReceive2" := PurchLine."Quantity2" - PurchLine."QtyReceived2";
    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterInitQtyToInvoice', '', false, false)]
    local procedure QtyToInvoice_OnAfterInitQtyToInvoice(var PurchLine: Record "Purchase Line"; CurrFieldNo: Integer)
    begin
        PurchLine."QtyToInvoice2" := PurchLine."QtytoReceive2" + PurchLine."QtyReceived2";
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnAfterPostUpdateOrderLine', '', false, false)]
    local procedure ReceiveItem_OnAfterPostUpdateOrderLine(var PurchaseLine: Record "Purchase Line"; WhseShip: Boolean; WhseReceive: Boolean; CommitIsSupressed: Boolean)
    begin
        PurchaseLine."QtyReceived2" += PurchaseLine."QtytoReceive2";
    end;
}
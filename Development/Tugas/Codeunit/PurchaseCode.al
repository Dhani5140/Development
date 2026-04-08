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

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnAfterPostUpdateOrderLine', '', false, false)]
    local procedure ReceiveItem_OnAfterPostUpdateOrderLine(var PurchaseLine: Record "Purchase Line"; WhseShip: Boolean; WhseReceive: Boolean; CommitIsSupressed: Boolean)
    begin
        PurchaseLine."QtyReceived2" += PurchaseLine."QtytoReceive2";
    end;


}
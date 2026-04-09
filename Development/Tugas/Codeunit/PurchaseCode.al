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

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnBeforePostUpdateOrderLineModifyTempLine', '', false, false)]
    local procedure FixQtyBeforeModify(var TempPurchaseLine: Record "Purchase Line" temporary; WhseShip: Boolean; WhseReceive: Boolean; CommitIsSuppressed: Boolean; PurchHeader: Record "Purchase Header")
    begin
        TempPurchaseLine."QtyReceived2" += TempPurchaseLine."QtytoReceive2";
        TempPurchaseLine.Validate("Quantity2");
        TempPurchaseLine.Validate("QtytoReceive2");
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnInsertReceiptLineOnAfterInitPurchRcptLine', '', false, false)]
    local procedure InitiatePurchRcptLine2(var PurchRcptLine: Record "Purch. Rcpt. Line"; PurchLine: Record "Purchase Line"; ItemLedgShptEntryNo: Integer; xPurchLine: Record "Purchase Line"; var PurchRcptHeader: Record "Purch. Rcpt. Header"; var CostBaseAmount: Decimal; PostedWhseRcptHeader: Record "Posted Whse. Receipt Header"; WhseRcptHeader: Record "Warehouse Receipt Header"; var WhseRcptLine: Record "Warehouse Receipt Line")
    begin
        PurchRcptLine."Quantity2" := PurchLine."QtytoReceive2";
        PurchRcptLine."QtyInvoiced2" := PurchRcptLine."Quantity2";
        PurchRcptLine.QtyReceivedNotInvoiced2 := PurchRcptLine."Quantity2" - PurchRcptLine."QtyInvoiced2";
    end;
}
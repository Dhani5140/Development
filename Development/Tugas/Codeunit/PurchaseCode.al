codeunit 70000 PurchaseCode
{
    Permissions = tabledata "Purch. Rcpt. Line" = rm;
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterGetItem', '', false, false)]
    local procedure UoM_OnAfterGetItem(
        var Item: Record Item;
        var PurchaseLine: Record "Purchase Line")
    begin
        PurchaseLine."UnitofMeasureCode2" := Item."Base Unit of Measure";
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnBeforePostUpdateOrderLineModifyTempLine', '', false, false)]
    local procedure FixPurchaseQtyBeforeModify(
        var TempPurchaseLine: Record "Purchase Line" temporary;
        WhseShip: Boolean;
        WhseReceive: Boolean;
        CommitIsSuppressed: Boolean;
        PurchHeader: Record "Purchase Header")
    begin
        TempPurchaseLine."QtyReceived2" += TempPurchaseLine."QtytoReceive2";
        TempPurchaseLine.Validate("Quantity2");
        TempPurchaseLine.Validate("QtytoReceive2");
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnAfterPurchRcptLineInsert', '', false, false)]
    local procedure InitiatePurchRcptLine2(
        PurchaseLine: Record "Purchase Line";
        var PurchRcptLine: Record "Purch. Rcpt. Line";
        ItemLedgShptEntryNo: Integer;
        WhseShip: Boolean;
        WhseReceive: Boolean;
        CommitIsSupressed: Boolean;
        PurchInvHeader: Record "Purch. Inv. Header";
        var TempTrackingSpecification: Record "Tracking Specification" temporary;
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        TempWhseRcptHeader: Record "Warehouse Receipt Header";
        xPurchLine: Record "Purchase Line";
        var TempPurchLineGlobal: Record "Purchase Line" temporary)
    begin
        PurchRcptLine."Quantity2" := xPurchLine."QtytoReceive2";
        PurchRcptLine.QtyReceivedNotInvoiced2 := PurchRcptLine."Quantity2";
        PurchRcptLine.Modify()
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnBeforeUpdateInvoicedQtyOnPurchRcptLine', '', false, false)]
    local procedure UpdateInvoicedQtyOnPurchRcptLine(
        var PurchRcptLine: Record "Purch. Rcpt. Line";
        var QtyToBeInvoiced: Decimal;
        var QtyToBeInvoicedBase: Decimal;
        CommitIsSupressed: Boolean;
        var PurchInvHeader: Record "Purch. Inv. Header";
        var PurchaseHeader: Record "Purchase Header";
        var PurchaseLine: Record "Purchase Line")
    begin
        PurchRcptLine.QtyInvoiced2 := PurchRcptLine.QtyReceivedNotInvoiced2;
        PurchRcptLine.QtyReceivedNotInvoiced2 := PurchRcptLine."Quantity2" - PurchRcptLine.QtyInvoiced2;
    end;
}
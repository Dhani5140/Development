pageextension 70123 CustomerList extends "Customer List"
{
    trigger OnOpenPage();
    begin
        report.Run(Report::LABCustomerList);
    end;
}
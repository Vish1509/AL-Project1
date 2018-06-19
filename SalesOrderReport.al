report 50103 SalesOrder
{
    DefaultLayout = RDLC;
    RDLCLayout = 'SalesOrder.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Sales_Header;"Sales Header")
        {
            column(No_;"No.")
            {
                
            }
            dataitem(Sales_Line;"Sales Line"){
                DataItemLinkReference = Sales_Header;
                DataItemLink = "Document No." = field("No."); 
                column(No;"No."){

                }
                column(Description;Description){

                }
                column(Quantity;Quantity){
                    
                }
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}

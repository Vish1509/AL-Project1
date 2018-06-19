page 50110 CustInfoFactBox
{
    PageType = ListPart;
    SourceTable = Customer;
    UsageCategory = Documents;
    AccessByPermission = page CustInfoFactBox = X;
    
    layout
    {
        area(Content)
        {
                field("No.";"No.")
                {
                    
                }
                field(Name;Name)
                {
                    
                }
                field(Address;Address)
                {
                    
                }
        }
    }

}

pageextension 50110 MyExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addfirst(FactBoxes)
        {
            part(MyFactBox;CustInfoFactBox)
            {

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}
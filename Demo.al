page 50101 Demo
{
    PageType = Card;
    SourceTable = Customer;
    UsageCategory = Documents;
    AccessByPermission = page Demo = X;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No.";"No.")
                {
                    Editable = true;
                }

                field(Name;Name)
                {
                    Editable = false;
                }

                field(Address;Address)
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Demo)
            {
                Image = Customer;
                PromotedIsBig = true;
                Promoted = true;
                trigger OnAction();
                begin
                    Message('Hello Devloper !! Your Page is Open(^_^)');
                end;
            }
        }
    }

}
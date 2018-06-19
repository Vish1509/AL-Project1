report 50130 CustomerList
{
    DefaultLayout = RDLC;
    RDLCLayout = 'CustomerList.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(CustomerList;Customer)
        {
            column(No_;"No.")
            {
                
            }
            column(Name;Name)
            {

            }
            column(Contact;Contact)
            {

            }
            column(Location_Code;"Location Code")
            {

            }
            column(Picture;Picture)
            {
                
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

report 50123 DemoReport2
{
    DefaultLayout = RDLC;
    RDLCLayout = 'TestDemoList.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(TestTable;TestTable)
        {
            column(No;No)
            {
                
            }
            column(Name;Name)
            {

            }
            column(Age;Age)
            {

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
table 50101 TestTable
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;No; Integer)
        {

        }
        field(2;Name;Text[25])
        {

        }
        field(3;Age;Code[10])
        {

        }
    }
    
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}

page 50105 TestDemoPage
{
    PageType = Card;
    SourceTable = TestTable;
    UsageCategory= Documents;
    AccessByPermission = page TestDemoPage = X;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(general)
            {
                field(No;No)
                {
                    CaptionML = ENU = 'No';
                }
                field(Name;Name)
                {
                    CaptionML = ENU = 'Name';
                }

                field(Age;Age)
                {
                    CaptionML = ENU = 'Age';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Test)
            {
                Image = Calculate;
                PromotedIsBig = true;
                Promoted = true;
                trigger OnAction();
                begin
                    Message('Good Evening');
                end;
            }
        }
    }
} 

page 50106 TestDemoList
{
    PageType = List;
    SourceTable = TestTable;
    UsageCategory = Documents;
    AccessByPermission = page TestDemoList = X;
    ApplicationArea = All;
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(No;No)
                {
                    
                }
                field(Name;Name)
                {

                }
                field(Age;Age)
                {

                }
                
            }
        }
        area(factboxes)
        {
            
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ListDemo)
            {
                Image =  Timeline;
                PromotedIsBig = true;
                Promoted = true;
                
                trigger OnAction();
                begin
                     Message(Format(CurrentDateTime()));
                end;
            }
        }
    }
}
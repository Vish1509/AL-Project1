tableextension 50102 MyTableExt extends Vendor
{
    fields
    {
        field(50102;Test;Text[20])
        {
            Editable = true;
        }
    }
}

pageextension 50102 MyPageExt extends "Vendor List"
{
    
    layout
    {
        addafter(Name)
        {
            field(Test;Test)
            {

            }
        }
    }
}
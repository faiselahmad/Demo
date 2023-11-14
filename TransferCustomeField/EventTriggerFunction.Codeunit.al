codeunit 50115 "Event Trigger Function"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Receipt", 'OnBeforeInsertTransRcptHeader', '', true, true)]
    local procedure UpdateTransRcptHeader(var TransRcptHeader: Record "Transfer Receipt Header"; TransHeader: Record "Transfer Header"; CommitIsSuppressed: Boolean);
    begin
        TransRcptHeader."Party No." := TransHeader."Party No.";
    end;

}
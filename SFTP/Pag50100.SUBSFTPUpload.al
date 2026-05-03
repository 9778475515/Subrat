pageextension 50100 SUBCUSTEXTEN extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action(UploadViaSFTP)
            {
                ApplicationArea = All;
                Caption = 'Upload Via SFTP';
                Image = LaunchWeb;
                trigger OnAction()
                var
                    SFTPManagement: Codeunit "SUB SFTP Management";
                begin
                    SFTPManagement.UploadFileViaSFTP();
                end;
            }
        }
    }
}
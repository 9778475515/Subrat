codeunit 50100 "SUB SFTP Management"
{
    internal procedure UploadFileViaSFTP()
    var
        SFTPClient: Codeunit "SFTP Client";
        InStream: InStream;
        ClearTextPassword: Text;
        Password: SecretText;
        SHA256Hash: Text;
        HostName: Text;
    begin
        SFTPClient.AddFingerprintSHA256('');
        SFTPClient.Initialize(HostName, 22, 'username', Password);
        UploadIntoStream('', InStream);
        SFTPClient.PutFileStream('DataFile.Txt', InStream);
        SFTPClient.Disconnect();
    end;



}

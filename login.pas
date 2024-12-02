unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection;

type
  TfLogin = class(TForm)
    edHost: TEdit;
    edPort: TEdit;
    edUname: TEdit;
    edPass: TEdit;
    btnLogin: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    zconn: TZConnection;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

{$R *.dfm}

procedure TfLogin.btnLoginClick(Sender: TObject);
begin
  try
    zconn.Disconnect;
    zconn.HostName := edHost.Text;
    zconn.Port := StrToInt(edPort.Text);
    zconn.User := edUname.Text;
    zconn.Password := edPass.Text;
    zconn.Connect;
  except
      on E: Exception do
      begin
        ShowMessage('Koneksi Gagal!');
      end;
  end;
  if zconn.Connected then begin
      ShowMessage('Koneksi Berhasil');
      Close;
  end;
end;

end.

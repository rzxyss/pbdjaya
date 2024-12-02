unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfMenu = class(TForm)
    btnLogin: TBitBtn;
    btnVaruni: TBitBtn;
    procedure btnLoginClick(Sender: TObject);
    procedure btnVaruniClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation
uses login, varuni;
{$R *.dfm}


procedure TfMenu.btnLoginClick(Sender: TObject);
begin
  fLogin.Show;
end;

procedure TfMenu.btnVaruniClick(Sender: TObject);
begin
  if fLogin.zconn.Connected then
  begin
    fVaruni.ShowModal;
  end
  else
  begin
    ShowMessage('Login Dulu Bossss');
    fLogin.Show;
  end
end;

end.

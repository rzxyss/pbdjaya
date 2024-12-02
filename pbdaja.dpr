program pbdaja;

uses
  Forms,
  menu in 'menu.pas' {fMenu},
  varuni in 'varuni.pas' {fVaruni},
  login in 'login.pas' {fLogin},
  DataModul in 'DataModul.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfVaruni, fVaruni);
  Application.CreateForm(TfLogin, fLogin);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.

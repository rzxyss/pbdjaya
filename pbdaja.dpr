program pbdaja;

uses
  Forms,
  login in 'login.pas' {Form1},
  dm in '..\uts146\dm.pas' {dem: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdem, dem);
  Application.Run;
end.

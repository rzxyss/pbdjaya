unit varuni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SMDBFltr, mxExport, SMDBFind, ExtCtrls, SMDBCtrl, Grids,
  DBGrids, SMDBGrid, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, XPMan, frxClass, frxDBSet;

type
  TfVaruni = class(TForm)
    sw_grid: TSMDBGrid;
    sw_nav: TSMDBNavigator;
    gr_grid: TSMDBGrid;
    gr_nav: TSMDBNavigator;
    XPManifest1: TXPManifest;
    hr_nav: TSMDBNavigator;
    hr_grid: TSMDBGrid;
    kr_grid: TSMDBGrid;
    kr_nav: TSMDBNavigator;
    nl_grid: TSMDBGrid;
    nl_nav: TSMDBNavigator;
    procedure sw_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVaruni: TfVaruni;

implementation
uses DataModul;
{$R *.dfm}

procedure TfVaruni.sw_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dm.sw_find.Execute;
    sbFilter : dm.sw_filter.Execute;
    sbExport : dm.sw_export.Select;
    sbPrint : dm.sw_rpt.ShowReport;
  end;
end;

procedure TfVaruni.FormShow(Sender: TObject);
begin
 dm.TabelAktif(True);
end;

procedure TfVaruni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.TabelAktif(False);
end;

end.

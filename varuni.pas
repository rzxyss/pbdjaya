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
    XPManifest1: TXPManifest;
    hr_nav: TSMDBNavigator;
    hr_grid: TSMDBGrid;
    kr_grid: TSMDBGrid;
    kr_nav: TSMDBNavigator;
    nl_grid: TSMDBGrid;
    nl_nav: TSMDBNavigator;
    sw_export: TmxDBGridExport;
    kr_export: TmxDBGridExport;
    hr_export: TmxDBGridExport;
    gr_export: TmxDBGridExport;
    nl_export: TmxDBGridExport;
    gr_grid: TSMDBGrid;
    gr_nav: TSMDBNavigator;
    procedure sw_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure gr_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure hr_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure kr_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure nl_navClick(Sender: TObject; Button: TSMNavigateBtn);
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
    sbExport : sw_export.Select;
    sbPrint : dm.sw_rpt.ShowReport;
  end;
end;

procedure TfVaruni.FormShow(Sender: TObject);
begin
 dm.sw_zq.Active := True;
 dm.gr_zq.Active := True;
 dm.hr_zq.Active := True;
 dm.kr_zq.Active := True;
 dm.nl_zq.Active := True;
end;

procedure TfVaruni.gr_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dm.gr_find.Execute;
    sbFilter : dm.gr_filter.Execute;
    sbExport : gr_export.Select;
    sbPrint : dm.gr_rpt.ShowReport;
  end;
end;

procedure TfVaruni.hr_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dm.hr_find.Execute;
    sbFilter : dm.hr_filter.Execute;
    sbExport : hr_export.Select;
    sbPrint : dm.hr_rpt.ShowReport;
  end;
end;

procedure TfVaruni.kr_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dm.kr_find.Execute;
    sbFilter : dm.kr_filter.Execute;
    sbExport : kr_export.Select;
    sbPrint : dm.kr_rpt.ShowReport;
  end;
end;

procedure TfVaruni.nl_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dm.nl_find.Execute;
    sbFilter : dm.nl_filter.Execute;
    sbExport : nl_export.Select;
    sbPrint : dm.nl_rpt.ShowReport;
  end;
end;

end.

unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SMDBFltr, mxExport, SMDBFind, ExtCtrls, SMDBCtrl, Grids,
  DBGrids, SMDBGrid, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, XPMan, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    zconn: TZConnection;
    sw_zq: TZQuery;
    sw_ds: TDataSource;
    sw_grid: TSMDBGrid;
    sw_nav: TSMDBNavigator;
    sw_find: TSMDBFindDialog;
    sw_export: TmxDBGridExport;
    sw_filter: TSMDBFilterDialog;
    gr_zq: TZQuery;
    gr_ds: TDataSource;
    gr_grid: TSMDBGrid;
    gr_nav: TSMDBNavigator;
    gr_find: TSMDBFindDialog;
    gr_export: TmxDBGridExport;
    gr_filter: TSMDBFilterDialog;
    XPManifest1: TXPManifest;
    hr_zq: TZQuery;
    hr_ds: TDataSource;
    hr_filter: TSMDBFilterDialog;
    hr_find: TSMDBFindDialog;
    hr_export: TmxDBGridExport;
    hr_nav: TSMDBNavigator;
    hr_grid: TSMDBGrid;
    kr_zq: TZQuery;
    kr_ds: TDataSource;
    kr_filter: TSMDBFilterDialog;
    kr_find: TSMDBFindDialog;
    kr_export: TmxDBGridExport;
    kr_grid: TSMDBGrid;
    kr_nav: TSMDBNavigator;
    nl_zq: TZQuery;
    nl_ds: TDataSource;
    nl_find: TSMDBFindDialog;
    nl_filter: TSMDBFilterDialog;
    nl_export: TmxDBGridExport;
    nl_grid: TSMDBGrid;
    nl_nav: TSMDBNavigator;
    sw_rpt: TfrxReport;
    sw_rptDB: TfrxDBDataset;
    procedure sw_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure gr_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure hr_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure kr_navClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure nl_navClick(Sender: TObject; Button: TSMNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses dm;
{$R *.dfm}

procedure TForm1.sw_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dem.sw_find.Execute;
    sbFilter : dem.sw_filter.Execute;
    sbExport : dem.sw_export.Select;
    sbPrint : dem.sw_Rpt.ShowReport;
  end;
end;

procedure TForm1.gr_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dem.gr_find.Execute;
    sbFilter : dem.gr_filter.Execute;
    sbExport : dem.gr_export.Select;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   DateSeparator := '-';
   ShortDateFormat := 'dd/MM/yyyy';
   ThousandSeparator := '.';
   DecimalSeparator := ',';
end;

procedure TForm1.hr_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dem.hr_find.Execute;
    sbFilter : dem.hr_filter.Execute;
    sbExport : dem.hr_export.Select;
  end;
end;

procedure TForm1.kr_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dem.kr_find.Execute;
    sbFilter : dem.kr_filter.Execute;
    sbExport : dem.kr_export.Select;
  end;
end;

procedure TForm1.nl_navClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case Button of
    sbFind : dem.nl_find.Execute;
    sbFilter : dem.nl_filter.Execute;
    sbExport : dem.nl_export.Select;
  end;
end;

end.

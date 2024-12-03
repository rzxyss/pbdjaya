unit DataModul;

interface

uses
  SysUtils, Classes, mxExport, SMDBFltr, SMDBFind, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  Tdm = class(TDataModule)
    sw_zq: TZQuery;
    sw_ds: TDataSource;
    sw_find: TSMDBFindDialog;
    sw_filter: TSMDBFilterDialog;
    gr_zq: TZQuery;
    gr_ds: TDataSource;
    gr_filter: TSMDBFilterDialog;
    gr_find: TSMDBFindDialog;
    hr_zq: TZQuery;
    hr_ds: TDataSource;
    hr_filter: TSMDBFilterDialog;
    hr_find: TSMDBFindDialog;
    kr_zq: TZQuery;
    kr_ds: TDataSource;
    kr_filter: TSMDBFilterDialog;
    kr_find: TSMDBFindDialog;
    nl_zq: TZQuery;
    nl_ds: TDataSource;
    nl_filter: TSMDBFilterDialog;
    nl_find: TSMDBFindDialog;
    sw_rpt: TfrxReport;
    sw_dbrpt: TfrxDBDataset;
    gr_rpt: TfrxReport;
    gr_dbrpt: TfrxDBDataset;
    hr_rpt: TfrxReport;
    hr_dbrpt: TfrxDBDataset;
    kr_rpt: TfrxReport;
    kr_dbrpt: TfrxDBDataset;
    nl_dbrpt: TfrxDBDataset;
    nl_rpt: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation
uses login, varuni;
{$R *.dfm}
end.

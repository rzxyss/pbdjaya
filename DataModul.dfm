object dm: Tdm
  OldCreateOrder = False
  Left = 922
  Top = 98
  Height = 360
  Width = 428
  object sw_zq: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM siswa ORDER BY siswa_id')
    Params = <>
    Left = 8
    Top = 8
  end
  object sw_ds: TDataSource
    DataSet = sw_zq
    Left = 56
    Top = 8
  end
  object sw_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = sw_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 112
    Top = 8
  end
  object sw_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = sw_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 168
    Top = 8
  end
  object gr_zq: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM guru ORDER BY guru_id')
    Params = <>
    Left = 8
    Top = 64
  end
  object gr_ds: TDataSource
    DataSet = gr_zq
    Left = 56
    Top = 64
  end
  object gr_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = gr_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 168
    Top = 64
  end
  object gr_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = gr_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 112
    Top = 64
  end
  object hr_zq: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM hari')
    Params = <>
    Left = 8
    Top = 120
  end
  object hr_ds: TDataSource
    DataSet = hr_zq
    Left = 56
    Top = 120
  end
  object hr_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = hr_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 168
    Top = 120
  end
  object hr_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = hr_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 112
    Top = 120
  end
  object kr_zq: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM kursus')
    Params = <>
    Left = 8
    Top = 184
  end
  object kr_ds: TDataSource
    DataSet = kr_zq
    Left = 56
    Top = 184
  end
  object kr_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = kr_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 168
    Top = 176
  end
  object kr_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = kr_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 112
    Top = 176
  end
  object nl_zq: TZQuery
    Connection = fLogin.zconn
    SQL.Strings = (
      'SELECT * FROM nilai')
    Params = <>
    Left = 8
    Top = 232
  end
  object nl_ds: TDataSource
    DataSet = nl_zq
    Left = 56
    Top = 232
  end
  object nl_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = nl_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 168
    Top = 232
  end
  object nl_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = nl_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 112
    Top = 232
  end
  object sw_rpt: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45628.940212662000000000
    ReportOptions.LastChange = 45629.371156493060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 8
    Datasets = <
      item
        DataSet = sw_dbrpt
        DataSetName = 'sw_dbrpt'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object Header1: TfrxHeader
        Height = 30.236240000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Id Siswa')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 219.212740000000000000
          Top = 11.338590000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama Siswa')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 377.953000000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Tanggal Lahir')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 514.016080000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'JK')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 566.929500000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'BLOB')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 793.701300000000000000
        DataSet = sw_dbrpt
        DataSetName = 'sw_dbrpt'
        RowCount = 0
        object sw_dbrptsiswa_id: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_id'
          DataSet = sw_dbrpt
          DataSetName = 'sw_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[sw_dbrpt."siswa_id"]')
          ParentFont = False
        end
        object sw_dbrptsiswa_nama: TfrxMemoView
          Left = 219.212740000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_nama'
          DataSet = sw_dbrpt
          DataSetName = 'sw_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[sw_dbrpt."siswa_nama"]')
          ParentFont = False
        end
        object sw_dbrptsiswa_lahir: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_lahir'
          DataSet = sw_dbrpt
          DataSetName = 'sw_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[sw_dbrpt."siswa_lahir"]')
          ParentFont = False
        end
        object sw_dbrptsiswa_gender: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_gender'
          DataSet = sw_dbrpt
          DataSetName = 'sw_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[sw_dbrpt."siswa_gender"]')
          ParentFont = False
        end
        object sw_dbrptsiswa_blob: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_blob'
          DataSet = sw_dbrpt
          DataSetName = 'sw_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[sw_dbrpt."siswa_blob"]')
          ParentFont = False
        end
      end
      object Memo6: TfrxMemoView
        Left = 347.716760000000000000
        Top = 49.133890000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Laporan Siswa')
        ParentFont = False
      end
    end
  end
  object sw_dbrpt: TfrxDBDataset
    UserName = 'sw_dbrpt'
    CloseDataSource = False
    DataSource = sw_ds
    Left = 288
    Top = 8
  end
  object gr_rpt: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45628.940212662000000000
    ReportOptions.LastChange = 45628.962421215300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 64
    Datasets = <
      item
        DataSet = gr_dbrpt
        DataSetName = 'gr_dbrpt'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Lahir')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'JK')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Aktif')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = gr_dbrpt
        DataSetName = 'gr_dbrpt'
        RowCount = 0
        object gr_dbrptguru_id: TfrxMemoView
          Left = 117.165430000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'guru_id'
          DataSet = gr_dbrpt
          DataSetName = 'gr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[gr_dbrpt."guru_id"]')
          ParentFont = False
        end
        object gr_dbrptguru_nama: TfrxMemoView
          Left = 147.401670000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'guru_nama'
          DataSet = gr_dbrpt
          DataSetName = 'gr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[gr_dbrpt."guru_nama"]')
          ParentFont = False
        end
        object gr_dbrptguru_lahir: TfrxMemoView
          Left = 548.031850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'guru_lahir'
          DataSet = gr_dbrpt
          DataSetName = 'gr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[gr_dbrpt."guru_lahir"]')
          ParentFont = False
        end
        object gr_dbrptguru_gender: TfrxMemoView
          Left = 627.401980000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'guru_gender'
          DataSet = gr_dbrpt
          DataSetName = 'gr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[gr_dbrpt."guru_gender"]')
          ParentFont = False
        end
        object gr_dbrptguru_aktif: TfrxMemoView
          Left = 661.417750000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'guru_aktif'
          DataSet = gr_dbrpt
          DataSetName = 'gr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[gr_dbrpt."guru_aktif"]')
          ParentFont = False
        end
      end
    end
  end
  object gr_dbrpt: TfrxDBDataset
    UserName = 'gr_dbrpt'
    CloseDataSource = False
    DataSource = gr_ds
    Left = 288
    Top = 64
  end
  object hr_rpt: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45628.940212662000000000
    ReportOptions.LastChange = 45628.963701122700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 120
    Datasets = <
      item
        DataSet = hr_dbrpt
        DataSetName = 'hr_dbrpt'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Kode Hari')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama Hari')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = hr_dbrpt
        DataSetName = 'hr_dbrpt'
        RowCount = 0
        object hr_dbrpthari_kode: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'hari_kode'
          DataSet = hr_dbrpt
          DataSetName = 'hr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[hr_dbrpt."hari_kode"]')
          ParentFont = False
        end
        object hr_dbrpthari_nama: TfrxMemoView
          Left = 151.181200000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'hari_nama'
          DataSet = hr_dbrpt
          DataSetName = 'hr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[hr_dbrpt."hari_nama"]')
          ParentFont = False
        end
      end
    end
  end
  object hr_dbrpt: TfrxDBDataset
    UserName = 'hr_dbrpt'
    CloseDataSource = False
    DataSource = hr_ds
    Left = 288
    Top = 120
  end
  object kr_rpt: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45628.940212662030000000
    ReportOptions.LastChange = 45628.965884351850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 176
    Datasets = <
      item
        DataSet = kr_dbrpt
        DataSetName = 'kr_dbrpt'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Kode Kursus')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama Kursus')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 385.512060000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Kode Hari')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 449.764070000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Guru ID')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Biaya Kursus')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = kr_dbrpt
        DataSetName = 'kr_dbrpt'
        RowCount = 0
        object kr_dbrptkursus_id: TfrxMemoView
          Left = 147.401670000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kursus_id'
          DataSet = kr_dbrpt
          DataSetName = 'kr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kr_dbrpt."kursus_id"]')
          ParentFont = False
        end
        object kr_dbrptkursus_nama: TfrxMemoView
          Left = 226.771800000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kursus_nama'
          DataSet = kr_dbrpt
          DataSetName = 'kr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kr_dbrpt."kursus_nama"]')
          ParentFont = False
        end
        object kr_dbrpthari_kode: TfrxMemoView
          Left = 385.512060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'hari_kode'
          DataSet = kr_dbrpt
          DataSetName = 'kr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kr_dbrpt."hari_kode"]')
          ParentFont = False
        end
        object kr_dbrptguru_id: TfrxMemoView
          Left = 449.764070000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'guru_id'
          DataSet = kr_dbrpt
          DataSetName = 'kr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kr_dbrpt."guru_id"]')
          ParentFont = False
        end
        object kr_dbrptkursus_biaya: TfrxMemoView
          Left = 525.354670000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kursus_biaya'
          DataSet = kr_dbrpt
          DataSetName = 'kr_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kr_dbrpt."kursus_biaya"]')
          ParentFont = False
        end
      end
    end
  end
  object kr_dbrpt: TfrxDBDataset
    UserName = 'kr_dbrpt'
    CloseDataSource = False
    DataSource = kr_ds
    Left = 288
    Top = 176
  end
  object nl_dbrpt: TfrxDBDataset
    UserName = 'nl_dbrpt'
    CloseDataSource = False
    DataSource = nl_ds
    Left = 288
    Top = 232
  end
  object nl_rpt: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45628.940212662000000000
    ReportOptions.LastChange = 45628.968115081020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 232
    Datasets = <
      item
        DataSet = nl_dbrpt
        DataSetName = 'nl_dbrpt'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 245.669450000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID Siswa')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 321.260050000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID Kursus')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nilai')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Abjad')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = nl_dbrpt
        DataSetName = 'nl_dbrpt'
        RowCount = 0
        object nl_dbrptsiswa_id: TfrxMemoView
          Left = 245.669450000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_id'
          DataSet = nl_dbrpt
          DataSetName = 'nl_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[nl_dbrpt."siswa_id"]')
          ParentFont = False
        end
        object nl_dbrptkursus_id: TfrxMemoView
          Left = 321.260050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kursus_id'
          DataSet = nl_dbrpt
          DataSetName = 'nl_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[nl_dbrpt."kursus_id"]')
          ParentFont = False
        end
        object nl_dbrptnilai: TfrxMemoView
          Left = 396.850650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nilai'
          DataSet = nl_dbrpt
          DataSetName = 'nl_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[nl_dbrpt."nilai"]')
          ParentFont = False
        end
        object nl_dbrptnilai_n: TfrxMemoView
          Left = 472.441250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nilai_n'
          DataSet = nl_dbrpt
          DataSetName = 'nl_dbrpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[nl_dbrpt."nilai_n"]')
          ParentFont = False
        end
      end
    end
  end
end

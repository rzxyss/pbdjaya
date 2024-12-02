object fVaruni: TfVaruni
  Left = 388
  Top = 178
  Width = 928
  Height = 529
  Caption = 'Editor Variabel Universal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sw_grid: TSMDBGrid
    Left = 112
    Top = 8
    Width = 320
    Height = 120
    DataSource = dm.sw_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_lahir'
        Title.Alignment = taCenter
        Title.Caption = 'Lahir'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_gender'
        Title.Alignment = taCenter
        Title.Caption = 'Gender'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_blob'
        Title.Alignment = taCenter
        Title.Caption = 'BLOB'
        Visible = True
      end>
  end
  object sw_nav: TSMDBNavigator
    Left = 136
    Top = 128
    Width = 280
    Height = 25
    DataSource = dm.sw_ds
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbPrint, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 1
    OnClick = sw_navClick
  end
  object gr_grid: TSMDBGrid
    Left = 552
    Top = 16
    Width = 320
    Height = 120
    DataSource = dm.gr_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'guru_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'guru_nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'guru_lahir'
        Title.Alignment = taCenter
        Title.Caption = 'Lahir'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'guru_gender'
        Title.Alignment = taCenter
        Title.Caption = 'Gender'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'guru_aktif'
        Title.Alignment = taCenter
        Title.Caption = 'BLOB'
        Visible = True
      end>
  end
  object gr_nav: TSMDBNavigator
    Left = 576
    Top = 136
    Width = 273
    Height = 25
    DataSource = dm.gr_ds
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 3
  end
  object hr_nav: TSMDBNavigator
    Left = 144
    Top = 288
    Width = 273
    Height = 25
    DataSource = dm.hr_ds
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 4
  end
  object hr_grid: TSMDBGrid
    Left = 112
    Top = 168
    Width = 320
    Height = 120
    DataSource = dm.hr_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'hari_kode'
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'hari_nama'
        Title.Alignment = taCenter
        Title.Caption = 'Hari'
        Visible = True
      end>
  end
  object kr_grid: TSMDBGrid
    Left = 552
    Top = 168
    Width = 320
    Height = 120
    DataSource = dm.kr_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'kursus_id'
        Title.Alignment = taRightJustify
        Title.Caption = 'ID Kursus'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'guru_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID Guru'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hari_kode'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Hari'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kursus_nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Kursus'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kursus_biaya'
        Title.Alignment = taCenter
        Title.Caption = 'Biaya Kursus'
        Visible = True
      end>
  end
  object kr_nav: TSMDBNavigator
    Left = 576
    Top = 288
    Width = 273
    Height = 25
    DataSource = dm.kr_ds
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 7
  end
  object nl_grid: TSMDBGrid
    Left = 312
    Top = 328
    Width = 320
    Height = 120
    DataSource = dm.nl_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Siswa'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kursus_id'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Kursus'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nilai_n'
        Title.Alignment = taCenter
        Title.Caption = 'Nilai'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nilai'
        Title.Alignment = taCenter
        Title.Caption = 'Abjad'
        Visible = True
      end>
  end
  object nl_nav: TSMDBNavigator
    Left = 336
    Top = 448
    Width = 273
    Height = 25
    DataSource = dm.nl_ds
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 9
  end
  object XPManifest1: TXPManifest
    Left = 8
    Top = 8
  end
end

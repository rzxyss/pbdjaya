object fLogin: TfLogin
  Left = 192
  Top = 125
  Width = 629
  Height = 360
  Caption = 'Halaman Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 218
    Top = 84
    Width = 48
    Height = 13
    Caption = 'Hostname'
  end
  object Label2: TLabel
    Left = 218
    Top = 116
    Width = 19
    Height = 13
    Caption = 'Port'
  end
  object Label3: TLabel
    Left = 218
    Top = 148
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label4: TLabel
    Left = 218
    Top = 180
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edHost: TEdit
    Left = 274
    Top = 84
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'localhost'
  end
  object edPort: TEdit
    Left = 274
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '3306'
  end
  object edUname: TEdit
    Left = 274
    Top = 148
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'root'
  end
  object edPass: TEdit
    Left = 274
    Top = 180
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnLogin: TButton
    Left = 298
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 4
    OnClick = btnLoginClick
  end
  object zconn: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'AutoEncodeStrings=ON'
      'controls_cp=GET_ACP')
    HostName = 'localhost'
    Port = 3306
    Database = 'mydb'
    User = 'root'
    Protocol = 'mysql'
    Left = 16
    Top = 8
  end
end

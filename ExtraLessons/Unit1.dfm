object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Authorization'
  ClientHeight = 219
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 45
    Height = 23
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 78
    Height = 23
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 120
    Top = 29
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 85
    Width = 153
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 183
    Top = 112
    Width = 90
    Height = 65
    Caption = 'User type'
    Items.Strings = (
      'Teacher'
      'Student')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 183
    Top = 183
    Width = 90
    Height = 25
    Caption = 'Enter'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 12
    Top = 183
    Width = 90
    Height = 25
    Caption = 'Registration'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=db.mdb;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 120
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 48
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *FROM subjects')
    Left = 120
    Top = 128
  end
end

object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Password change'
  ClientHeight = 223
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 118
    Height = 23
    Caption = 'Last password'
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
    Width = 122
    Height = 23
    Caption = 'New password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 65
    Height = 23
    Caption = 'Confirm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 160
    Top = 29
    Width = 169
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 85
    Width = 169
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 141
    Width = 169
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 254
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Change'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'table'
        Size = -1
        Value = Null
      end
      item
        Name = 'pass'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE :table SET [password]=:pass WHERE [login]=:login')
    Left = 32
    Top = 176
  end
end

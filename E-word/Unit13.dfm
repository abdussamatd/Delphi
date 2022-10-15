object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Choose the language'
  ClientHeight = 239
  ClientWidth = 242
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
    Left = 16
    Top = 8
    Width = 203
    Height = 13
    Caption = 'If the folder is empty, the teacher has not'
  end
  object Label2: TLabel
    Left = 8
    Top = 27
    Width = 216
    Height = 13
    Caption = ' yet downloaded the materials for your level.'
  end
  object Button1: TButton
    Left = 72
    Top = 64
    Width = 97
    Height = 33
    Caption = 'English'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 120
    Width = 97
    Height = 33
    Caption = #1056#1091#1089#1089#1082#1080#1081
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 72
    Top = 184
    Width = 97
    Height = 33
    Caption = 'Qazaq'
    TabOrder = 2
    OnClick = Button3Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
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
      
        'SELECT [Level] FROM lessons WHERE ([Language]="English") AND ([s' +
        'tudentid]=:login)')
    Left = 184
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
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
      
        'SELECT [Level] FROM lessons WHERE ([Language]="Russian") AND ([s' +
        'tudentid]=:login)')
    Left = 184
    Top = 120
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
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
      
        'SELECT [Level] FROM lessons WHERE ([Language]="Kazakh") AND ([st' +
        'udentid]=:login)')
    Left = 184
    Top = 176
  end
  object OpenDialog1: TOpenDialog
    Left = 16
    Top = 136
  end
end

object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New subject'
  ClientHeight = 123
  ClientWidth = 243
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
    Left = 16
    Top = 16
    Width = 209
    Height = 19
    Caption = 'Enter the name of the subject'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 48
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 150
    Top = 85
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'a'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO subjects(subject) VALUES(:a)')
    Left = 24
    Top = 80
  end
end

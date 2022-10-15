object Form14: TForm14
  Left = 0
  Top = 0
  Caption = 'Writing'
  ClientHeight = 376
  ClientWidth = 551
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
  object ScrollBox1: TScrollBox
    Left = 8
    Top = 8
    Width = 537
    Height = 329
    TabOrder = 0
    object Memo1: TMemo
      Left = 3
      Top = 3
      Width = 505
      Height = 990
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 468
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Submit'
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
      end
      item
        Name = 'b'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO writing([studentid],[Delivery date]) VALUES(:a,:b)')
    Left = 16
    Top = 336
  end
  object ADODataSet1: TADODataSet
    Connection = Form1.ADOConnection1
    CommandText = 'select '#1050#1086#1076' from writing'
    Parameters = <>
    Left = 80
    Top = 336
  end
end

object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Dictionary'
  ClientHeight = 458
  ClientWidth = 842
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 26
    Width = 842
    Height = 432
    Align = alClient
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 842
    Height = 26
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = Edit1Change
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *FROM dictionary')
    Left = 40
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 136
    Top = 104
  end
end
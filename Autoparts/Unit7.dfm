object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 597
  ClientWidth = 858
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
  object DBNavigator1: TDBNavigator
    Left = 455
    Top = 8
    Width = 180
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbRefresh]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 743
    Top = 8
    Width = 107
    Height = 25
    Caption = 'New Customer'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 441
    Height = 26
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 858
    Height = 557
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Width = 191
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Number'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Workplace'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preferences'
        Width = 248
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 649
    Top = 8
    Width = 80
    Height = 25
    Caption = 'Delete'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *FROM customers')
    Left = 496
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 416
    Top = 296
  end
end

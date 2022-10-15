object Form9: TForm9
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Storage'
  ClientHeight = 489
  ClientWidth = 744
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 744
    Height = 424
    Align = alBottom
    DataSource = DataSource1
    Enabled = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Category'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Caption'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'label'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Producer'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantity'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 453
    Top = 8
    Width = 101
    Height = 25
    Caption = 'Change the price'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 8
    Width = 81
    Height = 25
    Caption = 'Delete'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 647
    Top = 8
    Width = 89
    Height = 25
    Caption = 'New good'
    TabOrder = 2
    OnClick = Button3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 302
    Top = 8
    Width = 145
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 8
    Top = 9
    Width = 288
    Height = 26
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = Edit1Change
  end
  object Button4: TButton
    Left = 0
    Top = 464
    Width = 744
    Height = 25
    Align = alBottom
    Caption = 'Goods receipt'
    TabOrder = 6
    OnClick = Button4Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 240
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 248
    Top = 200
  end
  object ADODataSet1: TADODataSet
    Connection = Form2.ADOConnection1
    CommandText = 'select * from categories'
    Parameters = <>
    Left = 360
    Top = 240
  end
end

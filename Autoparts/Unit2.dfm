object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Home page'
  ClientHeight = 460
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 36
    Width = 586
    Height = 399
    Align = alBottom
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idcustomer'
        Title.Caption = 'Customer Id'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iditem'
        Title.Caption = 'Item Id'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantity'
        Title.Caption = 'Quantity'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'totalprice'
        Title.Caption = 'Total price'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'purchasedate'
        Title.Caption = 'Date'
        Width = 97
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 0
    Top = 435
    Width = 586
    Height = 25
    Align = alBottom
    Caption = 'New Deal'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 6
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 417
    Top = 8
    Width = 57
    Height = 21
    Caption = 'Search'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 480
    Top = 8
    Width = 102
    Height = 21
    Caption = 'Print the Report'
    TabOrder = 4
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 258
    Top = 8
    Width = 19
    Height = 22
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 384
    Top = 8
    Width = 19
    Height = 22
    TabOrder = 6
  end
  object DateTimePicker1: TDateTimePicker
    Left = 157
    Top = 8
    Width = 95
    Height = 21
    Date = 43668.903261180550000000
    Time = 43668.903261180550000000
    TabOrder = 7
    OnChange = DateTimePicker1Change
  end
  object DateTimePicker2: TDateTimePicker
    Left = 283
    Top = 8
    Width = 95
    Height = 21
    Date = 43668.903261180550000000
    Time = 43668.903261180550000000
    TabOrder = 8
    OnChange = DateTimePicker2Change
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=1.mdb;Persist Secur' +
      'ity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 224
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *FROM history')
    Left = 216
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 120
    Top = 296
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CommandText = 'select * from categories'
    Parameters = <>
    Left = 168
    Top = 184
  end
  object MainMenu1: TMainMenu
    Left = 240
    Top = 216
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Users1: TMenuItem
        Caption = 'Customers'
        OnClick = Users1Click
      end
      object product1: TMenuItem
        Caption = 'Storage'
        OnClick = product1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
  end
end

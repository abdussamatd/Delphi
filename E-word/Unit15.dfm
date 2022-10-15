object Form15: TForm15
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Home page'
  ClientHeight = 478
  ClientWidth = 733
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
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 733
    Height = 414
    Align = alBottom
    TabOrder = 0
    Visible = False
    object DBGrid1: TDBGrid
      Left = 1
      Top = 40
      Width = 731
      Height = 373
      Align = alBottom
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
      Left = 1
      Top = 7
      Width = 328
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button2: TButton
      Left = 616
      Top = 9
      Width = 111
      Height = 25
      Caption = 'Edit passed lessons'
      TabOrder = 2
      OnClick = Button2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 424
      Top = 9
      Width = 125
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 3
    end
    object Button6: TButton
      Left = 555
      Top = 9
      Width = 55
      Height = 25
      Caption = 'Profile'
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button1: TButton
      Left = 335
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object Button3: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 41
    Caption = 'Show scores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 152
    Top = 8
    Width = 129
    Height = 41
    Caption = 'Upload materials'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 296
    Top = 8
    Width = 129
    Height = 41
    Caption = 'Writings'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = Button5Click
  end
  object MainMenu1: TMainMenu
    Left = 696
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Passwordchange1: TMenuItem
        Caption = 'Profile'
        OnClick = Passwordchange1Click
      end
      object Dictionary1: TMenuItem
        Caption = 'Dictionary'
        OnClick = Dictionary1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *FROM lessons')
    Left = 344
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 416
    Top = 248
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 264
    Top = 248
  end
end

object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Teacher'
  ClientHeight = 407
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 318
    Top = 8
    Width = 145
    Height = 24
    Caption = 'Add chapter or monitoring'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 24
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 37
    Width = 793
    Height = 370
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'login'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Full name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Chapter 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '5'
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 604
    Top = 8
    Width = 104
    Height = 24
    Caption = 'Delete chapter'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 714
    Top = 8
    Width = 74
    Height = 24
    Caption = 'Delete class'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 469
    Top = 8
    Width = 115
    Height = 24
    Caption = 'Show the progress'
    TabOrder = 5
    OnClick = Button4Click
  end
  object DBNavigator1: TDBNavigator
    Left = 167
    Top = 8
    Width = 145
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
    TabOrder = 6
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *FROM users WHERE [login]<>"teacher"')
    Left = 224
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 312
    Top = 104
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 352
    Top = 208
  end
  object MainMenu1: TMainMenu
    Left = 424
    Top = 200
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Changepassword1: TMenuItem
        Caption = 'Change password'
        OnClick = Changepassword1Click
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
end

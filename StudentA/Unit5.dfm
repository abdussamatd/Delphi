object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Student A'
  ClientHeight = 277
  ClientWidth = 686
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 686
    Height = 277
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *FROM users WHERE login="1"')
    Left = 240
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 144
    Top = 80
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 72
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Changepassword1: TMenuItem
        Caption = 'Change password'
        OnClick = Changepassword1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object exit1: TMenuItem
        Caption = 'Exit'
        OnClick = exit1Click
      end
    end
  end
end

object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Home page'
  ClientHeight = 533
  ClientWidth = 579
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
    Top = 89
    Width = 579
    Height = 444
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 440
    object DBGrid1: TDBGrid
      Left = 1
      Top = 28
      Width = 577
      Height = 415
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
          FieldName = 'login'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'First name'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Last name'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grade'
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 1
      Top = 1
      Width = 502
      Height = 27
      Align = alLeft
      AutoSize = False
      TabOrder = 1
      ExplicitHeight = 23
    end
    object Button1: TButton
      Left = 503
      Top = 1
      Width = 74
      Height = 27
      Align = alLeft
      Caption = 'Search'
      TabOrder = 2
      OnClick = Button1Click
      ExplicitHeight = 23
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 89
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 8
      Width = 25
      Height = 23
      Caption = 'Mo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 8
      Width = 22
      Height = 23
      Caption = 'Tu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 224
      Top = 8
      Width = 27
      Height = 23
      Caption = 'We'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 328
      Top = 8
      Width = 22
      Height = 23
      Caption = 'Th'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 424
      Top = 8
      Width = 17
      Height = 23
      Caption = 'Fr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 513
      Top = 8
      Width = 21
      Height = 23
      Caption = 'Sa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 1
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 97
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 193
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 289
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 385
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 481
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 5
      OnClick = Button7Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 264
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Profile1: TMenuItem
        Caption = 'Profile'
        OnClick = Profile1Click
      end
      object Passwordchange1: TMenuItem
        Caption = 'Password change'
        OnClick = Passwordchange1Click
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
    Parameters = <>
    Left = 56
    Top = 264
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [login],[First name],[Last name],[Grade] FROM students')
    Left = 56
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 144
    Top = 320
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
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
      'SELECT *FROM timetable WHERE login=:login')
    Left = 224
    Top = 264
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer1Timer
    Left = 456
    Top = 256
  end
  object ADOQuery4: TADOQuery
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
      
        'SELECT [First name],[Last name],[Grade] FROM students WHERE logi' +
        'n=:login')
    Left = 224
    Top = 320
  end
end

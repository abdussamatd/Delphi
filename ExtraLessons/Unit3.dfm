object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Home page'
  ClientHeight = 318
  ClientWidth = 580
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
  object Label7: TLabel
    Left = 8
    Top = 104
    Width = 210
    Height = 23
    Caption = 'Request for extra lessons'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 144
    Width = 52
    Height = 19
    Caption = 'Subject'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 184
    Width = 56
    Height = 19
    Caption = 'Teacher'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 89
    TabOrder = 0
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
  object ComboBox1: TComboBox
    Left = 81
    Top = 146
    Width = 137
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 81
    Top = 186
    Width = 137
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnChange = ComboBox2Change
  end
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 580
    Height = 86
    Align = alBottom
    TabOrder = 3
    Visible = False
    object Label10: TLabel
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
    object Label11: TLabel
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
    object Label12: TLabel
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
    object Label13: TLabel
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
    object Label14: TLabel
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
    object Label15: TLabel
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
    object Button8: TButton
      Left = 1
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 97
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 1
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 193
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 2
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 289
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 3
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 385
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 4
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 481
      Top = 40
      Width = 96
      Height = 36
      TabOrder = 5
      OnClick = Button13Click
    end
  end
  object Panel3: TPanel
    Left = 289
    Top = 104
    Width = 256
    Height = 103
    TabOrder = 4
    Visible = False
    object Label16: TLabel
      Left = 8
      Top = 0
      Width = 52
      Height = 23
      Caption = 'Phone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 8
      Top = 40
      Width = 52
      Height = 23
      Caption = 'E-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 174
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Hide'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 96
      Top = 5
      Width = 153
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 96
      Top = 45
      Width = 153
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object ADOQuery1: TADOQuery
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
      'SELECT *FROM timetablestudents WHERE login=:login')
    Left = 272
    Top = 16
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer1Timer
    Top = 368
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'login'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT [First name],[Last name],[Subject],[Phone number],[E-mail' +
        '] FROM teachers WHERE login=:login')
    Left = 224
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 's'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM teachers WHERE Subject=:s')
    Left = 248
    Top = 8
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
      end>
    SQL.Strings = (
      'SELECT *FROM teachers WHERE login=:login')
    Left = 240
    Top = 112
  end
  object ADOQuery5: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
      end>
    SQL.Strings = (
      'SELECT *FROM timetable WHERE login=:login')
    Left = 240
    Top = 176
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 544
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 184
    object Menu1: TMenuItem
      Caption = 'Menu'
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
  object ADOQuery6: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 376
    Top = 168
  end
end

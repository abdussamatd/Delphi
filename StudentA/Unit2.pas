unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  login, pass, grade, name: string;
begin
  login := Edit1.Text;
  pass := Edit2.Text;
  grade := ComboBox1.Text;
  name := Edit3.Text;
  ADOQuery1.SQL.Clear;
  // запрос на создание новых пользователей/учеников
  ADOQuery1.SQL.Add(
    'INSERT INTO users([login],[password],[Grade],[Full name]) VALUES("' +
      login + '","' + pass + '","' + grade + '","' + name + '")');
  //проверка на пустые поля
  if (login = '') or (pass = '') or (grade = '') or (name = '') then
    showmessage('Fill out all the fields!')
  else
    try
    //выполнение sql
      ADOQuery1.ExecSQL;
      showmessage('Done!');
      close;
    except
    //при наличии такого же логина
      showmessage('User with this login is already exist!');
    end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  close;
end;

end.

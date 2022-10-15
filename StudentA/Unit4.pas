unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, ADODB;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
if edit1.Text='' then showmessage('Fill out the field!') else
try
adoquery1.SQL.Clear;
//создание запроса на добавление поля в таблицу
adoquery1.SQL.Add('ALTER TABLE users ADD ['+edit1.Text+'] tinyint');
//выполнение
adoquery1.ExecSQL;
form3.add;
close;
except
//при неудаче вывести сообщение
showmessage('This chapter/monitoring already exists!');
end;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
end;

end.

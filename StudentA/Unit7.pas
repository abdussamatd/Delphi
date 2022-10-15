unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm7 = class(TForm)
    Label2: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var s1,s2:string;
begin
s1:=edit1.Text;
s2:=edit2.Text;

//проверка на пустоту полей
if (s1<>'') and (s2<>'') then
  begin
  adoquery1.SQL.Clear;
  //запрос пароля определенного пользователя
  adoquery1.SQL.Add('SELECT password FROM users WHERE login="'+unit1.login+'"');
  adoquery1.active:=true;
  //сравнение старых паролей
  if adoquery1.FieldByName('password').Value<>s1 then showmessage('Invalid last password!') else
  begin
  adoquery1.Active:=false;
  adoquery1.SQL.Clear;
  //установление нового пароля
  adoquery1.SQL.Add('UPDATE users SET [password]="'+s2+'"');
  //выполнение sql запроса
  adoquery1.ExecSQL;
  showmessage('Done');
  close;
  end;
  end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
edit2.Clear;
close;
end;

end.

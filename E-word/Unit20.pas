unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  TForm20 = class(TForm)
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm20.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm20.Button2Click(Sender: TObject);
var s:string;
begin
//if new pass is empty or wrong confirm then it will raise error message
if (edit2.Text<>'') and (edit2.Text=edit3.Text) then
begin
//getting current pass of the user
adoquery1.SQL.Clear;
adoquery1.SQL.Add('SELECT password FROM users WHERE [login]="'+unit1.login+'"');
adoquery1.active:=true;
adoquery1.First;
//if last password is written wrong, program will raise a message
if adoquery1.FieldByName('password').Value<>edit1.Text then showmessage('Wrong last password!') else
begin
//if there were no errors, program will update table and set a new pass of the user
adoquery1.SQL.Clear;
adoquery1.SQL.Add('UPDATE users SET [password]="'+edit2.text+'" WHERE [login]="'+unit1.login+'"');
adoquery1.ExecSQL;
showmessage('Password changed!');
close;
end;
end
else
showmessage('Passwords do not match!');
end;

procedure TForm20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.clear;
edit2.Clear;
edit3.Clear;
close;
end;

end.

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, ADODB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Button1: TButton;
    Label8: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  iin:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var pass,name,mail,number:string;
  I: Integer;e,e1:integer;
begin
e1:=0;
e:=0;
pass:=edit2.Text;
name:=edit4.Text;
mail:=edit5.Text;
number:=edit6.Text;
try
for I := 1 to length(number) do //cycle through length of the certain string
try
strtoint(number[i]);//datatype validation
except
e:=1;
end;
//checking mail
for I := 1 to length(mail) do
  if mail[i]='@' then e1:=e1+1;
finally
//checking empty fields
if (trim(iin)='') or (pass='') or (name='') or (mail='') or (number='') then showmessage('Fill out all the fields!') else
if (e=1) or (e1<>1) or (pass<>edit3.Text) or (label8.Font.Color=clred) or (length(number)<>11) then showmessage('Invalid data!') else
begin
  adoquery2.Parameters.ParamByName('a').Value:=iin;
  adoquery2.Parameters.ParamByName('b').Value:=name;
  adoquery2.Parameters.ParamByName('c').Value:=datetimepicker1.Date;
  adoquery2.Parameters.ParamByName('d').Value:=mail;
  adoquery2.Parameters.ParamByName('e').Value:=number;
  adoquery3.Parameters.ParamByName('a').Value:=iin;
  adoquery3.Parameters.ParamByName('b').Value:=pass;
  adoquery2.ExecSQL;//inserting to the table students
  adoquery3.ExecSQL;//inserting students login and pass to the table users
  showmessage('Done!');
  close;
end;
end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
var i:integer;e:boolean;
begin
e:=false;
iin:=edit1.Text;
//checking length
if length(iin)<>12 then begin label8.font.Color:=clred; label8.Caption:='Wrong IIN!'; end else
  begin
//checking the data type, if it is not a number, then the variable e will get the value true
  for i:=1 to length(iin) do
  try
  strtoint(iin[i]);
  except
  e:=true
  end;
  if e=true then begin label8.font.Color:=clred; label8.Caption:='Wrong IIN!'; end else
  begin
    //searching for user with identical login, if there is someone, then rise warning
    adoquery1.Active:=false;
    adoquery1.Parameters.ParamByName('login').Value:=iin;
    adoquery1.active:=true;

    //if there will be no users with such login
    if adoquery1.recordcount=0 then begin label8.Font.Color:=clgreen; label8.Caption:='Free'; end
    else
    //in another case
    begin label8.font.Color:=clred; label8.Caption:='This login is not free!'; end;
  end;
  end;
  end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
label8.Caption:='';
close;
end;

end.

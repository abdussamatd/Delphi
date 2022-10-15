unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Edit3: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Panel3: TPanel;
    Edit7: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    Button3: TButton;
    Button4: TButton;
    Edit8: TEdit;
    Label9: TLabel;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  log,pass,fname,lname:string;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var usertype:string;
  I: Integer;
begin
log:=trim(edit1.Text);
pass:=trim(edit2.Text);
if (log='') or (pass='') then showmessage('Fill out the fields!') else
if pass<>edit3.Text then showmessage('Invalid confirmation password!') else
if radiogroup1.ItemIndex=-1 then showmessage('Choose the user type!') else
begin
case radiogroup1.itemindex of
0:usertype:='teachers';
1:usertype:='students';
end;
adoquery1.Active:=false;
adoquery1.SQL.Clear;
adoquery1.SQL.Add('SELECT login FROM '+usertype+' WHERE login="'+log+'"');
adoquery1.Active:=true;
if adoquery1.RecordCount<>0 then showmessage('The user with such login already exists!')
else
begin
panel1.Hide;
panel2.Show;
if usertype='teachers' then
  begin
  combobox1.ItemIndex:=-1;
  panel1.Hide;
  panel2.Show;
  panel3.show;
  label9.Hide;
  adoquery1.SQL.Clear;
  adoquery1.SQL.Add('SELECT *FROM subjects');
  adoquery1.Active:=true;
  combobox1.Items.Clear;
  adoquery1.First;
  for I := 0 to adoquery1.RecordCount - 1 do
    begin
    combobox1.Items.Add(adoquery1.FieldByName('subject').value);
    adoquery1.Next
    end;
  end else begin
  panel1.Hide;
  panel2.Show;
  label9.Show;
  form4.Height:=209;
  end;
end;
end;



end;

procedure TForm4.Button2Click(Sender: TObject);
var phone,email:string;count,i:integer;e:boolean;n:shortint;
begin
fname:=edit4.Text;
lname:=edit5.Text;
phone:=edit6.Text;
email:=edit7.Text;
if (fname='') or (lname='') or (phone='') or (email='') or (combobox1.ItemIndex=-1) then
showmessage('Fill out all the fields!') else
if length(phone)<>11 then showmessage('Invalid phone number!') else
for I :=1 to length(phone) do
try
strtoint(phone[i]);
except
e:=false;
end;
if e=false then showmessage('Invalid phone number!') else
  begin
  for i := 1 to length(email) do
    if email[i]='@' then count:=count+1;
  if count<>1 then showmessage('Invalid e-mail!') else
  try
  adoquery1.SQL.Clear;
  adoquery1.SQL.Add('INSERT INTO teachers VALUES("'+log+'","'+pass+'","'+fname+'","'+lname+'","'+combobox1.Text+'","'+phone+'","'+email+'")');
  adoquery1.ExecSQL;
  adoquery1.SQL.Clear;
  adoquery1.SQL.Add('INSERT INTO timetable(login) VALUES("'+log+'")');
  adoquery1.ExecSQL;
  showmessage('Done!');
  close;
  except
  showmessage('Exceeded the character limit!');
  end;
  end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
unit5.q:=true;
form5.ShowModal;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
panel1.Show;
panel2.Hide;
panel3.Hide;
end;

procedure TForm4.Button5Click(Sender: TObject);
var grade:string;
begin
fname:=edit4.Text;
lname:=edit5.Text;
grade:=trim(edit8.Text);
if (fname='') or (lname='') or (grade='') then showmessage('Fill out all the fields!') else
if length(grade)>5 then showmessage('Invalid grade!') else
try
adoquery1.SQL.Clear;
adoquery1.SQL.Add('INSERT INTO students VALUES("'+log+'","'+pass+'","'+fname+'","'+lname+'","'+grade+'")');
adoquery1.ExecSQL;
adoquery1.SQL.Clear;
adoquery1.SQL.Add('INSERT INTO timetablestudents(login) VALUES("'+log+'")');
adoquery1.ExecSQL;
showmessage('Done');
close;
except
showmessage('Exceeded the character limit!');
end;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
panel1.Show;
panel2.Hide;
form4.Height:=289;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
edit8.Clear;
combobox1.ItemIndex:=-1;
panel1.Show;
panel2.Hide;
panel3.Hide;
form4.Height:=289;
close;
end;



end.

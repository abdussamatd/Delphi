unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  login:string;
  
implementation

uses Unit2, Unit3, Unit15;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I, e: Integer;
begin
login:=edit1.Text;
if (login='') or (edit2.Text='') then showmessage('Fill out the fields!') else  //checking empty fields
begin
e:=0;
//refreshing data by switching "active" property of a component
adodataset1.Active:=false;
adodataset1.Active:=true;
adodataset1.First; //turning to the first record
for I := 0 to adodataset1.RecordCount - 1 do//going through all the records
begin
//comparing entered data with database
if (adodataset1.FieldByName('login').Value=login) and (adodataset1.FieldByName('password').Value=edit2.Text) then
begin
e:=e+1;
edit2.Clear;

//identification the type of the user
if adodataset1.FieldByName('usertype').Value='student' then
begin
form3.show;
form3.Timer1.Enabled:=true;
end else
begin
adoquery1.Active:=false;
adoquery1.SQL.Clear;
//sql to select specialization of the teacher
adoquery1.SQL.Add('SELECT [Language] FROM teachers WHERE [login]="'+login+'"');
adoquery1.Active:=true;
adoquery1.first;
unit15.lang:=adoquery1.FieldByName('Language').Value;
if unit15.lang='English' then form15.button5.Show;//condition to permit open writings of the students
form15.Show;
end;
hide;
end;
adodataset1.Next;//go to the next record
end;
if e=0 then showmessage('Invalid data!');//if program identified wrong data then it will display it
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
halt;
end;

end.

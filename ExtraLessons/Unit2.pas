unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Profile1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Passwordchange1: TMenuItem;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ADOQuery3: TADOQuery;
    Timer1: TTimer;
    ADOQuery4: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure Profile1Click(Sender: TObject);
    procedure Passwordchange1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit6, Unit7, Unit8;
{$R *.dfm}



procedure TForm2.Button1Click(Sender: TObject);
begin
if trim(edit1.Text)<>'' then
begin
adoquery2.Active:=false;
adoquery2.sql.Clear;
adoquery2.SQL.Add('SELECT [login],[First name],[Last name],[Grade] FROM students WHERE ([First name] LIKE "%'+edit1.Text+'%") or ([Last name] LIKE "%'+edit1.Text+'%") or ([login] LIKE "%'+edit1.Text+'%")');
adoquery2.Active:=true;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if button2.Caption<>'No' then
begin
adoquery4.Parameters.ParamByName('login').Value:=button2.Caption;
adoquery4.Active:=true;
form8.Edit1.Text:=adoquery4.FieldByName('First name').Value;
form8.Edit2.Text:=adoquery4.FieldByName('Last name').Value;
form8.Edit3.Text:=adoquery4.FieldByName('Grade').Value;
form8.Caption:=button2.Caption;
unit8.d:='Monday';
form8.ShowModal;
end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if button3.Caption<>'No' then
begin
adoquery4.Parameters.ParamByName('login').Value:=button3.Caption;
adoquery4.Active:=true;
form8.Edit1.Text:=adoquery4.FieldByName('First name').Value;
form8.Edit2.Text:=adoquery4.FieldByName('Last name').Value;
form8.Edit3.Text:=adoquery4.FieldByName('Grade').Value;
form8.Caption:=button3.Caption;
unit8.d:='Tuesday';
form8.ShowModal;
end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
if button4.Caption<>'No' then
begin
adoquery4.Parameters.ParamByName('login').Value:=button4.Caption;
adoquery4.Active:=true;
form8.Edit1.Text:=adoquery4.FieldByName('First name').Value;
form8.Edit2.Text:=adoquery4.FieldByName('Last name').Value;
form8.Edit3.Text:=adoquery4.FieldByName('Grade').Value;
form8.Caption:=button4.Caption;
unit8.d:='Wednesday';
form8.ShowModal;
end;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
if button5.Caption<>'No' then
begin
adoquery4.Parameters.ParamByName('login').Value:=button5.Caption;
adoquery4.Active:=true;
form8.Edit1.Text:=adoquery4.FieldByName('First name').Value;
form8.Edit2.Text:=adoquery4.FieldByName('Last name').Value;
form8.Edit3.Text:=adoquery4.FieldByName('Grade').Value;
form8.Caption:=button5.Caption;
unit8.d:='Thursday';
form8.ShowModal;
end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
if button6.Caption<>'No' then
begin
adoquery4.Parameters.ParamByName('login').Value:=button6.Caption;
adoquery4.Active:=true;
form8.Edit1.Text:=adoquery4.FieldByName('First name').Value;
form8.Edit2.Text:=adoquery4.FieldByName('Last name').Value;
form8.Edit3.Text:=adoquery4.FieldByName('Grade').Value;
form8.Caption:=button6.Caption;
unit8.d:='Friday';
form8.ShowModal;
end;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
if button7.Caption<>'No' then
begin
adoquery4.Parameters.ParamByName('login').Value:=button7.Caption;
adoquery4.Active:=true;
form8.Edit1.Text:=adoquery4.FieldByName('First name').Value;
form8.Edit2.Text:=adoquery4.FieldByName('Last name').Value;
form8.Edit3.Text:=adoquery4.FieldByName('Grade').Value;
form8.Caption:=button7.Caption;
unit8.d:='Saturday';
form8.ShowModal;
end;
end;

procedure TForm2.Exit1Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  timer1.Enabled:=false;
  edit1.Clear;
  adoquery2.Active:=false;
  adoquery2.sql.clear;
  adoquery2.SQL.Add('SELECT [First name],[Last name],[Grade] FROM students');
  form1.show;
  close;
end;

procedure TForm2.Passwordchange1Click(Sender: TObject);
begin
adoquery1.SQL.Clear;
adoquery1.SQL.add('SELECT password FROM teachers WHERE login="'+unit1.login+'"');
adoquery1.Active:=true;
unit7.pass:=adoquery1.FieldByName('password').Value;
form7.ADOQuery1.sql.text:='UPDATE teachers SET [password]=:pass WHERE [login]=:login';
form7.ShowModal;
end;

procedure TForm2.Profile1Click(Sender: TObject);
var
  I,j: Integer;s:string;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT *FROM teachers WHERE login="' + Unit1.login + '"');
  ADOQuery1.Active := true;
  form6.Edit1.Text := Unit1.login;
  form6.Edit2.Text := ADOQuery1.FieldByName('First name').Value;
  form6.Edit3.Text := ADOQuery1.FieldByName('Last name').Value;
  form6.Edit4.Text := ADOQuery1.FieldByName('Phone number').Value;
  form6.Edit5.Text := ADOQuery1.FieldByName('E-mail').Value;
  s:=adoquery1.FieldByName('subject').Value;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT *FROM subjects');
  ADOQuery1.Active := true;
  ADOQuery1.first;
  form6.ComboBox1.Items.Clear;
  for I := 0 to ADOQuery1.RecordCount - 1 do
  begin
    form6.ComboBox1.Items.Add(ADOQuery1.FieldByName('subject').Value);
    if s=ADOQuery1.FieldByName('subject').Value then form6.ComboBox1.ItemIndex:=i;
    ADOQuery1.Next;
  end;
  form6.ShowModal;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
adoquery3.Refresh;
button2.Caption:=adoquery3.FieldByName('Monday').Value;
button3.Caption:=adoquery3.FieldByName('Tuesday').Value;
button4.Caption:=adoquery3.FieldByName('Wednesday').Value;
button5.Caption:=adoquery3.FieldByName('Thursday').Value;
button6.Caption:=adoquery3.FieldByName('Friday').Value;
button7.Caption:=adoquery3.FieldByName('Saturday').Value;
end;

end.

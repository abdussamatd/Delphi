unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Menus;

type
  TForm3 = class(TForm)
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
    ADOQuery1: TADOQuery;
    Timer1: TTimer;
    ADOQuery2: TADOQuery;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    ComboBox2: TComboBox;
    Label9: TLabel;
    ADOQuery3: TADOQuery;
    Button1: TButton;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Panel3: TPanel;
    Label16: TLabel;
    Edit1: TEdit;
    Label17: TLabel;
    Edit2: TEdit;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    Timer2: TTimer;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Passwordchange1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    ADOQuery6: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Passwordchange1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a:array of string;
  teacherlogin:string;

implementation

uses Unit1, Unit9, Unit7, Unit10;

{$R *.dfm}

procedure TForm3.Button10Click(Sender: TObject);
begin
if button8.Caption='Free' then
begin
  unit10.d:='Wednesday';
  form10.ShowModal;
end;
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
if button8.Caption='Free' then
begin
  unit10.d:='Thursday';
  form10.ShowModal;
end;
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
if button8.Caption='Free' then
begin
  unit10.d:='Friday';
  form10.ShowModal;
end;
end;

procedure TForm3.Button13Click(Sender: TObject);
begin
if button8.Caption='Free' then
begin
  unit10.d:='Saturday';
  form10.ShowModal;
end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
panel3.Hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if button2.Caption<>'No' then
begin
adoquery2.Parameters.ParamByName('login').Value:=button2.Caption;
adoquery2.Active:=true;
form9.Edit1.Text:=adoquery2.FieldByName('First name').Value;
form9.Edit2.Text:=adoquery2.FieldByName('Last name').Value;
form9.Edit3.Text:=adoquery2.FieldByName('Subject').Value;
form9.Edit4.Text:=adoquery2.FieldByName('Phone number').Value;
form9.Edit5.Text:=adoquery2.FieldByName('E-mail').Value;
form9.Caption:=button2.Caption;
unit9.d:='Monday';
form9.ShowModal;
end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if button3.Caption<>'No' then
begin
adoquery2.Parameters.ParamByName('login').Value:=button3.Caption;
adoquery2.Active:=true;
form9.Edit1.Text:=adoquery2.FieldByName('First name').Value;
form9.Edit2.Text:=adoquery2.FieldByName('Last name').Value;
form9.Edit3.Text:=adoquery2.FieldByName('Subject').Value;
form9.Edit4.Text:=adoquery2.FieldByName('Phone number').Value;
form9.Edit5.Text:=adoquery2.FieldByName('E-mail').Value;
form9.Caption:=button3.Caption;
unit9.d:='Tuesday';
form9.ShowModal;
end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if button4.Caption<>'No' then
begin
adoquery2.Parameters.ParamByName('login').Value:=button4.Caption;
adoquery2.Active:=true;
form9.Edit1.Text:=adoquery2.FieldByName('First name').Value;
form9.Edit2.Text:=adoquery2.FieldByName('Last name').Value;
form9.Edit3.Text:=adoquery2.FieldByName('Subject').Value;
form9.Edit4.Text:=adoquery2.FieldByName('Phone number').Value;
form9.Edit5.Text:=adoquery2.FieldByName('E-mail').Value;
form9.Caption:=button4.Caption;
unit9.d:='Wednesday';
form9.ShowModal;
end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
if button5.Caption<>'No' then
begin
adoquery2.Parameters.ParamByName('login').Value:=button5.Caption;
adoquery2.Active:=true;
form9.Edit1.Text:=adoquery2.FieldByName('First name').Value;
form9.Edit2.Text:=adoquery2.FieldByName('Last name').Value;
form9.Edit3.Text:=adoquery2.FieldByName('Subject').Value;
form9.Edit4.Text:=adoquery2.FieldByName('Phone number').Value;
form9.Edit5.Text:=adoquery2.FieldByName('E-mail').Value;
form9.Caption:=button5.Caption;
unit9.d:='Thursday';
form9.ShowModal;
end;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
if button6.Caption<>'No' then
begin
adoquery2.Parameters.ParamByName('login').Value:=button6.Caption;
adoquery2.Active:=true;
form9.Edit1.Text:=adoquery2.FieldByName('First name').Value;
form9.Edit2.Text:=adoquery2.FieldByName('Last name').Value;
form9.Edit3.Text:=adoquery2.FieldByName('Subject').Value;
form9.Edit4.Text:=adoquery2.FieldByName('Phone number').Value;
form9.Edit5.Text:=adoquery2.FieldByName('E-mail').Value;
form9.Caption:=button6.Caption;
unit9.d:='Friday';
form9.ShowModal;
end;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
if button7.Caption<>'No' then
begin
adoquery2.Parameters.ParamByName('login').Value:=button7.Caption;
adoquery2.Active:=true;
form9.Edit1.Text:=adoquery2.FieldByName('First name').Value;
form9.Edit2.Text:=adoquery2.FieldByName('Last name').Value;
form9.Edit3.Text:=adoquery2.FieldByName('Subject').Value;
form9.Edit4.Text:=adoquery2.FieldByName('Phone number').Value;
form9.Edit5.Text:=adoquery2.FieldByName('E-mail').Value;
form9.Caption:=button7.Caption;
unit9.d:='Saturday';
form9.ShowModal;
end;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
if button8.Caption='Free' then
begin
  unit10.d:='Monday';
  form10.ShowModal;
end;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
if button8.Caption='Free' then
begin
  unit10.d:='Tuesday';
  form10.ShowModal;
end;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
var
  i: Integer;
begin
timer2.Enabled:=false;
panel1.Hide;
button8.Caption:='';
button9.Caption:='';
button10.Caption:='';
button11.Caption:='';
button12.Caption:='';
button13.Caption:='';
combobox2.Items.Clear;
adoquery3.active:=false;
adoquery3.Parameters.ParamByName('s').Value:=combobox1.Text;
adoquery3.active:=true;
adoquery3.First;
setlength(a,adoquery3.RecordCount);
for I := 0 to adoquery3.RecordCount - 1 do
  begin
  combobox2.Items.Add(adoquery3.FieldByName('First name').Value+' '+adoquery3.FieldByName('Last name').Value);
  a[i]:=adoquery3.FieldByName('login').Value;
  end;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
teacherlogin:=a[combobox2.ItemIndex];
timer2.Enabled:=true;
adoquery4.Active:=false;
adoquery4.Parameters.ParamByName('login').Value:=teacherlogin;
adoquery4.Active:=true;
edit1.Text:=adoquery4.FieldByName('Phone number').Value;
edit2.Text:=adoquery4.FieldByName('E-mail').Value;
panel3.Show;
adoquery5.Active:=false;
adoquery5.Parameters.ParamByName('login').Value:=teacherlogin;
adoquery5.Active:=true;
panel1.Show;
end;

procedure TForm3.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
panel1.Hide;
panel3.Hide;
combobox1.Clear;
combobox2.Clear;
timer1.Enabled:=false;
timer2.Enabled:=false;
form1.show;
close;
end;

procedure TForm3.Passwordchange1Click(Sender: TObject);
begin
adoquery6.SQL.Clear;
adoquery6.SQL.add('SELECT password FROM students WHERE login="'+unit1.login+'"');
adoquery6.Active:=true;
unit7.pass:=adoquery6.FieldByName('password').Value;
form7.ADOQuery1.sql.text:='UPDATE students SET [password]=:pass WHERE [login]=:login';
form7.ShowModal;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
adoquery1.Refresh;
button2.Caption:=adoquery1.FieldByName('Monday').Value;
button3.Caption:=adoquery1.FieldByName('Tuesday').Value;
button4.Caption:=adoquery1.FieldByName('Wednesday').Value;
button5.Caption:=adoquery1.FieldByName('Thursday').Value;
button6.Caption:=adoquery1.FieldByName('Friday').Value;
button7.Caption:=adoquery1.FieldByName('Saturday').Value;
end;

procedure TForm3.Timer2Timer(Sender: TObject);
begin
adoquery5.Refresh;
if adoquery5.FieldByName('Monday').Value='No' then button8.Caption:='Free';
if adoquery5.FieldByName('Tuesday').Value='No' then button9.Caption:='Free';
if adoquery5.FieldByName('Wednesday').Value='No' then button10.Caption:='Free';
if adoquery5.FieldByName('Thursday').Value='No' then button11.Caption:='Free';
if adoquery5.FieldByName('Friday').Value='No' then button12.Caption:='Free';
if adoquery5.FieldByName('Saturday').Value='No' then button13.Caption:='Free';
end;

end.

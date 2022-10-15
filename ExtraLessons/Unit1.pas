unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  login:string;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,j:integer;q,teacher:boolean;s1:string;
begin
q:=true;
login:=edit1.Text;
s1:=edit2.Text;
adodataset1.active:=false;
if radiogroup1.ItemIndex=0 then begin adodataset1.CommandText:='SELECT login, password FROM teachers'; teacher:=true; end
  else if radiogroup1.ItemIndex=1 then begin adodataset1.CommandText:='SELECT login, password FROM students'; teacher:=false; end
  else q:=false;
  if q=false then showmessage('Choose the user type!') else
    begin
    q:=false;
    adodataset1.Active:=true;
    adodataset1.First;
    for I := 0 to adodataset1.RecordCount - 1 do
      begin
      if (login=adodataset1.FieldByName('login').Value) and (s1=adodataset1.FieldByName('password').Value) then
        begin
        edit2.Clear;
        q:=true;
        form1.hide;
        if teacher=true then
          begin
          form2.ADOQuery3.Parameters.ParamByName('login').Value:=login;
          form2.ADOQuery3.Active:=true;
          form2.Timer1.Enabled:=true;
          form2.ADOQuery2.Active:=true;
          form2.showmodal;
          end
          else
          begin
          form3.ADOQuery1.Parameters.ParamByName('login').Value:=login;
          form3.ADOQuery1.Active:=true;
          form3.Timer1.Enabled:=true;
          form3.ADOQuery1.Active:=true;
          adoquery1.Active:=false;
          adoquery1.Active:=true;
          for j := 0 to adoquery1.RecordCount - 1 do
            begin
              form3.ComboBox1.Items.Add(adoquery1.FieldByName('subject').value);
              adoquery1.Next;
            end;
          form3.ShowModal;
          end;
        end;
      adodataset1.Next;
      end;
      if q=false then showmessage('Invalid data!');
      end;
  end;


procedure TForm1.Button2Click(Sender: TObject);
begin
form4.showmodal;
end;



end.

unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm12 = class(TForm)
    ComboBox1: TComboBox;
    Label2: TLabel;
    Button1: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    ADOQuery1: TADOQuery;
    ADODataSet1: TADODataSet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  photopick:boolean;

implementation

uses Unit13, Unit2, Unit9;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
form13.ShowModal;
end;

procedure TForm12.Button2Click(Sender: TObject);
var itemcat,capt,lab,prod:string;
price:integer;
err:boolean;
q:TMemoryStream;
begin
itemcat:=combobox1.Text;
capt:=trim(edit1.Text);
lab:=trim(edit2.Text);
prod:=trim(edit3.Text);
if (capt='') or (lab='') or (prod='') then showmessage('Fill in all the fields!') else
begin
try
price:=strtoint(trim(edit4.Text));
err:=false;
except
err:=true;
end;
if err=true then showmessage('Wrong price!') else
try
adoquery1.Parameters.ParamByName('a').Value:=itemcat;
adoquery1.Parameters.ParamByName('b').Value:=capt;
adoquery1.Parameters.ParamByName('c').Value:=lab;
adoquery1.Parameters.ParamByName('d').Value:=prod;
adoquery1.Parameters.ParamByName('e').Value:=price;
adoquery1.ExecSQL;
adodataset1.Active:=false;
adodataset1.Active:=true;
adodataset1.Last;
if photopick=true then
      try
      q:=TMemoryStream.Create();
      q.LoadFromFile(opendialog1.FileName);
      q.SaveToFile('libs/image/items/'+inttostr(adodataset1.FieldByName('id').value)+'.jpg');
      Finally
      q.Free();
      End;
    showmessage('New good added!');
    close;
except
showmessage('Wrong data!');
end;
end;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
opendialog1.Execute;
photopick:=true;
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
form9.ADOQuery1.Active:=false;
form9.ADOQuery1.Active:=true;
close;
end;

end.

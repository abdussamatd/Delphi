unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm8 = class(TForm)
    ADOQuery1: TADOQuery;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    ADODataSet1: TADODataSet;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  photopick:boolean;

implementation

uses Unit2, Unit7;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var name,num,workpl,pref:string;
checknum:int64;
q:TMemoryStream;
correctnum:boolean;
begin
name:=trim(edit1.Text);
num:=trim(edit2.Text);
workpl:=trim(edit3.Text);
pref:=trim(edit4.Text);
if (name='') or (num='') or (workpl='') or (pref='') then showmessage('Fields should not be empty!') else
  begin
  try
    strtoint64(num);
    correctnum:=true;
  except
    correctnum:=false;
  end;
  if (length(num)<>11) or (correctnum=false) then showmessage('Wrong telephone number! It should contain 11 digits') else
  try
    adoquery1.Parameters.ParamByName('a').Value:=name;
    adoquery1.Parameters.ParamByName('b').Value:=num;
    adoquery1.Parameters.ParamByName('c').Value:=workpl;
    adoquery1.Parameters.ParamByName('d').Value:=pref;
    adoquery1.ExecSQL;
    adodataset1.Active:=false;
    adodataset1.Active:=true;
    adodataset1.Last;
      if photopick=true then
      try
      q:=TMemoryStream.Create();
      q.LoadFromFile(opendialog1.FileName);
      q.SaveToFile('libs/image/customers/'+inttostr(adodataset1.FieldByName('Код').value)+'.jpg');
      Finally
      q.Free();
      End;
    showmessage('New customer added!');
    close;
    except
  showmessage('Customer with this phone number is already exist!');
  end;
  end;

end;

procedure TForm8.Button2Click(Sender: TObject);
begin
opendialog1.Execute;
photopick:=true;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
form7.ADOQuery1.Active:=false;
form7.ADOQuery1.Active:=true;
close;
end;

end.

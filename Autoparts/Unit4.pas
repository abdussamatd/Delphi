unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
try
adoquery1.Parameters.ParamByName('e').Value:=formatdatetime('dd/mm/yyyy',date);
adoquery1.ExecSQL;
showmessage('Inserted');
form2.ADOQuery1.Active:=false;
form2.ADOQuery1.Active:=true;
adoquery2.SQL.Clear;
adoquery2.SQL.Add('UPDATE items SET Quantity='+inttostr(unit3.quantity-strtoint(form3.Edit2.Text))+' WHERE id='+inttostr(unit3.id));
adoquery2.ExecSQL;
form3.Edit2.Clear;
form3.Edit3.Clear;
form3.Image2.hide;
form3.ComboBox2.ItemIndex:=-1;
close;
except
showmessage('Wrong data');
end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
close;
end;

end.

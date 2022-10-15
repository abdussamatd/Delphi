unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm11 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  itemsid:array[1..100000] of integer;
  id:integer;

implementation

uses Unit2, Unit9;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
var addquan:integer;
begin
try
 addquan:=strtoint(trim(edit1.text));
 adodataset1.Active:=false;
 adodataset1.CommandText:='SELECT Quantity FROM items WHERE id='+inttostr(id);
 adodataset1.Active:=true;
 adodataset1.First;
 addquan:=addquan+adodataset1.FieldByName('Quantity').Value;
 adoquery1.SQL.Clear;
 adoquery1.SQL.Add('UPDATE items SET Quantity='+inttostr(addquan)+' WHERE id='+inttostr(id));
 adoquery1.ExecSQL;
 showmessage('Done!');
 form9.ADOQuery1.Active:=false;
 form9.ADOQuery1.Active:=true;
 close;
except
 showmessage('Wrong data!');
end;
end;

procedure TForm11.ComboBox1Change(Sender: TObject);
var
  i: integer;
begin
  ADODataSet1.Active:=false;
  ADODataSet1.CommandText:='SELECT *FROM items WHERE Category="'+ComboBox1.Text+'"';
  ADODataSet1.Active:=true;
  ADODataSet1.First;
  ComboBox2.Items.Clear;
  for i := 0 to ADODataSet1.RecordCount - 1 do
  begin
    ComboBox2.Items.Add(ADODataSet1.FieldByName('Caption').value);
    itemsid[i]:=ADODataSet1.FieldByName('id').value;
    ADODataSet1.Next;
  end;
end;


procedure TForm11.ComboBox2Change(Sender: TObject);
begin
id:=itemsid[combobox2.ItemIndex];
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
combobox1.Items.Clear;
combobox2.Items.Clear;
end;

end.

unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, jpeg;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Image1: TImage;
    ADODataSet1: TADODataSet;
    Label6: TLabel;
    Edit3: TEdit;
    Image2: TImage;
    Button2: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  price1:integer;
  e1,e2,id,customerid,quantity:integer;
  itemsid:array[0..900000] of integer;
implementation

uses Unit2, Unit4, Unit5, Unit6, Unit8;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit3.Text<>'') and (strtoint(edit2.Text)>0) then
begin
  if quantity<strtoint(edit2.Text) then showmessage('There is no enough units in the storage('+inttostr(quantity)+')!') else
    begin
    form4.edit1.Text:=inttostr(id);
    form4.edit2.Text:=inttostr(customerid);
    form4.edit3.Text:=inttostr(strtoint(edit2.Text));
    form4.edit4.Text:=edit3.text;
    form4.ADOQuery1.Parameters.ParamByName('a').Value:=customerid;
    form4.ADOQuery1.Parameters.ParamByName('b').Value:=id;
    form4.ADOQuery1.Parameters.ParamByName('c').Value:=strtoint(edit2.Text);
    form4.ADOQuery1.Parameters.ParamByName('d').Value:=strtoint(edit3.Text);
    form4.ShowModal;
    end;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
var
  i: integer;
begin
  edit2.Clear;
  edit3.Clear;
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

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
  edit2.Clear;
  edit3.Clear;
  id:=itemsid[combobox2.ItemIndex];
  ADODataSet1.Active:=false;
  ADODataSet1.CommandText:='SELECT *FROM items WHERE id='+inttostr(id);
  ADODataSet1.Active:=true;
  ADODataSet1.First;
  price1:=adodataset1.FieldByName('Price').Value;
  quantity:=adodataset1.FieldByName('Quantity').Value;
  try
  image2.Picture.LoadFromFile('libs\image\items\'+inttostr(id)+'.jpg');
  image2.Show;
  e1:=0;
  except
  e1:=1;
  image2.Hide;
  end;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
try
customerid:=strtoint(trim(edit1.Text));
image1.Picture.LoadFromFile('libs\image\customers\'+inttostr(customerid)+'.jpg');
image1.Show;
e1:=0;
except
e1:=1;
image1.Hide;
end;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
try
edit3.Text:=inttostr(strtoint(edit2.Text)*price1);
e2:=0;
except
e2:=1;
end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.clear;
edit2.clear;
edit3.clear;
image1.Hide;
image2.Hide;
combobox2.clear;
close;
end;
procedure TForm3.Image1Click(Sender: TObject);
begin
form5.Caption:=edit1.Text;
form5.Image1.Picture:=image1.Picture;
form5.Show;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
form6.Caption:=combobox2.Text;
form6.Image1.Picture:=image2.Picture;
form6.Show;
end;

end.

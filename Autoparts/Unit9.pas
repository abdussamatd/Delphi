unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls, DBCtrls;

type
  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button4: TButton;
    ADODataSet1: TADODataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  sql:string;
  idprch:integer;

implementation

uses Unit2, Unit10, Unit11, Unit12;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
try
idprch:=DBGrid1.DataSource.DataSet.FieldByName('id').value;
form10.ShowModal;
finally
end;
end;

procedure TForm9.Button2Click(Sender: TObject);
var i:integer;
begin
try
i:=DBGrid1.DataSource.DataSet.FieldByName('id').value;
adoquery1.Delete;
DeleteFile('libs\image\items\'+inttostr(i)+'.jpg');
except
end;
end;

procedure TForm9.Button3Click(Sender: TObject);
var i:integer;
begin
adodataset1.Active:=false;
adodataset1.active:=true;
adodataset1.First;
form12.ComboBox1.Items.Clear;
for I := 0 to adodataset1.RecordCount-1  do
begin
form12.ComboBox1.Items.Add(adodataset1.FieldByName('Category').Value);
adodataset1.Next;
end;
form12.Showmodal;
end;

procedure TForm9.Button4Click(Sender: TObject);
var i:integer;
begin
adodataset1.Active:=false;
adodataset1.active:=true;
adodataset1.First;
for I := 0 to adodataset1.RecordCount-1  do
begin
form11.ComboBox1.Items.Add(adodataset1.FieldByName('Category').Value);
adodataset1.Next;
end;
form11.Showmodal;
end;

procedure TForm9.Edit1Change(Sender: TObject);
var s:string;
begin
s:=trim(edit1.Text);
adoquery1.Active:=false;
adoquery1.SQL.Clear;
adoquery1.SQL.Add(sql+' WHERE (Category LIKE "%'+s+'%") OR (Caption LIKE "%'+s+'%") OR (label LIKE "%'+s+'%") OR (Producer LIKE "%'+s+'%")');
adoquery1.Active:=true;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
adoquery1.Active:=false;
end;

end.

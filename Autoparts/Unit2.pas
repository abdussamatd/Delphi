unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls, ComCtrls, StdCtrls,
  Menus;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    ADODataSet1: TADODataSet;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Users1: TMenuItem;
    product1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Users1Click(Sender: TObject);
    procedure product1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  sql:string;

implementation

uses Unit3, Unit5, Unit6, Unit7, Unit9, Unit14;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var i:integer;
begin
adodataset1.Active:=false;
adodataset1.active:=true;
adodataset1.First;
form3.ComboBox1.Items.Clear;
for I := 0 to adodataset1.RecordCount-1  do
begin
form3.ComboBox1.Items.Add(adodataset1.FieldByName('category').Value);
adodataset1.Next;
end;
form3.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
var s,nsql:string;
begin
s:=trim(edit1.Text);
adoquery1.Active:=false;
adoquery1.SQL.Clear;
if (s<>'') or (checkbox1.Checked=true) or (checkbox2.Checked=true) then
begin
nsql:=(sql+' WHERE');
if s<>'' then nsql:=nsql+(' (idcustomer LIKE "%'+s+'%") AND');
if checkbox1.Checked=true then nsql:=nsql+(' (purchasedate>=:a) AND');
if checkbox2.Checked=true then nsql:=nsql+(' (purchasedate<=:b) AND');
delete(nsql,length(nsql)-2,3);
adoquery1.SQL.Add(nsql);
if checkbox1.Checked=true then begin adoquery1.Parameters.ParamByName('a').DataType:=ftDateTime; adoquery1.Parameters.ParamByName('a').Value:=datetimepicker1.Date;end;
if checkbox2.Checked=true then begin adoquery1.Parameters.ParamByName('b').DataType:=ftDateTime; adoquery1.Parameters.ParamByName('b').Value:=datetimepicker2.Date;end;
end else adoquery1.SQL.Add(sql);
adoquery1.Active:=true;
end;


procedure TForm2.Button3Click(Sender: TObject);
begin
Button2.OnClick;
form14.frxReport1.showreport;
end;

procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
checkbox1.Checked:=true;
end;

procedure TForm2.DateTimePicker2Change(Sender: TObject);
begin
checkbox2.Checked:=true
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form5.hide;
form6.hide;
edit1.Clear;
checkbox1.Checked:=false;
checkbox2.Checked:=false;
close;
end;

procedure TForm2.product1Click(Sender: TObject);
begin
unit9.sql:='SELECT *FROM items';
form9.ADOQuery1.SQL.Clear;
form9.ADOQuery1.SQL.add(unit9.sql);
form9.ADOQuery1.Active:=true;
form9.show;
end;

procedure TForm2.Users1Click(Sender: TObject);
begin
unit7.sql:='SELECT *FROM customers';
form7.ADOQuery1.SQL.Clear;
form7.ADOQuery1.SQL.add(unit7.sql);
form7.ADOQuery1.Active:=true;
form7.show;
end;

end.

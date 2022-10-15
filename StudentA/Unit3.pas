unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, Menus, ExtCtrls, DBCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    ADOQuery2: TADOQuery;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Changepassword1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Button4: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Changepassword1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure hidecolumn;
  public
    { Public declarations }
    procedure add;
  end;

var
  Form3: TForm3;

implementation

uses Unit4, Unit2, Unit1, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm3.add;
var dbgrid:TDBGrid;
begin
ADOQuery1.Active:=false;
//удаление компонента с формы
DBGrid1.Free;
//создание
dbgrid := TDBGrid.Create(form3);
with dbGrid do
  begin
  Parent:=form3;
  Datasource:=DataSource1;
  Align:=alBottom;
  Height:=form3.Height-97;
  Visible:=true;
  end;
dbgrid.Name:='DBGrid1';
ADOQuery1.Active:=true; //запуск sql
hidecolumn;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  I: Integer;
begin
form6.ComboBox1.Items.Clear;
//цикл для сбора названий полей(чаптеры)
for I := 4 to dbgrid1.Columns.Count - 1 do
  form6.ComboBox1.Items.Add(dbgrid1.Columns[i].FieldName);
form6.ShowModal;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if combobox1.ItemIndex<>-1 then
  begin
  adoquery2.SQL.Clear;
  //sql для удаления записей удовлетворяющих условию
  adoquery2.SQL.Add('DELETE FROM grade WHERE grade="'+combobox1.Text+'"');
  //выполнение
  adoquery2.ExecSQL;
  combobox1.DeleteSelected;
  add;
  end;
end;

procedure TForm3.Button4Click(Sender: TObject);
var
  I: Integer;
begin
form8.Caption:=DBGrid1.DataSource.DataSet.Fields[3].AsString;
form8.ComboBox1.Items.Clear;
form8.ComboBox2.Items.Clear;
for I := 4 to dbgrid1.Columns.Count - 1 do
  begin
  //добавление чаптеров в выпадающий список
  form8.ComboBox1.Items.Add(dbgrid1.Columns[i].FieldName);
  form8.ComboBox2.Items.Add(dbgrid1.Columns[i].FieldName);
  end;
form8.ShowModal;
end;

procedure TForm3.Changepassword1Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
adoquery1.SQL.Clear;
//запрос учеников определенного класса
adoquery1.SQL.Add('SELECT *FROM users WHERE ([Grade]="'+combobox1.Text+'") AND ([login]<>"teacher")');
adoquery1.Active:=true;
hidecolumn;
end;

procedure TForm3.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm3.hidecolumn;
begin
//скрытие ненужных полей
DBGrid1.Columns[0].Visible:=false;
DBGrid1.Columns[1].Visible:=false;
DBGrid1.Columns[2].Visible:=false;
//настройка длины поля
DBGrid1.Columns[3].Width:=220;
end;

end.

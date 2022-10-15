unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Menus, DB, ADODB;

type
  TForm15 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Passwordchange1: TMenuItem;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Dictionary1: TMenuItem;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button6: TButton;
    ADOQuery2: TADOQuery;
    Button1: TButton;
    procedure Exit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Dictionary1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Passwordchange1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;
  lang:string;


implementation

uses Unit1, Unit16, Unit4, Unit17, Unit18, Unit19, Unit21;

{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
begin
//search, query to select data by conditions
adoquery1.Active:=false;
adoquery1.SQL.Clear;
adoquery1.SQL.Add('SELECT *FROM lessons WHERE ([Language]="'+lang+'") AND (([studentid] LIKE "%'+edit1.Text+'%") OR ([Level] LIKE "%'+edit1.Text+'%"))');
adoquery1.Active:=true;
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
unit18.id:=DBGrid1.DataSource.DataSet.Fields.Fields[1].Value;
form18.ShowModal;
end;

procedure TForm15.Button3Click(Sender: TObject);
begin
lang:='English';
panel1.Show;
adoquery1.Active:=false;
adoquery1.SQL.Clear;
//sql to show english scores of the students
adoquery1.SQL.Add('SELECT *FROM lessons WHERE [Language]="'+lang+'"');
adoquery1.Active:=true;
end;

procedure TForm15.Button4Click(Sender: TObject);
begin
form16.ShowModal;
if lang='English' then form16.Panel1.Show
else if lang='Russian' then form16.Panel2.Show
else form16.Panel3.Show;
form16.ShowModal;
end;

procedure TForm15.Button5Click(Sender: TObject);
begin
//refreshing table
form21.ADOQuery1.Active:=false;
form21.ADOQuery1.Active:=true;
form21.ShowModal;
end;

procedure TForm15.Button6Click(Sender: TObject);
begin
try
form17.Caption:=DBGrid1.DataSource.DataSet.Fields.Fields[1].Value;
adoquery2.Active:=false;
adoquery2.SQL.Clear;
//selecting data of chosen student
adoquery2.SQL.Add('SELECT *FROM students WHERE login="'+form17.Caption+'"');
adoquery2.active:=true;
form17.Edit1.Text:=adoquery2.FieldByName('Full name').Value;
form17.Edit2.Text:=datetostr(adoquery2.FieldByName('Birthdate').Value);
form17.Edit3.Text:=adoquery2.FieldByName('Email').Value;
form17.Edit4.Text:=adoquery2.FieldByName('TelNumber').Value;
form17.ShowModal;
except
end;
end;

procedure TForm15.Dictionary1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm15.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form4.Edit1.Clear;
form4.hide;
panel1.Hide;
button3.Hide;
form1.Show;
end;

procedure TForm15.Passwordchange1Click(Sender: TObject);
begin
form19.ShowModal;
end;

end.

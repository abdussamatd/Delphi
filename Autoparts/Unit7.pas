unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm7 = class(TForm)
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  sql:string;

implementation

uses Unit2, Unit8;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
form8.Showmodal;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
try
adoquery1.Delete;
DeleteFile('libs\image\customers\'+inttostr(DBGrid1.DataSource.DataSet.FieldByName('Код').value)+'.jpg');
finally
end;
end;

procedure TForm7.Edit1Change(Sender: TObject);
var s:string;
begin
s:=trim(edit1.Text);
adoquery1.Active:=false;
adoquery1.SQL.Clear;
adoquery1.SQL.Add(sql+' WHERE (Name LIKE "%'+s+'%") OR (Number LIKE "%'+s+'%")');
adoquery1.Active:=true;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
adoquery1.Active:=false;
end;

end.

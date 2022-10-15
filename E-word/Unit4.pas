unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm4 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
var s:string;
begin
s:=lowercase(trim(edit1.Text));
if s<>'' then  //if it is not empty
begin
  //search in table, sql to select data which match to the conditions
  adoquery1.Active:=false;
  adoquery1.SQL.Clear;
  adoquery1.SQL.Add('SELECT *FROM dictionary WHERE (English LIKE "%'+s+'%") OR (Russian LIKE "%'+s+'%") or (Kazakh LIKE "%'+s+'%")');
  adoquery1.Active:=true;
end;
end;

end.

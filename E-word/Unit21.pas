unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, DB, ADODB,shellapi;

type
  TForm21 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    ADOQuery2: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm21.Button1Click(Sender: TObject);
var s,s1:string;
begin
//sql to update field Seen
adoquery2.SQL.Clear;
adoquery2.SQL.Add('UPDATE writing SET [Seen]=True WHERE [Код]='+inttostr(DBGrid1.DataSource.DataSet.Fields.Fields[0].Value));
adoquery2.ExecSQL;//run sql

//getting path to the writing of the student
s:=DBGrid1.DataSource.DataSet.Fields.Fields[0].Value;
s1:='data\forteacher\eng\'+s+'.txt';

//openning
ShellExecute(self.handle,'open',pwidechar(s1), nil, nil, SW_SHOWMAXIMIZED);
end;

end.

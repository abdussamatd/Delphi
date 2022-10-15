unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm18 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;
  id:string;

implementation

uses Unit1, Unit15;

{$R *.dfm}

procedure TForm18.Button1Click(Sender: TObject);
begin
if edit1.Text='' then showmessage('Field should not be empty!') else
begin
//sql to set passsed lessons of the students
adoquery1.SQL.Clear;
adoquery1.SQL.Add('UPDATE lessons SET [Passed lessons]="'+trim(edit1.Text)+'" WHERE ([studentid]="'+id+'") AND ([Language]="'+unit15.lang+'")');
adoquery1.ExecSQL;
form15.ADOQuery1.Active:=false;
form15.ADOQuery1.Active:=true;
close;
end;
end;

procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
end;

end.

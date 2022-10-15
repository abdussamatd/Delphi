unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm10 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit2, Unit9;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
var newpr:integer;
begin
try
newpr:=strtoint(trim(edit1.Text));
adoquery1.SQL.Clear;
adoquery1.SQL.Add('UPDATE items SET Price='+trim(edit1.Text)+' WHERE id='+inttostr(unit9.idprch));
adoquery1.ExecSQL;
form9.ADOQuery1.Active:=false;
form9.adoquery1.Active:=true;
close;
except
showmessage('Wrong price!');
end;
end;

procedure TForm10.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button1.Click;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
close;
end;

end.

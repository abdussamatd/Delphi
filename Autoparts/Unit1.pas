unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdCoder, IdCoder3to4, IdCoder00E,
  IdCoderXXE;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    IdEncoderXXE1: TIdEncoderXXE;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var login,pass:string;loginpass:tstringlist;
begin
login:=edit1.Text;
pass:=idencoderxxe1.Encode(edit2.Text);
loginpass:=tstringlist.Create;
loginpass.LoadFromFile('1.txt');
if (loginpass[0]<>login) or (loginpass[1]<>pass) then showmessage('Wrong data!') else
begin
form2.ADOQuery1.Active:=false;
unit2.sql:='SELECT *FROM history';
form2.ADOQuery1.SQL.Clear;
form2.ADOQuery1.SQL.Add(unit2.sql);
form2.ADOQuery1.Active:=true;
edit1.Clear;
edit2.Clear;
edit1.SetFocus;
form2.DateTimePicker1.Date:=
form2.ShowModal;
end;
loginpass:=nil;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button1.Click;
end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button1.Click;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
halt;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canclose:=MessageDlg('Close the program?',mtconfirmation,[mbyes,mbno],0)=mryes;
end;

end.

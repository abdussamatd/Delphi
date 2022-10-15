unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  pass:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
if (trim(edit1.Text)='') or (trim(edit2.text)='') then showmessage('Fill out the fields!') else
if edit1.Text<>pass then showmessage('Invalid last password!') else
if edit2.Text<>edit3.Text then showmessage('Invalid confirmation!') else
try
  adoquery1.Parameters.ParamByName('login').Value:=unit1.login;
  adoquery1.Parameters.ParamByName('pass').Value:=edit2.Text;
  adoquery1.ExecSQL;
  pass:=edit2.Text;
  showmessage('Done');
  close;
except
  showmessage('Character limit exceeded!');
end;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
close;
end;

end.

unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
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
  Form5: TForm5;
  q:boolean;

implementation

uses Unit1, Unit4, Unit6;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
if trim(edit1.Text)='' then showmessage('Fill out the field!') else
try
adoquery1.Parameters.ParamByName('a').Value:=trim(edit1.Text);
adoquery1.ExecSQL;
if q=true then form4.ComboBox1.Items.Add(trim(edit1.Text)) else form6.ComboBox1.Items.Add(trim(edit1.Text));
showmessage('New subject successfully added!');
close;
except
showmessage('This subject is already exist!');
end;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
close;
end;

end.

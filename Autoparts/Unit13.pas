unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm13 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit2, Unit11, Unit12;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
if trim(edit1.Text)='' then showmessage('Field should not be empty!') else
begin
adoquery1.Parameters.ParamByName('a').Value:=trim(edit1.Text);
try
  adoquery1.ExecSQL;
  showmessage('Done!');
  form12.ComboBox1.Items.Add(trim(edit1.Text));
  close;
except
  showmessage('Wrong data!');
end;
end;
end;

procedure TForm13.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button1.Click;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.Clear;
close;
end;

end.

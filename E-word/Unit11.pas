unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm11 = class(TForm)
    ADOQuery1: TADOQuery;
    Button1: TButton;
    ScrollBox1: TScrollBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    RadioGroup8: TRadioGroup;
    RadioGroup9: TRadioGroup;
    RadioGroup10: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
var score:integer;
begin
score:=0;
if radiogroup1.ItemIndex=1 then score:=score+1;
if radiogroup2.ItemIndex=3 then score:=score+1;
if radiogroup3.ItemIndex=3 then score:=score+1;
if radiogroup4.ItemIndex=2 then score:=score+1;
if radiogroup5.ItemIndex=0 then score:=score+1;
if radiogroup6.ItemIndex=3 then score:=score+1;
if radiogroup7.ItemIndex=2 then score:=score+1;
if radiogroup8.ItemIndex=0 then score:=score+1;
if radiogroup9.ItemIndex=3 then score:=score+1;
if radiogroup10.ItemIndex=0 then score:=score+1;
showmessage('You scored '+inttostr(score));
if score<5  then adoquery1.Parameters.ParamByName('c').Value:='Bad'
else if score<7 then adoquery1.Parameters.ParamByName('c').Value:='Low'
else if score<9 then adoquery1.Parameters.ParamByName('c').Value:='Good'
else adoquery1.Parameters.ParamByName('c').Value:='Very good';
adoquery1.Parameters.ParamByName('a').Value:=unit1.login;
adoquery1.Parameters.ParamByName('d').Value:=date;
adoquery1.ExecSQL;
close
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
button1.Hide;
radiogroup1.ItemIndex:=-1;
radiogroup2.ItemIndex:=-1;
radiogroup3.ItemIndex:=-1;
radiogroup4.ItemIndex:=-1;
radiogroup5.ItemIndex:=-1;
radiogroup6.ItemIndex:=-1;
radiogroup7.ItemIndex:=-1;
radiogroup8.ItemIndex:=-1;
radiogroup9.ItemIndex:=-1;
radiogroup10.ItemIndex:=-1;
end;

procedure TForm11.RadioGroup10Click(Sender: TObject);
begin
button1.Show;
end;

end.

unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, pngimage, DB, ADODB;

type
  TForm6 = class(TForm)
    ScrollBox1: TScrollBox;
    Button1: TButton;
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
    ADOQuery1: TADOQuery;
    procedure RadioGroup10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var score:integer;
begin
score:=0;
if radiogroup1.ItemIndex=2 then score:=score+1;
if radiogroup2.ItemIndex=2 then score:=score+1;
if radiogroup3.ItemIndex=1 then score:=score+1;
if radiogroup4.ItemIndex=1 then score:=score+1;
if radiogroup5.ItemIndex=1 then score:=score+1;
if radiogroup6.ItemIndex=1 then score:=score+1;
if radiogroup7.ItemIndex=2 then score:=score+1;
if radiogroup8.ItemIndex=1 then score:=score+1;
if radiogroup9.ItemIndex=2 then score:=score+1;
if radiogroup10.ItemIndex=2 then score:=score+1;
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

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TForm6.RadioGroup10Click(Sender: TObject);
begin
button1.Show;
end;

end.

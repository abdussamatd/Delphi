unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm5 = class(TForm)
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
    RadioGroup11: TRadioGroup;
    RadioGroup12: TRadioGroup;
    RadioGroup13: TRadioGroup;
    RadioGroup14: TRadioGroup;
    RadioGroup15: TRadioGroup;
    RadioGroup16: TRadioGroup;
    RadioGroup17: TRadioGroup;
    RadioGroup18: TRadioGroup;
    Button1: TButton;
    RadioGroup19: TRadioGroup;
    RadioGroup20: TRadioGroup;
    RadioGroup21: TRadioGroup;
    RadioGroup22: TRadioGroup;
    RadioGroup23: TRadioGroup;
    RadioGroup24: TRadioGroup;
    RadioGroup25: TRadioGroup;
    RadioGroup26: TRadioGroup;
    RadioGroup27: TRadioGroup;
    RadioGroup28: TRadioGroup;
    RadioGroup29: TRadioGroup;
    RadioGroup30: TRadioGroup;
    RadioGroup31: TRadioGroup;
    RadioGroup32: TRadioGroup;
    RadioGroup33: TRadioGroup;
    RadioGroup34: TRadioGroup;
    RadioGroup35: TRadioGroup;
    RadioGroup36: TRadioGroup;
    RadioGroup37: TRadioGroup;
    RadioGroup38: TRadioGroup;
    RadioGroup39: TRadioGroup;
    RadioGroup40: TRadioGroup;
    RadioGroup41: TRadioGroup;
    RadioGroup42: TRadioGroup;
    RadioGroup43: TRadioGroup;
    RadioGroup44: TRadioGroup;
    RadioGroup45: TRadioGroup;
    RadioGroup46: TRadioGroup;
    RadioGroup47: TRadioGroup;
    RadioGroup48: TRadioGroup;
    RadioGroup49: TRadioGroup;
    RadioGroup50: TRadioGroup;
    RadioGroup51: TRadioGroup;
    RadioGroup52: TRadioGroup;
    RadioGroup53: TRadioGroup;
    RadioGroup54: TRadioGroup;
    RadioGroup55: TRadioGroup;
    RadioGroup56: TRadioGroup;
    RadioGroup57: TRadioGroup;
    RadioGroup58: TRadioGroup;
    RadioGroup59: TRadioGroup;
    RadioGroup60: TRadioGroup;
    RadioGroup61: TRadioGroup;
    RadioGroup62: TRadioGroup;
    RadioGroup63: TRadioGroup;
    RadioGroup64: TRadioGroup;
    RadioGroup65: TRadioGroup;
    RadioGroup66: TRadioGroup;
    RadioGroup67: TRadioGroup;
    RadioGroup68: TRadioGroup;
    ADOQuery1: TADOQuery;
    procedure RadioGroup68Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var score:integer;
begin
score:=0;// zeroing a variable

//in case of correct answer variable "score" will be increased
if radiogroup1.ItemIndex=2 then score:=score+1;
if radiogroup2.ItemIndex=2 then score:=score+1;
if radiogroup3.ItemIndex=0 then score:=score+1;
if radiogroup4.ItemIndex=2 then score:=score+1;
if radiogroup5.ItemIndex=3 then score:=score+1;
if radiogroup6.ItemIndex=2 then score:=score+1;
if radiogroup7.ItemIndex=1 then score:=score+1;
if radiogroup8.ItemIndex=0 then score:=score+1;
if radiogroup9.ItemIndex=3 then score:=score+1;
if radiogroup10.ItemIndex=2 then score:=score+1;
if radiogroup11.ItemIndex=3 then score:=score+1;
if radiogroup12.ItemIndex=3 then score:=score+1;
if radiogroup13.ItemIndex=2 then score:=score+1;
if radiogroup14.ItemIndex=2 then score:=score+1;
if radiogroup15.ItemIndex=0 then score:=score+1;
if radiogroup16.ItemIndex=2 then score:=score+1;
if radiogroup17.ItemIndex=3 then score:=score+1;
if radiogroup18.ItemIndex=0 then score:=score+1;
if radiogroup19.ItemIndex=3 then score:=score+1;
if radiogroup20.ItemIndex=2 then score:=score+1;
if radiogroup21.ItemIndex=2 then score:=score+1;
if radiogroup22.ItemIndex=2 then score:=score+1;
if radiogroup23.ItemIndex=3 then score:=score+1;
if radiogroup24.ItemIndex=1 then score:=score+1;
if radiogroup25.ItemIndex=3 then score:=score+1;
if radiogroup26.ItemIndex=0 then score:=score+1;
if radiogroup27.ItemIndex=1 then score:=score+1;
if radiogroup28.ItemIndex=2 then score:=score+1;
if radiogroup29.ItemIndex=0 then score:=score+1;
if radiogroup30.ItemIndex=0 then score:=score+1;
if radiogroup31.ItemIndex=0 then score:=score+1;
if radiogroup32.ItemIndex=3 then score:=score+1;
if radiogroup33.ItemIndex=1 then score:=score+1;
if radiogroup34.ItemIndex=3 then score:=score+1;
if radiogroup35.ItemIndex=0 then score:=score+1;
if radiogroup36.ItemIndex=0 then score:=score+1;
if radiogroup37.ItemIndex=0 then score:=score+1;
if radiogroup38.ItemIndex=2 then score:=score+1;
if radiogroup39.ItemIndex=1 then score:=score+1;
if radiogroup40.ItemIndex=0 then score:=score+1;
if radiogroup41.ItemIndex=2 then score:=score+1;
if radiogroup42.ItemIndex=0 then score:=score+1;
if radiogroup43.ItemIndex=2 then score:=score+1;
if radiogroup44.ItemIndex=1 then score:=score+1;
if radiogroup45.ItemIndex=3 then score:=score+1;
if radiogroup46.ItemIndex=1 then score:=score+1;
if radiogroup47.ItemIndex=0 then score:=score+1;
if radiogroup48.ItemIndex=0 then score:=score+1;
if radiogroup49.ItemIndex=1 then score:=score+1;
if radiogroup50.ItemIndex=0 then score:=score+1;
if radiogroup51.ItemIndex=3 then score:=score+1;
if radiogroup52.ItemIndex=3 then score:=score+1;
if radiogroup53.ItemIndex=1 then score:=score+1;
if radiogroup54.ItemIndex=0 then score:=score+1;
if radiogroup55.ItemIndex=2 then score:=score+1;
if radiogroup56.ItemIndex=1 then score:=score+1;
if radiogroup57.ItemIndex=2 then score:=score+1;
if radiogroup58.ItemIndex=1 then score:=score+1;
if radiogroup59.ItemIndex=0 then score:=score+1;
if radiogroup50.ItemIndex=1 then score:=score+1;
if radiogroup61.ItemIndex=2 then score:=score+1;
if radiogroup62.ItemIndex=2 then score:=score+1;
if radiogroup63.ItemIndex=1 then score:=score+1;
if radiogroup64.ItemIndex=2 then score:=score+1;
if radiogroup65.ItemIndex=2 then score:=score+1;
if radiogroup66.ItemIndex=3 then score:=score+1;
if radiogroup67.ItemIndex=0 then score:=score+1;
if radiogroup68.ItemIndex=0 then score:=score+1;
showmessage('You scored '+inttostr(score)+' out of 68');

//conversion marks to the levels
if score<20  then adoquery1.Parameters.ParamByName('c').Value:='A1'
else if score<30 then adoquery1.Parameters.ParamByName('c').Value:='A2'
else if score<40 then adoquery1.Parameters.ParamByName('c').Value:='B1'
else if score<50 then adoquery1.Parameters.ParamByName('c').Value:='B2'
else if score<60 then adoquery1.Parameters.ParamByName('c').Value:='C1'
else adoquery1.Parameters.ParamByName('c').Value:='C2';
adoquery1.Parameters.ParamByName('a').Value:=unit1.login;
adoquery1.Parameters.ParamByName('d').Value:=date;
adoquery1.ExecSQL;  //running sql to insert results to the database
close
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
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
radiogroup11.ItemIndex:=-1;
radiogroup12.ItemIndex:=-1;
radiogroup13.ItemIndex:=-1;
radiogroup14.ItemIndex:=-1;
radiogroup15.ItemIndex:=-1;
radiogroup16.ItemIndex:=-1;
radiogroup17.ItemIndex:=-1;
radiogroup18.ItemIndex:=-1;
radiogroup19.ItemIndex:=-1;
radiogroup20.ItemIndex:=-1;
radiogroup21.ItemIndex:=-1;
radiogroup22.ItemIndex:=-1;
radiogroup23.ItemIndex:=-1;
radiogroup24.ItemIndex:=-1;
radiogroup25.ItemIndex:=-1;
radiogroup26.ItemIndex:=-1;
radiogroup27.ItemIndex:=-1;
radiogroup28.ItemIndex:=-1;
radiogroup29.ItemIndex:=-1;
radiogroup30.ItemIndex:=-1;
radiogroup31.ItemIndex:=-1;
radiogroup32.ItemIndex:=-1;
radiogroup33.ItemIndex:=-1;
radiogroup34.ItemIndex:=-1;
radiogroup35.ItemIndex:=-1;
radiogroup36.ItemIndex:=-1;
radiogroup37.ItemIndex:=-1;
radiogroup38.ItemIndex:=-1;
radiogroup39.ItemIndex:=-1;
radiogroup40.ItemIndex:=-1;
radiogroup41.ItemIndex:=-1;
radiogroup42.ItemIndex:=-1;
radiogroup43.ItemIndex:=-1;
radiogroup44.ItemIndex:=-1;
radiogroup45.ItemIndex:=-1;
radiogroup46.ItemIndex:=-1;
radiogroup47.ItemIndex:=-1;
radiogroup48.ItemIndex:=-1;
radiogroup49.ItemIndex:=-1;
radiogroup50.ItemIndex:=-1;
radiogroup51.ItemIndex:=-1;
radiogroup52.ItemIndex:=-1;
radiogroup53.ItemIndex:=-1;
radiogroup54.ItemIndex:=-1;
radiogroup55.ItemIndex:=-1;
radiogroup56.ItemIndex:=-1;
radiogroup57.ItemIndex:=-1;
radiogroup58.ItemIndex:=-1;
radiogroup59.ItemIndex:=-1;
radiogroup60.ItemIndex:=-1;
radiogroup61.ItemIndex:=-1;
radiogroup62.ItemIndex:=-1;
radiogroup63.ItemIndex:=-1;
radiogroup64.ItemIndex:=-1;
radiogroup65.ItemIndex:=-1;
radiogroup66.ItemIndex:=-1;
radiogroup67.ItemIndex:=-1;
radiogroup68.ItemIndex:=-1;
end;

procedure TForm5.RadioGroup68Click(Sender: TObject);
begin
button1.Show;
end;

end.

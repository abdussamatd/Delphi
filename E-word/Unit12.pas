unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, DB, ADODB;

type
  TForm12 = class(TForm)
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    Memo1: TMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox5Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
var score:integer;
begin
score:=0;
if lowercase(edit1.text)='c' then score:=score+1;
if lowercase(edit2.text)='f' then score:=score+1;
if lowercase(edit3.text)='d' then score:=score+1;
if lowercase(edit4.text)='b' then score:=score+1;
if lowercase(edit5.text)='newly planted crops' then score:=score+1;
if lowercase(edit6.text)='too much water' then score:=score+1;
if lowercase(edit7.text)='fuel shortages' then score:=score+1;
if lowercase(edit8.text)='Sprinklers' then score:=score+1;
if combobox1.ItemIndex=0 then score:=score+1;
if combobox2.ItemIndex=0 then score:=score+1;
if combobox3.ItemIndex=1 then score:=score+1;
if combobox4.ItemIndex=0 then score:=score+1;
if combobox5.ItemIndex=0 then score:=score+1;
showmessage('You scored '+inttostr(score)+' out of 13');
if score<2  then adoquery1.Parameters.ParamByName('c').Value:='A1'
else if score<6 then adoquery1.Parameters.ParamByName('c').Value:='A2'
else if score<9 then adoquery1.Parameters.ParamByName('c').Value:='B1'
else if score<11 then adoquery1.Parameters.ParamByName('c').Value:='B2'
else if score<13 then adoquery1.Parameters.ParamByName('c').Value:='C1'
else adoquery1.Parameters.ParamByName('c').Value:='C2';
adoquery1.Parameters.ParamByName('a').Value:=unit1.login;
adoquery1.Parameters.ParamByName('d').Value:=date;
adoquery1.ExecSQL;
close
end;

procedure TForm12.ComboBox5Change(Sender: TObject);
begin
button1.Show;
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edit1.clear;
edit2.clear;
edit3.clear;
edit4.clear;
edit5.clear;
edit6.clear;
edit7.clear;
edit8.clear;
combobox1.ItemIndex:=-1;
combobox2.ItemIndex:=-1;
combobox3.ItemIndex:=-1;
combobox4.ItemIndex:=-1;
combobox5.ItemIndex:=-1;
button1.Hide;
end;

end.

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm10 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  h,m,x,y:integer;
implementation

{$R *.dfm}





procedure TForm10.Button2Click(Sender: TObject);
var s:string;s1:tstringlist;
begin
timer1.Enabled:=false;
if (h=1) and (m=1) and (length(trim(edit3.Text))<>0) then
begin
s1:=tstringlist.Create;
s1.Clear;
if length(trim(edit1.Text))=1 then edit1.Text:='0'+trim(edit1.Text);
if length(trim(edit2.Text))=1 then edit2.Text:='0'+trim(edit2.Text);
s:=trim(edit1.Text)+':'+trim(edit2.text)+' '+trim(edit3.Text);
   case combobox1.ItemIndex of
   -1:begin showmessage('Выберите день недели');end;
   0:begin s1.LoadFromFile('Others\diary\1.txt');s1.Add(s);
   s1.SaveToFile('others\diary\1.txt');edit1.Clear;edit2.Clear;edit3.Clear; end;
   1:begin s1.LoadFromFile('others\diary\2.txt');s1.Add(s);
   s1.SaveToFile('others\diary\2.txt');edit1.Clear;edit2.Clear;edit3.Clear; end;
   2:begin s1.LoadFromFile('others\diary\3.txt');s1.Add(s);
   s1.SaveToFile('others\diary\3.txt');edit1.Clear;edit2.Clear;edit3.Clear; end;
   3:begin s1.LoadFromFile('others\diary\4.txt');s1.Add(s);
   s1.SaveToFile('others\diary\4.txt');edit1.Clear;edit2.Clear;edit3.Clear; end;
   4:begin s1.LoadFromFile('others\diary\5.txt');s1.Add(s);
   s1.SaveToFile('others\diary\5.txt');edit1.Clear;edit2.Clear;edit3.Clear; end;
   5:begin s1.LoadFromFile('others\diary\6.txt');s1.Add(s);
   s1.SaveToFile('others\diary\6.txt');edit1.Clear;edit2.Clear;edit3.Clear; end;
   6:begin s1.LoadFromFile('others\diary\7.txt');s1.Add(s);
   s1.SaveToFile('others\diary\7.txt');edit1.Clear;edit2.Clear;edit3.Clear; end;
   end;
freeandnil(s1);
end else  showmessage('Поля не должны быть пустыми!');
timer1.Enabled:=true
end;

procedure TForm10.Edit2Change(Sender: TObject);
var e:integer;
begin
if length(trim(edit2.Text))<>0 then
 begin
  try
     y:=strtoint(trim(edit2.Text));
     e:=1;
  except
     showmessage('Некорректный ввод');
  end;
  if (e=1) and (y>=0) and (y<60) then m:=1  else begin showmessage('Некорректные минуты!');m:=0; end;

 end;
end;

procedure TForm10.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button2.Click;
end;

procedure TForm10.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button2.Click;
end;

procedure TForm10.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button1.Click;
end;



procedure TForm10.Timer1Timer(Sender: TObject);
begin
case combobox1.ItemIndex of
    0:Memo1.Lines.LoadFromFile('others\diary\1.txt');
    1:Memo1.Lines.LoadFromFile('others\diary\2.txt');
    2:Memo1.Lines.LoadFromFile('others\diary\3.txt');
    3:Memo1.Lines.LoadFromFile('others\diary\4.txt');
    4:Memo1.Lines.LoadFromFile('others\diary\5.txt');
    5:Memo1.Lines.LoadFromFile('others\diary\6.txt');
    6:Memo1.Lines.LoadFromFile('others\diary\7.txt');
   end;
end;

procedure TForm10.Button1Click(Sender: TObject);
var s:string;s1:tstringlist;i:integer;
begin
timer1.Enabled:=false;
s1:=tstringlist.Create;
s1.Clear;
try
i:=strtoint(trim(edit4.Text));
case combobox1.ItemIndex of
   0:begin s1.LoadFromFile('Others\diary\1.txt');s1.Delete(i-1);
   s1.SaveToFile('others\diary\1.txt') end;
   1:begin s1.LoadFromFile('others\diary\2.txt');s1.Delete(i-1);
   s1.SaveToFile('others\diary\2.txt') end;
   2:begin s1.LoadFromFile('others\diary\3.txt');s1.Delete(i-1);
   s1.SaveToFile('others\diary\3.txt') end;
   3:begin s1.LoadFromFile('others\diary\4.txt');s1.Delete(i-1);
   s1.SaveToFile('others\diary\4.txt') end;
   4:begin s1.LoadFromFile('others\diary\5.txt');s1.Delete(i-1);
   s1.SaveToFile('others\diary\5.txt') end;
   5:begin s1.LoadFromFile('others\diary\6.txt');s1.Delete(i-1);
   s1.SaveToFile('others\diary\6.txt') end;
   6:begin s1.LoadFromFile('others\diary\7.txt');s1.Delete(i-1);
   s1.SaveToFile('others\diary\7.txt') end;
   end;
freeandnil(s1);
except
showmessage('Некорректный номер строки');
end;
timer1.Enabled:=true;
end;


procedure TForm10.Edit1Change(Sender: TObject);
var e:integer;
begin
if length(trim(edit1.Text))<>0 then
 begin
  try
     x:=strtoint(trim(edit1.Text));
     e:=1;
  except
     showmessage('Некорректный ввод!');
  end;
  if (e=1) and (x>=0) and (x<24) then h:=1  else begin showmessage('Некорректные часы!');h:=0;end;

 end;
end;

procedure TForm10.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then button1.Click;
end;

end.

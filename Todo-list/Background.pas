unit Background;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, MPlayer,shellapi;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Memo1: TMemo;
    Timer2: TTimer;
    Button1: TButton;
    MediaPlayer1: TMediaPlayer;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
 dof:integer;

implementation

uses Unit2;



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
form10.show;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 canclose:=MessageDlg('Хотите выйти? Вы не сможете получать уведомления',mtconfirmation,[mbyes,mbno],0)=mryes;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var t:string;
begin
t:=formatdatetime('hh/mm',time);
t[3]:=':';
label2.Caption:=t;
case DayOfWeek(Date) of
1:begin label1.Caption:='Воскресенье'; Memo1.Lines.LoadFromFile('others\diary\1.txt');end;
2:begin label1.Caption:='Понедельник'; Memo1.Lines.LoadFromFile('others\diary\2.txt');end;
3:begin label1.Caption:='Вторник'; Memo1.Lines.LoadFromFile('others\diary\3.txt');end;
4:begin label1.Caption:='Среда'; Memo1.Lines.LoadFromFile('others\diary\4.txt');end;
5:begin label1.Caption:='Четверг'; Memo1.Lines.LoadFromFile('others\diary\5.txt');end;
6:begin label1.Caption:='Пятница'; Memo1.Lines.LoadFromFile('others\diary\6.txt');end;
7:begin label1.Caption:='Суббота'; Memo1.Lines.LoadFromFile('others\diary\7.txt');end;
end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var i:integer;str,str1:string;a:array[1..1000] of integer;
  j: Integer;
begin
for i := 0 to memo1.Lines.Count - 1 do
begin
str1:='';
str:=memo1.Lines[i];
str:=str[1]+str[2]+':'+str[4]+str[5];
if label2.Caption=str then
begin
str:=memo1.Lines[i];
memo1.Lines.Delete(i);
case DayOfWeek(Date) of
1:Memo1.Lines.savetoFile('others\diary\1.txt');
2:Memo1.Lines.savetoFile('others\diary\2.txt');
3:Memo1.Lines.savetoFile('others\diary\3.txt');
4:Memo1.Lines.savetoFile('others\diary\4.txt');
5:Memo1.Lines.savetoFile('others\diary\5.txt');
6:Memo1.Lines.savetoFile('others\diary\6.txt');
7:Memo1.Lines.savetoFile('others\diary\7.txt');
end;
for j := 7 to length(str) do
str1:=str1+str[j];
mediaplayer1.Open;
mediaplayer1.play;
showmessage(str1);
mediaplayer1.Close;
end;
end;


end;

end.

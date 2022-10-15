unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,math;

type
  TForm8 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure compare;
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit3;

{$R *.dfm}

{ TForm8 }

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
compare;
end;

procedure TForm8.compare;
var a,b:integer;res:real;
begin
label1.Hide;
label2.Hide;
if (combobox1.ItemIndex<>-1) and (combobox2.ItemIndex<>-1) then
   begin
   //получение значений записей
   a:=form3.DBGrid1.DataSource.DataSet.Fields[combobox1.ItemIndex+4].AsInteger;
   b:=form3.DBGrid1.DataSource.DataSet.Fields[combobox2.ItemIndex+4].AsInteger;

   //калькуляция
   res:=100*(b-a)/a;
   //округление
   res:=Int(res*100+0.5*(1-2*Ord(res<0)))/100;
   //если прогресс
   if res>0 then begin panel1.Font.Color:=clGreen; label1.show; end else
   //если регресс
   if res<0 then begin panel1.Font.Color:=clRed; label2.show end else
   //если нет изменений
   panel1.Font.Color:=clYellow;
   //вывод результата
   panel1.Caption:=floattostr(res)+'%';
   panel1.Show;
   end;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
panel1.Hide;
label1.Hide;
label2.Hide;
close;
end;

end.

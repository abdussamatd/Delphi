unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  TForm14 = class(TForm)
    Memo1: TMemo;
    ScrollBox1: TScrollBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADODataSet1: TADODataSet;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
var f:TFileStream;s:string;
begin
if memo1.Lines.count=0 then//if it is not empty
showmessage('You have to write more!') else
begin
adoquery1.Parameters.ParamByName('a').Value:=unit1.login;
adoquery1.Parameters.ParamByName('b').Value:=date;
adoquery1.ExecSQL; //running sql to insert data of the writings to database
adodataset1.Active:=false;
adodataset1.Active:=true;
adodataset1.Last;
s:='data\forteacher\eng\'+inttostr(adodataset1.FieldByName('Код').Value)+'.txt';
f:=TFileStream.Create(s, fmCreate);
f.Free;
memo1.Lines.SaveToFile(s); //saving writing task of the student
showmessage('Done!');
close;
end;
end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
memo1.Clear;
close;
end;

end.

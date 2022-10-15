unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  d:string;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
adoquery1.SQL.Clear;
adoquery1.SQL.Add('UPDATE timetable SET ['+d+']="'+unit1.login+'" WHERE login="'+unit3.teacherlogin+'"');
adoquery1.ExecSQL;
adoquery1.SQL.Clear;
adoquery1.SQL.Add('UPDATE timetablestudents SET ['+d+']="'+unit3.teacherlogin+'" WHERE login="'+unit1.login+'"');
adoquery1.ExecSQL;
showmessage('Done!');
form3.Button8.Caption:='';
form3.Button9.Caption:='';
form3.Button10.Caption:='';
form3.Button11.Caption:='';
form3.Button12.Caption:='';
form3.Button13.Caption:='';
close;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
close;
end;

end.

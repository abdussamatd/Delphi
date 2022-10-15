unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
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
  Form8: TForm8;
  d:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
adoquery1.sql.clear;
adoquery1.sql.Add('UPDATE timetable SET ['+d+']="No" WHERE login="'+unit1.login+'"');
adoquery1.ExecSQL;
adoquery1.sql.clear;
adoquery1.sql.Add('UPDATE timetablestudents SET ['+d+']="No" WHERE login="'+form8.Caption+'"');
adoquery1.ExecSQL;
showmessage('Done!');
close;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Close;
end;

end.

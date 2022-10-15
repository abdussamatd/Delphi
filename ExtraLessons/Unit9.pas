unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm9 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  d:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
adoquery1.sql.clear;
adoquery1.sql.Add('UPDATE timetable SET ['+d+']="No" WHERE login="'+form9.Caption+'"');
adoquery1.ExecSQL;
adoquery1.sql.clear;
adoquery1.sql.Add('UPDATE timetablestudents SET ['+d+']="No" WHERE login="'+unit1.login+'"');
adoquery1.ExecSQL;
showmessage('Done!');
close;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
close;
end;

end.

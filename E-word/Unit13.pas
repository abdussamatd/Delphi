unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB,Shellapi;

type
  TForm13 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  s:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
adoquery1.Active:=false;
adoquery1.Active:=true;
try
//taking last score of the student
  adoquery1.Last;//go to the last record

  //get directory with the materials
  s:=ExtractFilePath(Application.ExeName)+'data\forstudent\eng\'+adoquery1.FieldByName('Level').Value;
  ShellExecute(self.handle,'open', pwidechar(s), nil, nil, SW_SHOWMAXIMIZED);//open
except
  showmessage('You need to pass at least one test on this subject!');
end;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
adoquery2.Active:=false;
adoquery2.Active:=true;
try
  adoquery2.Last;
    //get directory with the materials
  s:=ExtractFilePath(Application.ExeName)+'data\forstudent\rus\'+adoquery2.FieldByName('Level').Value;
  ShellExecute(self.handle,'open', pwidechar(s), nil, nil, SW_SHOWMAXIMIZED);//open
  except
  showmessage('You need to pass at least one test on this subject!');
end;
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
adoquery3.Active:=false;
adoquery3.Active:=true;
try
  adoquery3.Last;
    //get directory with the materials
  s:=ExtractFilePath(Application.ExeName)+'data\forstudent\kaz\'+adoquery3.FieldByName('Level').Value;
  ShellExecute(self.handle,'open', pwidechar(s), nil, nil, SW_SHOWMAXIMIZED); //open
  except
  showmessage('You need to pass at least one test on this subject!');
end;
end;

end.

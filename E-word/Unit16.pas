unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,shellapi;

type
  TForm16 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Panel3: TPanel;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    OpenDialog1: TOpenDialog;
    Button15: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}


//Copy all the files from one directory to another
function CopyDir(fromDir, toDir: string): boolean;
var
fos: TSHFileOpStruct;
todir2: string;
begin
todir2:=todir;
ZeroMemory(@fos, SizeOf(fos));
with fos do
begin
wFunc := FO_COPY;
fFlags:= FOF_SIMPLEPROGRESS;
fflags:= fflags or FOF_NOCONFIRMATION;
fflags:= fflags or FOF_SILENT;
pFrom := PChar(fromDir + #0);
pTo := PChar(toDir2);
end;
Result := (0 = ShFileOperation(fos));
end;



procedure TForm16.Button10Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\rus\Low');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button11Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\kaz\Good');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button12Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\kaz\Very good');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button13Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\kaz\Bad');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button14Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\kaz\Low');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button15Click(Sender: TObject);
begin
close;
end;

procedure TForm16.Button1Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\eng\A1');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button2Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\eng\A2');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button3Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\eng\B1');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button4Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\eng\B2');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button5Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\eng\C1');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button6Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\eng\C2');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button7Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\rus\Good');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button8Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\rus\Very good');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

procedure TForm16.Button9Click(Sender: TObject);
begin
opendialog1.Execute;
try
copydir(opendialog1.FileName,'data\forstudent\rus\Bad');
showmessage('Done!');
except
showmessage('Error!');
end;
end;

end.

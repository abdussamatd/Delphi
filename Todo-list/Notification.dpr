program Notification;

uses
  Forms,
  Background in 'Background.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.

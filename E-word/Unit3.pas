unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DB, ADODB, StdCtrls, pngimage, jpeg;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Dictionary1: TMenuItem;
    Timer1: TTimer;
    ADOQuery1: TADOQuery;
    Languagepracticetest1: TMenuItem;
    English1: TMenuItem;
    Russian1: TMenuItem;
    Kazakh1: TMenuItem;
    Grammar1: TMenuItem;
    Reading1: TMenuItem;
    N1: TMenuItem;
    Writing1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N1Test1: TMenuItem;
    N2Test1: TMenuItem;
    N3Test1: TMenuItem;
    est11: TMenuItem;
    est21: TMenuItem;
    test31: TMenuItem;
    Practice11: TMenuItem;
    Practice21: TMenuItem;
    Button1: TButton;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button2: TButton;
    N5: TMenuItem;
    Exit1: TMenuItem;
    procedure Dictionary1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure N1Test1Click(Sender: TObject);
    procedure N2Test1Click(Sender: TObject);
    procedure N3Test1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Practice11Click(Sender: TObject);
    procedure est11Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Writing1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit4, Unit1, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11, Unit12,
  Unit13, Unit14;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
panel1.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form13.ADOQuery1.Parameters.ParamByName('login').Value:=unit1.login;
form13.ADOQuery2.Parameters.ParamByName('login').Value:=unit1.login;
form13.ADOQuery3.Parameters.ParamByName('login').Value:=unit1.login;
form13.ShowModal;
end;

procedure TForm3.Dictionary1Click(Sender: TObject);
begin
form4.Show;
end;

procedure TForm3.est11Click(Sender: TObject);
begin
form12.ShowModal;
end;

procedure TForm3.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form4.Edit1.Clear;
form4.hide;
form1.show;
end;

procedure TForm3.N1Test1Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
form6.ShowModal;
end;

procedure TForm3.N2Test1Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
form10.ShowModal;
end;

procedure TForm3.N3Test1Click(Sender: TObject);
begin
form9.ShowModal;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
form11.ShowModal;
end;

procedure TForm3.Practice11Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
image2.Hide;
image3.Hide;
image1.Show;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton3.Checked:=false;
image1.Hide;
image3.Hide;
image2.Show;
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
image1.Hide;
image2.Hide;
image3.Show;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
var
  I: Integer;e,r,k:integer;
begin
timer1.Enabled:=false;
adoquery1.Parameters.ParamByName('login').Value:=unit1.login;
try
  e:=0;
  r:=0;
  k:=0;
  adoquery1.Active:=false;
  adoquery1.Active:=true;
  adoquery1.First;
  for I := 0 to adoquery1.RecordCount - 1 do
    begin
    //conditions to identify the language
      if adoquery1.FieldByName('Language').Value='English' then e:=e+1;
      if adoquery1.FieldByName('Language').Value='Russian' then r:=r+1;
      if adoquery1.FieldByName('Language').Value='Kazakh' then k:=k+1;
      adoquery1.Next;
    end;
finally
  if e=0 then form5.ShowModal;
  if r=0 then form6.ShowModal;
  if k=0 then form7.ShowModal;
end;
end;



procedure TForm3.Writing1Click(Sender: TObject);
begin
form14.ShowModal;
end;

end.

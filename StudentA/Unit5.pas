unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, ADODB;

type
  TForm5 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Changepassword1: TMenuItem;
    N1: TMenuItem;
    exit1: TMenuItem;
    procedure exit1Click(Sender: TObject);
    procedure Changepassword1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure refresh;
    procedure hidecolumn;
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit7, Unit1;

{$R *.dfm}

procedure TForm5.Changepassword1Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm5.exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm5.hidecolumn;
begin
//скрытие полей
DBGrid1.Columns[0].Visible:=false;
DBGrid1.Columns[1].Visible:=false;
DBGrid1.Columns[2].Visible:=false;
DBGrid1.Columns[3].Width:=220;
end;

procedure TForm5.refresh;
var dbgrid:TDBGrid;
begin
ADOQuery1.Active:=false;
//удаление компонента с формы
DBGrid1.Free;

//создание
dbgrid := TDBGrid.Create(form5);
with dbGrid do
  begin
  Parent:=form5;  //наследование
  Datasource:=DataSource1;
  Align:=alClient;//на всю форму
  Visible:=true;
  enabled:=false; //запрет на изменения
  end;
dbgrid.Name:='DBGrid1';
ADOQuery1.Active:=true;//запуск
hidecolumn;
end;


end.

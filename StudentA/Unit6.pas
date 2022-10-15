unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm6 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
//если не выбран ни один элемент выпадающего списка
if combobox1.ItemIndex<>-1 then
  begin
  adoquery1.SQL.Clear;
  //запрос на удаление поля
  adoquery1.SQL.Add('ALTER TABLE users DROP COLUMN ['+combobox1.Text+']');
  //выполнение sql
  adoquery1.ExecSQL;
  form3.add;
  close;
  end;
end;

end.

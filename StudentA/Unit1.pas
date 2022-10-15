unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  login: string;

implementation

uses Unit2, Unit3, Unit5;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pass: string;
  p: boolean;
  I: Integer;
  J: Integer;
begin
  p := false;
  login := Edit1.Text;
  pass := Edit2.Text;

  // Проверка пустых полей
  if (trim(login) = '') or (trim(pass) = '') then
    showmessage('Fill out the fields!')
  else
  begin

    // обновление данных
    ADODataSet1.Active := false;
    ADODataSet1.Active := true;
    ADODataSet1.First;

    // цикл для сравнение введнных данных с запросом из бд
    for I := 0 to ADODataSet1.RecordCount - 1 do
    begin

      // условный оператор
      if (login = ADODataSet1.FieldByName('login').Value) and
        (pass = ADODataSet1.FieldByName('password').Value) then

      //при наличии совпадения
      begin
        Edit2.Clear;
        p := true;

        //проверка типа пользователя
        if login = 'teacher' then
        begin
          form3.ComboBox1.Items.Clear;
          ADOQuery1.SQL.Clear;

          //запрос всех существущих класоов
          ADOQuery1.SQL.Add('SELECT *FROM grade');
          ADOQuery1.Active := true;
          ADOQuery1.First;
          for J := 0 to ADOQuery1.RecordCount - 1 do
          begin
            form3.ComboBox1.Items.Add(ADOQuery1.FieldByName('grade').Value);
            ADOQuery1.Next;
          end;
          form3.Add;
          form3.ShowModal;
        end
        else
        begin
          form5.ADOQuery1.SQL.Clear;

          //запрос данных определенного пользователя
          form5.ADOQuery1.SQL.Add
            ('SELECT *FROM users WHERE login="' + login + '"');
          form5.refresh;
          form5.ShowModal;
        end;
      end;
      ADODataSet1.Next;
    end;

    //при отсутствии совпадений
    if p = false then
      showmessage('Invalid data!');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  ADOQuery1.SQL.Clear;

  //запрос классов
  ADOQuery1.SQL.Add('SELECT *FROM grade');
  ADOQuery1.Active := true;
  ADOQuery1.First;
  form2.ComboBox1.Items.Clear;
  for I := 0 to ADOQuery1.RecordCount - 1 do
  begin
    form2.ComboBox1.Items.Add(ADOQuery1.FieldByName('grade').Value);
    ADOQuery1.Next;
  end;
  form2.ShowModal;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  halt;
end;

end.

unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Button3: TButton;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit5, Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var i,count:integer;e:boolean;
begin
e:=false;
count:=0;
if (trim(edit2.Text)='') or (trim(edit3.Text)='') or (trim(edit4.Text)='') or (trim(edit5.Text)='') then showmessage('Fill out all the fields!') else
  begin
  for I := 1 to length(edit5.Text) do
  if edit5.Text[i]='@' then count:=count+1;
  if count<>1 then showmessage('Invalid e-mail!') else
    if length(edit4.Text)<>11 then showmessage('Invalid telephone number!') else     
    begin 
    for I := 1 to length(edit4.Text) do
    try  
    strtoint(edit4.Text[i]);
    except
    e:=True;
    showmessage('Invalid telephone number!');
    end;
    if e=false then
    try
    adoquery1.Parameters.ParamByName('login').Value:=unit1.login;
    adoquery1.Parameters.ParamByName('a').Value:=edit2.Text;
    adoquery1.Parameters.ParamByName('b').Value:=edit3.Text;
    adoquery1.Parameters.ParamByName('c').Value:=combobox1.Text;
    adoquery1.Parameters.ParamByName('d').Value:=edit4.Text;
    adoquery1.Parameters.ParamByName('e').Value:=edit5.Text;
    adoquery1.ExecSQL;
    showmessage('Done');
    close;
    except
    showmessage('Character limit exceeded!');
    end;
    end;
  end;

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
unit5.q:=false;
form5.ShowModal;
end;

end.

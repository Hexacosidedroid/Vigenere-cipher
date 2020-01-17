unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Xpman;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Const
s0='abcdefghijklmnopqrstuvwxyz';

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var
  i,j,k,a,s,d,f:integer;
  q,w,e:string;
begin
label1.Caption:='';
e:=s0+s0+'a';                                   // двойная строка
If edit2.Text='' then edit2.Text:='pass';
q:=Edit1.Text;
w:=Edit2.Text;
a:=length(q);
s:=length(w);
d:=a div s;
f:=a mod s;
for i:=1 to d do
  label1.Caption:=label1.Caption+w;
for i:=1 to f do
  label1.Caption:=label1.Caption+w[i];
For i:=1 to a do
  for j:=1 to 26 do                         // j - смещение
    if w[i] = s0[j] then
      begin
      for k:=1 to 26 do
        if k=j then Edit3.Text:=Edit3.Text+e[k];
      end;
end;

end.

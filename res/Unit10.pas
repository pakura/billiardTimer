unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm10 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
var
  i,j:integer;  s:string;
begin
if length(edit1.text)>3 then begin
   if (length(edit2.Text)>5) then begin
      if edit2.Text=edit3.Text then begin
         memo1.Lines.Clear;
         s:=edit1.Text+'%gbiufg8071gubsfg-919vfisupv';
         for i:=1 to length(s) do
            s[i]:=chr(ord(s[i])+32);
         memo1.Lines.Add(s);
         s:='asd+safas%gbiufg8071gubsfg-919vfisupv';
         for i:=1 to length(s) do
            s[i]:=chr(ord(s[i])+32);
         memo1.Lines.Add(s);
         s:=edit2.Text+'%gbiufg8071gubsfg-919vfisupv';
         for i:=1 to length(s) do
            s[i]:=chr(ord(s[i])+32);
         memo1.Lines.Add(s);
         s:='as1289nn%gbiufg8071gubsfg-919vfisupv';
         for i:=1 to length(s) do
            s[i]:=chr(ord(s[i])+32);
         memo1.Lines.Add(s);
         memo1.Lines.SaveToFile('admin.dat');
         Showmessage('Admin Account Successfull Created');
         close;
      end else
         Showmessage('password doesn''t match');
   end else
     Showmessage('Password must be more then 5 characters');
end else
   Showmessage('Name Must be more then 3 characters');
end;

end.

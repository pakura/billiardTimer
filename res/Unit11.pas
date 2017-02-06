unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm11 = class(TForm)
    bg: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    save: TImage;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;     id,pas:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm11.FormShow(Sender: TObject);
begin
edit1.Text:=form1.edit5.Text;
pas:=form1.edit6.text;
id:=form1.Edit5.Text;
end;

procedure TForm11.saveClick(Sender: TObject);
var
i,t:integer; s:string;
begin
  s:='';  t:=0;
   if edit1.Text<>id then begin
      if edit2.Text=pas then begin
         memo1.Lines.LoadFromFile('admin.dat');
         s:=edit1.Text+'%oih12obhkg*9p128';
         for i:=1 to length(s) do
            s[i]:=chr(ord(s[i])+32);
         memo1.Lines[0]:=s;
         memo1.Lines.SaveToFile('admin.dat');
         form1.Edit5.Text:=edit1.Text;
         inc(t);
      end else
         ShowMessage('Enter Password for change ID!');
   end;
   s:='';
   if edit3.Text<>'' then begin
      if edit2.Text=pas then begin
         if edit3.Text=edit4.Text then begin
            if length(edit3.Text)>5 then begin
               memo1.Lines.LoadFromFile('admin.dat');
               s:=edit3.Text+'%jbcq90bob1*0j';
               for i:=1 to length(s) do
                   s[i]:=chr(ord(s[i])+32);
               memo1.Lines[2]:=s;
               memo1.Lines.SaveToFile('admin.dat');
               form1.edit6.Text:=edit3.Text;
               inc(t);
            end else
              ShowMessage('Password must be more then 5 simbol!')
         end else
           ShowMessage('New Password doesn''t match!')
      end else
         ShowMessage('Enter Password for change Password!');
   end;
   if t>0 then begin
      Showmessage('Changes have been Saved!');
      close;
   end;
end;

end.

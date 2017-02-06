unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm9 = class(TForm)
    loginbg: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    loginbtn: TImage;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure loginbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;  id,pas,tid,tpas:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm9.FormActivate(Sender: TObject);
var
  i:shortint;
begin
   memo1.Lines.LoadFromFile('admin.dat');
   tid:=memo1.Lines[0];
   tpas:=memo1.Lines[2];
   for i:=1 to length(tid) do begin
      tid[i]:=chr(ord(tid[i])-32);
   end;
   for i:=1 to length(tpas) do begin
      tpas[i]:=chr(ord(tpas[i])-32);
   end;
end;

procedure TForm9.loginbtnClick(Sender: TObject);
var i:integer;
begin
   i:=1; id:=''; pas:='';
   while tid[i]<>'%' do begin
      id:=id+tid[i];
      inc(i);
   end;
   i:=1;
   while tpas[i]<>'%' do begin
      pas:=pas+tpas[i];
      inc(i);
   end;
   if (edit1.Text=id) and (edit2.Text=pas) then begin
      form1.historyframe.show;
      form1.historybtn.show;
      form1.clarehistorybtn.show;
      form1.historyback.Hide;
      form1.logoutbtn.Hide;
      form1.logoutbtn.show;
      form1.loginadmin.Checked:=true;
      form1.admin.Show;
      sleep(500);
      form1.Edit5.Text:=id;
      form1.Edit6.Text:=pas;
      close;
   end else begin
      ShowMessage('Id or Password is incorrect! Try again.');
      id:='';
      pas:='';
   end;
end;

end.

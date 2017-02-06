unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CPort;

type
  Ttable1form = class(TForm)
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  table1form: Ttable1form; 

implementation

uses Unit1;

{$R *.dfm}

procedure Ttable1form.Button1Click(Sender: TObject);
var
  time,i:integer; 
begin
   if ComboBox1.ItemIndex<>-1 then begin
      if ComboBox1.ItemIndex=0 then
         form1.edit1.text:='60';
      if ComboBox1.ItemIndex=1 then
         form1.edit1.text:='600';
      if ComboBox1.ItemIndex=2 then
         form1.edit1.text:='1200';
      if ComboBox1.ItemIndex=3 then
         form1.edit1.text:='1800';
      if ComboBox1.ItemIndex=4 then
         form1.edit1.text:='2400';
      if ComboBox1.ItemIndex=5 then
         form1.edit1.text:='3600';
      if ComboBox1.ItemIndex=6 then
         form1.edit1.text:='5400';
      if ComboBox1.ItemIndex=7 then
         form1.edit1.text:='7200';
      if ComboBox1.ItemIndex=7 then
         form1.edit1.text:='10800';
      form1.Timer1.enabled:=true;
      ComboBox1.ItemIndex:=-1;
      close;
   end else begin
      if (edit1.Text<>'') and (length(edit1.Text)<=3) then begin
        val(edit1.text, i, time);
           if time<>0 then
              ShowMessage('Time is not set correctly!')
           else begin
              form1.Edit1.Text:=inttostr(strtoint(edit1.Text)*60);
              form1.Timer1.enabled:=true;
              edit1.Text:='';
              close;
           end;
      end else
         ShowMessage('Set Time To Turn On Light!');
   end;
end;

procedure Ttable1form.FormShow(Sender: TObject);
begin
if form1.loginadmin.Checked=true then
   button3.Enabled:=true
else
   button3.Enabled:=false;
end;

procedure Ttable1form.Button3Click(Sender: TObject);
begin
   form1.switch10.Hide;
   form1.switch11.Show;
   form1.table1busy.Show;
   form1.table1free.Hide;
   form1.cash1label.Caption:='Free Time';
   form1.ComPort1.WriteStr('1');
   checkbox1.Checked:=true;
   form1.Timer6.Enabled:=true;
   close;
end;

procedure Ttable1form.Button2Click(Sender: TObject);
begin
   checkbox2.Checked:=true;
   form1.switch10.Hide;
   form1.switch11.Show;
   form1.table1busy.Show;
   form1.table1free.Hide;
   form1.cash1label.Caption:='VIP Time';
   form1.ComPort1.WriteStr('1');
   form1.Timer6.Enabled:=true;
   close;
end;

end.

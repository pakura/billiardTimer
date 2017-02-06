unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Ttable3form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
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
  table3form: Ttable3form;

implementation

uses Unit1;

{$R *.dfm}

procedure Ttable3form.Button1Click(Sender: TObject);
var
  time,i:integer; 
begin
   if ComboBox1.ItemIndex<>-1 then begin
      if ComboBox1.ItemIndex=0 then
         form1.edit3.text:='60';
      if ComboBox1.ItemIndex=1 then
         form1.edit3.text:='600';
      if ComboBox1.ItemIndex=2 then
         form1.edit3.text:='1200';
      if ComboBox1.ItemIndex=3 then
         form1.edit3.text:='1800';
      if ComboBox1.ItemIndex=4 then
         form1.edit3.text:='2400';
      if ComboBox1.ItemIndex=5 then
         form1.edit3.text:='3600';
      if ComboBox1.ItemIndex=6 then
         form1.edit3.text:='5400';
      if ComboBox1.ItemIndex=7 then
         form1.edit3.text:='7200';
      if ComboBox1.ItemIndex=7 then
         form1.edit3.text:='10800';
      form1.Timer3.enabled:=true;
      ComboBox1.ItemIndex:=-1;
      close;
   end else begin
      if (edit1.Text<>'') and (length(edit1.Text)<=3) then begin
        val(edit1.text, i, time);
           if time<>0 then
              ShowMessage('Time is not set correctly!')
           else begin
              form1.Edit3.Text:=inttostr(strtoint(edit1.Text)*60);
              form1.Timer3.enabled:=true;
              edit1.Text:='';
              close;
           end;
      end else
         ShowMessage('Set Time To Turn On Light!');
   end;
end;

procedure Ttable3form.FormShow(Sender: TObject);
begin
if form1.loginadmin.Checked=true then
   button3.Enabled:=true
else
   button3.Enabled:=false;
end;

procedure Ttable3form.Button3Click(Sender: TObject);
begin
   form1.switch30.Hide;
   form1.switch31.Show;
   form1.table3busy.Show;
   form1.table3free.Hide;
   form1.cash3label.Caption:='Free Time';
   form1.ComPort1.WriteStr('3');
   checkbox1.Checked:=true;
   form1.Timer8.Enabled:=true;
   close;
end;

procedure Ttable3form.Button2Click(Sender: TObject);
begin
 checkbox2.Checked:=true;
   form1.switch30.Hide;
   form1.switch31.Show;
   form1.table3busy.Show;
   form1.table3free.Hide;
   form1.cash3label.Caption:='VIP Time';
   form1.ComPort1.WriteStr('3');
   form1.Timer8.Enabled:=true;
   close;
end;

end.

program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit3 in '..\res\Unit3.pas' {table1form},
  Unit2 in '..\res\Unit2.pas' {keyform},
  Unit4 in 'Unit4.pas' {table2form},
  Unit5 in 'Unit5.pas' {table3form},
  Unit6 in 'Unit6.pas' {table4form},
  Unit8 in '..\res\Unit8.pas' {aboutform},
  Unit7 in 'Unit7.pas' {Form7},
  Unit9 in '..\res\Unit9.pas' {Form9},
  Unit10 in '..\res\Unit10.pas' {Form10},
  Unit11 in '..\res\Unit11.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Billiard Timer';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Ttable1form, table1form);
  Application.CreateForm(Ttable2form, table2form);
  Application.CreateForm(Ttable3form, table3form);
  Application.CreateForm(Ttable4form, table4form);
  Application.CreateForm(Taboutform, aboutform);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.

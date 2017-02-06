unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Taboutform = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  aboutform: Taboutform;

implementation

{$R *.dfm}

procedure Taboutform.Image2Click(Sender: TObject);
begin
close;
end;

end.

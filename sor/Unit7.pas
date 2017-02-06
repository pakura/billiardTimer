unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  TForm7 = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}



procedure TForm7.FormActivate(Sender: TObject);
var dir:string;
begin
getdir(0,dir);
webbrowser1.Navigate(dir+'\all.html');
end;

end.

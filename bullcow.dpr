program bullcow;

uses
  Vcl.Forms,
  Bull_and_cow in 'Bull_and_cow.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

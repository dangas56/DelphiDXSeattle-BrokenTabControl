program BrokenTabControlProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMain in 'FMain.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

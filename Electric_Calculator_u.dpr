program Electric_Calculator_u;

uses
  System.StartUpCopy,
  FMX.Forms,
  Electric_Calculator_p in 'Electric_Calculator_p.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

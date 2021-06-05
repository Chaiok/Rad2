program Project2;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  TovarForm in 'TovarForm.pas' {Form2},
  PostavchikForm in 'PostavchikForm.pas' {Form3},
  DostavkaForm in 'DostavkaForm.pas' {Form4},
  NacladnayForm in 'NacladnayForm.pas' {Form5};

{$R *.res}

begin
  ReportMemoryLeaksOnShutDown:=True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form);
  Application.CreateForm(TDataModule1, DM);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.

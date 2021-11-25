program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {BigPad},
  TOOLBAR in 'TOOLBAR.PAS' {ToolbarForm},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BigPad';
  Application.CreateForm(TBigPad, BigPad);
  Application.CreateForm(TToolbarForm, ToolbarForm);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

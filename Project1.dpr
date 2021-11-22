program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {BigPad},
  TOOLBAR in 'TOOLBAR.PAS' {ToolbarForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BigPad';
  Application.CreateForm(TBigPad, BigPad);
  Application.CreateForm(TToolbarForm, ToolbarForm);
  Application.Run;
end.

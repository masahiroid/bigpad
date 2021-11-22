unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdActns, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtActns, Vcl.BandActn,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TBigPad = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    FileOpen1: TFileOpen;
    FileOpen2: TFileOpen;
    N1: TMenuItem;
    O1: TMenuItem;
    FileSaveAs1: TFileSaveAs;
    A1_Save: TMenuItem;
    PrinterSetupDialog: TPrinterSetupDialog;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    PrintDialog: TPrintDialog;
    FileOpen3: TFileOpen;
    FilePrintSetup1: TFilePrintSetup;
    U1: TMenuItem;
    RichEdit1: TRichEdit;
    E1: TMenuItem;
    EditCut1: TEditCut;
    T1: TMenuItem;
    EditCopy1: TEditCopy;
    C1: TMenuItem;
    EditPaste1: TEditPaste;
    P1: TMenuItem;
    EditSelectAll1: TEditSelectAll;
    A2: TMenuItem;
    EditUndo1: TEditUndo;
    U2: TMenuItem;
    S1: TMenuItem;
    SearchFind1: TSearchFind;
    F1: TMenuItem;
    SearchFindNext1: TSearchFindNext;
    N2: TMenuItem;
    X1: TMenuItem;
    FileOpenWith1: TFileOpenWith;
    FileRun1: TFileRun;
    N3: TMenuItem;
    FilePageSetup1: TFilePageSetup;
    U3: TMenuItem;
    Action1: TAction;
    Action11: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    CustomizeActionBars1: TCustomizeActionBars;
    C2: TMenuItem;
    W1: TMenuItem;
    WindowClose1: TWindowClose;
    L1: TMenuItem;
    Action2: TAction;
    ToolBox_OnOFF: TMenuItem;
    H1: TMenuItem;
    SpeedBar: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    HelpContents1: THelpContents;
    C3: TMenuItem;
    procedure U1Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure A1_SaveClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Action11Click(Sender: TObject);
    procedure U2Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure ToolBox_OnOFFClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  BigPad: TBigPad;

implementation

uses TOOLBAR;

{$R *.dfm}

procedure TBigPad.A1_SaveClick(Sender: TObject);
begin
  SaveDialog.FileName := OpenDialog.FileName;
  if SaveDialog.Execute then
  RichEdit1.Lines.SaveToFile(SaveDialog.FileName);
end;

procedure TBigPad.Action11Click(Sender: TObject);
begin
  PrintDialog.Execute;
end;

procedure TBigPad.C1Click(Sender: TObject);
begin
  RichEdit1.CopyToClipboard;
end;

procedure TBigPad.N3Click(Sender: TObject);
begin
  RichEdit1.Clear;
end;

procedure TBigPad.O1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
  RichEdit1.Lines.LoadFromFile(OpenDialog.FileName);
end;

procedure TBigPad.P1Click(Sender: TObject);
begin
  RichEdit1.PasteFromClipboard;
end;

procedure TBigPad.SpeedButton1Click(Sender: TObject);
begin
  RichEdit1.Clear;
end;

procedure TBigPad.SpeedButton2Click(Sender: TObject);
begin
  BigPad.A1_SaveClick(Sender);
end;

procedure TBigPad.T1Click(Sender: TObject);
begin
  RichEdit1.CutToClipboard;
end;

procedure TBigPad.ToolBox_OnOFFClick(Sender: TObject);
begin
//if RestoreToolbar then
  Toolbar.ToolbarForm.show;
end;

procedure TBigPad.U1Click(Sender: TObject);
begin
  PrinterSetupDialog.Execute;
end;

procedure TBigPad.U2Click(Sender: TObject);
begin
  RichEdit1.Perform(Em_Undo, 0, 0);
end;

end.

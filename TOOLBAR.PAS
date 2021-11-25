unit Toolbar;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Buttons, Vcl.ComCtrls;

type
  TToolbarForm = class(TForm)
    CopyButton: TSpeedButton;
    ExitBtn: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    UndoButton: TSpeedButton;
    PasteButton: TSpeedButton;
    PrintBtn: TSpeedButton;
    PrintSetupBtn: TSpeedButton;
    SaveBtn: TSpeedButton;
    OpenBtn: TSpeedButton;
    CutButton: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure CutButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure OpenBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure PrintSetupBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;

var
  ToolbarForm: TToolbarForm;

implementation

uses Unit1;

{$R *.DFM}

procedure TToolbarForm.FormCreate(Sender: TObject);
begin
  Left := BigPad.BoundsRect.Right;
  if Left + Width > Screen.Width then
  Left := Screen.Width - Width;
  //Top := BigPad.BoundsRect.Top;
  //if Top + Height > Screen.Height then
  //Top := Screen.Height - Height;
  //SetFormParent(Self, BigPad.Handle);
  //ClientWidth := PrintSetUpBtn.Left + PrintSetUpBtn.Width + 3;
  Show;
end;

procedure TToolbarForm.CutButtonClick(Sender: TObject);
begin
  BigPad.Memo1.CutToClipboard;
  BigPad.SetFocus;
end;

procedure TToolbarForm.CopyButtonClick(Sender: TObject);
begin
  BigPad.Memo1.CopyToClipboard;
  BigPad.SetFocus;
end;

procedure TToolbarForm.PasteButtonClick(Sender: TObject);
begin
  BigPad.Memo1.PasteFromClipboard;
  BigPad.SetFocus;
end;

procedure TToolbarForm.UndoButtonClick(Sender: TObject);
begin
  BigPad.Memo1.Perform(Em_Undo, 0, 0);
  BigPad.SetFocus;
end;

procedure TToolbarForm.OpenBtnClick(Sender: TObject);
begin
//BigPad.OpenItemClick(Sender)
end;

procedure TToolbarForm.SaveBtnClick(Sender: TObject);
begin
  BigPad.A1_SaveClick(Sender);
end;

procedure TToolbarForm.PrintBtnClick(Sender: TObject);
begin
  BigPad.Action11Click(Sender);
end;

procedure TToolbarForm.PrintSetupBtnClick(Sender: TObject);
begin
//BigPad.PrintSetupItemClick(Sender)
end;

procedure TToolbarForm.ExitBtnClick(Sender: TObject);
begin
//BigPad.ExitItemClick(Sender)
end;

procedure TToolbarForm.FormHide(Sender: TObject);
begin
//BigPad.EditToolbar.Checked := False;
end;

procedure TToolbarForm.FormShow(Sender: TObject);
begin
//BigPad.EditToolbar.Checked := True;
end;

end.

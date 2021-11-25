unit Toolbar;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Buttons, Vcl.ComCtrls;

type
  TToolbarForm = class(TForm)
    CopyButton: TSpeedButton;
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
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure CutButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure OpenBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure PrintSetupBtnClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;

var
  ToolbarForm: TToolbarForm;

implementation

uses Unit1,Unit2;

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

procedure TToolbarForm.SpeedButton1Click(Sender: TObject);
begin
  var PText : string;
begin
  PText := '<p></p>';

  //BigPad.Memo1.Lines.Append();
  //BigPad.Memo1.Lines.Add(HText);
  BigPad.Memo1.Lines.Append(PText);
end;
end;

procedure TToolbarForm.SpeedButton2Click(Sender: TObject);
begin
  var HText : string;
begin
  HText := '<h></h>';

  //BigPad.Memo1.Lines.Append();
  //BigPad.Memo1.Lines.Add(HText);
  BigPad.Memo1.Lines.Append(HText);
end;
end;

procedure TToolbarForm.SpeedButton4Click(Sender: TObject);
begin
  var DIVText : string;
begin
  DIVText := '<div></div>';

  //BigPad.Memo1.Lines.Append();
  //BigPad.Memo1.Lines.Add(HText);
  BigPad.Memo1.Lines.Append(DIVText);
end;
end;

procedure TToolbarForm.SpeedButton5Click(Sender: TObject);
begin
  var PText : string;
begin
  PText := '<p></p>';

  //BigPad.Memo1.Lines.Append();
  //BigPad.Memo1.Lines.Add(HText);
  BigPad.Memo1.Lines.Append(PText);
end;
end;

procedure TToolbarForm.PrintBtnClick(Sender: TObject);
begin
  BigPad.Action11Click(Sender);
end;

procedure TToolbarForm.PrintSetupBtnClick(Sender: TObject);
begin
//BigPad.PrintSetupItemClick(Sender)
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

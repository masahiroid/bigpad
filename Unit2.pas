unit Unit2;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Unit1, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;
type
  TForm2 = class(TForm)
    DBMemo1: TDBMemo;
    Memo1: TMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var Form2: TForm2;
var HText : string;
var PText : string;
var DIVText : string;
var BODYText : string;
var _AText : string;

implementation
{$R *.dfm}
procedure TForm2.FormCreate(Sender: TObject);
begin
  Left := BigPad.BoundsRect.Right;
  if Left + Width > Screen.Width then
  Left := Screen.Width - Width;
  //Top := BigPad.BoundsRect.Top;
  //if Top + Height > Screen.Height then
  //Top := Screen.Height - Height;
  //SetFormParent(Self, BigPad.Handle);
  //ClientWidth := PrintSetUpBtn.Left + PrintSetUpBtn.Width + 3;
  //Show;
  Memo1.Clear;
  HText :='<h></h>';
  Memo1.Lines.add(HText);
  //DBMemo1.Clear;
  PText :='<p></p>';
  DBMemo1.Lines.add(PText);

  DIVText :='<div></div>';
  DBMemo2.Lines.add(DIVText);

  BODYText :='<body style="background: white;"></body>';
  DBMemo3.Lines.add(BODYText);

  _AText :='<a herf=""></a>';
  DBMemo4.Lines.add(_AText);

end;

end.

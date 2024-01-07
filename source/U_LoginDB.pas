unit U_LoginDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit,
  ExtCtrls, AdvAppStyler, AdvGlowButton,
  AdvPanel, SCControl, SCStdControls, StdCtrls, AdvReflectionImage;

type
  TLoginDBfrm = class(TForm)
    Label1: TLabel;
    edtDBHost: TcxTextEdit;
    Label2: TLabel;
    edtDBPort: TcxTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    SCPanel1: TSCPanel;
    lblHeaderComment: TLabel;
    lblDescription: TLabel;
    pnlHeader: TAdvPanel;
    apsLoginDB: TAdvPanelStyler;
    btnOK: TAdvGlowButton;
    afsLoginDB: TAdvFormStyler;
    btnCancel: TAdvGlowButton;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape8: TShape;
    edtDBName: TcxTextEdit;
    edtDBUser: TcxTextEdit;
    Shape9: TShape;
    Shape10: TShape;
    Label5: TLabel;
    edtDBPasswd: TcxTextEdit;
    procedure edtDBHostKeyPress(Sender: TObject; var Key: Char);
    procedure edtDBPortKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginDBfrm: TLoginDBfrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TLoginDBfrm.edtDBHostKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true)
end;

procedure TLoginDBfrm.edtDBPortKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ModalResult:= mrOK
end;

end.

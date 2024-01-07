unit U_ChangePassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,
  AdvAppStyler, AdvGlowButton, AdvPanel, EllipsLabel,
  SCControl, SCStdControls, StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, AdvReflectionImage;

type
  TChangePasswordFrm = class(TForm)
    edtOldPassword: TcxTextEdit;
    edtNewPassword: TcxTextEdit;
    edtConfirmPassword: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    SCPanel1: TSCPanel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    pnlHeader: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvFormStyler1: TAdvFormStyler;
    AdvReflectionImage1: TAdvReflectionImage;
    EllipsLabel1: TEllipsLabel;
    lblHeaderComment: TLabel;
    lblDescription: TLabel;
    lblComments: TLabel;
    procedure edtOldPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edtConfirmPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePasswordFrm: TChangePasswordFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TChangePasswordFrm.edtOldPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true)
end;

procedure TChangePasswordFrm.edtConfirmPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    ModalResult:= mrOK
end;

end.

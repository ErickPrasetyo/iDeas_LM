unit U_SetVoucher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, ExtCtrls,
  wwdbdatetimepicker,
  AdvPanel, AdvGlowButton, AdvAppStyler,
  StdCtrls, SCStdControls, SCControl, cxControls, cxContainer, cxEdit,
  cxTextEdit;

type
  TSetVoucherFrm = class(TForm)
    SCPanel1: TSCPanel;
    AdvPanel1: TAdvPanel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    Label23: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label24: TLabel;
    edtNoVocer: TcxTextEdit;
    edtNoMVocer: TcxTextEdit;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetVoucherFrm: TSetVoucherFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TSetVoucherFrm.btnOKClick(Sender: TObject);
begin
  if Trim(edtNoVocer.Text)='' then begin
     DM.MyMsg(mmInformation,'No Voucher Harus diisi','');
     Exit;
  end;

  if (Trim(edtNoMVocer.Text)='') or (Trim(edtNoMVocer.Text)='0') then begin
     DM.MyMsg(mmInformation,'Nilai Voucher Harus diisi','');
     Exit;
  end;

  ModalResult:= mrOk;
end;

end.

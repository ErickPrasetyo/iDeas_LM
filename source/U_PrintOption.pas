unit U_PrintOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, cxPC, DBCtrls,
  RzDBNav, SCControl, SCStdControls, ExtCtrls, AdvPanel, cxClasses,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvAppStyler, cxLabel,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, cxRadioGroup, RzPanel,
  wwDialog, wwidlg, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TPrintOptionFrm = class(TForm)
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    AdvPanel1: TAdvPanel;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    pgcKelompok: TcxPageControl;
    tabAR: TcxTabSheet;
    tabAP: TcxTabSheet;
    rgPilihan: TRzGroupBox;
    RB_C_SEMUA: TcxRadioButton;
    RB_C_PERCUSTOMER: TcxRadioButton;
    RB_C_PERSALES: TcxRadioButton;
    ECUSTOMER: TcxButtonEdit;
    ESALES: TcxButtonEdit;
    rgGrouping: TRzGroupBox;
    RB_G_SALES: TcxRadioButton;
    RB_G_CUSTOMER: TcxRadioButton;
    LookCustomer: TwwLookupDialog;
    LookSales: TwwLookupDialog;
    RzGroupBox1: TRzGroupBox;
    RB_AP_SEMUA: TcxRadioButton;
    RB_AP_SUPPLIER: TcxRadioButton;
    ESUPPLIER: TcxButtonEdit;
    LookSupplier: TwwLookupDialog;
    tabKB: TcxTabSheet;
    rgKBCetak: TRzGroupBox;
    RB_KB_Semua: TcxRadioButton;
    RB_KB_Pegawai: TcxRadioButton;
    EPEGAWAI: TcxButtonEdit;
    LookPegawai: TwwLookupDialog;
    RB_C_CENTHANG: TcxRadioButton;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure RB_C_SEMUAClick(Sender: TObject);
    procedure RB_C_PERCUSTOMERClick(Sender: TObject);
    procedure RB_C_PERSALESClick(Sender: TObject);
    procedure ECUSTOMERPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ESALESPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RB_AP_SEMUAClick(Sender: TObject);
    procedure RB_AP_SUPPLIERClick(Sender: TObject);
    procedure ESUPPLIERPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RB_KB_SemuaClick(Sender: TObject);
    procedure RB_KB_PegawaiClick(Sender: TObject);
    procedure EPEGAWAIPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    procedure createResult;

  public
    { Public declarations }
    vMode : integer;
    vPMode : String;
  end;

var
  PrintOptionFrm: TPrintOptionFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TPrintOptionFrm.FormShow(Sender: TObject);
begin
  pgcKelompok.HideTabs:= True;
  pgcKelompok.ActivePageIndex:= vMode;
end;

procedure TPrintOptionFrm.createResult;
begin
//  if  then

end;


procedure TPrintOptionFrm.btnSaveClick(Sender: TObject);
begin
   ModalResult:= mrOk;
end;

procedure TPrintOptionFrm.RB_C_SEMUAClick(Sender: TObject);
begin
    If RB_C_SEMUA.Checked Then Begin
       ECUSTOMER.Enabled := Not RB_C_SEMUA.Checked;
       ESALES.Enabled := Not RB_C_SEMUA.Checked;
       rgGrouping.Enabled := RB_C_SEMUA.Checked;
    End;
end;

procedure TPrintOptionFrm.RB_C_PERCUSTOMERClick(Sender: TObject);
begin
    If RB_C_PERCUSTOMER.Checked Then Begin
       ECUSTOMER.Enabled := RB_C_PERCUSTOMER.Checked;
       ESALES.Enabled := Not RB_C_PERCUSTOMER.Checked;
       rgGrouping.Enabled := Not RB_C_PERCUSTOMER.Checked;
    End;
end;

procedure TPrintOptionFrm.RB_C_PERSALESClick(Sender: TObject);
begin
    If RB_C_PERSALES.Checked Then Begin
       ECUSTOMER.Enabled := Not RB_C_PERSALES.Checked;
       ESALES.Enabled := RB_C_PERSALES.Checked;
       rgGrouping.Enabled := Not RB_C_PERSALES.Checked;
    End;
end;

procedure TPrintOptionFrm.ECUSTOMERPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     try
      DM.L_Customer.Close;
      DM.L_Customer.Open;
      if LookCustomer.Execute then
         ECUSTOMER.Text:= DM.L_Customerkd_rekanan.AsString;

     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
end;

procedure TPrintOptionFrm.ESALESPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     try
      DM.L_Division.Close;
      DM.L_Division.Open;
      if LookSales.Execute then
         ESALES.Text:= DM.L_Divisionid_division.AsString;

     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
end;

procedure TPrintOptionFrm.RB_AP_SEMUAClick(Sender: TObject);
begin
    If RB_AP_SEMUA.Checked Then Begin
       ESUPPLIER.Enabled := Not RB_AP_SEMUA.Checked;
    End;
end;

procedure TPrintOptionFrm.RB_AP_SUPPLIERClick(Sender: TObject);
begin
    If RB_AP_SUPPLIER.Checked Then Begin
       ESUPPLIER.Enabled := RB_AP_SUPPLIER.Checked;
    End;
end;

procedure TPrintOptionFrm.ESUPPLIERPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     try
      DM.L_Supplier.Close;
      DM.L_Supplier.Open;
      if LookSupplier.Execute then
         ESUPPLIER.Text:= DM.L_Supplierkd_rekanan.AsString;

     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
end;

procedure TPrintOptionFrm.RB_KB_SemuaClick(Sender: TObject);
begin
    If RB_KB_Semua.Checked Then Begin
       EPEGAWAI.Enabled := Not RB_KB_Semua.Checked;
    End;
end;

procedure TPrintOptionFrm.RB_KB_PegawaiClick(Sender: TObject);
begin
    If RB_KB_Pegawai.Checked Then Begin
       EPEGAWAI.Enabled := RB_KB_Pegawai.Checked;
    End;
end;

procedure TPrintOptionFrm.EPEGAWAIPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     try
      DM.L_Pegawai.Close;
      DM.L_Pegawai.Open;
      if LookPegawai.Execute then
         EPEGAWAI.Text:= DM.L_Pegawaink.AsString;

     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
end;

end.
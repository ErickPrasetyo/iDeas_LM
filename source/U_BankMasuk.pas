unit U_BankMasuk;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox,
  cxEditRepositoryItems, cxDBEditRepository, frxClass, frxDBSet, ZDataset,
  kbmMemTable, wwDialog, wwidlg, AdvToolBar, AdvToolBarStylers, ZSequence,
  ZAbstractRODataset, ZAbstractDataset, ActnList, cxGridBandedTableView,
  cxGridTableView, AdvPanel, AdvAppStyler, cxGridDBBandedTableView,
  DBCtrls, ExtCtrls, AdvGlowButton, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBLabel, cxMemo, cxDBEdit, cxButtonEdit,
  cxDropDownEdit, cxGroupBox, RzPanel, cxTextEdit, cxMaskEdit, cxCalendar,
  cxContainer, StdCtrls, wwdbdatetimepicker, SCControl, SCStdControls,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, SCGraphicButton,
  SCDbNavButton, AdvReflectionImage, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TBankMasukFrm = class(TForm)
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actSave: TAction;
    actCancel: TAction;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    pgTransaction: TcxPageControl;
    tsBrowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    dsMaster: TDataSource;
    Master: TZQuery;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdlvlMaster: TcxGridLevel;
    pnlMaster: TSCPanel;
    Label5: TLabel;
    edtDateEdit: TcxDBDateEdit;
    edtId_SO: TcxDBTextEdit;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    dbagbAddDetail: TDBAdvGlowButton;
    dbagbDeleteDetail: TDBAdvGlowButton;
    dbagbEditDetail: TDBAdvGlowButton;
    dbagbSaveDetail: TDBAdvGlowButton;
    dbagbCancelDetail: TDBAdvGlowButton;
    dbagbRefreshDetail: TDBAdvGlowButton;
    Detail: TZQuery;
    dsDetail: TDataSource;
    Shape7: TShape;
    Shape8: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label1: TLabel;
    RzGroupBox2: TRzGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    sq_Payment: TZSequence;
    qryGet_BR_Number: TZQuery;
    Shape5: TShape;
    Shape6: TShape;
    ATBos: TAdvToolBarOfficeStyler;
    SCPanel1: TSCPanel;
    pnlPrepared: TPanel;
    LblL_Prepared: TLabel;
    dbt_UserPrepared: TDBText;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    pnlApproved: TPanel;
    LbL_Approved_1: TLabel;
    dbt_UserApproved_1: TDBText;
    lblApprover_1: TLabel;
    _DB_Name_4: TDBText;
    pnlReviewed_1: TPanel;
    LblL_Reviewed_1: TLabel;
    dbt_UserReviewed_1: TDBText;
    lblReviewer_1: TLabel;
    _DB_Name_2: TDBText;
    LookUpSOReviewer: TwwLookupDialog;
    LookUpSOApprover: TwwLookupDialog;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    edtRemarks: TcxDBMemo;
    actPrint: TAction;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    QDocDistribute: TZReadOnlyQuery;
    QDocDistributedoc_ditribution: TStringField;
    qrySubTotal: TZReadOnlyQuery;
    qrySubTotalsub_total: TFloatField;
    Detailid_payment: TLargeintField;
    Detailno_reff: TStringField;
    Detailpembayaran: TFloatField;
    Detailsisa: TFloatField;
    Detaildibayar: TFloatField;
    Detailid_cc_project: TStringField;
    Detailnomor: TIntegerField;
    Detaildescription: TStringField;
    grddbtvMasterid_payment: TcxGridDBColumn;
    grddbtvMasterdt_payment: TcxGridDBColumn;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    grddbtvMasterno_payment: TcxGridDBColumn;
    grddbtvMasterno_bukti: TcxGridDBColumn;
    grdDetail: TcxGrid;
    grdDetailDBBTV: TcxGridDBBandedTableView;
    grdlvl_Detail: TcxGridLevel;
    grdDetailDBBTVno_reff: TcxGridDBBandedColumn;
    grdDetailDBBTVpembayaran: TcxGridDBBandedColumn;
    grdDetailDBBTVsisa: TcxGridDBBandedColumn;
    grdDetailDBBTVdibayar: TcxGridDBBandedColumn;
    grdDetailDBBTVid_rek_gl: TcxGridDBBandedColumn;
    grdDetailDBBTVnomor: TcxGridDBBandedColumn;
    grdDetailDBBTVdescription: TcxGridDBBandedColumn;
    edtIdxNo: TcxDBTextEdit;
    Label6: TLabel;
    L_ID_REK_GL: TZReadOnlyQuery;
    qryGet_BR_Numberbr_number: TStringField;
    qryGET_NO_REFF: TZQuery;
    qryGET_NO_REFFreff_number: TStringField;
    qryUpdate: TZReadOnlyQuery;
    Label8: TLabel;
    edtNoCekBGTT: TcxDBTextEdit;
    Label10: TLabel;
    Label9: TLabel;
    edtDueDate: TcxDBDateEdit;
    Detailid_rek_gl: TStringField;
    Masterid_payment: TLargeintField;
    Masterdt_payment: TDateTimeField;
    Masterdue_date: TDateTimeField;
    Masterid_trans: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Masterno_payment: TStringField;
    Masternominal: TFloatField;
    Masteriscair: TStringField;
    Masterdt_cair: TDateTimeField;
    Masteristolak: TStringField;
    Masterbank: TStringField;
    Masterno_cek_bg_tt: TStringField;
    Masteran: TStringField;
    Masterno_bkbb: TStringField;
    Masterid_rek_gl: TStringField;
    Masterjns_ttbg: TStringField;
    Masterid_curr: TStringField;
    Masterkurs: TFloatField;
    Masterno_bukti: TStringField;
    Masterprepared_by: TStringField;
    Masterdt_prepared: TDateTimeField;
    Masterreviewed_by_1: TStringField;
    Masterapproved_by_1: TStringField;
    Masterremarks: TStringField;
    Masterlreviewer: TStringField;
    Masterlapprover: TStringField;
    Masterlpreparer: TStringField;
    Masterlrekening: TStringField;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnClose: TSCButton;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemDetail: TkbmMemTable;
    MemDetailno_reff: TStringField;
    MemDetaildibayar: TFloatField;
    MemDetailid_rek_gl: TStringField;
    MemDetailid_cc_project: TStringField;
    MemDetailnomor: TIntegerField;
    MemDetaildescription: TStringField;
    MemDetaildibayar_str: TStringField;
    MemMaster: TkbmMemTable;
    MemMasterremark: TStringField;
    MemMasterno_payment: TStringField;
    MemMasterbank: TStringField;
    MemMasteran: TStringField;
    MemMasteremployee: TStringField;
    MemMasterid_curr: TStringField;
    MemMasterno_bukti: TStringField;
    MemMasterid_cc_project: TStringField;
    MemMastercaption: TStringField;
    MemMasterdated: TStringField;
    MemMastersupplier: TStringField;
    MemMasterterbilang: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterprepared_name: TStringField;
    MemMasterreviewed_name_1: TStringField;
    MemMasterapproved_name_1: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterdistribusi_document: TStringField;
    MemMasterprinted_by: TStringField;
    MemMastermodel: TStringField;
    MemMasterdt_payment: TStringField;
    MemMasterposted: TStringField;
    MemMasterkurs: TStringField;
    MemMastertotal_str: TStringField;
    frPR: TfrxReport;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    L_ID_REK_GLdescriptions: TStringField;
    L_ID_REK_GLid_rek_gl: TStringField;
    Label13: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label3: TLabel;
    cxGroupBox3: TcxGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cdblName: TcxDBLabel;
    cdblAddress: TcxDBLabel;
    CBJenis: TcxDBComboBox;
    Masteralamat_rekanan: TStringField;
    edtRekGL: TcxDBLookupComboBox;
    L_ARUS_KAS: TZReadOnlyQuery;
    L_ARUS_KASid_arus: TStringField;
    L_ARUS_KASdeskripsi: TStringField;
    dsL_ARUS_KAS: TDataSource;
    dsL_ID_REK_GL: TDataSource;
    dsL_ID_REK_BANK: TDataSource;
    L_ID_REK_BANK: TZReadOnlyQuery;
    L_ID_REK_BANKid_rek_gl: TStringField;
    L_ID_REK_BANKdescriptions: TStringField;
    Detailid_arus: TStringField;
    cxStyle5: TcxStyle;
    ER: TcxEditRepository;
    ER_LCB_REFF: TcxEditRepositoryLookupComboBoxItem;
    ER_EDT: TcxEditRepositoryTextItem;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    dsqBrowse: TDataSource;
    qBrowse: TZReadOnlyQuery;
    qBrowseid_payment: TLargeintField;
    qBrowseno_payment: TStringField;
    qBrowsedt_payment: TDateTimeField;
    qBrowseid_rek_gl: TStringField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsenama_rekanan: TStringField;
    grddbtvMasterid_rek_gl: TcxGridDBColumn;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_CC: TcxEditRepositoryLookupComboBoxItem;
    qBrowseusr_post: TStringField;
    qBrowsedt_post: TDateTimeField;
    ER_LCB_ARUS: TcxEditRepositoryLookupComboBoxItem;
    Detailnama_rekening: TStringField;
    grdDetailDBBTVnama_rekening: TcxGridDBBandedColumn;
    Masterid_cc_project: TStringField;
    Masterreviewed_by_2: TStringField;
    Masterkd_rekanan: TStringField;
    Masterusr_post: TStringField;
    Masterdt_post: TDateTimeField;
    Detailno_bukti: TStringField;
    Detailno_payment: TStringField;
    Detailkd_rekanan: TStringField;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Masterjns_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    dsJenisRekanan: TDataSource;
    edtNoCust: TcxDBButtonEdit;
    grddbtvMasterdibayar: TcxGridDBColumn;
    qryRekanan: TZReadOnlyQuery;
    qryRekanankd_rekanan: TStringField;
    qryRekanannama_rekanan: TStringField;
    Label7: TLabel;
    edtNoKasirNonTunai: TcxDBButtonEdit;
    LookRekanan: TwwLookupDialog;
    LookKasirNonTunai: TwwLookupDialog;
    qryKasirNonTunai: TZReadOnlyQuery;
    qryKasirNonTunaino_kas_kecil: TStringField;
    qryKasirNonTunaiatas_nama: TStringField;
    qryKasirNonTunaidt_kas_kecil: TDateTimeField;
    qryKasirNonTunaino_reff: TStringField;
    qryKasirNonTunaidiskripsi: TStringField;
    qryKasirNonTunaikd_rekanan: TStringField;
    qryKasirNonTunainama_rekanan: TStringField;
    qryKasirNonTunaino_cek_bg_tt: TStringField;
    qryKasirNonTunaibank: TStringField;
    qryKasirNonTunaiid_kas_kecil_detail: TLargeintField;
    qryKasirNonTunaidibayar: TFloatField;
    qryKasirNonTunainilai_nota: TFloatField;
    qryKasirNonTunaidt_biaya: TDateTimeField;
    qryKasirNonTunaiid_rek_gl: TStringField;
    Detailid_kas_kecil_detail: TLargeintField;
    qryKasirNonTunaino_bukti: TStringField;
    qBrowseno_bukti: TStringField;
    grddbtvMasterno_bukti1: TcxGridDBColumn;
    qryCek: TZReadOnlyQuery;
    qryCekvcount: TLargeintField;
    sq_payment_detail: TZSequence;
    Detailid_payment_detail: TLargeintField;
    L_Nota: TZReadOnlyQuery;
    dsL_Nota: TDataSource;
    btnFirst: TSCNavButton;
    btnPrior: TSCNavButton;
    btnNext: TSCNavButton;
    btnLast: TSCNavButton;
    L_Notano_nota: TStringField;
    L_Notadt_nota: TDateTimeField;
    L_Notaremarks: TStringField;
    L_Notano_bukti: TStringField;
    L_Notakd_rekanan: TStringField;
    L_Notanama_rekanan: TStringField;
    L_Notadt_jth_tempo: TDateTimeField;
    L_Notaid_rek_gl: TStringField;
    L_Notatotal: TFloatField;
    L_Notapembayaran: TFloatField;
    L_Notasisa: TFloatField;
    qBrowsenominal: TFloatField;
    Mastersubtotal: TFloatField;
    Masterselisih: TFloatField;
    Label14: TLabel;
    Lblselisih: TLabel;
    edtNominal: TcxDBTextEdit;
    edtSelisih: TcxDBLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure pgTransactionPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure grdDetailEnter(Sender: TObject);
    procedure DetailNewRecord(DataSet: TDataSet);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure pgTransactionChange(Sender: TObject);
    procedure grddbtvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DetailBeforeInsert(DataSet: TDataSet);
    procedure LblL_Reviewed_1Click(Sender: TObject);
    procedure LbL_Approved_1Click(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure DetailBeforeEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure DetailBeforePost(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure edtRekGLEnter(Sender: TObject);
    procedure edtRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure grdDetailDBBTVno_reffGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure ER_LCB_REFFPropertiesCloseUp(Sender: TObject);
    procedure grdDetailDBBTVid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDetailDBBTVid_cc_projectGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
    procedure grdDetailDBBTVid_arusGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure edtJenisPropertiesCloseUp(Sender: TObject);
    procedure edtNoCustPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtNoKasirNonTunaiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnFirstClick(Sender: TObject);
    procedure MasterCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vjns_transaksi, vjudul, vNoPayment : string;
    vtag : integer;
    DBMode: TDBMode;
    vSubTotal : Single;
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;

  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);
var
  BankMasukFrm: TBankMasukFrm;

implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}
procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);
var sts_dlg: TfrmStatus_Dialog;
begin
   try
      sts_dlg:= TfrmStatus_Dialog.Create(Application);
      sts_dlg.Reset_Progress;
      sts_dlg.Set_Min(1);
      sts_dlg.Set_Max(9);
      sts_dlg.Set_Status('Please wait, Execute action ...!!!');
      sts_dlg.Show;
      try
        BankMasukFrm := TBankMasukFrm.Create(Application);
        sts_dlg.Progress_It;
        with BankMasukFrm do begin
          vjns_transaksi:= ptransaksi;
          vtag:= ptag;
          DBMode:= dmNone;
          try
            DM.L_User.Close;
            DM.L_User.Open;
            sts_dlg.Progress_It;
            L_ID_REK_GL.Close;
            L_ID_REK_GL.Open;
            sts_dlg.Progress_It;
            L_ID_REK_BANK.Close;
            L_ID_REK_BANK.Open;
            sts_dlg.Progress_It;
            DM.L_JenisRekanan.Close;
            DM.L_JenisRekanan.Open;
            sts_dlg.Progress_It;
//            L_COST_CENTER.Close;
//            L_COST_CENTER.Open;
//            sts_dlg.Progress_It;
            DM.L_Rekanan.Close;
            DM.L_Rekanan.Open;
            sts_dlg.Progress_It;
            qBrowse.Close;
            qBrowse.Open;
            sts_dlg.Progress_It;
            Detail.Close;
            DBMode:= dmBrowse;
          except
            on E: Exception do begin
              DM.MyMsg(mmError,'Error has been encountered !',E.Message)
            end
          end;
          UpdateView;
          vjudul:= pNamaMenu;
          lblHeader1.Caption:= UpperCase(pNamaMenu);
          Caption:= pNamaMenu;
          Show;
        end;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;
   finally
      sts_dlg.Free;
   end;
end;

procedure TBankMasukFrm.CloneDetail;
begin
  vSubTotal:= 0;
  Detail.DisableControls;
  try
    try
      kmtCheckDetail.Close;
      kmtCheckDetail.Open;
      Detail.First;
      while not Detail.Eof do begin
        kmtCheckDetail.Append;
        kmtCheckDetailid_item.AsString:= Detailno_reff.AsString;
        kmtCheckDetail.Post;
        vSubTotal:= vSubTotal+Detaildibayar.AsFloat;
        Detail.Next
      end;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  finally
    Detail.EnableControls;
  end
end;

function TBankMasukFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

function TBankMasukFrm.CheckEditRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';

  if DM.UserConnect<>Masterusr_ins.AsString then begin
    msg:= 'This document is created by : '+Masterusr_ins.AsString+#13#10+
          'You have no right to edit.';
    Result:= False;
    Exit
  end;


  if Trim(Masterispost.AsString)='1' then begin
    msg:= 'This document has been Posted '+#13#10+'Unpost First !';
    Result:= False;
    Exit
  end;

end;

function TBankMasukFrm.CheckDeleteRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';

  if DM.UserConnect<>Masterusr_ins.AsString then begin
    msg:= 'This document is created by '+Masterusr_ins.AsString+'. You have no right to delete.';
    Result:= False;
    Exit
  end;


  if Trim(Masterispost.AsString)='1' then begin
    msg:= 'This document has been Posted !'+#13#10+'Unpost First !';
    Result:= False;
    Exit
  end;


end;

procedure TBankMasukFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TBankMasukFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Changes has not saved yet !','Please save/cancel any changes first before exit.')
end;

procedure TBankMasukFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TBankMasukFrm.actAddExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;
  vNoPayment:= '';
  try
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_payment').Value:= -1;
    Detail.Open;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TBankMasukFrm.actEditExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  vNoPayment:= Masterno_payment.AsString;   
  try
    Master.Edit;
    DBMode:= dmEdit;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TBankMasukFrm.actDeleteExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  DM.StartTransaction;
  try
    Master.Edit;
    Masterisdelete.AsString:= '1';
    Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;
    DM.CommitTransaction;
    qBrowse.Refresh;
    DBMode:= dmBrowse;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DBMode:= dmNone;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TBankMasukFrm.actRefreshExecute(Sender: TObject);
begin
  DBMode:= dmNone;
  try
    qBrowse.Close;
    qBrowse.Open;
    DBMode:= dmBrowse;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TBankMasukFrm.actSaveExecute(Sender: TObject);
begin

 if (MessageBox(0, PChar('Peringatan ! '+#13#10+
//                            'Sekali disimpan, Dokumen ini tidak bisa dikoreksi.'+#13#10+
                            'Apakah data yang Anda masukkan sudah benar?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  DM.StartTransaction;
  try

    if Masterno_payment.AsString='' then begin
        qryGet_BR_Number.Close;
        qryGet_BR_Number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
        qryGet_BR_Number.Params.ParamByName('ptgl').AsString:= FormatDateTime('dd-mm-yyyy',Masterdt_payment.AsDateTime);
        qryGet_BR_Number.Open;
        if Master.State=dsBrowse then Master.Edit;
        Masterno_payment.AsString:= qryGet_BR_Numberbr_number.AsString;
    end
    else begin
       if Masterno_payment.AsString<>vNoPayment then begin
           qryCek.Close;
           qryCek.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
           qryCek.Params.ParamByName('pnomor').AsString:= Masterno_payment.AsString;
           qryCek.Open;
           if qryCekvcount.AsInteger>0 then begin
              DM.MyMsg(mmInformation,'Nomor Bank Masuk Sudah ada !','');
              Exit;
           end;
       end;
    end;

    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit)  then
        Detail.Post;
    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;

    qrySubTotal.Close;
    qrySubTotal.Params.ParamByName('pid_payment').Value:= Masterid_payment.Value;
    qrySubTotal.Open;

    DM.vSysDate.Close;
    DM.vSysDate.Open;

    Master.Edit;
    if UpperCase(Trim(Masterjns_ttbg.AsString))='TT' then
       Masteriscair.AsString:='1';
    Masternominal.AsFloat:= qrySubTotalsub_total.AsFloat;
//    Masterispost.AsString:='1';
    Masterdt_post.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
    Masterusr_post.AsString:= DM.UserConnect;
    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;

    DM.CommitTransaction;
    qBrowse.Refresh;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TBankMasukFrm.actCancelExecute(Sender: TObject);
begin
  try
    Detail.Cancel;
    Master.Cancel;
    Detail.CancelUpdates;
    Master.CancelUpdates;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  DBMode:= dmBrowse;
  UpdateView;
  pgTransaction.ActivePageIndex := 0;
end;

procedure TBankMasukFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    pgTransaction.ActivePageIndex := 0;
    btnFirst.Enabled:= False;
    btnPrior.Enabled:= False;
    btnNext.Enabled:= False;
    btnLast.Enabled:= False;
    btnAdd.Visible:= True;
    btnAdd.Enabled:= False;
    btnEdit.Visible:= True;
    btnEdit.Enabled:= False;
    btnDelete.Visible:= True;
    btnDelete.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnSave.Visible:= False;
    btnCancel.Visible:= False;
    adpDetailNavigator.Visible:= False;
  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := qBrowse.RecordCount=0;

    if isBrowse then
      pgTransaction.ActivePageIndex := 0
    else
      pgTransaction.ActivePageIndex := 1;

    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled:= not isEmpty and accprint;
    LblL_Reviewed_1.Enabled:= not isBrowse;
    LbL_Approved_1.Enabled:= not isBrowse;

    edtRekGL.Properties.ReadOnly := isBrowse;
    edtRekGL.Properties.Buttons[0].Visible:= not isBrowse;
    edtNoCust.Properties.ReadOnly:= isBrowse;
    edtNoCust.Properties.Buttons[0].Visible:= not isBrowse;
    edtNoKasirNonTunai.Properties.ReadOnly:= isBrowse;
    edtNoKasirNonTunai.Properties.Buttons[0].Visible:= not isBrowse;

    CBJenis.Properties.ReadOnly:= isBrowse;
    CBJenis.Properties.Buttons[0].Visible:= not isBrowse;
    
    edtRemarks.Properties.ReadOnly:= isBrowse;
    edtNoCekBGTT.Properties.ReadOnly:= isBrowse;
//    edtAN.Properties.ReadOnly:= isBrowse;
    edtDueDate.Properties.ReadOnly:= isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;

    grdDetailDBBTV.OptionsData.Editing:=not isBrowse;
    grdDetailDBBTV.OptionsData.Appending:=not isBrowse;
    grdDetailDBBTV.OptionsData.Deleting:=not isBrowse;
  end;
end;

procedure TBankMasukFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TBankMasukFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;

  try
    if L_ID_REK_GL.State=dsInactive then begin
       L_ID_REK_GL.Close;
       L_ID_REK_GL.Open;
    end;

    if L_ARUS_KAS.State=dsInactive then begin
       L_ARUS_KAS.Close;
       L_ARUS_KAS.Open;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;  
end;

procedure TBankMasukFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_payment.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Masterdt_payment.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masteriscair.AsString:= '0';
   Masteristolak.AsString:= '0';
   Masterid_trans.AsString := vjns_transaksi;
   Masternominal.AsFloat:= 0;
   Masterkurs.AsFloat:= 1;
   Masterid_curr.AsString:= 'IDR';

   DM.L_Transaction.Close;
   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi ;
   DM.L_Transaction.Open;
   Masterprepared_by.AsString:= DM.UserConnect;
//   Masterreviewed_by_1.AsString:= DM.L_Transactionvuser_review.AsString;
//   Masterreviewed_by_2.AsString:= DM.L_Transactionvuser_review2.AsString;
//   Masterapproved_by_1.AsString:= DM.L_Transactionvuser_approve.AsString;
//   Masterapproved_by_2.AsString:= DM.L_Transactionvuser_approve2.AsString;

end;

procedure TBankMasukFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_payment.AsLargeInt:= Masterid_payment.AsLargeInt;
  Detailid_rek_gl.AsString:=Masterid_rek_gl.AsString;
  Detailid_arus.AsString:= '101';
  Detailpembayaran.AsFloat:= 0;
  Detailsisa.AsFloat:= 0;
  Detaildibayar.AsFloat:= 0;
//  Detailno_bukti.AsString:= Masterno_bukti.AsString;
  if Detail.RecordCount<>0 then
    Detailnomor.AsInteger:= Detail.RecordCount + 1
  else
    Detailnomor.AsInteger:= 1;
end;

procedure TBankMasukFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
     Masterkd_rekanan.Clear;


  if Masterdt_payment.IsNull or (Trim(Masterdt_payment.AsString)='') then
     raise Exception.Create('TANGGAL Harus diisi !')
  else
  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
     raise Exception.Create('ID REK GL harus diisi !')
  else
  if Masterkurs.IsNull or (Masterkurs.AsFloat=0) then
     raise Exception.Create('Kurs harus diisi !')
  else
  if Masterid_curr.IsNull or (Trim(Masterid_curr.AsString)='') then
     raise Exception.Create('Mata Uang harus diisi !')
  else
  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
     raise Exception.Create('Account ID harus diisi !')
  else
  if Masterno_cek_bg_tt.IsNull or (Trim(Masterno_cek_bg_tt.AsString)='') then
     raise Exception.Create('No. Cek/BG/TT harus diisi !')
  else
  if Masterjns_ttbg.IsNull or (Trim(Masterjns_ttbg.AsString)='') then
     raise Exception.Create('Jenis Cek/BG/TT harus diisi !')
  else
  if Masterdue_date.IsNull or (Trim(Masterdue_date.AsString)='') then
     raise Exception.Create('Jatuh Tempo harus diisi !');

  if (Trim(Masterjns_ttbg.AsString)<>'TT') AND (Trim(Masterjns_ttbg.AsString)<>'CEK/BG') then begin
      Raise Exception.Create('JENIS HARUS TT atau CEK/BG');
  end;

   if (Masterjns_ttbg.AsString='TT') and (Masteriscair.AsString='0') then
      Masteriscair.AsString:= '1' ;

  if (trim(Masterno_bukti.AsString)='') then Masterno_bukti.Clear;

  if Master.State=dsInsert then begin
    Masterid_payment.AsLargeInt:= sq_Payment.GetNextValue;

    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_payment.AsLargeInt= -1 then
    raise Exception.Create('There is internal error (id_payment not set). All input aborted !');
end;

procedure TBankMasukFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_payment').Value:= Masterid_payment.Value;
     Detail.Open;
  end;
end;

procedure TBankMasukFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TBankMasukFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TBankMasukFrm.LblL_Reviewed_1Click(Sender: TObject);
begin
  if Master.RecordCount=0 then
    Exit;

  if not (Detail.State=dsBrowse) then begin
    MessageBox(0, 'Payment Detail not saved yet !, Please Save it first.', 'Warning', MB_ICONWARNING or MB_OK);
    Exit
  end;
  try
    DM.LReviewer.Close;
    DM.LReviewer.Params.ParamByName('ptag').Value:= vtag;
    DM.LReviewer.Open;
    if LookUpSOReviewer.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       Masterreviewed_by_1.AsString:= DM.LReviewervuser.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TBankMasukFrm.LbL_Approved_1Click(Sender: TObject);
begin
  if Master.RecordCount=0 then
    Exit;

  if not (Detail.State=dsBrowse) then begin
    MessageBox(0, 'Payment Detail not saved yet !, Please Save it first.', 'Warning', MB_ICONWARNING or MB_OK);
    Exit
  end;
  try
    with DM.LApprover do begin
      Close;
      ParamByName('ptag').Value:= vtag;
      Open;
    end;

    if LookUpSOApprover.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       Masterapproved_by_1.AsString:= DM.LApprovervuser.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TBankMasukFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.ParamByName('id_payment').Value:= qBrowseid_payment.AsLargeInt;
end;

procedure TBankMasukFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
    if Master.State<>dsBrowse then
       Master.Post;
end;

procedure TBankMasukFrm.actPrintExecute(Sender: TObject);
var i, row_count: Integer;
begin
  if Master.RecordCount=0 then
     Exit;

   DM.L_Perusahaan.Close;
   DM.L_Perusahaan.Open;

   MemInfoPerusahaan.Close;
   MemInfoPerusahaan.Open;
   MemInfoPerusahaan.Append;
   MemInfoPerusahaannama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
   MemInfoPerusahaanalamat_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString;
   MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.L_Perusahaanphone.AsString;
   MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.L_Perusahaanfax.AsString;
   MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaancity.AsString;
   MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
   MemInfoPerusahaan.Post;

//  DM.QDocDistribute.Close;
//  DM.QDocDistribute.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
//  DM.QDocDistribute.Open;

  MemMaster.Close;
  MemMaster.Open;
  MemMaster.Append;
  MemMasterno_payment.AsString:= Masterno_payment.AsString;
  MemMasterprepared_name.AsString:= Masterlpreparer.AsString;
  MemMasterreviewed_name_1.AsString:= Masterlreviewer.AsString;
  MemMasterapproved_name_1.AsString:= Masterlapprover.AsString;
  MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
  MemMastermodel.AsString:= 'BKM-'+vjns_transaksi;
  MemMasterdistribusi_document.AsString:= '';
  MemMastersupplier.AsString:= Masternama_rekanan.AsString;
//  MemMasterid_cc_project.AsString:= Masterid_cc_project.AsString;
  MemMasterremark.AsString:= Masterremarks.AsString;
  MemMastercaption.AsString:= UpperCase(vjudul);
//  MemMasterid_cc_project.AsString:= Masterid_cc_project.AsString;
  MemMasterid_curr.AsString:= Masterid_curr.AsString;
  MemMasterkurs.AsString:= FormatFloat('0.0,0', Masterkurs.AsFloat);
  DM.MyKonversi1.Nilai:= Masternominal.AsFloat;
  MemMasterterbilang.AsString:= DM.MyKonversi1.HasilKonversi;
  MemMastertotal_str.AsString:= FormatFloat('0.0,0', Masternominal.AsFloat);


  if Masterispost.AsString='1' then MemMasterposted.AsString:= 'POSTED'
  else MemMasterposted.AsString:= '';

  if Masterdt_payment.IsNull then MemMasterdt_payment.AsString:= ''
  else MemMasterdt_payment.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_payment.AsDateTime);

  if Masterdt_prepared.IsNull then MemMasterdt_prepared.AsString:= 'TANGGAL : '
  else MemMasterdt_prepared.AsString:= 'TANGGAL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_prepared.AsDateTime);

//  if Masterdt_reviewed_by_1.IsNull then MemMasterdt_reviewed_1.AsString:= 'TANGGAL : '
//  else MemMasterdt_reviewed_1.AsString:= 'TANGGAL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_reviewed_by_1.AsDateTime);
//
//  if Masterdt_approved_by_1.IsNull then MemMasterdt_approved_1.AsString:= 'TANGGAL : '
//  else MemMasterdt_approved_1.AsString:= 'TANGGAL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_approved_by_1.AsDateTime);

  MemMaster.Post;

    MemDetail.Close;
    MemDetail.Open;
      Detail.DisableControls;
      try
        Detail.First;
        while not Detail.Eof do begin
          MemDetail.Append;
          MemDetailnomor.AsInteger:= Detailnomor.AsInteger;
          MemDetailno_reff.AsString:= Detailno_reff.AsString;
          MemDetaildescription.AsString:= Detaildescription.AsString;
          MemDetailid_rek_gl.AsString:= Detailid_rek_gl.AsString;
          MemDetailid_cc_project.AsString:= Detailid_cc_project.AsString;
          MemDetaildibayar.AsFloat:= Detaildibayar.AsFloat;
          MemDetaildibayar_str.AsString:= FormatFloat('0.0,0', Detaildibayar.AsFloat);
          MemDetail.Post;
          Detail.Next;
        end;
      finally
        Detail.First;
        Detail.EnableControls
      end;
 frPR.ShowReport;
end;

procedure TBankMasukFrm.DetailBeforePost(DataSet: TDataSet);
begin
  if Detailid_cc_project.IsNull or (Trim(Detailid_cc_project.AsString)='') then
     Detailid_cc_project.Clear;

  if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
     Detailid_rek_gl.Clear;


//  if Detailid_cc_project.IsNull or (Trim(Detailid_cc_project.AsString)='') then begin
//    raise Exception.Create('Cost Center harus diisi !');
//  end
//  else
  if Detaildibayar.IsNull or (Trim(Detaildibayar.AsString)='') then begin
    raise Exception.Create('Dibayar harus diisi !');
    grdDetailDBBTV.GetColumnByFieldName('dibayar').FocusWithSelection;
  end
  else
  if Detaildibayar.AsFloat=0 then begin
    raise Exception.Create('Dibayar harus diisi !');
    grdDetailDBBTV.GetColumnByFieldName('dibayar').FocusWithSelection;
  end
  else
  if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
    raise Exception.Create('KODE REK harus diisi !')
  else
  if Detaildescription.IsNull or (Trim(Detaildescription.AsString)='') then
    raise Exception.Create('DISKRIPSI harus diisi!')
  else
  if Detailid_arus.IsNull or (Trim(Detailid_arus.AsString)='') then
    raise Exception.Create('ARUS KAS harus diisi !');

  if DataSet.State=dsInsert then begin
    if CheckDetail(Detailno_reff.Value) then begin
      raise Exception.Create('NO. REFF Sudah Ada !')
    end
  end else
  if DataSet.State=dsEdit then begin
    if Detailno_reff.OldValue<>Detailno_reff.Value then begin
      if CheckDetail(Detailno_reff.Value) then begin
        raise Exception.Create('NO. REFF Sudah Ada !')
      end
    end
  end;


  if Detailno_reff.IsNull or (Trim(Detailno_reff.AsString)='') then begin
     qryGET_NO_REFF.Close;
     qryGET_NO_REFF.Params.ParamByName('pseq').Value:= 'accfin.sq_no_reff';
     qryGET_NO_REFF.Open;
     Detailno_reff.AsString:= qryGET_NO_REFFreff_number.AsString;
  end;

 if Detailkd_rekanan.IsNull or (Trim(Detailkd_rekanan.AsString)='') then begin
    if  Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then Detailkd_rekanan.Clear
    else Detailkd_rekanan.AsString:= Masterkd_rekanan.AsString;
 end;

   if Detail.State=dsInsert then begin
      Detailid_payment_detail.AsLargeInt:= sq_payment_detail.GetNextValue;
  end 

end;


procedure TBankMasukFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TBankMasukFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end

end;

procedure TBankMasukFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TBankMasukFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;
  
  if Master.State=dsBrowse then
    Master.Edit;
  Mastersubtotal.AsFloat:= vSubTotal;
  Master.Post;
end;

procedure TBankMasukFrm.EditKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
end;

procedure TBankMasukFrm.edtRekGLEnter(Sender: TObject);
begin
  try
    L_ID_REK_BANK.Close;
    L_ID_REK_BANK.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TBankMasukFrm.edtRemarksKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grdDetailDBBTV.GetColumnByFieldName('no_reff').FocusWithSelection;
    end;
end;

procedure TBankMasukFrm.grdDetailDBBTVno_reffGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_REFF.Properties;
      try
        L_Nota.Close;
        L_Nota.Params.ParamByName('pid_rekanan').Value:= Masterkd_rekanan.AsString;
        L_Nota.Open;
      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TBankMasukFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.ParamByName('pid_trans').Value:= vjns_transaksi;
end;

procedure TBankMasukFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TBankMasukFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end
end;

procedure TBankMasukFrm.btnOKClick(Sender: TObject);
begin
   try
     qBrowse.Close;
     qBrowse.Open;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
   end;
   DBMode:= dmBrowse;
   UpdateView;
end;

procedure TBankMasukFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TBankMasukFrm.ER_LCB_REFFPropertiesCloseUp(Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

     Detailno_reff.AsString:= L_Notano_nota.AsString;
     if Length(L_Notaremarks.AsString)<5 then
        Detaildescription.AsString:='Pembayaran nota no: '+L_Notano_nota.AsString+' a/n : '+L_Notanama_rekanan.AsString
     else Detaildescription.AsString:= L_Notaremarks.AsString;
     Detailkd_rekanan.AsString:= L_Notakd_rekanan.AsString;
     Detailpembayaran.AsFloat:= L_Notapembayaran.AsFloat;
     Detailsisa.AsFloat:= L_Notatotal.AsFloat-L_Notapembayaran.AsFloat;
     Detaildibayar.AsFloat:= L_Notatotal.AsFloat-L_Notapembayaran.AsFloat;
     Detailid_rek_gl.AsString:= L_Notaid_rek_gl.AsString;
end;

procedure TBankMasukFrm.grdDetailDBBTVid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_REK_GL.Properties;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TBankMasukFrm.grdDetailDBBTVid_cc_projectGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_CC.Properties;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TBankMasukFrm.ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
begin
   try
     Detailid_rek_gl.AsString:= L_ID_REK_GLid_rek_gl.AsString;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
   end;
end;

procedure TBankMasukFrm.grdDetailDBBTVid_arusGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_ARUS.Properties;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TBankMasukFrm.edtJenisPropertiesCloseUp(Sender: TObject);
begin
   if Master.State=dsBrowse then
      Master.Edit;
   Masterjns_rekanan.AsString:= DM.L_JenisRekanandescription.AsString;
end;

procedure TBankMasukFrm.edtNoCustPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);

begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;

    qryRekanan.Close;
    qryRekanan.Params.ParamByName('pjenis').AsString:= 'SALESMAN';
    qryRekanan.Open;

    try
      if LookRekanan.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masternama_rekanan.Value:= qryRekanannama_rekanan.AsString;
        Masterkd_rekanan.Value:= qryRekanankd_rekanan.AsString;
      end;
    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

procedure TBankMasukFrm.edtNoKasirNonTunaiPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;

    qryKasirNonTunai.Close;
    qryKasirNonTunai.Params.ParamByName('pid_sales').AsString:= Masterkd_rekanan.AsString;
    qryKasirNonTunai.Params.ParamByName('pid_rek_gl').AsString:= Masterid_rek_gl.AsString;
    qryKasirNonTunai.Open;

    try
      if LookKasirNonTunai.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masterno_bukti.AsString:= qryKasirNonTunaino_kas_kecil.AsString;
        Masterno_cek_bg_tt.AsString:= qryKasirNonTunaino_cek_bg_tt.AsString;
        Masterdue_date.AsDateTime:= qryKasirNonTunaidt_biaya.AsDateTime;
        Masterbank.AsString:= qryKasirNonTunaibank.AsString;
        Masterjns_ttbg.AsString:= 'BG';

        Detail.Close;
        Detail.Open;
        if Detail.RecordCount>0 then
           Detail.EmptyDataSet;
        Detail.Append;
        Detailno_reff.AsString:= qryKasirNonTunaino_reff.AsString;
        Detaildescription.AsString:= qryKasirNonTunaidiskripsi.AsString;
        Detailpembayaran.AsFloat:= 0;
        Detailsisa.AsFloat:= qryKasirNonTunainilai_nota.AsFloat;
        Detaildibayar.AsFloat:= qryKasirNonTunaidibayar.AsFloat;
        Detailid_rek_gl.AsString:= qryKasirNonTunaiid_rek_gl.AsString;
        Detailkd_rekanan.AsString:= qryKasirNonTunaikd_rekanan.AsString;
        Detailid_kas_kecil_detail.AsLargeInt:= qryKasirNonTunaiid_kas_kecil_detail.AsLargeInt;
        Detailno_bukti.AsString:= qryKasirNonTunaino_bukti.AsString;
        Detail.Post;


//        kmtKasirNonTunai.Close;
//        kmtKasirNonTunai.Open;
//        kmtKasirNonTunai.EmptyTable;
//        kmtKasirNonTunai.LoadFromDataSet(qryKasirNonTunai, [mtcpoAppend]);
      end;
    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

procedure TBankMasukFrm.btnFirstClick(Sender: TObject);
begin
     try
       Detail.Close;
       Master.Close;
       Master.Open;
       Detail.Params.ParamByName('id_payment').Value:= Masterid_payment.AsLargeInt;
       Detail.Open;
     except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
     end;
end;

procedure TBankMasukFrm.MasterCalcFields(DataSet: TDataSet);
begin
   Masterselisih.AsFloat:= Mastersubtotal.AsFloat-Masternominal.AsFloat;
end;

end.

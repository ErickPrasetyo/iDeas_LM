unit U_KasKeluar;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, cxTextEdit,
  cxEditRepositoryItems, cxDBEditRepository, frxClass, wwDialog, wwidlg,
  frxDBSet, kbmMemTable, AdvToolBar, AdvToolBarStylers, ZDataset,
  ZSequence, ZAbstractRODataset, ZAbstractDataset, ActnList,
  cxGridBandedTableView, cxGridTableView, AdvPanel, AdvAppStyler,
  cxGridDBBandedTableView, DBCtrls, ExtCtrls, cxMemo, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBLabel, cxGroupBox, RzPanel, cxMaskEdit, cxCalendar, cxContainer,
  StdCtrls, wwdbdatetimepicker, SCControl, SCStdControls, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, AdvGlowButton, AdvReflectionImage,
  cxButtonEdit, SCGraphicButton, SCDbNavButton, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TKasKeluarFrm = class(TForm)
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
    qryGet_CD_Number: TZQuery;
    Shape5: TShape;
    Shape6: TShape;
    ATBos: TAdvToolBarOfficeStyler;
    SCPanel1: TSCPanel;
    pnlPrepared: TPanel;
    LblL_Prepared: TLabel;
    dbt_UserPrepared: TDBText;
    _DB_TGL_1: TDBText;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    gbRekanan: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cdblAddress: TcxDBLabel;
    edtRemarks: TcxDBMemo;
    MemMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemDetail: TkbmMemTable;
    actPrint: TAction;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    QDocDistribute: TZReadOnlyQuery;
    QDocDistributedoc_ditribution: TStringField;
    qrySubTotal: TZReadOnlyQuery;
    qrySubTotalsub_total: TFloatField;
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
    Masteremployee: TStringField;
    Masterno_bkbb: TStringField;
    Masterjns_ttbg: TStringField;
    Masterid_curr: TStringField;
    Masterkurs: TFloatField;
    Masterno_bukti: TStringField;
    Masterprepared_by: TStringField;
    Masterdt_prepared: TDateTimeField;
    Masterreviewed_by_1: TStringField;
    Masterapproved_by_1: TStringField;
    grddbtvMasterid_payment: TcxGridDBColumn;
    grddbtvMasterdt_payment: TcxGridDBColumn;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    grddbtvMasterno_payment: TcxGridDBColumn;
    grddbtvMasterno_bukti: TcxGridDBColumn;
    Masterlprepared_name: TStringField;
    Masterlreviewed_name_1: TStringField;
    Masterlapproved_name_1: TStringField;
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
    Masterlrekening: TStringField;
    Masterlcust_addr: TStringField;
    Masterlcust_name: TStringField;
    L_Nota: TZReadOnlyQuery;
    L_ID_REK_GLdescriptions: TStringField;
    qryGET_NO_REFF: TZQuery;
    qryGET_NO_REFFreff_number: TStringField;
    qryUpdate: TZReadOnlyQuery;
    MemMasterno_payment: TStringField;
    MemMasterremark: TStringField;
    MemMasterbank: TStringField;
    MemMasteran: TStringField;
    MemMasteremployee: TStringField;
    MemMasterid_curr: TStringField;
    MemMasterno_bukti: TStringField;
    MemMasterid_cc_project: TStringField;
    MemDetailno_reff: TStringField;
    MemDetaildibayar: TFloatField;
    MemDetailid_rek_gl: TStringField;
    MemDetailid_cc_project: TStringField;
    MemDetailnomor: TIntegerField;
    MemDetaildescription: TStringField;
    frPR: TfrxReport;
    MemMastercaption: TStringField;
    MemMasterdated: TStringField;
    MemMastersupplier: TStringField;
    MemMasterterbilang: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterprepared_name: TStringField;
    MemMasterreviewed_name_1: TStringField;
    MemMasterreviewed_name_2: TStringField;
    MemMasterdt_reviewed_2: TStringField;
    MemMasterapproved_name_1: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterapproved_name_2: TStringField;
    MemMasterdt_approved_2: TStringField;
    MemMasterdistribusi_document: TStringField;
    MemMasterprinted_by: TStringField;
    MemMastermodel: TStringField;
    MemMasterdt_payment: TStringField;
    MemMasterposted: TStringField;
    MemMasterkurs: TStringField;
    MemMastertotal_str: TStringField;
    MemDetaildibayar_str: TStringField;
    Masterid_rek_gl: TStringField;
    L_ID_REK_GLid_rek_gl: TStringField;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    Masterremarks: TStringField;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Detailid_payment: TLargeintField;
    Detailno_reff: TStringField;
    Detailpembayaran: TFloatField;
    Detailsisa: TFloatField;
    Detaildibayar: TFloatField;
    Detailid_rek_gl: TStringField;
    Detailnomor: TIntegerField;
    Detaildescription: TStringField;
    Detailid_arus: TStringField;
    L_ID_REK_KAS: TZReadOnlyQuery;
    L_ID_REK_KASid_rek_gl: TStringField;
    L_ID_REK_KASdescriptions: TStringField;
    dsL_ID_REK_KAS: TDataSource;
    edtRekGL: TcxDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    dsL_ID_REK_GL: TDataSource;
    dsL_Nota: TDataSource;
    L_ARUS_KAS: TZReadOnlyQuery;
    dsL_ARUS_KAS: TDataSource;
    L_ARUS_KASid_arus: TStringField;
    L_ARUS_KASdeskripsi: TStringField;
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
    grddbtvMasterusr_upd: TcxGridDBColumn;
    grddbtvMasterid_rek_gl: TcxGridDBColumn;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_CC: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ARUS: TcxEditRepositoryLookupComboBoxItem;
    Masterid_cc_project: TStringField;
    Masterreviewed_by_2: TStringField;
    Masterkd_rekanan: TStringField;
    Detailno_bukti: TStringField;
    Detailno_payment: TStringField;
    qryGet_CD_Numbercd_number: TStringField;
    Detailkd_rekanan: TStringField;
    Detailnama_rekening: TStringField;
    grdDetailDBBTVnama_rekening: TcxGridDBBandedColumn;
    qBrowseusr_post: TStringField;
    qBrowsedt_post: TDateTimeField;
    pnlReviewed_1: TPanel;
    LblL_Reviewed_1: TLabel;
    dbt_UserReviewed_1: TDBText;
    lblReviewer_1: TLabel;
    _DB_Name_2: TDBText;
    pnlApproved: TPanel;
    LbL_Approved_1: TLabel;
    dbt_UserApproved_1: TDBText;
    lblApprover_1: TLabel;
    _DB_Name_4: TDBText;
    Detailid_cc_project: TStringField;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Masterusr_post: TStringField;
    Masterdt_post: TDateTimeField;
    Masternama_rekanan: TStringField;
    Masterjns_rekanan: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    edtJenis: TcxDBLookupComboBox;
    edtCustNo: TcxDBButtonEdit;
    qryRekanan: TZReadOnlyQuery;
    qryRekanankd_rekanan: TStringField;
    qryRekanannama_rekanan: TStringField;
    LookRekanan: TwwLookupDialog;
    grddbtvMasterdibayar: TcxGridDBColumn;
    dsJenisRekanan: TDataSource;
    qryCek: TZReadOnlyQuery;
    qryCekvcount: TLargeintField;
    sq_payment_detail: TZSequence;
    Detailid_kas_kecil_detail: TLargeintField;
    Detailid_payment_detail: TLargeintField;
    btnFirst: TSCNavButton;
    btnPrior: TSCNavButton;
    btnNext: TSCNavButton;
    btnLast: TSCNavButton;
    qBrowsenominal: TFloatField;
    Mastersubtotal: TFloatField;
    Masterselisih: TFloatField;
    Label11: TLabel;
    Lblselisih: TLabel;
    edtNominal: TcxDBTextEdit;
    edtSelisih: TcxDBLabel;
    grdDetailDBBTVno_bukti: TcxGridDBBandedColumn;
    ER_LCB_NO_FAKTUR: TcxEditRepositoryLookupComboBoxItem;
    L_Notano_doc: TStringField;
    L_Notadt_doc: TDateTimeField;
    L_Notaid_curr: TStringField;
    L_Notakurs: TFloatField;
    L_Notaremarks: TStringField;
    L_Notano_bukti: TStringField;
    L_Notakd_rekanan: TStringField;
    L_Notadt_due: TDateTimeField;
    L_Notatotal_in: TFloatField;
    L_Notatotal_idr: TFloatField;
    L_Notapembayaran: TFloatField;
    L_Notapembayaran_idr: TFloatField;
    L_Notasisa: TFloatField;
    L_Notasisa_idr: TFloatField;
    L_Notanama_rekanan: TStringField;
    L_Notaid_rek_gl: TStringField;
    qExec: TZQuery;
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
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure DetailBeforeEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure DetailBeforePost(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure edtRekGLEnter(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure edtRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure grdDetailDBBTVid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDetailDBBTVid_cc_projectGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_REFFPropertiesCloseUp(Sender: TObject);
    procedure grdDetailDBBTVno_reffGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
    procedure grdDetailDBBTVid_arusGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure edtCustNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtJenisPropertiesCloseUp(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure ER_LCB_NO_FAKTURPropertiesCloseUp(Sender: TObject);
    procedure grdDetailDBBTVno_buktiGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
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
  KasKeluarFrm: TKasKeluarFrm;

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
          KasKeluarFrm := TKasKeluarFrm.Create(Application);
          sts_dlg.Progress_It;
          with KasKeluarFrm do begin
            vjns_transaksi:= ptransaksi;
            vtag:= ptag;
            DBMode:= dmNone;
            try
              DM.L_User.Close;
              DM.L_User.Open;
              sts_dlg.Progress_It;
              DM.L_Rekanan.Close;
              DM.L_Rekanan.Open;
              sts_dlg.Progress_It;
              L_ID_REK_GL.Close;
              L_ID_REK_GL.Open;
              sts_dlg.Progress_It;
              L_ID_REK_KAS.Close;
              L_ID_REK_KAS.Open;
              sts_dlg.Progress_It;
              DM.L_JenisRekanan.Close;
              DM.L_JenisRekanan.Open;
              sts_dlg.Progress_It;
//              L_COST_CENTER.Close;
//              L_COST_CENTER.Open;
//              sts_dlg.Progress_It;
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

procedure TKasKeluarFrm.CloneDetail;
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

function TKasKeluarFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

function TKasKeluarFrm.CheckEditRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';

  if DM.UserConnect<>Masterusr_ins.AsString then begin
    msg:= 'Dokumen ini dibuat oleh : '+Masterusr_ins.AsString+#13#10+
          'Anda tidak berhak melakukan koreksi.';
    Result:= False;
    Exit
  end;


  if Trim(Masterispost.AsString)='1' then begin
     msg:= 'Dokumen ini sudah di posting '+#13#10+'Unposting terlebih dulu !';
    Result:= False;
    Exit
  end;

end;

function TKasKeluarFrm.CheckDeleteRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';

  if DM.UserConnect<>Masterusr_ins.AsString then begin
    msg:= 'Dokumen ini dibuat oleh : '+Masterusr_ins.AsString+'. Anda tidak berhak menghapus.';
    Result:= False;
    Exit
  end;


  if Trim(Masterispost.AsString)='1' then begin
      msg:= 'Dokumen ini sudah di posting '+#13#10+'Unposting terlebih dulu !';
    Result:= False;
    Exit
  end;

end;

procedure TKasKeluarFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TKasKeluarFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TKasKeluarFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TKasKeluarFrm.actAddExecute(Sender: TObject);
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
  UpdateView;
  edtRekGL.SetFocus;
end;

procedure TKasKeluarFrm.actEditExecute(Sender: TObject);
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

procedure TKasKeluarFrm.actDeleteExecute(Sender: TObject);
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

procedure TKasKeluarFrm.actRefreshExecute(Sender: TObject);
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

procedure TKasKeluarFrm.actSaveExecute(Sender: TObject);
begin

 if (MessageBox(0, PChar('Peringatan ! '+#13#10+
//                            'Sekali disimpan, Dokumen ini tidak bisa dikoreksi.'+#13#10+
                            'Apakah data yang Anda masukkan sudah benar?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  DM.StartTransaction;
  try

    if Masterno_payment.AsString='' then begin

        qryGet_CD_Number.Close;
        qryGet_CD_Number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
        qryGet_CD_Number.Params.ParamByName('ptgl').AsString:= FormatDateTime('dd-mm-yyyy',Masterdt_payment.AsDateTime);
        qryGet_CD_Number.Open;
        if Master.State=dsBrowse then Master.Edit;
        Masterno_payment.AsString:= qryGet_CD_Numbercd_number.AsString;
    end
    else begin
       if Masterno_payment.AsString<>vNoPayment then  begin
           qryCek.Close;
           qryCek.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
           qryCek.Params.ParamByName('pnomor').AsString:= Masterno_payment.AsString;
           qryCek.Open;
           if qryCekvcount.AsInteger>0 then begin
              DM.MyMsg(mmInformation,'Nomor Kas Keluar Sudah ada !','');
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
    Masternominal.AsFloat:= qrySubTotalsub_total.AsFloat;
//    Masterispost.AsString:='1';
    Masterdt_post.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
    Masterusr_post.AsString:= DM.UserConnect;
    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;

//     qryUpdate.Close;
//     qryUpdate.SQL.Clear;
//     qryUpdate.Params.Clear;
//     qryUpdate.SQL.Add('select accfin.proc_update_invoice('+IntToStr(Masterid_payment.AsLargeInt)+')');
//     qryUpdate.ExecSQL;

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

procedure TKasKeluarFrm.actCancelExecute(Sender: TObject);
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

procedure TKasKeluarFrm.UpdateView;
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

    edtRekGL.Properties.ReadOnly := isBrowse;
    edtRekGL.Properties.Buttons[0].Visible:= not isBrowse;
    edtCustNo.Properties.ReadOnly:= isBrowse;
    edtCustNo.Properties.Buttons[0].Visible:= not isBrowse;
    edtRemarks.Properties.ReadOnly:= isBrowse;

    edtJenis.Properties.Buttons[0].Visible:= not isBrowse;
    edtJenis.Properties.ReadOnly:= isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;

    grdDetailDBBTV.OptionsData.Editing:=not isBrowse;
    grdDetailDBBTV.OptionsData.Appending:=not isBrowse;
    grdDetailDBBTV.OptionsData.Deleting:=not isBrowse;
  end;
end;

procedure TKasKeluarFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TKasKeluarFrm.grdDetailEnter(Sender: TObject);
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

procedure TKasKeluarFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_payment.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Detail.Close;
   Detail.Params.ParamByName('id_payment').Value:= Masterid_payment.Value;
   Detail.Open;
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
   Masterid_rek_gl.AsString:= '111.01';
   Masterjns_rekanan.AsString:= 'SUPPLIER';

   DM.L_Transaction.Close;
   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi ;
   DM.L_Transaction.Open;
   Masterprepared_by.AsString:= DM.UserConnect;

end;

procedure TKasKeluarFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_payment.AsLargeInt:= Masterid_payment.AsLargeInt;
  Detailpembayaran.AsFloat:= 0;
  Detailsisa.AsFloat:= 0;
  Detaildibayar.AsFloat:= 0;
  Detailid_arus.AsString:= '101';
    
  if Detail.RecordCount<>0 then
    Detailnomor.AsInteger:= Detail.RecordCount + 1
  else
    Detailnomor.AsInteger:= 1;
  Detailid_rek_gl.AsString:= '111.01';
end;

procedure TKasKeluarFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterdt_payment.IsNull or (Trim(Masterdt_payment.AsString)='') then
     raise Exception.Create('TANGGAL Harus diisi !')
  else
  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
    raise Exception.Create('KODE SUPPLIER harus diisi !')
  else
  if Masterkurs.IsNull or (Trim(Masterkurs.AsString)='') then
    raise Exception.Create('RATE harus diisi !')
  else
  if Masterkurs.AsFloat=0 then
    raise Exception.Create('RATE harus diisi  !')
  else
  if Masterid_curr.IsNull or (Trim(Masterid_curr.AsString)='') then
    raise Exception.Create('KURS harus diisi !')
  else
  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
     raise Exception.Create('KODE REK harus diisi !');


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

procedure TKasKeluarFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_payment').Value:= Masterid_payment.Value;
     Detail.Open;
  end;
end;

procedure TKasKeluarFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TKasKeluarFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TKasKeluarFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.ParamByName('id_payment').Value:= qBrowseid_payment.AsLargeInt;
end;

procedure TKasKeluarFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
    if Master.State<>dsBrowse then
      Master.Post;
end;

procedure TKasKeluarFrm.actPrintExecute(Sender: TObject);
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
  MemMasterprepared_name.AsString:= Masterlprepared_name.AsString;
  MemMasterreviewed_name_1.AsString:= Masterlreviewed_name_1.AsString;
  MemMasterapproved_name_1.AsString:= Masterlapproved_name_1.AsString;
//  MemMasterreviewed_name_2.AsString:= Masterlreviewed_name_2.AsString;
//  MemMasterapproved_name_2.AsString:= Masterlapproved_name_2.AsString;
  MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
  MemMastermodel.AsString:= 'BKK-'+vjns_transaksi;
//  MemMasterdistribusi_document.AsString:= DM.QDocDistributedoc_ditribution.AsString;
  MemMastersupplier.AsString:= Masternama_rekanan.AsString;
  MemMasterremark.AsString:= Masterremarks.AsString;
  MemMastercaption.AsString:= UpperCase('Tanda Terima Pelunasan');
  MemMasterid_cc_project.AsString:= '';
  MemMasterid_curr.AsString:= Masterid_curr.AsString;
  MemMasterkurs.AsString:= FormatFloat('0.0,0', Masterkurs.AsFloat);
  DM.MyKonversi1.Nilai:= Masternominal.AsFloat;
  MemMasterterbilang.AsString:= DM.MyKonversi1.HasilKonversi;
  MemMastertotal_str.AsString:= FormatFloat('0.0,0', Masternominal.AsFloat);


  if Masterispost.AsString='1' then MemMasterposted.AsString:= 'POSTED'
  else MemMasterposted.AsString:= '';

  if Masterdt_payment.IsNull then MemMasterdt_payment.AsString:= ''
  else MemMasterdt_payment.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_payment.AsDateTime);

  if Masterdt_prepared.IsNull then MemMasterdt_prepared.AsString:= 'TGL : '
  else MemMasterdt_prepared.AsString:= 'TGL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_prepared.AsDateTime);




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
          MemDetailid_cc_project.AsString:= '';
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

procedure TKasKeluarFrm.DetailBeforePost(DataSet: TDataSet);
begin
  if Detailid_cc_project.IsNull or (Trim(Detailid_cc_project.AsString)='') then
     Detailid_cc_project.Clear;
  if Detailid_arus.IsNull or (Trim(Detailid_arus.AsString)='') then
     Detailid_arus.Clear;
  if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
     Detailid_rek_gl.Clear;
  if Detailkd_rekanan.IsNull or (Trim(Detailkd_rekanan.AsString)='') then
     Detailkd_rekanan.Clear;

//  if DataSet.State=dsInsert then begin
//    if CheckDetail(Detailno_reff.Value) then begin
//      raise Exception.Create('NO. REFF sudah ada !')
//    end
//  end else
//  if DataSet.State=dsEdit then begin
//    if Detailno_reff.OldValue<>Detailno_reff.Value then begin
//      if CheckDetail(Detailno_reff.Value) then begin
//        raise Exception.Create('NO. REFF sudah ada !')
//      end
//    end
//  end ;

  if Detaildibayar.IsNull or (Trim(Detaildibayar.AsString)='') then
    raise Exception.Create('DIBAYAR harus diisi !')
  else
  if Detaildescription.IsNull or (Trim(Detaildescription.AsString)='') then
    raise Exception.Create('Diskripsi harus diisi !')
  else
  if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
    raise Exception.Create('KODE REK harus diisi !')
  else
  if Detailid_arus.IsNull or (Trim(Detailid_arus.AsString)='') then
    raise Exception.Create('ARUS KAS harus diisi !');
//  else
//  if Detaildibayar.AsFloat>Detailsisa.AsFloat then
//    raise Exception.Create('Dibayar lebih besar dari Sisa !');

 if Detailkd_rekanan.IsNull or (Trim(Detailkd_rekanan.AsString)='') then begin
    if  Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then Detailkd_rekanan.Clear
    else Detailkd_rekanan.AsString:= Masterkd_rekanan.AsString;
 end;

  if Detailno_reff.IsNull or (Trim(Detailno_reff.AsString)='') then begin
     qryGET_NO_REFF.Close;
     qryGET_NO_REFF.Params.ParamByName('pseq').Value:= 'accfin.sq_no_reff';
     qryGET_NO_REFF.Open;
     Detailno_reff.AsString:= qryGET_NO_REFFreff_number.AsString;
  end;

    if Detail.State=dsInsert then begin
      Detailid_payment_detail.AsLargeInt:= sq_payment_detail.GetNextValue;
  end 

end;

procedure TKasKeluarFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TKasKeluarFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end

end;

procedure TKasKeluarFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TKasKeluarFrm.DetailAfterPost(DataSet: TDataSet);
var
s: String;
begin
  CloneDetail;

  if Master.State=dsBrowse then
    Master.Edit;
  Mastersubtotal.AsFloat:= vSubTotal;
  Master.Post;

  if Detailsisa.AsFloat-Detaildibayar.AsFloat=0 then begin
    DM.PrepareQuery(qExec);
    s:= 'update transaksi.nota set isget_pay='+QuotedStr('1')+' where no_nota='+QuotedStr(Detailno_reff.AsString);
    DM.ExecQuery(qExec, s);
  end else begin
    Exit;
  end;


end;

procedure TKasKeluarFrm.edtRekGLEnter(Sender: TObject);
begin
  try
    L_ID_REK_KAS.Close;
    L_ID_REK_KAS.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TKasKeluarFrm.EditKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
end;

procedure TKasKeluarFrm.edtRemarksKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grdDetailDBBTV.GetColumnByFieldName('no_reff').FocusWithSelection;
    end;
end;

procedure TKasKeluarFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TKasKeluarFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end
end;

procedure TKasKeluarFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.ParamByName('pid_trans').Value:= vjns_transaksi;
end;

procedure TKasKeluarFrm.btnOKClick(Sender: TObject);
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

procedure TKasKeluarFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TKasKeluarFrm.grdDetailDBBTVid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
      AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasKeluarFrm.grdDetailDBBTVid_cc_projectGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_CC.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasKeluarFrm.ER_LCB_REFFPropertiesCloseUp(Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

  Detailno_reff.AsString:= L_Notano_doc.AsString;
  if Length(L_Notaremarks.AsString)<5 then
     Detaildescription.AsString:= 'Pembayaran : '+ L_Notano_doc.AsString+' No Faktur : '+L_Notano_bukti.AsString
  else Detaildescription.AsString:= L_Notaremarks.AsString+' No Faktur : '+L_Notano_bukti.AsString;
  Detailpembayaran.AsFloat:= L_Notapembayaran.AsFloat;
  Detailsisa.AsFloat:= L_Notatotal_in.AsFloat-L_Notapembayaran.AsFloat;
  Detaildibayar.AsFloat:= L_Notatotal_in.AsFloat-L_Notapembayaran.AsFloat;
  Detailid_rek_gl.AsString:= L_Notaid_rek_gl.AsString;
  Detailkd_rekanan.AsString:= L_Notakd_rekanan.AsString;
  Detailno_bukti.AsString:= L_Notano_bukti.AsString;
  Detailid_rek_gl.AsString:= '111.01';

end;

procedure TKasKeluarFrm.grdDetailDBBTVno_reffGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_REFF.Properties;
      try
        L_Nota.Close;
        L_Nota.Params.ParamByName('pid_supplier').Value:= Masterkd_rekanan.AsString;
        L_Nota.Open;
      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasKeluarFrm.ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
begin
   try
     Detailid_rek_gl.AsString:= L_ID_REK_GLid_rek_gl.AsString;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
   end;
end;

procedure TKasKeluarFrm.grdDetailDBBTVid_arusGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_ARUS.Properties;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasKeluarFrm.edtCustNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;


    qryRekanan.Close;
    if UpperCase(Trim(edtJenis.Text))='OUTLET' then
         qryRekanan.Params.ParamByName('pjenis').AsString:= 'CUSTOMER'
    else qryRekanan.Params.ParamByName('pjenis').AsString:= UpperCase(Trim(edtJenis.Text));
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

procedure TKasKeluarFrm.edtJenisPropertiesCloseUp(Sender: TObject);
begin

   if Master.State=dsBrowse then
      Master.Edit;
   Masterjns_rekanan.AsString:= DM.L_JenisRekanandescription.AsString;
end;

procedure TKasKeluarFrm.btnFirstClick(Sender: TObject);
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

procedure TKasKeluarFrm.MasterCalcFields(DataSet: TDataSet);
begin
   Masterselisih.AsFloat:= Mastersubtotal.AsFloat-Masternominal.AsFloat;
end;

procedure TKasKeluarFrm.ER_LCB_NO_FAKTURPropertiesCloseUp(Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

  Detailno_reff.AsString:= L_Notano_doc.AsString;
  if Length(L_Notaremarks.AsString)<5 then
     Detaildescription.AsString:= 'Pembayaran : '+ L_Notano_doc.AsString+' No Faktur : '+L_Notano_bukti.AsString
  else Detaildescription.AsString:= L_Notaremarks.AsString+' No Faktur : '+L_Notano_bukti.AsString;
  Detailpembayaran.AsFloat:= L_Notapembayaran.AsFloat;
  Detailsisa.AsFloat:= L_Notatotal_in.AsFloat-L_Notapembayaran.AsFloat;
  Detaildibayar.AsFloat:= L_Notatotal_in.AsFloat-L_Notapembayaran.AsFloat;
  Detailid_rek_gl.AsString:= '111.01';
  Detailkd_rekanan.AsString:= L_Notakd_rekanan.AsString;
  Detailno_bukti.AsString:= L_Notano_bukti.AsString;
end;

procedure TKasKeluarFrm.grdDetailDBBTVno_buktiGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_NO_FAKTUR.Properties;
      try
        L_Nota.Close;
        L_Nota.Params.ParamByName('pid_supplier').Value:= Masterkd_rekanan.AsString;
        L_Nota.Open;
      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end;
  end
  else
     AProperties := ER_EDT.Properties;
end;

end.

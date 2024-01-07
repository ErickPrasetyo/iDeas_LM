unit U_NotaDebet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox,
  cxDBLookupComboBox, cxMemo, cxDBEdit, StdCtrls, cxSpinEdit,
  wwdbdatetimepicker, frxClass, frxDBSet, frxExportRTF, frxExportPDF,
  frxExportXLS, kbmMemTable, ZDataset, AdvToolBar, AdvToolBarStylers,
  ZSequence, ZAbstractRODataset, ZAbstractDataset, ActnList,
  cxGridBandedTableView, cxGridTableView, AdvPanel, AdvAppStyler,
  cxGridDBBandedTableView, cxDBLabel, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, DBCtrls, cxGroupBox, cxMaskEdit, cxCalendar, cxTextEdit,
  cxContainer, RzPanel, ExtCtrls, SCControl, SCStdControls, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, AdvGlowButton, AdvReflectionImage,
  cxDBEditRepository, cxEditRepositoryItems, SCGraphicButton, SCDbNavButton,
  wwfltdlg, wwDialog, wwidlg, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TNotaDebetFrm = class(TForm)
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
    grddbtvMasterreq_number: TcxGridDBColumn;
    grddbtvMasterrequester: TcxGridDBColumn;
    grddbtvMasterdt_req: TcxGridDBColumn;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    pnlMaster: TSCPanel;
    Detail: TZQuery;
    dsDetail: TDataSource;
    RzGroupBox2: TRzGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    sq_NOTA: TZSequence;
    qryGet_Nota_Hutang_Number: TZQuery;
    ATBOS: TAdvToolBarOfficeStyler;
    Label1: TLabel;
    edtKode: TcxDBTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    edtOrdering: TcxDBTextEdit;
    Shape4: TShape;
    Shape3: TShape;
    Shape8: TShape;
    Label2: TLabel;
    edtDateEdit: TcxDBDateEdit;
    Shape7: TShape;
    cxGroupBox1: TcxGroupBox;
    SCPanel1: TSCPanel;
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    SCPanel2: TSCPanel;
    QSupplier: TZReadOnlyQuery;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    Label13: TLabel;
    DBText6: TDBText;
    qrySubTotal: TZReadOnlyQuery;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemMaster: TkbmMemTable;
    MemMasterreq_number: TStringField;
    MemMasterdated: TStringField;
    MemMasterremarks: TStringField;
    MemMasterprepared_name: TStringField;
    MemMasterreviewed_name: TStringField;
    MemMasterapproved_name: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterproject: TStringField;
    MemMasterexpedition: TStringField;
    MemMastermodel: TStringField;
    MemMasterdistribusi_document: TStringField;
    MemMasterprinted_by: TStringField;
    MemMasterpo_number: TStringField;
    MemMastervendor_name: TStringField;
    MemMasterreviewed_name_2: TStringField;
    MemMasterapproved_name_2: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterdt_reviewed_2: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterdt_approved_2: TStringField;
    MemMasterposted: TStringField;
    MemDetail: TkbmMemTable;
    MemDetailid_item: TStringField;
    MemDetailid_unit: TStringField;
    MemDetaildescription: TStringField;
    MemDetailqty: TFloatField;
    MemDetailno: TStringField;
    MemDetailunit_price: TFloatField;
    MemDetaildisc: TFloatField;
    MemDetailsub_total: TFloatField;
    MemMasterdt_invoice: TStringField;
    MemMasterir_number: TStringField;
    MemMasterinvoice_no: TStringField;
    MemMasterdt_due: TStringField;
    MemMasterkurs: TStringField;
    MemMasterid_curr: TStringField;
    MemMastervat_str: TStringField;
    actPrint: TAction;
    MemMastervat_num: TStringField;
    MemMastersub_total: TStringField;
    MemMasterdiscount: TStringField;
    MemMastertotal: TStringField;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    dbagbDeleteDetail: TDBAdvGlowButton;
    dbagbEditDetail: TDBAdvGlowButton;
    dbagbSaveDetail: TDBAdvGlowButton;
    dbagbCancelDetail: TDBAdvGlowButton;
    dbagbRefreshDetail: TDBAdvGlowButton;
    dbagbAddDetail: TDBAdvGlowButton;
    MemMastervendor_phone: TStringField;
    MemMasterterbilang: TStringField;
    Masterid_nota: TLargeintField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterno_bukti: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Mastertotal: TFloatField;
    Masterkd_rekanan: TStringField;
    Masterid_trans: TStringField;
    Masterid_rek_gl: TStringField;
    Masterid_division: TStringField;
    Mastercara_bayar: TStringField;
    Masterdt_jth_tempo: TDateTimeField;
    Masterdiskripsi: TStringField;
    Mastersub_total: TFloatField;
    Masterclaim: TFloatField;
    Masterdisc_rp: TFloatField;
    Masterpromo_uang: TFloatField;
    Masterpromo_barang: TFloatField;
    Masternet_n_ppn: TFloatField;
    Masteriskirim: TStringField;
    Masterislunas: TStringField;
    Masterretur: TFloatField;
    Masterishpp: TStringField;
    Masterdt_lunas: TDateTimeField;
    Masterdt_kirim: TDateTimeField;
    Masterisok: TStringField;
    Masterdt_posting: TDateTimeField;
    Masternota_diretur: TStringField;
    Masterid_curr: TStringField;
    Masterkurs: TFloatField;
    QSupplierkd_rekanan: TStringField;
    QSuppliernama_rekanan: TStringField;
    QSupplierplafon: TFloatField;
    QSupplieralamat: TStringField;
    QSupplierkota: TStringField;
    Masternama_rekanan: TStringField;
    Masteralamat_rekanan: TStringField;
    Masterkota_rekanan: TStringField;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    Mastervat_str: TStringField;
    Mastervat_num: TFloatField;
    Shape5: TShape;
    Shape6: TShape;
    Label8: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    Label16: TLabel;
    edtVAT: TcxDBTextEdit;
    Label15: TLabel;
    edtDiscount: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    Label17: TLabel;
    kmtMaster: TkbmMemTable;
    kmtMasterpo_number: TStringField;
    kmtMasterrev_number: TStringField;
    kmtMasterpo_date: TDateTimeField;
    kmtMasterbuyer: TStringField;
    kmtMasterdelivery_terms: TStringField;
    kmtMasterpr_reff: TStringField;
    kmtMasterpayment_terms: TStringField;
    kmtMastercurrency: TStringField;
    kmtMastersupplier_name: TStringField;
    kmtMastersupplier_address: TStringField;
    kmtMastersupplier_contact: TStringField;
    kmtMasterquotation_reff: TStringField;
    kmtMasterdt_quotation: TDateTimeField;
    kmtMasterdelivery_time_str: TStringField;
    kmtMasterapproved_name: TStringField;
    kmtMasterapproved_name_2: TStringField;
    kmtMasterapproved_jabatan: TStringField;
    kmtMasterdelivery_place: TStringField;
    kmtMasterremarks: TStringField;
    kmtMastersub_total: TStringField;
    kmtMastervat_str: TStringField;
    kmtMastertotal: TStringField;
    kmtMasterLdescriptions: TStringField;
    kmtMasterLpropinsi: TStringField;
    kmtMasterLalamat: TStringField;
    kmtMasterLphone: TStringField;
    kmtMasterLfax: TStringField;
    kmtMasterLattn: TStringField;
    kmtMasterdt_delivery: TStringField;
    kmtMasterprepared_name: TStringField;
    kmtMasterreviewed_name: TStringField;
    kmtMasterreviewed_name_2: TStringField;
    kmtMasterdt_prepared: TStringField;
    kmtMasterdt_reviewed_1: TStringField;
    kmtMasterdt_reviewed_2: TStringField;
    kmtMasterdt_approved_1: TStringField;
    kmtMasterdt_approved_2: TStringField;
    kmtMastersupplier_phone: TStringField;
    kmtMastersupplier_fax: TStringField;
    kmtMasterterbilang: TStringField;
    kmtMasterdt_po: TStringField;
    kmtMastersupplier_city: TStringField;
    kmtMastercap_unit_price: TStringField;
    kmtMastercap_ammount: TStringField;
    kmtMasterdelivery_date: TStringField;
    kmtMastercap_vat: TStringField;
    kmtMasterprinted_by: TStringField;
    kmtMasterdistribusi_document: TStringField;
    kmtMasterfsubtotal: TFloatField;
    kmtMasterftotal: TFloatField;
    kmtMasterfvat_num: TFloatField;
    kmtDetail: TkbmMemTable;
    kmtDetailno_urut: TStringField;
    kmtDetailqty: TFloatField;
    kmtDetailkd_satuan: TStringField;
    kmtDetaildescriptions: TStringField;
    kmtDetaildelivery_date: TDateTimeField;
    kmtDetailunit_price: TFloatField;
    kmtDetailextended: TFloatField;
    kmtDetaildisc: TFloatField;
    frxDBkmtMaster: TfrxDBDataset;
    frxDBkmtDetail: TfrxDBDataset;
    Masterkd_del_place: TStringField;
    Masterkontak_rekanan: TStringField;
    Mastertelp_rekanan: TStringField;
    Masterfax_rekanan: TStringField;
    qryGet_Nota_Hutang_Numberfn_gen_nota_number: TStringField;
    qryRekGL: TZReadOnlyQuery;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    qryITEM: TZReadOnlyQuery;
    Shape9: TShape;
    qrySubTotalsub_total: TFloatField;
    rptPOLokal: TfrxReport;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaanjudul: TStringField;
    frxRepMaster: TfrxReport;
    MemInfoPerusahaanperiode: TStringField;
    qRekap: TZQuery;
    qRekapid_nota: TLargeintField;
    qRekapno_nota: TStringField;
    qRekapdt_nota: TDateTimeField;
    qRekapnama_rekanan: TStringField;
    qRekapdisc_rp: TFloatField;
    qRekapvat_num: TFloatField;
    qRekaptotal: TFloatField;
    frxDBRekapNota: TfrxDBDataset;
    MemInfoPerusahaanprinted_by: TStringField;
    RGModeCetak: TRadioGroup;
    Detailsub_total: TFloatField;
    dsQSupplier: TDataSource;
    dsqryRekGL: TDataSource;
    dsqryITEM: TDataSource;
    LookRekanan: TcxDBLookupComboBox;
    grddbtvMastercara_bayar: TcxGridDBColumn;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qBrowse: TZQuery;
    qBrowseid_nota: TLargeintField;
    qBrowseno_nota: TStringField;
    qBrowsedt_nota: TDateTimeField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsenama_rekanan: TStringField;
    qBrowsecara_bayar: TStringField;
    qBrowsedt_jth_tempo: TDateTimeField;
    qBrowseno_bukti: TStringField;
    dsqBrowse: TDataSource;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Masterno_rekap: TStringField;
    Mastern_hari: TIntegerField;
    GroupBox1: TGroupBox;
    MemRemarks: TcxDBMemo;
    ER: TcxEditRepository;
    ER_EDT: TcxEditRepositoryTextItem;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_NAME: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_KODE: TcxEditRepositoryLookupComboBoxItem;
    sq_NOTA_DETAIL: TZSequence;
    qBrowsedisc_rp: TFloatField;
    qBrowsetotal: TFloatField;
    grddbtvMasterdisc_rp: TcxGridDBColumn;
    grddbtvMastertotal: TcxGridDBColumn;
    Masterevocer: TFloatField;
    Masterno_faktur_pajak: TStringField;
    Masterno_evocer: TStringField;
    MemDetailqty_karton: TFloatField;
    frAP_A5: TfrxReport;
    btnFirst: TSCNavButton;
    btnPrior: TSCNavButton;
    btnNext: TSCNavButton;
    btnLast: TSCNavButton;
    btnCari: TSCButton;
    btnFilter: TSCButton;
    LookBrowse: TwwLookupDialog;
    FilterBrowse: TwwFilterDialog;
    qBrowsekd_rekanan: TStringField;
    grddbtvMasterkd_rekanan: TcxGridDBColumn;
    qBrowsevat_num: TFloatField;
    qryITEMkd_item: TStringField;
    qryITEMnama_item: TStringField;
    qryITEMsatuan: TStringField;
    qryITEMhrg_beli: TFloatField;
    qryITEMrasio: TFloatField;
    qryITEMid_rek_persediaan: TStringField;
    grdDetail: TcxGrid;
    grdDBTVDetail: TcxGridDBBandedTableView;
    grdDBTVDetailnomor: TcxGridDBBandedColumn;
    grdDBTVDetailkd_item: TcxGridDBBandedColumn;
    grdDBTVDetailnama_item: TcxGridDBBandedColumn;
    grdDBTVDetailhrg_beli_karton: TcxGridDBBandedColumn;
    grdDBTVDetailsub_total: TcxGridDBBandedColumn;
    grdDBTVDetailpromo: TcxGridDBBandedColumn;
    grdDBTVDetailColumn3: TcxGridDBBandedColumn;
    grdDBTVDetailColumn1: TcxGridDBBandedColumn;
    grdlvlDetail: TcxGridLevel;
    Detailid_nota_detail: TLargeintField;
    Detailid_nota: TLargeintField;
    Detailnomor: TIntegerField;
    Detailkd_item: TStringField;
    Detailid_rek_gl: TStringField;
    Detaildisc_rp: TFloatField;
    Detaildisc_psn: TFloatField;
    Detailhrg_jual_karton: TFloatField;
    Detailhrg_jual_lusin: TFloatField;
    Detailhrg: TFloatField;
    Detailqty_karton: TFloatField;
    Detailqty_lusin: TFloatField;
    Detailqty_biji: TFloatField;
    Detailqty_total_biji: TFloatField;
    Detaildiskripsi: TStringField;
    Detailhrg_beli_karton: TFloatField;
    Detailbiji_per_karton: TFloatField;
    Detailispromo: TStringField;
    Detailstatus: TStringField;
    Detaildisc_psn_non_promo: TFloatField;
    Detailsatuan_beli: TStringField;
    Label11: TLabel;
    Label24: TLabel;
    edtNOBukti: TcxDBTextEdit;
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
    procedure DetailBeforeEdit(DataSet: TDataSet);
    procedure DetailCalcFields(DataSet: TDataSet);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure DetailBeforePost(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure edtCurrencyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure Masterdisc_rpChange(Sender: TField);
    procedure Mastervat_numChange(Sender: TField);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure MemRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure Mastersub_totalChange(Sender: TField);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure ER_LCB_ITEM_KODEPropertiesCloseUp(Sender: TObject);
    procedure grdDBTVDetailkd_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDBTVDetailnama_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDBTVDetailid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
  private
    DBMode: TDBMode;
    { Private declarations }
    vjns_transaksi, vjudul, vlook, vrek_kredit, vrek_debet : string;
    vtag : integer;
    vSubTotal : Double;
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;


  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu:String; ptransaksi : String; pitem : String; plook: String; ptag : integer);

var
  NotaDebetFrm: TNotaDebetFrm;

implementation

uses U_DM, U_Currency;

{$R *.dfm}

procedure ShowForm(pNamaMenu: String; ptransaksi: String; pitem: String; plook: String; ptag: integer);
begin
  try
    NotaDebetFrm := TNotaDebetFrm.Create(Application);
    with NotaDebetFrm do begin
//      vjns_item:= pitem;
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      vlook:= plook;
      DBMode:= dmNone;
      try
        DM.L_User.Close;
        DM.L_User.Open;
        DM.L_Supplier.Close;
        DM.L_Supplier.Open;
        DM.L_Item.Close;
        DM.L_Item.Open;
        QSupplier.Close;
        QSupplier.Open;
        qryITEM.Close;
        qryITEM.Open;
        qryRekGL.Close;
        qryRekGL.Open;
        qBrowse.Close;
        qBrowse.Open;
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
end;

procedure TNotaDebetFrm.CloneDetail;
begin
  Detail.DisableControls;
  try
    try
      vSubTotal:= 0;
      kmtCheckDetail.Close;
      kmtCheckDetail.Open;
      Detail.First;
      while not Detail.Eof do begin
        kmtCheckDetail.Append;
        kmtCheckDetailid_item.Value:= Detailkd_item.Value;
        kmtCheckDetail.Post;
        vSubTotal:= vSubTotal+Detailsub_total.AsFloat;
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

function TNotaDebetFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;



procedure TNotaDebetFrm.UpdateView;
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

    edtNOBukti.Properties.ReadOnly:= isBrowse;
    edtDiscount.Properties.ReadOnly:= isBrowse;
    edtVAT.Properties.ReadOnly:= isBrowse;

    LookRekanan.Properties.ReadOnly:= isBrowse;
    LookRekanan.Properties.Buttons[0].Visible:= not isBrowse;
//    edtCurrency.Properties.ReadOnly:= isBrowse;
//    edtCurrency.Properties.Buttons[0].Visible:= not isBrowse;

//    edtKodeRek.Properties.Buttons[0].Visible:= not isBrowse;
//    edtCARABAYAR.Properties.ReadOnly:= isBrowse;
//    edtCARABAYAR.Properties.Buttons[0].Visible:= not isBrowse;
//    edtNhari.Properties.ReadOnly:= isBrowse;
//    edtNhari.Properties.Buttons[0].Visible:= not isBrowse;

//    edtKurs.Properties.ReadOnly:= isBrowse;
    //edtDueDate.Properties.ReadOnly:= isBrowse;
    edtDiscount.Properties.ReadOnly:= isBrowse;
    edtDateEdit.Properties.ReadOnly:= isBrowse;
    MemRemarks.Properties.ReadOnly:= isBrowse;
    RGModeCetak.Enabled:= isBrowse;


    grddbtvDetail.OptionsData.Inserting:= NOT isBrowse;
    grddbtvDetail.OptionsData.Editing:= NOT isBrowse;
    grddbtvDetail.OptionsData.Deleting:= NOT isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;

    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;
  end;
end;

function TNotaDebetFrm.CheckEditRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';

  if DM.UserConnect<>Masterusr_ins.AsString then begin
    msg:= 'Dokumen ini dibuat oleh : '+Masterusr_ins.AsString+#13#10+
          'anda tidak berhak melakukan koreksi.';
    Result:= False;
    Exit
  end;


  if Trim(Masterispost.AsString)='1' then begin
    msg:= 'Dokumen ini sudah diposting '+#13#10+'UnPost dulu !';
    Result:= False;
    Exit
  end;

end;

function TNotaDebetFrm.CheckDeleteRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';

  if DM.UserConnect<>Masterusr_ins.AsString then begin
    msg:= 'Dokumen ini dibuat oleh '+Masterusr_ins.AsString+'. anda tidak berhak menghapusnya.';
    Result:= False;
    Exit
  end;


  if Trim(Masterispost.AsString)='1' then begin
    msg:= 'Dokumen ini sudah di Posting !'+#13#10+'Unpost dulu !';
    Result:= False;
    Exit
  end;

end;

procedure TNotaDebetFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNotaDebetFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Perubahan data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TNotaDebetFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TNotaDebetFrm.actAddExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  try
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_nota').Value:= -1;
    Detail.Open;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView;
  edtDateEdit.SetFocus;
end;

procedure TNotaDebetFrm.actEditExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

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

procedure TNotaDebetFrm.actDeleteExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  if DM.MyMsg(mmConfirmation,'Anda yakin ingin menghapus data ini ?','')=101 then
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
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  DBMode:= dmBrowse;
  UpdateView

end;

procedure TNotaDebetFrm.actRefreshExecute(Sender: TObject);
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

procedure TNotaDebetFrm.actSaveExecute(Sender: TObject);
begin
  if (MessageBox(0, PChar('Peringatan ! '+#13#10+
//                            'Once Applied, this document become Un-Edited.'+#13#10+
                            'Anda yakin ingin menyimpan dokumen ini?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;
  DM.StartTransaction;
  try
    if Trim(Masterno_nota.AsString)='' then begin
        qryGet_Nota_Hutang_Number.Close;
        qryGet_Nota_Hutang_Number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
        qryGet_Nota_Hutang_Number.Open;
        if Master.State=dsBrowse then
           Master.Edit;
        Masterno_nota.AsString:= qryGet_Nota_Hutang_Numberfn_gen_nota_number.AsString;
    end;

    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit)  then
        Detail.Post;
    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;
    try
      qrySubTotal.Close;
      qrySubTotal.Params.ParamByName('pid_nota').Value:= Masterid_nota.Value;
      qrySubTotal.Open;
    except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;

    Master.Edit;
    Mastersub_total.AsFloat:= qrySubTotalsub_total.AsFloat;
    Masternet_n_ppn.AsFloat:= Mastertotal.AsFloat;
    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;

    DM.CommitTransaction;
    qBrowse.Refresh;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      Exit;
    end
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TNotaDebetFrm.actCancelExecute(Sender: TObject);
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


procedure TNotaDebetFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TNotaDebetFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaDebetFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_nota.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;

   DM.L_Transaction.Close;
   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
   DM.L_Transaction.Open;

   vrek_kredit:= DM.L_Transactionkid_rek_gl.AsString;
   vrek_debet:= DM.L_Transactiondid_rek_gl.AsString;

   if vrek_kredit<>'' then Masterid_rek_gl.AsString:= vrek_kredit;


   Masterdt_nota.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterid_trans.AsString:= vjns_transaksi;
   Masterdiskripsi.AsString:= '-';
   Mastervat_num.AsFloat:= 0;
   Mastersub_total.AsFloat:= 0;
   Mastertotal.AsFloat:= 0;
   Masterkurs.AsFloat:= 1;
   Masterdisc_rp.AsFloat:= 0;
   Masterclaim.AsFloat:= 0;
   Masterpromo_uang.AsFloat:= 0;
   Masterpromo_barang.AsFloat:= 0;
   Masternet_n_ppn.AsFloat:= 0;
   Masteriskirim.AsString:= '0';
   Masterislunas.AsString:= '0';
   Masterretur.AsFloat:= 0;
   Mastern_hari.AsInteger:= 1;
   Masterishpp.AsString:= '0';
   Masterisok.AsString:= '0';
   Masterid_curr.AsString:= 'IDR';
   Masterevocer.AsFloat:= 0;
   Mastercara_bayar.AsString:= 'TUNAI';
   Masterdt_jth_tempo.AsDateTime:= Masterdt_nota.AsDateTime;
   Mastern_hari.AsInteger:= 1;
   Masterid_rek_gl.AsString:= '111.01';


//   Masterprepared_by.AsString:= DM.UserConnect;
//   Masterreviewed_by.AsString:= DM.L_Transactionvuser_review.AsString;
//   Masterapproved_by.AsString:= DM.L_Transactionvuser_approve.AsString;
//   Masterreviewed_by_2.AsString:= DM.L_Transactionvuser_review2.AsString;
//   Masterapproved_by_2.AsString:= DM.L_Transactionvuser_approve2.AsString;

end;

procedure TNotaDebetFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_nota.AsLargeInt:= Masterid_nota.AsLargeInt;
  Detailhrg_jual_karton.AsFloat:= 0;
  Detailhrg_jual_lusin.AsFloat:= 0;
  Detailhrg_beli_karton.AsFloat:= 0;
  Detailqty_karton.AsFloat:= 0;
  Detailqty_lusin.AsFloat:= 0;
  Detailqty_biji.AsFloat:= 1;
  Detailqty_total_biji.AsFloat:= 0;
  Detailbiji_per_karton.AsFloat:= 0;
  Detaildisc_rp.AsFloat:= 0;
  Detaildisc_psn.AsFloat:= 0;
  Detailhrg.AsFloat:= 0;
  Detailispromo.AsString:= '0';

  if vrek_debet<>'' then Detailid_rek_gl.AsString:= vrek_debet;

  if Detail.RecNo=0 then
    Detailnomor.AsInteger:=1
  else
    Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TNotaDebetFrm.MasterBeforePost(DataSet: TDataSet);
begin

  if Mastercara_bayar.IsNull or (Trim(Mastercara_bayar.AsString)='') then
     raise Exception.Create('CARA BAYAR harus diisi !')
  else
  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
     raise Exception.Create('SUPPLIER harus diisi !');
//  else
//  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
//     raise Exception.Create('KODE REKENING harus diisi !');


  if Master.State=dsInsert then begin
    Masterid_nota.AsLargeInt:= sq_NOTA.GetNextValue;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_nota.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (Masterid_nota not set). All input aborted !');
end;

procedure TNotaDebetFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_nota').Value:= Masterid_nota.Value;
     Detail.Open;
  end;
end;

procedure TNotaDebetFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TNotaDebetFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaDebetFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaDebetFrm.DetailCalcFields(DataSet: TDataSet);
begin
  Detailsub_total.AsFloat:= Detailqty_biji.AsFloat*(Detailhrg.AsFloat-(Detailhrg.AsFloat*Detaildisc_psn.AsFloat/100));
//   Detailsub_total.AsFloat:= (Detailqty_karton.AsFloat*Detailhrg_beli_karton.AsFloat)+
//                              (Detailqty_lusin.AsFloat*Detailhrg_jual_lusin.AsFloat)+
//                              (Detailqty_biji.AsFloat*Detailhrg.AsFloat);

end;

procedure TNotaDebetFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_nota').Value:= qBrowseid_nota.AsLargeInt;
end;

procedure TNotaDebetFrm.DetailBeforePost(DataSet: TDataSet);
begin
 if (Detailkd_item.IsNull) or (Trim(Detailkd_item.AsString)='') then
    raise Exception.Create('KODE harus diisi !')
// else
// if (Detailid_rek_gl.IsNull) or (Trim(Detailid_rek_gl.AsString)='') then
//    raise Exception.Create('KODE REKENING harus diisi !')
 else
 if (Detailhrg_beli_karton.IsNull) or (Trim(Detailhrg_beli_karton.AsString)='') then
    raise Exception.Create('HARGA harus diisi !');
// else
// if Detailhrg_beli_karton.AsFloat=0 then
//    raise Exception.Create('HARGA harus diisi !');


  if Detail.State=dsInsert then
     Detailid_nota_detail.AsLargeInt:= sq_NOTA_DETAIL.GetNextValue;
     
//  if DataSet.State=dsInsert then begin
//    if CheckDetail(Detailkd_item.Value) then begin
//      raise Exception.Create('ITEM sudah ada !')
//    end
//  end else
//  if DataSet.State=dsEdit then begin
//    if Detailkd_item.OldValue<>Detailkd_item.Value then begin
//      if CheckDetail(Detailkd_item.Value) then begin
//        raise Exception.Create('ITEM sudah ada !')
//      end
//    end
//  end;


//  if Detailqty_karton.IsNull  or (Trim(Detailqty_karton.AsString)='')  then
//     raise Exception.Create('QTY harus diisi !')
//  else
//  if Detailqty_karton.AsFloat=0 then
//     raise Exception.Create('QTY harus diisi !');
end;

procedure TNotaDebetFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TNotaDebetFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TNotaDebetFrm.edtCurrencyPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var f: TCurrencyFrm;
begin
  f:= TCurrencyFrm.Create(Application);
  try
    if f.ShowModal=MrOK then
      try
        if Master.State=dsBrowse then
         Master.Edit;
         Masterid_curr.AsString:= f.Masterid_curr.AsString;
      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
  finally
    f.Free
  end;

end;

procedure TNotaDebetFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TNotaDebetFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;

 if Master.State=dsBrowse then
    Master.Edit;
 Mastersub_total.AsFloat:= vSubTotal;
 Mastervat_num.AsFloat:= vSubTotal*10/100;
 Master.Post;
end;

procedure TNotaDebetFrm.actPrintExecute(Sender: TObject);
var i, row_count, idx : Integer;
begin
  if qBrowse.RecordCount=0 then
     Exit;

  case RGModeCetak.ItemIndex of
    0 : begin

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
           MemInfoPerusahaanjudul.AsString:= lblHeader1.Caption;
           MemInfoPerusahaan.Post;

          MemMaster.Close;
          MemMaster.Open;
          MemMaster.Append;
          MemMasterreq_number.AsString:= Masterno_nota.AsString;
          MemMasterproject.AsString:= '';
          MemMastervendor_name.AsString:= Masternama_rekanan.AsString;
          MemMasterremarks.AsString:= Masterdiskripsi.AsString;
          MemMasterpo_number.AsString:= Masterno_bukti.AsString;
          MemMasterid_curr.AsString:= '';
          MemMasterkurs.AsString:= '';
          MemMasterdiscount.AsString:= FormatFloat('0.0,0', Masterdisc_rp.AsFloat);
          MemMastervat_str.AsString:= Mastervat_str.AsString;
          MemMastervat_num.AsString:= FormatFloat('0.0,0', Mastervat_num.AsFloat);
          MemMastertotal.AsString:= FormatFloat('0.0,0', Mastertotal.AsFloat);
          MemMastersub_total.AsString:= FormatFloat('0.0,0', Mastersub_total.AsFloat);



          if Masterispost.AsString='1' then MemMasterposted.AsString:='POSTED'
          else MemMasterposted.AsString:='';


          MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
          MemMastermodel.AsString:= 'ND-'+vjns_transaksi;
//          MemMasterdistribusi_document.AsString:= QDocDistributedoc_ditribution.AsString;

          if Masterdt_nota.IsNull then MemMasterdated.AsString:= ''
          else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_nota.AsDateTime);

          if Masterdt_jth_tempo.IsNull then MemMasterdt_due.AsString:= ''
          else MemMasterdt_due.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_jth_tempo.AsDateTime);

          if Masterdt_nota.IsNull then MemMasterdt_prepared.AsString:= 'TANGGL :'
          else MemMasterdt_prepared.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_nota.AsDateTime);

          MemMasterdt_reviewed_1.AsString:= 'TANGGAL : ';
          MemMasterdt_approved_1.AsString:= 'TANGGAL : ';


          MemMaster.Post;

            MemDetail.Close;
            MemDetail.Open;
            if Detail.RecordCount<6 then begin
              row_count:= 6-Detail.RecordCount;
              Detail.DisableControls;
              Detail.SortedFields := 'nomor';
              try
                Detail.First;
                while not Detail.Eof do begin
                  MemDetail.Append;
                  MemDetailno.AsString:= Detailnomor.AsString;
                  MemDetailid_item.AsString:= Detailkd_item.AsString;
                  MemDetaildescription.AsString:= Detaildiskripsi.AsString;
                  MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
                  MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
                  MemDetailunit_price.AsFloat:= Detailhrg.AsFloat;
                  MemDetaildisc.AsFloat:= Detaildisc_rp.AsFloat;
                  MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
                  MemDetail.Post;
                  Detail.Next;
                end;
                for i := 1 to row_count do begin
                  MemDetail.Append;
                  MemDetailno.AsString:='';
                  MemDetailid_item.AsString:= '';
                  MemDetaildescription.AsString:= '';
                  MemDetailqty_karton.Clear;
                  MemDetailqty.Clear;
                  MemDetailunit_price.Clear;
                  MemDetaildisc.Clear;
                  MemDetailsub_total.Clear;
                  MemDetail.Post;
                end;
              finally
                Detail.First;
                Detail.EnableControls
              end;
            end
            else begin
              Detail.DisableControls;
              Detail.SortedFields := 'nomor';
              try
                Detail.First;
                while not Detail.Eof do begin
                  MemDetail.Append;
                  MemDetailno.AsString:= Detailnomor.AsString;
                  MemDetailid_item.AsString:= Detailkd_item.AsString;
                  MemDetaildescription.AsString:= Detaildiskripsi.AsString;
                  MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
                  MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
                  MemDetailunit_price.AsFloat:= Detailhrg.AsFloat;
                  MemDetaildisc.AsFloat:= Detaildisc_rp.AsFloat;
                  MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
                  MemDetail.Post;
                  Detail.Next;
                end;
              finally
                Detail.First;
                Detail.EnableControls
              end;
            end;


              frAP_A5.ShowReport
        end; //--------------------------------------------------- END OF CASE ITEM_INDEX=1

     1: begin
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
           MemInfoPerusahaanjudul.AsString:= lblHeader1.Caption;
           MemInfoPerusahaanperiode.AsString:= 'Periode : '+ FormatDateTime('dd/mm/yyyy', dtpStart.Date)+
                                               ' S/D '+ FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
           MemInfoPerusahaanprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
           MemInfoPerusahaan.Post;

           qRekap.Close;
           qRekap.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
           qRekap.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
           qRekap.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
           qRekap.Open;

           frxRepMaster.ShowReport;

        end;


  end;  // end of cae

end;

procedure TNotaDebetFrm.Mastersub_totalChange(Sender: TField);
begin
  Mastertotal.AsFloat:= Mastersub_total.AsFloat-Masterdisc_rp.AsFloat+Mastervat_num.AsFloat;
end;

procedure TNotaDebetFrm.Masterdisc_rpChange(Sender: TField);
begin
 Mastertotal.AsFloat:= Mastersub_total.AsFloat-Masterdisc_rp.AsFloat+Mastervat_num.AsFloat;
end;

procedure TNotaDebetFrm.Mastervat_numChange(Sender: TField);
begin
 Mastertotal.AsFloat:= Mastersub_total.AsFloat-Masterdisc_rp.AsFloat+Mastervat_num.AsFloat;
end;

procedure TNotaDebetFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TNotaDebetFrm.MemRemarksKeyPress(Sender: TObject; var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grdDBTVDetail.GetColumnByFieldName('diskripsi').FocusWithSelection;
    end;
end;

procedure TNotaDebetFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
end;

procedure TNotaDebetFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TNotaDebetFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TNotaDebetFrm.btnOKClick(Sender: TObject);
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

procedure TNotaDebetFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TNotaDebetFrm.ER_LCB_ITEM_KODEPropertiesCloseUp(Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

     Detailkd_item.AsString:= qryITEMkd_item.AsString;
     Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
     Detailid_rek_gl.AsString:= qryITEMid_rek_persediaan.AsString;
     Detailhrg.AsFloat:= qryITEMhrg_beli.AsFloat;
     Detailsatuan_beli.AsString:= qryITEMsatuan.AsString;
     //Detailhrg_beli_karton.AsFloat:= qryITEMhrg_beli.AsFloat;
     Detailbiji_per_karton.AsFloat:= qryITEMrasio.AsFloat;
     //Detailhrg.AsFloat:= Detailhrg_beli_karton.AsFloat/Detailbiji_per_karton.AsFloat;
end;

procedure TNotaDebetFrm.grdDBTVDetailkd_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_KODE.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaDebetFrm.grdDBTVDetailnama_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_NAME.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaDebetFrm.grdDBTVDetailid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaDebetFrm.ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
begin
  Detailid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;
end;

procedure TNotaDebetFrm.btnFirstClick(Sender: TObject);
begin
     try
       Detail.Close;
       Master.Close;
       Master.Open;
       Detail.Params.ParamByName('id_nota').Value:= Masterid_nota.AsLargeInt;
       Detail.Open;
     except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
     end;
end;

procedure TNotaDebetFrm.btnCariClick(Sender: TObject);
begin
   LookBrowse.Execute;
end;

procedure TNotaDebetFrm.btnFilterClick(Sender: TObject);
begin
   FilterBrowse.Execute;
end;

end.

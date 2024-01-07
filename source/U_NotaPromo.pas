unit U_NotaPromo;

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
  cxDBEditRepository, cxEditRepositoryItems;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TNotaPromoFrm = class(TForm)
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
    sq_TPR: TZSequence;
    qryGet_Nota_Promo_Number: TZQuery;
    ATBOS: TAdvToolBarOfficeStyler;
    Label1: TLabel;
    edtKode: TcxDBTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape8: TShape;
    Label2: TLabel;
    edtDateEdit: TcxDBDateEdit;
    Shape7: TShape;
    SCPanel1: TSCPanel;
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    SCPanel2: TSCPanel;
    QSupplier: TZReadOnlyQuery;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemMaster: TkbmMemTable;
    MemDetail: TkbmMemTable;
    actPrint: TAction;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    dbagbDeleteDetail: TDBAdvGlowButton;
    dbagbEditDetail: TDBAdvGlowButton;
    dbagbSaveDetail: TDBAdvGlowButton;
    dbagbCancelDetail: TDBAdvGlowButton;
    dbagbRefreshDetail: TDBAdvGlowButton;
    dbagbAddDetail: TDBAdvGlowButton;
    QSupplierkd_rekanan: TStringField;
    QSuppliernama_rekanan: TStringField;
    QSupplierplafon: TFloatField;
    QSupplieralamat: TStringField;
    QSupplierkota: TStringField;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    Shape5: TShape;
    Shape6: TShape;
    Label5: TLabel;
    Label16: TLabel;
    edtVAT: TcxDBTextEdit;
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
    qryRekGL: TZReadOnlyQuery;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    Shape9: TShape;
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
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    grdDetail: TcxGrid;
    grdlvlDetail: TcxGridLevel;
    dsQSupplier: TDataSource;
    dsqryRekGL: TDataSource;
    grddbtvMastercara_bayar: TcxGridDBColumn;
    grddbtvMasterdt_jth_tempo: TcxGridDBColumn;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qBrowse: TZQuery;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsenama_rekanan: TStringField;
    dsqBrowse: TDataSource;
    GroupBox1: TGroupBox;
    MemRemarks: TcxDBMemo;
    ER: TcxEditRepository;
    ER_EDT: TcxEditRepositoryTextItem;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_NAME: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_KODE: TcxEditRepositoryLookupComboBoxItem;
    sq_TPR_DETAIL: TZSequence;
    qBrowsetotal: TFloatField;
    grddbtvMastertotal: TcxGridDBColumn;
    frAP_A5: TfrxReport;
    qBrowseid_tpr: TLargeintField;
    qBrowseno_tpr: TStringField;
    qBrowsedt_tpr: TDateTimeField;
    qBrowsebln_activity: TStringField;
    qBrowsesub_total: TFloatField;
    qBrowseppn_rp: TFloatField;
    grddbtvMastersub_total: TcxGridDBColumn;
    grddbtvMasterppn_rp: TcxGridDBColumn;
    Masterid_tpr: TLargeintField;
    Masterdt_tpr: TDateTimeField;
    Masterno_kuitansi: TStringField;
    Masterbln_activity: TStringField;
    Masterprepared_by: TStringField;
    Masterdt_prepared: TDateTimeField;
    Masterreviewed_by: TStringField;
    Masterdt_reviewed: TDateTimeField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Masterjenis: TStringField;
    Mastersub_total: TFloatField;
    Masterppn_rp: TFloatField;
    Mastertotal: TFloatField;
    Masterid_trans: TStringField;
    Masterno_tpr: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterkd_rekanan: TStringField;
    Masterketerangan: TStringField;
    Detailid_tpr_detail: TLargeintField;
    Detailid_tpr: TLargeintField;
    Detailnomor: TIntegerField;
    Detailkd_item: TStringField;
    Detaildiskripsi: TStringField;
    Detailperiode: TStringField;
    Detailno_pajak: TStringField;
    Detailhrg: TFloatField;
    Detailclaim: TFloatField;
    Detailpromo_id: TStringField;
    Detailmekanisme: TStringField;
    Detailalokasi_budget: TFloatField;
    Detailsisa_budget: TFloatField;
    grdDBTVDetail: TcxGridDBTableView;
    grdDBTVDetailnomor: TcxGridDBColumn;
    grdDBTVDetailkd_item: TcxGridDBColumn;
    grdDBTVDetaildiskripsi: TcxGridDBColumn;
    grdDBTVDetailperiode: TcxGridDBColumn;
    grdDBTVDetailclaim: TcxGridDBColumn;
    grdDBTVDetailpromo_id: TcxGridDBColumn;
    grdDBTVDetailmekanisme: TcxGridDBColumn;
    grdDBTVDetailalokasi_budget: TcxGridDBColumn;
    grdDBTVDetailsisa_budget: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    Label13: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    LookRekanan: TcxDBLookupComboBox;
    Masternama_rekanan: TStringField;
    Masteralamat_rekanan: TStringField;
    Masterctotal: TFloatField;
    qryITEM: TZReadOnlyQuery;
    qryITEMkd_item: TStringField;
    qryITEMnama_item: TStringField;
    qryITEMkd_satuan: TStringField;
    qryITEMhrg_beli_karton: TFloatField;
    qryITEMbiji_per_karton: TFloatField;
    qryITEMid_rek_persediaan: TStringField;
    dsqryITEM: TDataSource;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    lblTM: TSCLabel;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    edtKodeRek: TcxDBComboBox;
    qBrowsejenis: TStringField;
    qryGet_Nota_Promo_Numberfn_gen_tpr_number: TStringField;
    Detailid_dtpr: TLargeintField;
    MemMasterno_kuitansi: TStringField;
    MemMasterbln_activity: TStringField;
    MemMasterprepared_by: TStringField;
    MemMasterreviewed_by: TStringField;
    MemMasterjenis: TStringField;
    MemMasterno_tpr: TStringField;
    MemMasterketerangan: TStringField;
    Masterno_pajak: TStringField;
    Shape3: TShape;
    Label3: TLabel;
    Shape4: TShape;
    edtNoPajak: TcxDBTextEdit;
    MemMasterno_pajak: TStringField;
    MemDetailnomor: TIntegerField;
    MemDetailkd_item: TStringField;
    MemDetaildiskripsi: TStringField;
    MemDetailperiode: TStringField;
    MemDetailhrg: TFloatField;
    MemDetailclaim: TFloatField;
    MemDetailpromo_id: TStringField;
    MemDetailmekanisme: TStringField;
    MemDetailalokasi_budget: TFloatField;
    MemDetailsisa_budget: TFloatField;
    MemMasterprinted_by: TStringField;
    MemMasterppn_rp: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterdt_tpr: TStringField;
    MemMasterprepared_name: TStringField;
    Masterprepared_name: TStringField;
    frxPajak: TfrxReport;
    MemMasterreq_number: TStringField;
    MemMasterdated: TStringField;
    MemMastervat_num: TStringField;
    MemMastersub_total: TStringField;
    MemMasterdiscount: TStringField;
    MemMastertotal: TStringField;
    MemMasterterbilang: TStringField;
    MemMasterkota_perusahaan: TStringField;
    MemMasternama_perusahaan: TStringField;
    MemMasteralamat_perusahaan: TStringField;
    MemMasterp_npwp_1: TStringField;
    MemMasterp_nwpw_2: TStringField;
    MemMasterp_npwp_3: TStringField;
    MemMasterp_npwp_4: TStringField;
    MemMasterp_npwp_5: TStringField;
    MemMasterp_npwp_6: TStringField;
    MemMasterp_npwp_7: TStringField;
    MemMasterp_npwp_8: TStringField;
    MemMasterp_npwp_9: TStringField;
    MemMasterp_npwp_10: TStringField;
    MemMasterp_npwp_11: TStringField;
    MemMasterp_npwp_12: TStringField;
    MemMasterp_npwp_13: TStringField;
    MemMasterp_npwp_14: TStringField;
    MemMasterp_npwp_15: TStringField;
    MemMasterv_npwp_1: TStringField;
    MemMasterv_npwp_2: TStringField;
    MemMasterv_npwp_3: TStringField;
    MemMasterv_npwp_4: TStringField;
    MemMasterv_npwp_5: TStringField;
    MemMasterv_npwp_6: TStringField;
    MemMasterv_npwp_7: TStringField;
    MemMasterv_npwp_8: TStringField;
    MemMasterv_npwp_9: TStringField;
    MemMasterv_npwp_10: TStringField;
    MemMasterv_npwp_11: TStringField;
    MemMasterv_npwp_12: TStringField;
    MemMasterv_npwp_13: TStringField;
    MemMasterv_npwp_14: TStringField;
    MemMasterv_npwp_15: TStringField;
    MemMasterdt_pengukuhan: TStringField;
    MemMastersub_total_idr: TStringField;
    MemMastertotal_idr: TStringField;
    MemMastervat_num_idr: TStringField;
    MemMasterdiscount_idr: TStringField;
    MemMasterkurs_pajak: TStringField;
    MemMasterjabatan: TStringField;
    MemMasteralamat_pajak_perusahaan: TStringField;
    MemMastervendor_name_pajak: TStringField;
    MemMastervendor_phone_pajak: TStringField;
    MemMastervendor_city_pajak: TStringField;
    Masterkota_rekanan: TStringField;
    Masterlcustomer_npwp: TStringField;
    MemMasterapproved_name: TStringField;
    MemDetailclaim_str: TFloatField;
    MemDetailid_kurs: TStringField;
    MemDetailid_kurs_idr: TStringField;
    MemMasternomor_distributor: TStringField;
    Detailno_nota: TStringField;
    Detailno_invoice: TStringField;
    Detaildt_tpr: TDateTimeField;
    Detailno_kuitansi: TStringField;
    Detailjenis: TStringField;
    grdDBTVDetailno_kuitansi: TcxGridDBColumn;
    grdDBTVDetailjenis: TcxGridDBColumn;
    grdDBTVDetailno_pajak: TcxGridDBColumn;
    Masterno_rekap: TStringField;
    qBrowseno_rekap: TStringField;
    qryReportMaster: TZQuery;
    qryReportDetail: TZQuery;
    qryReportMasterid_tpr: TLargeintField;
    qryReportMasterdt_tpr: TDateTimeField;
    qryReportMasterno_kuitansi: TStringField;
    qryReportMasterbln_activity: TStringField;
    qryReportMasterprepared_by: TStringField;
    qryReportMasterdt_prepared: TDateTimeField;
    qryReportMasterreviewed_by: TStringField;
    qryReportMasterdt_reviewed: TDateTimeField;
    qryReportMasterispost: TStringField;
    qryReportMasteriscancel: TStringField;
    qryReportMasterisdelete: TStringField;
    qryReportMasterjenis: TStringField;
    qryReportMastersub_total: TFloatField;
    qryReportMasterppn_rp: TFloatField;
    qryReportMastertotal: TFloatField;
    qryReportMasterid_trans: TStringField;
    qryReportMasterno_tpr: TStringField;
    qryReportMasterusr_ins: TStringField;
    qryReportMasterusr_upd: TStringField;
    qryReportMasterdt_ins: TDateTimeField;
    qryReportMasterdt_upd: TDateTimeField;
    qryReportMasterkd_rekanan: TStringField;
    qryReportMasterketerangan: TStringField;
    qryReportMasterno_pajak: TStringField;
    qryReportMasterno_rekap: TStringField;
    qryReportMasterid_tpr_detail: TLargeintField;
    qryReportMasterid_tpr_1: TLargeintField;
    qryReportMasternomor: TIntegerField;
    qryReportMasterkd_item: TStringField;
    qryReportMasterdiskripsi: TStringField;
    qryReportMasterperiode: TStringField;
    qryReportMasterno_pajak_1: TStringField;
    qryReportMasterhrg: TFloatField;
    qryReportMasterclaim: TFloatField;
    qryReportMasterpromo_id: TStringField;
    qryReportMastermekanisme: TStringField;
    qryReportMasteralokasi_budget: TFloatField;
    qryReportMastersisa_budget: TFloatField;
    qryReportMasterid_dtpr: TLargeintField;
    qryReportMasterno_nota: TStringField;
    qryReportMasterno_invoice: TStringField;
    qryReportMasterdt_tpr_1: TDateTimeField;
    qryReportMasterno_kuitansi_1: TStringField;
    qryReportMasterjenis_1: TStringField;
    qryReportDetailid_tpr: TLargeintField;
    qryReportDetaildt_tpr: TDateTimeField;
    qryReportDetailno_kuitansi: TStringField;
    qryReportDetailbln_activity: TStringField;
    qryReportDetailprepared_by: TStringField;
    qryReportDetaildt_prepared: TDateTimeField;
    qryReportDetailreviewed_by: TStringField;
    qryReportDetaildt_reviewed: TDateTimeField;
    qryReportDetailispost: TStringField;
    qryReportDetailiscancel: TStringField;
    qryReportDetailisdelete: TStringField;
    qryReportDetailjenis: TStringField;
    qryReportDetailsub_total: TFloatField;
    qryReportDetailppn_rp: TFloatField;
    qryReportDetailtotal: TFloatField;
    qryReportDetailid_trans: TStringField;
    qryReportDetailno_tpr: TStringField;
    qryReportDetailusr_ins: TStringField;
    qryReportDetailusr_upd: TStringField;
    qryReportDetaildt_ins: TDateTimeField;
    qryReportDetaildt_upd: TDateTimeField;
    qryReportDetailkd_rekanan: TStringField;
    qryReportDetailketerangan: TStringField;
    qryReportDetailno_pajak: TStringField;
    qryReportDetailno_rekap: TStringField;
    qryReportDetailid_tpr_detail: TLargeintField;
    qryReportDetailid_tpr_1: TLargeintField;
    qryReportDetailnomor: TIntegerField;
    qryReportDetailkd_item: TStringField;
    qryReportDetaildiskripsi: TStringField;
    qryReportDetailperiode: TStringField;
    qryReportDetailno_pajak_1: TStringField;
    qryReportDetailhrg: TFloatField;
    qryReportDetailclaim: TFloatField;
    qryReportDetailpromo_id: TStringField;
    qryReportDetailmekanisme: TStringField;
    qryReportDetailalokasi_budget: TFloatField;
    qryReportDetailsisa_budget: TFloatField;
    qryReportDetailid_dtpr: TLargeintField;
    qryReportDetailno_nota: TStringField;
    qryReportDetailno_invoice: TStringField;
    qryReportDetaildt_tpr_1: TDateTimeField;
    qryReportDetailno_kuitansi_1: TStringField;
    qryReportDetailjenis_1: TStringField;
    qryReportMasterprepared_name: TStringField;
    qryReportDetailprepared_name: TStringField;
    qryReportMasternama_rekanan: TStringField;
    qryReportMasteralamat_rekanan: TStringField;
    qryReportMasterkota_rekanan: TStringField;
    qryReportMasterlcustomer_npwp: TStringField;
    qryGet_Number_Rekap: TZQuery;
    qryGet_Number_Rekapfn_gen_rekap_number: TStringField;
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
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure DetailBeforePost(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure MemRemarksKeyPress(Sender: TObject; var Key: Char);
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
    procedure lblTMClick(Sender: TObject);
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure qryReportMasterBeforeOpen(DataSet: TDataSet);
    procedure qryReportDetailBeforeOpen(DataSet: TDataSet);
  private
    DBMode: TDBMode;
    { Private declarations }
    vjns_transaksi, vjudul : string;
    vSubTotal : Double;
    vtag : integer;
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
  NotaPromoFrm: TNotaPromoFrm;

implementation

uses U_DM, U_LookPromo;

{$R *.dfm}

procedure ShowForm(pNamaMenu: String; ptransaksi: String; ptag: integer);
begin
  try
    NotaPromoFrm := TNotaPromoFrm.Create(Application);
    with NotaPromoFrm do begin
//      vjns_item:= pitem;
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
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

procedure TNotaPromoFrm.CloneDetail;
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
        vSubTotal:= vSubTotal+Detailclaim.AsFloat;
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

function TNotaPromoFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;



procedure TNotaPromoFrm.UpdateView;
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

    edtVAT.Properties.ReadOnly:= isBrowse;

    edtKodeRek.Properties.ReadOnly:= isBrowse;
    edtKodeRek.Properties.Buttons[0].Visible:= not isBrowse;
    LookRekanan.Properties.ReadOnly:= isBrowse;
    LookRekanan.Properties.Buttons[0].Visible:= not isBrowse;

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

function TNotaPromoFrm.CheckEditRight(var msg: string): Boolean;
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

function TNotaPromoFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TNotaPromoFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNotaPromoFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Perubahan data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TNotaPromoFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TNotaPromoFrm.actAddExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  try
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_tpr').Value:= -1;
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

procedure TNotaPromoFrm.actEditExecute(Sender: TObject);
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

procedure TNotaPromoFrm.actDeleteExecute(Sender: TObject);
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

procedure TNotaPromoFrm.actRefreshExecute(Sender: TObject);
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

procedure TNotaPromoFrm.actSaveExecute(Sender: TObject);
begin
  if (MessageBox(0, PChar('Peringatan ! '+#13#10+
//                            'Once Applied, this document become Un-Edited.'+#13#10+
                            'Anda yakin ingin menyimpan dokumen ini?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;
  DM.StartTransaction;
  try
    if Trim(Masterno_tpr.AsString)='' then begin
        qryGet_Nota_Promo_Number.Close;
        qryGet_Nota_Promo_Number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
        qryGet_Nota_Promo_Number.Open;
        if Master.State=dsBrowse then
           Master.Edit;
        Masterno_tpr.AsString:= qryGet_Nota_Promo_Numberfn_gen_tpr_number.AsString;
    end;

    if Trim(Masterno_rekap.AsString)='' then begin
        qryGet_Number_Rekap.Close;
        qryGet_Number_Rekap.Open;
        if Master.State=dsBrowse then
           Master.Edit;
        Masterno_rekap.AsString:= qryGet_Number_Rekapfn_gen_rekap_number.AsString;
    end;

    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit)  then
        Detail.Post;
    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;

//    Master.Edit;
//    Mastertotal.AsFloat:= Masterctotal.AsFloat;
//    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
//        Master.Post;
//    Master.ApplyUpdates;
//    Master.CommitUpdates;

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

procedure TNotaPromoFrm.actCancelExecute(Sender: TObject);
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


procedure TNotaPromoFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TNotaPromoFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaPromoFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_tpr.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;


   Masterdt_tpr.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterid_trans.AsString:= vjns_transaksi;
   Masterketerangan.AsString:= '-';
   Masterppn_rp.AsFloat:= 0;
   Mastersub_total.AsFloat:= 0;
   Mastertotal.AsFloat:= 0;
   Masterkd_rekanan.AsString:= '00000';


   Masterprepared_by.AsString:= DM.UserConnect;

end;

procedure TNotaPromoFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_tpr.AsLargeInt:= Masterid_tpr.AsLargeInt;
  Detailhrg.AsFloat:= 0;
  Detailclaim.AsFloat:= 0;
  Detailsisa_budget.AsFloat:= 0;
  Detailalokasi_budget.AsFloat:= 0;


  if Detail.RecNo=0 then
    Detailnomor.AsInteger:=1
  else
    Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TNotaPromoFrm.MasterBeforePost(DataSet: TDataSet);
begin
  Mastertotal.AsFloat:= Masterctotal.AsFloat;
  
//  if Masterjenis.IsNull or (Trim(Masterjenis.AsString)='') then
//     raise Exception.Create('JENIS PROMO harus diisi !')
//  else
//  if Masterno_kuitansi.IsNull or (Trim(Masterno_kuitansi.AsString)='') then
//     raise Exception.Create('NO. KWITANSI harus diisi !')
//  else
  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
     raise Exception.Create('SUPPLIER harus diisi !')
  else
  if Masterbln_activity.IsNull or (Trim(Masterbln_activity.AsString)='') then
     raise Exception.Create('BULAN/THN ACTIVITY harus diisi !');


  if Master.State=dsInsert then begin
    Masterid_tpr.AsLargeInt:= sq_TPR.GetNextValue;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_tpr.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (Masterid_nota not set). All input aborted !');
end;

procedure TNotaPromoFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_tpr').Value:= Masterid_tpr.Value;
     Detail.Open;
  end;
end;

procedure TNotaPromoFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TNotaPromoFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaPromoFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaPromoFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_tpr').Value:= qBrowseid_tpr.AsLargeInt;
end;

procedure TNotaPromoFrm.DetailBeforePost(DataSet: TDataSet);
begin
 if (Detailkd_item.IsNull) or (Trim(Detailkd_item.AsString)='') then
    Detailkd_item.Clear;

 if (Detaildiskripsi.IsNull) or (Trim(Detaildiskripsi.AsString)='') then
    raise Exception.Create('DISKRIPSI PRODUCT harus diisi !')
 else
 if (Detailclaim.IsNull) or (Trim(Detailclaim.AsString)='') then
    raise Exception.Create('JUMLAH RUPIAH harus diisi !')
 else
 if Detailclaim.AsFloat=0 then
    raise Exception.Create('JUMLAH RUPIAH  harus diisi !');


  if Detail.State=dsInsert then
     Detailid_tpr_detail.AsLargeInt:= sq_TPR_DETAIL.GetNextValue;
     
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

procedure TNotaPromoFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TNotaPromoFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TNotaPromoFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TNotaPromoFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;

 if Master.State=dsBrowse then
    Master.Edit;
 Mastersub_total.AsFloat:= vSubTotal;
 Masterppn_rp.AsFloat:= vSubTotal*10/100;

 Master.Post;
end;

procedure TNotaPromoFrm.actPrintExecute(Sender: TObject);
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
           MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO.JPG');
           MemInfoPerusahaanjudul.AsString:= lblHeader1.Caption;
           MemInfoPerusahaan.Post;

          qryReportMaster.Close;
          qryReportMaster.Open;
          qryReportDetail.Close;
          qryReportDetail.Open;

          MemMaster.Close;
          MemMaster.Open;
          MemMaster.Append;

          MemMasterno_kuitansi.AsString:= qryReportMasterno_kuitansi_1.AsString;
          MemMasterbln_activity.AsString:= qryReportMasterbln_activity.AsString;
          MemMastersub_total.AsString:= FormatFloat('0.0,0', qryReportDetailclaim.AsFloat);
          MemMasterppn_rp.AsString:= FormatFloat('0.0,0', qryReportMasterclaim.AsFloat*0.1);
          MemMastertotal.AsString:= FormatFloat('0.0,0', qryReportDetailclaim.AsFloat+qryReportMasterclaim.AsFloat*0.1);
          MemMasterjenis.AsString:= qryReportMasterjenis_1.AsString;
          DM.MyKonversi1.Nilai:= qryReportDetailclaim.AsFloat+qryReportMasterclaim.AsFloat*0.1;
          MemMasterterbilang.AsString:= DM.MyKonversi1.HasilKonversi;
          MemMasterprepared_name.AsString:= qryReportMasterprepared_name.AsString;
          MemMasternomor_distributor.AsString:= DM.L_Perusahaannomor_distributor.AsString;

          MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);

          if qryReportMasterdt_tpr.IsNull then MemMasterdt_tpr.AsString:= ''
          else MemMasterdt_tpr.AsString:= FormatDateTime('dd-mmm-yyyy', qryReportMasterdt_tpr.AsDateTime);

          if qryReportMasterdt_tpr.IsNull then MemMasterdt_tpr.AsString:= ''
          else MemMasterdt_prepared.AsString:= FormatDateTime('dd mmmm yyyy', qryReportMasterdt_tpr.AsDateTime);

          MemMaster.Post;

            MemDetail.Close;
            MemDetail.Open;
//            if Detail.RecordCount<6 then begin
//              row_count:= 6-Detail.RecordCount;
//              Detail.DisableControls;
//              Detail.SortedFields := 'nomor';
//              try
//                Detail.First;
//                while not Detail.Eof do begin
                  MemDetail.Append;
                  MemDetailnomor.AsString:= qryReportDetailnomor.AsString;
                  MemDetailkd_item.AsString:= qryReportDetailkd_item.AsString;
                  MemDetaildiskripsi.AsString:= qryReportDetaildiskripsi.AsString;
                  MemDetailperiode.AsString:= qryReportDetailperiode.AsString;
                  MemDetailclaim.AsFloat:= qryReportDetailclaim.AsFloat;
                  MemDetailpromo_id.AsString:= qryReportDetailpromo_id.AsString;
                  MemDetailmekanisme.AsString:= qryReportDetailmekanisme.AsString;
                  MemDetailalokasi_budget.AsFloat:= qryReportDetailalokasi_budget.AsFloat;
                  MemDetailsisa_budget.AsFloat:= qryReportDetailsisa_budget.AsFloat;
                  MemDetail.Post;
//                  Detail.Next;
//                end;
//                for i := 1 to row_count do begin
//                  MemDetail.Append;
//                  MemDetailnomor.AsString:='';
//                  MemDetailkd_item.AsString:= '';
//                  MemDetaildiskripsi.AsString:= '';
//                  MemDetailperiode.Clear;
//                  MemDetailclaim.Clear;
//                  MemDetailpromo_id.Clear;
//                  MemDetailmekanisme.Clear;
//                  MemDetailalokasi_budget.Clear;
//                  MemDetailsisa_budget.Clear;
//                  MemDetail.Post;
//                end;
//              finally
//                Detail.First;
//                Detail.EnableControls
//              end;
//            end
//            else begin
//              Detail.DisableControls;
//              Detail.SortedFields := 'nomor';
//              try                          
//                Detail.First;
//                while not Detail.Eof do begin
//                  MemDetail.Append;
//                  MemDetailnomor.AsString:= qryReportDetailnomor.AsString;
//                  MemDetailkd_item.AsString:= qryReportDetailkd_item.AsString;
//                  MemDetaildiskripsi.AsString:= qryReportDetaildiskripsi.AsString;
//                  MemDetailperiode.AsString:= qryReportDetailperiode.AsString;
//                  MemDetailclaim.AsFloat:= qryReportDetailclaim.AsFloat;
//                  MemDetailpromo_id.AsString:= qryReportDetailpromo_id.AsString;
//                  MemDetailmekanisme.AsString:= qryReportDetailmekanisme.AsString;
//                  MemDetailalokasi_budget.AsFloat:= qryReportDetailalokasi_budget.AsFloat;
//                  MemDetailsisa_budget.AsFloat:= qryReportDetailsisa_budget.AsFloat;
//                  MemDetail.Post;
//                  Detail.Next;
//                end;
//              finally
//                Detail.First;
//                Detail.EnableControls
//              end;
//            end;

              frAP_A5.ShowReport
//           end;
        end; //--------------------------------------------------- END OF CASE ITEM_INDEX=1

     1: begin
           if Detailno_pajak.AsString='' then begin
              DM.MyMsg(mmInformation,'Information','Nomor Faktur Pajak Belum Diisi !');
              Exit;
           end;

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
           MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO.JPG');
           MemInfoPerusahaan.Post;

          qryReportMaster.Close;
          qryReportMaster.Open;
          qryReportDetail.Close;
          qryReportDetail.Open;

          MemMaster.Close;
          MemMaster.Open;
          MemMaster.Append;

//          MemMasterreq_number.AsString:= '010.000-'+copy(Masterno_tpr.AsString,4,2)+'.000'+Masterno_pajak.AsString;
          MemMasterreq_number.AsString:= qryReportMasterno_pajak_1.AsString;
          MemMasternama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
          MemMasteralamat_pajak_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString+', '+DM.L_Perusahaancity.AsString;

          MemMastervendor_name_pajak.AsString:= qryReportMasternama_rekanan.AsString;
          MemMastervendor_phone_pajak.AsString:= qryReportMasteralamat_rekanan.AsString+', '+qryReportMasterkota_rekanan.AsString;

          MemMasterp_npwp_1.AsString:= copy(DM.L_Perusahaannpwp.AsString,1,1);
          MemMasterp_nwpw_2.AsString:= copy(DM.L_Perusahaannpwp.AsString,2,1);

          MemMasterp_npwp_3.AsString:= copy(DM.L_Perusahaannpwp.AsString,4,1);
          MemMasterp_npwp_4.AsString:= copy(DM.L_Perusahaannpwp.AsString,5,1);
          MemMasterp_npwp_5.AsString:= copy(DM.L_Perusahaannpwp.AsString,6,1);

          MemMasterp_npwp_6.AsString:= copy(DM.L_Perusahaannpwp.AsString,8,1);
          MemMasterp_npwp_7.AsString:= copy(DM.L_Perusahaannpwp.AsString,9,1);
          MemMasterp_npwp_8.AsString:= copy(DM.L_Perusahaannpwp.AsString,10,1);

          MemMasterp_npwp_9.AsString:= copy(DM.L_Perusahaannpwp.AsString,12,1);

          MemMasterp_npwp_10.AsString:= copy(DM.L_Perusahaannpwp.AsString,14,1);
          MemMasterp_npwp_11.AsString:= copy(DM.L_Perusahaannpwp.AsString,15,1);
          MemMasterp_npwp_12.AsString:= copy(DM.L_Perusahaannpwp.AsString,16,1);

          MemMasterp_npwp_13.AsString:= copy(DM.L_Perusahaannpwp.AsString,18,1);
          MemMasterp_npwp_14.AsString:= copy(DM.L_Perusahaannpwp.AsString,19,1);
          MemMasterp_npwp_15.AsString:= copy(DM.L_Perusahaannpwp.AsString,20,1);


          MemMasterv_npwp_1.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,1,1);
          MemMasterv_npwp_2.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,2,1);

          MemMasterv_npwp_3.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,4,1);
          MemMasterv_npwp_4.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,5,1);
          MemMasterv_npwp_5.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,6,1);

          MemMasterv_npwp_6.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,8,1);
          MemMasterv_npwp_7.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,9,1);
          MemMasterv_npwp_8.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,10,1);

          MemMasterv_npwp_9.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,12,1);

          MemMasterv_npwp_10.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,14,1);
          MemMasterv_npwp_11.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,15,1);
          MemMasterv_npwp_12.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,16,1);

          MemMasterv_npwp_13.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,18,1);
          MemMasterv_npwp_14.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,19,1);
          MemMasterv_npwp_15.AsString:= copy(qryReportMasterlcustomer_npwp.AsString,20,1);

          MemMasterapproved_name.AsString:= 'NAMA DIREKTUR';

          DM.vSysDate.Close;
          DM.vSysDate.Open;
          if DM.L_Perusahaandt_pengukuhan.IsNull then MemMasterdt_pengukuhan.AsString:= ''
          else MemMasterdt_pengukuhan.AsString:= FormatDateTime('dd mmmm yyyy', DM.L_Perusahaandt_pengukuhan.AsDateTime);

          if qryReportMasterdt_tpr.IsNull then MemMasterdated.AsString:= ''
          else MemMasterdated.AsString:= DM.L_Perusahaancity.AsString+', '+FormatDateTime('dd mmmm yyyy', qryReportMasterdt_tpr.AsDateTime);

          MemMastersub_total.AsString:= FormatFloat('0.0,0', qryReportDetailclaim.AsFloat);
          MemMasterppn_rp.AsString:= FormatFloat('0.0,0', qryReportMasterclaim.AsFloat*0.1);
          MemMastertotal.AsString:= FormatFloat('0.0,0', qryReportDetailclaim.AsFloat);
          MemMasterdiscount_idr.AsString:= FormatFloat('0.0,0', 0);

          MemMaster.Post;

            MemDetail.Close;
            MemDetail.Open;
//            if Detail.RecordCount<8 then begin
//              row_count:= 8-Detail.RecordCount;
//              Detail.DisableControls;
//              Detail.SortedFields := 'nomor';
//              try
//                Detail.First;
//                while not Detail.Eof do begin
                  MemDetail.Append;
                  MemDetailnomor.AsString:= qryReportDetailnomor.AsString;
                  MemDetaildiskripsi.AsString:= ' '+qryReportDetaildiskripsi.AsString;
                  MemDetailid_kurs_idr.AsString:= 'IDR';
                  MemDetailclaim.AsFloat:= qryReportDetailclaim.AsFloat;
                  MemDetail.Post;
//                  Detail.Next;
//                end;
//                for i := 1 to row_count do begin
//                  MemDetail.Append;
//                  MemDetailnomor.AsString:='';
//                  MemDetaildiskripsi.AsString:= '';
//                  MemDetailid_kurs_idr.AsString:= '';
//                  MemDetailclaim.Clear;
//                  MemDetail.Post;
//                end;
//              finally
//                Detail.First;
//                Detail.EnableControls
//              end;
//            end
//            else begin
//              Detail.DisableControls;
//              Detail.SortedFields := 'nomor';
//              try
//                Detail.First;
//                while not Detail.Eof do begin
//                  MemDetail.Append;
//                  MemDetailnomor.AsString:= Detailnomor.AsString;
//                  MemDetaildiskripsi.AsString:= ' '+Detaildiskripsi.AsString;
//                  MemDetailid_kurs_idr.AsString:= 'IDR';
//                  MemDetailclaim.AsFloat:= Detailclaim.AsFloat;
//                  MemDetail.Post;
//                  Detail.Next;
//                end;
//              finally
//                Detail.First;
//                Detail.EnableControls
//              end;
//            end;

            frxPajak.ShowReport
        end;
  end;  // end of case
end;

procedure TNotaPromoFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TNotaPromoFrm.MemRemarksKeyPress(Sender: TObject; var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grdDBTVDetail.GetColumnByFieldName('diskripsi').FocusWithSelection;
    end;
end;

procedure TNotaPromoFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
end;

procedure TNotaPromoFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TNotaPromoFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TNotaPromoFrm.btnOKClick(Sender: TObject);
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

procedure TNotaPromoFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TNotaPromoFrm.ER_LCB_ITEM_KODEPropertiesCloseUp(Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

     Detailkd_item.AsString:= qryITEMkd_item.AsString;
     Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
end;

procedure TNotaPromoFrm.grdDBTVDetailkd_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_KODE.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaPromoFrm.grdDBTVDetailnama_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_NAME.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaPromoFrm.grdDBTVDetailid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaPromoFrm.lblTMClick(Sender: TObject);
var f : TLookPromoFrm;
    vP : String;
begin
    if Master.State<>dsBrowse then
       Master.Post;

    try
      f:= TLookPromoFrm.Create(Application);
      //F.vJenis:= UpperCase(copy(Masterjenis.AsString,1,1));
      if f.ShowModal=mrOK then begin
         f.kmtPR.First;
         while not f.kmtPR.Eof do begin
           if f.kmtPRselected.AsString='1' then begin
             Detail.Append;
             Detailkd_item.AsString:= f.kmtPRkd_item.AsString;
             Detaildiskripsi.AsString:= f.kmtPRdiskripsi.AsString;
             Detailclaim.AsFloat:= f.kmtPRclaim.AsFloat;
             Detailid_dtpr.AsLargeInt:= f.kmtPRid_dtpr.AsLargeInt;
             Detailno_nota.AsString:= f.kmtPRno_nota.AsString;
             Detailno_invoice.AsString:= f.kmtPRno_invoice.AsString;
             Detaildt_tpr.AsDateTime:= f.kmtPRdt_tpr.AsDateTime;
             if f.kmtPRjns_promo.AsString='U' then begin
                Detailjenis.AsString:= 'UANG';
             end;
             if f.kmtPRjns_promo.AsString='B' then begin
                Detailjenis.AsString:= 'BARANG';
             end;
             if f.kmtPRjns_promo.AsString='D' then begin
                Detailjenis.AsString:= 'DISPLAY';
             end;
             if f.kmtPRjns_promo.AsString='V' then begin
                Detailjenis.AsString:= 'VOUCHER';
             end;

             Detail.Post;
           end;
           f.kmtPR.Next;
         end;
      end;
    finally
      f.Free;
    end;

end;

procedure TNotaPromoFrm.MasterCalcFields(DataSet: TDataSet);
begin
   Masterctotal.AsFloat:= Mastersub_total.AsFloat+Masterppn_rp.AsFloat;
end;

procedure TNotaPromoFrm.qryReportMasterBeforeOpen(DataSet: TDataSet);
begin
   qryReportMaster.Params.ParamByName('id_tpr_detail').Value:= Detailid_tpr_detail.AsLargeInt;
end;

procedure TNotaPromoFrm.qryReportDetailBeforeOpen(DataSet: TDataSet);
begin
   qryReportDetail.Params.ParamByName('id_tpr_detail').Value:= qryReportMasterid_tpr_detail.AsLargeInt;
end;

end.

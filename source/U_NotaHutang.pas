unit U_NotaHutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox,
  cxDBEditRepository, cxEditRepositoryItems, frxClass, frxDBSet,
  frxExportRTF, frxExportPDF, frxExportXLS, kbmMemTable, ZDataset,
  AdvToolBar, AdvToolBarStylers, ZSequence, ZAbstractRODataset,
  ZAbstractDataset, ActnList, cxGridBandedTableView, cxGridTableView,
  AdvPanel, AdvAppStyler, cxGridDBBandedTableView, cxDBLabel, cxMemo,
  cxDBEdit, StdCtrls, cxSpinEdit, cxDropDownEdit, cxCalendar, cxButtonEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBCtrls,
  cxGroupBox, cxTextEdit, RzPanel, ExtCtrls, cxContainer,
  wwdbdatetimepicker, SCControl, SCStdControls, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, AdvGlowButton, AdvReflectionImage,
  wwfltdlg, wwDialog, wwidlg, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TNotaHutangFrm = class(TForm)
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
    Shape7: TShape;
    rgRekanan: TcxGroupBox;
    SCPanel1: TSCPanel;
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    SCPanel2: TSCPanel;
    rgPayment: TcxGroupBox;
    edtDueDate: TcxDBDateEdit;
    Label12: TLabel;
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
    grdDetail: TcxGrid;
    grdlvlDetail: TcxGridLevel;
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
    Label4: TLabel;
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
    Label5: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    edtNOBukti: TcxDBTextEdit;
    Label15: TLabel;
    edtDiscount: TcxDBTextEdit;
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
    edtCARABAYAR: TcxDBComboBox;
    qrySubTotalsub_total: TFloatField;
    rptPOLokal: TfrxReport;
    frAP_A5: TfrxReport;
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
    grdDBTVDetail: TcxGridDBBandedTableView;
    grdDBTVDetailnomor: TcxGridDBBandedColumn;
    grdDBTVDetailkd_item: TcxGridDBBandedColumn;
    grdDBTVDetailsub_total: TcxGridDBBandedColumn;
    grdDBTVDetailnama_item: TcxGridDBBandedColumn;
    grdDBTVDetailhrg_beli_karton: TcxGridDBBandedColumn;
    dsqryRekGL: TDataSource;
    DBText2: TDBText;
    LookRekanan: TcxDBLookupComboBox;
    dsQSupplier: TDataSource;
    dsqryITEM: TDataSource;
    edtDateEdit: TcxDBDateEdit;
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
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
    Detailsub_total: TFloatField;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
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
    grddbtvMastercara_bayar: TcxGridDBColumn;
    grddbtvMasterdt_jth_tempo: TcxGridDBColumn;
    grddbtvMasterno_bukti: TcxGridDBColumn;
    ER: TcxEditRepository;
    ER_EDT: TcxEditRepositoryTextItem;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_NAME: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_KODE: TcxEditRepositoryLookupComboBoxItem;
    Label14: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Masterno_rekap: TStringField;
    Mastern_hari: TIntegerField;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    GroupBox1: TGroupBox;
    MemRemarks: TcxDBMemo;
    Detailid_nota_detail: TLargeintField;
    sq_NOTA_DETAIL: TZSequence;
    qBrowsedisc_rp: TFloatField;
    qBrowsetotal: TFloatField;
    grddbtvMastertotal: TcxGridDBColumn;
    Masterevocer: TFloatField;
    Masterno_faktur_pajak: TStringField;
    Masterno_evocer: TStringField;
    Detailispromo: TStringField;
    MemDetailqty_karton: TFloatField;
    kmtDetailqty_karton: TFloatField;
    grdDBTVDetailpromo: TcxGridDBBandedColumn;
    Label25: TLabel;
    edtDiscountNon: TcxDBTextEdit;
    Detailharga_net: TFloatField;
    Masterdisc_psn: TFloatField;
    cxDBLabel1: TcxDBLabel;
    qBrowsedisc_psn: TFloatField;
    qBrowsevat_num: TFloatField;
    btnCari: TSCButton;
    btnFilter: TSCButton;
    LookBrowse: TwwLookupDialog;
    FilterBrowse: TwwFilterDialog;
    Label26: TLabel;
    edtTotal: TcxDBTextEdit;
    Mastertotal_potongan: TFloatField;
    edtKodeRek: TcxDBButtonEdit;
    LookRekening: TwwLookupDialog;
    qBrowsesub_total: TFloatField;
    qRekapsub_total: TFloatField;
    grdDBTVDetailColumn3: TcxGridDBBandedColumn;
    Detaildisc_psn_non_promo: TFloatField;
    Masterdt_ins: TDateTimeField;
    Masterdt_upd: TDateTimeField;
    Masterisget: TStringField;
    fltfldMastertot2: TFloatField;
    qryITEMkd_item: TStringField;
    qryITEMnama_item: TStringField;
    qryITEMsatuan: TStringField;
    qryITEMhrg_beli: TFloatField;
    qryITEMrasio: TFloatField;
    qryITEMid_rek_persediaan: TStringField;
    grdDBTVDetailColumn1: TcxGridDBBandedColumn;
    Detailsatuan_beli: TStringField;
    Masterjns_transaksi: TStringField;
    edtJnsTrans: TcxDBComboBox;
    qBrowsejns_transaksi: TStringField;
    Label27: TLabel;
    edtDiskon: TcxDBTextEdit;
    Masterdisc_total: TFloatField;
    qPPN: TZQuery;
    qPPNppn_psn: TFloatField;
    qPPNppn_dec: TFloatField;
    qExec: TZQuery;
    Label9: TLabel;
    Label22: TLabel;
    edtNhari: TcxDBSpinEdit;
    kmtDetailsatuan_beli: TStringField;
    kmtMastertotal_diskon: TStringField;
    item: TZReadOnlyQuery;
    itemkd_item: TStringField;
    itemnama_item: TStringField;
    itemsatuan: TStringField;
    itemhrg_beli: TFloatField;
    itemrasio: TFloatField;
    itemid_rek_persediaan: TStringField;
    edtItem: TcxTextEdit;
    Label16: TLabel;
    edtqty: TcxTextEdit;
    qItem: TZReadOnlyQuery;
    qItemkd_item: TStringField;
    qItemnama_item: TStringField;
    qItemhrg_beli: TFloatField;
    qItemhrg_jual: TFloatField;
    qItemhrg_jual_sm_grosir: TFloatField;
    qItemhrg_jual_grosir: TFloatField;
    qItemhrg_jual_grosir_besar: TFloatField;
    qItemsatuan_jual: TStringField;
    qItemrasio: TFloatField;
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
    procedure MemRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure ER_LCB_ITEM_KODEPropertiesCloseUp(Sender: TObject);
    procedure ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
    procedure grdDBTVDetailkd_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDBTVDetailnama_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDBTVDetailid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure btnCariClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure edtKodeRekPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnFirstClick(Sender: TObject);
    procedure Masterdisc_totalChange(Sender: TField);
    procedure Mastersub_totalChange(Sender: TField);
    procedure edtNhariPropertiesChange(Sender: TObject);
    procedure grdDBTVDetailEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure ER_LCB_ITEM_KODEPropertiesInitPopup(Sender: TObject);
    procedure edtDiskonPropertiesChange(Sender: TObject);
    procedure grdDBTVDetailEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure edtItemKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtyKeyPress(Sender: TObject; var Key: Char);

  private
    DBMode: TDBMode;
    { Private declarations }
    vjns_transaksi, vjudul, vrek_master, vrek_detail : string;
    vtag : integer;
    vSubTotal, vDisc2, vDisc, vPPN: Double;
    procedure UpdateView;
    procedure OpenDataset;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;


  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);

var
  NotaHutangFrm: TNotaHutangFrm;

implementation

uses U_DM, U_Currency;

{$R *.dfm}

procedure ShowForm(pNamaMenu: String; ptransaksi: String; ptag: integer);
begin
  try
    NotaHutangFrm := TNotaHutangFrm.Create(Application);
    with NotaHutangFrm do begin
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      DBMode:= dmNone;
      OpenDataset;
      UpdateView;
      vjudul:= pNamaMenu;
      lblHeader1.Caption:= UpperCase(pNamaMenu);
      Caption:= pNamaMenu;
      qPPN.Close;
      qPPN.Open;


      Show;
    end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TNotaHutangFrm.OpenDataset;
begin
      try
        DM.L_User.Close;
        DM.L_User.Open;
        DM.L_Item.Close;
        DM.L_Item.Open;
        DM.L_Supplier.Close;
        DM.L_Supplier.Open;
        qryRekGL.Close;
        qryRekGL.Open;
        QSupplier.Close;
        QSupplier.Open;
        qryITEM.Close;
        qryITEM.Open;
        qBrowse.Close;
        qBrowse.Open;
        Detail.Close;
        DBMode:= dmBrowse;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;

end;

procedure TNotaHutangFrm.CloneDetail;
begin
  Detail.DisableControls;
  try
    try
      vSubTotal:= 0;
      vDisc:= 0;
      vDisc2:= 0;
      kmtCheckDetail.Close;
      kmtCheckDetail.Open;
      Detail.First;
      while not Detail.Eof do begin
        kmtCheckDetail.Append;
        kmtCheckDetailid_item.Value:= Detailkd_item.Value;
        kmtCheckDetail.Post;
        vSubTotal:= vSubTotal+Detailsub_total.AsFloat;
//        vDisc:= vDisc+(Detailhrg.AsFloat*(Detaildisc_psn.AsFloat/100));
        //vDisc2:= vDisc2+(Detailhrg.AsFloat*(Detaildisc_psn.AsFloat/100));
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

function TNotaHutangFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;



procedure TNotaHutangFrm.UpdateView;
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

    btnCari.Visible:= True;
    btnCari.Enabled:= False;
    btnFilter.Visible:= True;
    btnFilter.Enabled:= False;
    
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

    btnCari.Visible:= isBrowse;
    btnCari.Enabled:= not isEmpty;
    btnFilter.Visible:= isBrowse;
    btnFilter.Enabled:= not isEmpty;

    edtNOBukti.Properties.ReadOnly:= isBrowse;
    edtDiscount.Properties.ReadOnly:= isBrowse;

    LookRekanan.Properties.ReadOnly:= isBrowse;
    LookRekanan.Properties.Buttons[0].Visible:= not isBrowse;
//    edtCurrency.Properties.ReadOnly:= isBrowse;
//    edtCurrency.Properties.Buttons[0].Visible:= not isBrowse;
    edtKodeRek.Properties.ReadOnly:= isBrowse;
    edtKodeRek.Properties.Buttons[0].Visible:= not isBrowse;
//    edtJnsTrans.Properties.ReadOnly:= isBrowse;
//    edtJnsTrans.Properties.Buttons[0].Visible:= False;

    edtCARABAYAR.Properties.ReadOnly:= isBrowse;
    edtCARABAYAR.Properties.Buttons[0].Visible:= not isBrowse;
//    edtKurs.Properties.ReadOnly:= isBrowse;
    edtDueDate.Properties.ReadOnly:= isBrowse;
    edtDiscount.Properties.ReadOnly:= isBrowse;
    edtDateEdit.Properties.ReadOnly:= isBrowse;
    MemRemarks.Properties.ReadOnly:= isBrowse;
    RGModeCetak.Enabled:= isBrowse;


    grdDBTVDetail.OptionsData.Inserting:= NOT isBrowse;
    grdDBTVDetail.OptionsData.Editing:= NOT isBrowse;
    grdDBTVDetail.OptionsData.Deleting:= NOT isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;

    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;
  end;
end;

function TNotaHutangFrm.CheckEditRight(var msg: string): Boolean;
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

function TNotaHutangFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TNotaHutangFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNotaHutangFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Perubahan data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TNotaHutangFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TNotaHutangFrm.actAddExecute(Sender: TObject);
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
  Mastertotal.AsFloat:= 0;
end;

procedure TNotaHutangFrm.actEditExecute(Sender: TObject);
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

procedure TNotaHutangFrm.actDeleteExecute(Sender: TObject);
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

procedure TNotaHutangFrm.actRefreshExecute(Sender: TObject);
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

procedure TNotaHutangFrm.actSaveExecute(Sender: TObject);
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
//    try
//      qrySubTotal.Close;
//      qrySubTotal.Params.ParamByName('pid_nota').Value:= Masterid_nota.Value;
//      qrySubTotal.Open;
//    except
//        on E: Exception do
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//    end;

    Master.Edit;
//    Mastersub_total.AsFloat:= qrySubTotalsub_total.AsFloat;
//    Mastertotal.AsFloat:= Mastertotal.AsFloat-Masterdisc_total.AsFloat;
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
  dtpStart.Date:= Now;
  dtpStartCloseUp(nil);
  btnOKClick(nil);

end;

procedure TNotaHutangFrm.actCancelExecute(Sender: TObject);
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


procedure TNotaHutangFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TNotaHutangFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;


  try
    if qryITEM.State=dsInactive then begin
       qryITEM.Close;
       qryITEM.Open;
    end;
    if qryRekGL.State=dsInactive then begin
       qryRekGL.Close;
       qryRekGL.Open;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TNotaHutangFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_nota.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;

   DM.L_Transaction.Close;
   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
   DM.L_Transaction.Open;

   vrek_master:= DM.L_Transactionkid_rek_gl.AsString;
   vrek_detail:= DM.L_Transactiondid_rek_gl.AsString;

   if vrek_master<>'' then Masterid_rek_gl.AsString:= vrek_master;


   Masterdt_nota.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterdt_jth_tempo.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
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
   Masterdisc_total.AsFloat:= 0;
   Masternet_n_ppn.AsFloat:= 0;
   Masteriskirim.AsString:= '0';
   Masterislunas.AsString:= '0';
   Masterretur.AsFloat:= 0;
   Masterishpp.AsString:= '0';
   Masterisok.AsString:= '0';
   Masterid_curr.AsString:= 'IDR';
   Mastern_hari.AsInteger:= 0;
   Masterevocer.AsFloat:= 0;
   Masterisget.AsString:= '0';
   Masterjns_transaksi.AsString:= 'Faktur Pembelian';
   Mastercara_bayar.AsString:= 'KREDIT';
end;

procedure TNotaHutangFrm.DetailNewRecord(DataSet: TDataSet);
begin

  Detailid_nota.AsLargeInt:= Masterid_nota.AsLargeInt;
  Detailhrg_jual_karton.AsFloat:= 0;
  Detailhrg_jual_lusin.AsFloat:= 0;
  Detailqty_lusin.AsFloat:= 0;

  Detailhrg_beli_karton.AsFloat:= 0;
  Detailqty_karton.AsFloat:= 0;
  Detailqty_biji.AsFloat:= 1;
  Detailbiji_per_karton.AsFloat:= 0;

  Detailqty_total_biji.AsFloat:= 0;
  Detaildisc_rp.AsFloat:= 0;
  Detaildisc_psn.AsFloat:= 0;
  //Detaildisc_psn.AsFloat:= DM.GetParamnum(14);
  Detaildisc_psn_non_promo.AsFloat:= 0;
  Detailhrg.AsFloat:= 0;
  Detailispromo.AsString:= '0';

  if vrek_detail<>'' then Detailid_rek_gl.AsString:= vrek_detail;

  if Detail.RecNo=0 then
    Detailnomor.AsInteger:=1
  else
    Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TNotaHutangFrm.MasterBeforePost(DataSet: TDataSet);
begin
//  if Masternota_diretur.IsNull or (Trim(Masternota_diretur.AsString)='') then
//     raise Exception.Create('NO PO harus diisi !')
//  else
  if Mastercara_bayar.IsNull or (Trim(Mastercara_bayar.AsString)='') then
     raise Exception.Create('CARA BAYAR harus diisi !')
  else
  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
     raise Exception.Create('SUPPLIER harus diisi !')
  else
  if edtJnsTrans.Text= '' then
     raise Exception.Create('JENIS TRANSAKSI harus diisi !');


  if Master.State=dsInsert then begin
    Masterid_nota.AsLargeInt:= sq_NOTA.GetNextValue;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_nota.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (Masterid_nota not set). ' +
       'All input aborted !');

  if Masterjns_transaksi.AsString = 'Faktur Pembelian' then begin
     Masterid_trans.AsString:= '101';
  end else
  if Masterjns_transaksi.AsString = 'Free Goods In' then begin
     Masterid_trans.AsString:= '104';
  end else
  if Masterjns_transaksi.AsString = 'Pinjaman In' then begin
     Masterid_trans.AsString:= '105';
  end else
  if Masterjns_transaksi.AsString = 'Tukar In' then begin
     Masterid_trans.AsString:= '106';
  end;

end;

procedure TNotaHutangFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_nota').Value:= Masterid_nota.Value;
     Detail.Open;
  end;
end;

procedure TNotaHutangFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TNotaHutangFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaHutangFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaHutangFrm.DetailCalcFields(DataSet: TDataSet);
var
SubbeforePPN: Double;
begin
  SubbeforePPN:= Detailqty_biji.AsFloat*(Detailhrg.AsFloat-(Detailhrg.AsFloat*Detaildisc_psn.AsFloat/100));
  Detailsub_total.AsFloat:= SubbeforePPN;
  //Detailsub_total.AsFloat:= SubbeforePPN+(SubbeforePPN*qPPNppn_psn.AsFloat/100);

end;

procedure TNotaHutangFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_nota').Value:= qBrowseid_nota.AsLargeInt;
end;

procedure TNotaHutangFrm.DetailBeforePost(DataSet: TDataSet);
begin
 if (Detailkd_item.IsNull) or (Trim(Detailkd_item.AsString)='') then
    raise Exception.Create('KODE harus diisi !');

 if Detail.State=dsInsert then
     Detailid_nota_detail.AsLargeInt:= sq_NOTA_DETAIL.GetNextValue;

end;

procedure TNotaHutangFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TNotaHutangFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TNotaHutangFrm.edtCurrencyPropertiesButtonClick(
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

procedure TNotaHutangFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TNotaHutangFrm.DetailAfterPost(DataSet: TDataSet);
var
total: double;
s : String;
begin
  CloneDetail;
 if Master.State=dsBrowse then
    Master.Edit;
 Mastersub_total.AsFloat:= vSubTotal;
 Master.Post;


  DM.PrepareQuery(qExec);
  s:= 'update master.item set hrg_beli='+FloatToStr(Detailhrg.AsFloat)+' where kd_item='+QuotedStr(Detailkd_item.AsString);
  DM.ExecQuery(qExec, s);

end;

procedure TNotaHutangFrm.actPrintExecute(Sender: TObject);
var i, row_count, idx : Integer;
begin
  if qBrowse.RecordCount=0 then
     Exit;

  case RGModeCetak.ItemIndex of
    0 : begin
                DM.Perusahaan.Close;
                DM.Perusahaan.Open;

                kmtMaster.Close;
                kmtMaster.Open;
                kmtMaster.Append;
                kmtMasterpo_number.AsString:= MasterNO_BUKTI.AsString;
                kmtMasterdelivery_date.AsString:= 'Latest '+ FormatDateTime('mmmm dd, yyyy', Masterdt_kirim.AsDateTime);
                kmtMasterdelivery_place.AsString:= DM.Perusahaanperusahaan.AsString+' '+DM.Perusahaanalamat.AsString;

                kmtMasterpayment_terms.AsString:= FormatDateTime('dd-mmm-yyyy',Masterdt_jth_tempo.AsDateTime);
                kmtMastersupplier_name.AsString:= Masternama_rekanan.AsString;
                if Trim(Masteralamat_rekanan.AsString)='-' then kmtMastersupplier_address.Clear
                else kmtMastersupplier_address.AsString:= MasterALAMAT_REKANAN.AsString;
                kmtMastersupplier_contact.AsString:= Masterkontak_rekanan.AsString;
                kmtMastersupplier_phone.AsString:= Mastertelp_rekanan.AsString+'/'+MasterFAX_REKANAN.AsString;
                kmtMastersupplier_city.AsString:= MasterKOTA_REKANAN.AsString;
                kmtMasterremarks.AsString:= MasterDISKRIPSI.AsString;
                kmtMastersub_total.AsString:= FormatFloat('0,0.0', MasterSUB_TOTAL.AsFloat);
                kmtMastertotal.AsString:= FormatFloat('0,0.0', MasterTOTAL.AsFloat);
                kmtMastertotal_diskon.AsString:= FormatFloat('0,0.0', Masterdisc_total.AsFloat);


                kmtMasterfsubtotal.AsFloat:= Mastersub_total.AsFloat;
                kmtMasterftotal.AsFloat:= Mastertotal.AsFloat;

                DM.MyKonversi1.Nilai:= Mastertotal.AsFloat;
                kmtMasterterbilang.AsString:= '# '+DM.MyKonversi1.HasilKonversi+' #';

                kmtMastervat_str.AsString:= FormatFloat('0,0.0', Mastervat_num.AsFloat);
                kmtMasterdelivery_terms.AsString:= FormatFloat('0.0,0',Masterdisc_rp.AsFloat);

                kmtMasterapproved_name.AsString:= '';

                if Masterdt_kirim.IsNull then kmtMasterdt_delivery.AsString:= ' '
                else kmtMasterdt_delivery.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_kirim.AsDateTime);

                if Masterdt_nota.IsNull then kmtMasterdt_approved_1.AsString:= ''
                else kmtMasterdt_approved_1.AsString:= FormatDateTime('dd-mmmm-yyyy', Masterdt_nota.AsDateTime);

                kmtMaster.Post;

              kmtDetail.Close;
              kmtDetail.Open;
                idx:= 1;
                Detail.DisableControls;
                try
                  Detail.First;
                  while not Detail.Eof do begin
                    kmtDetail.Append;
                    kmtDetailno_urut.Value:= IntToStr(idx);
                    kmtDetailqty_karton.Value:= Detailqty_karton.Value;
                    kmtDetailqty.Value:= Detailqty_biji.Value;
                    kmtDetailsatuan_beli.AsString:= Detailsatuan_beli.Value;
                    kmtDetaildescriptions.Value:= Detaildiskripsi.Value;
                    kmtDetailunit_price.Value:= Detailhrg.Value;
                    kmtDetaildisc.AsFloat:= Detaildisc_psn.Value;
                    kmtDetailextended.Value:= DetailSUB_TOTAL.Value;

                    kmtDetail.Post;
                    Detail.Next;
                    idx:= idx+1
                  end;
                finally
                  Detail.First;
                  Detail.EnableControls
                end;



          rptPOLokal.ShowReport
        end; /////---------------------------------------------------------------------END OF CASE 0

    1 : begin

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
          MemMastermodel.AsString:= 'NH-'+vjns_transaksi;
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
                    MemDetailunit_price.AsFloat:= Detailhrg_beli_karton.AsFloat;
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
                    MemDetailqty_karton.AsFloat:= Detailqty_biji.AsFloat;
                    MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
                    MemDetailunit_price.AsFloat:= Detailhrg_beli_karton.AsFloat;
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

     2: begin
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
           qRekap.Params.ParamByName('id_trans').AsString:= vjns_transaksi;
           qRekap.Open;

           frxRepMaster.ShowReport;

        end;


  end;  // end of cae

end;

procedure TNotaHutangFrm.MemRemarksKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grdDBTVDetail.GetColumnByFieldName('diskripsi').FocusWithSelection;
    end;
end;

procedure TNotaHutangFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TNotaHutangFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.Params.ParamByName('id_trans').AsString:= vjns_transaksi;
end;

procedure TNotaHutangFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TNotaHutangFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end
end;

procedure TNotaHutangFrm.btnOKClick(Sender: TObject);
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

procedure TNotaHutangFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TNotaHutangFrm.ER_LCB_ITEM_KODEPropertiesCloseUp(
  Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

       Detailkd_item.AsString:= qryITEMkd_item.AsString;
       Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
       Detailid_rek_gl.AsString:= qryITEMid_rek_persediaan.AsString;
       Detailhrg.AsFloat:= qryITEMhrg_beli.AsFloat;
    //     Detailbiji_per_karton.AsFloat:= qryITEMrasio.AsFloat;
       Detailsatuan_beli.AsString:= qryITEMsatuan.AsString;

end;

procedure TNotaHutangFrm.ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
begin
  Detailid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;
end;

procedure TNotaHutangFrm.grdDBTVDetailkd_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
//  if Detail.State in [dsInsert,dsedit] then
//        AProperties := ER_LCB_ITEM_KODE.Properties
//  else
//     AProperties := ER_EDT.Properties;
end;

procedure TNotaHutangFrm.grdDBTVDetailnama_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_NAME.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaHutangFrm.grdDBTVDetailid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaHutangFrm.btnCariClick(Sender: TObject);
begin
   LookBrowse.Execute;
end;

procedure TNotaHutangFrm.btnFilterClick(Sender: TObject);
begin
   FilterBrowse.Execute;
end;

procedure TNotaHutangFrm.MasterCalcFields(DataSet: TDataSet);
var
  total : Double;
begin
//   Mastertotal_potongan.AsFloat:= Masterdisc_rp.AsFloat+Masterdisc_psn.AsFloat;
//   total := 0;
end;

procedure TNotaHutangFrm.edtKodeRekPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if LookRekening.Execute then begin
      if Master.State=dsBrowse then
         Master.Edit ;
      Masterid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;

   end;
end;

procedure TNotaHutangFrm.btnFirstClick(Sender: TObject);
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

procedure TNotaHutangFrm.Masterdisc_totalChange(Sender: TField);
begin
//  CloneDetail;
 if Master.State=dsBrowse then
    Master.Edit;
  //Mastervat_num.AsFloat:= (vSubTotal-Masterdisc_total.AsFloat)*qPPNppn_psn.AsFloat/100;
  Mastertotal.AsFloat:= Mastersub_total.AsFloat-Masterdisc_total.AsFloat;//+Mastervat_num.AsFloat;

end;

procedure TNotaHutangFrm.Mastersub_totalChange(Sender: TField);
begin
  Mastertotal.AsFloat:= Mastersub_total.AsFloat;
end;

procedure TNotaHutangFrm.edtNhariPropertiesChange(Sender: TObject);
var
DT : TDate;
begin
//  DBMode:= dmEdit;
  try
    DT:= Masterdt_nota.AsDateTime;
    DT:= DT+StrToInt(edtNhari.Text);
    Masterdt_jth_tempo.AsDateTime:= DT;
    Master.Post;
  except
  end;


end;

procedure TNotaHutangFrm.grdDBTVDetailEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (grdDBTVDetail.Controller.FocusedColumn = grdDBTVDetailkd_item) then
    grdDBTVDetail.Controller.FocusedColumn := grdDBTVDetailnama_item;

  if (Key = VK_RETURN) and (grdDBTVDetail.Controller.FocusedColumn = grdDBTVDetailColumn3) then
    Key:= VK_DOWN;

  if (Key = VK_TAB) then
      btnSave.SetFocus;
end;

procedure TNotaHutangFrm.ER_LCB_ITEM_KODEPropertiesInitPopup(
  Sender: TObject);
begin
  try
    qryITEM.Close;
    qryITEM.Open;
  except
  end;
end;



procedure TNotaHutangFrm.edtDiskonPropertiesChange(Sender: TObject);
begin
  if edtDiskon.Text= '' then
     edtDiskon.Text:= Trim('0');
end;

procedure TNotaHutangFrm.grdDBTVDetailEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  if Key=#13 then
     grdDBTVDetailColumn3.EditValue;
end;

procedure TNotaHutangFrm.edtItemKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then

    try
      qItem.Close;
      qItem.Params.ParamByName('pkd_item').Value:= edtItem.Text;
      qItem.Open;

      if qItem.RecordCount=0 then begin
//        Detail.Append;
//        Detailkd_item.AsString:= '';
//        Detaildiskripsi.AsString:= '';
//        Detailhrg.AsFloat:= 0;
//        Detailsatuan_beli.AsString:= '';
//        grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;
      end else begin
        edtqty.SetFocus;

      end;

    except
    end;
end;

procedure TNotaHutangFrm.edtqtyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
     try
        Detail.Append;
        Detailkd_item.AsString:= qItemkd_item.AsString;
        Detaildiskripsi.AsString:= qItemnama_item.AsString;
        Detailhrg.AsFloat:= qItemhrg_beli.AsFloat;
        Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
        Detailqty_biji.AsFloat:= StrToFloat(edtqty.Text);
        Detail.Post;
        edtItem.Text:='';
        edtqty.Text:='';
        edtItem.SetFocus;
     except
     end;
end;

end.
unit U_NotaOnline;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, wwfltdlg,
  wwDialog, wwidlg, cxEditRepositoryItems, cxDBEditRepository, frxClass,
  frxDBSet, frxExportRTF, frxExportPDF, frxExportXLS, kbmMemTable,
  ZDataset, AdvToolBar, AdvToolBarStylers, ZSequence, ZAbstractRODataset,
  ZAbstractDataset, ActnList, cxGridBandedTableView, cxGridTableView,
  AdvPanel, AdvAppStyler, cxGridDBBandedTableView, cxDBLabel, cxButtonEdit,
  cxDBEdit, cxSpinEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBCtrls, cxGroupBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxMemo, StdCtrls, RzPanel, ExtCtrls, cxContainer,
  wwdbdatetimepicker, SCControl, SCStdControls, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, AdvGlowButton, AdvReflectionImage,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, MPlayer;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TNotaOnlineFrm = class(TForm)
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
    dsMaster: TDataSource;
    Master: TZQuery;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdlvlMaster: TcxGridLevel;
    grddbtvMasterreq_number: TcxGridDBColumn;
    grddbtvMasterrequester: TcxGridDBColumn;
    grddbtvMasterdt_req: TcxGridDBColumn;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    Detail: TZQuery;
    dsDetail: TDataSource;
    sq_NOTA: TZSequence;
    qryGet_Nota_Hutang_Number: TZQuery;
    ATBOS: TAdvToolBarOfficeStyler;
    QCustomer: TZReadOnlyQuery;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    qrySubTotal: TZReadOnlyQuery;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemMaster: TkbmMemTable;
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
    MemMastervendor_phone: TStringField;
    MemMasterterbilang: TStringField;
    QCustomerkd_rekanan: TStringField;
    QCustomernama_rekanan: TStringField;
    QCustomerplafon: TFloatField;
    QCustomeralamat: TStringField;
    QCustomerkota: TStringField;
    btnClose: TSCButton;
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
    qryGet_Nota_Hutang_Numberfn_gen_nota_number: TStringField;
    qryRekGL: TZReadOnlyQuery;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    qryITEM: TZReadOnlyQuery;
    qrySubTotalsub_total: TFloatField;
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
    dsQCustomer: TDataSource;
    dsqryRekGL: TDataSource;
    dsqryITEM: TDataSource;
    QSalesman: TZReadOnlyQuery;
    dsQSalesman: TDataSource;
    QSalesmanid_division: TStringField;
    QSalesmandescription: TStringField;
    QSalesmanid_rek_gl: TStringField;
    QSalesmankd_sales: TStringField;
    MemDetailqty_karton: TFloatField;
    MemDetailqty_lusin: TFloatField;
    MemDetailhrg_lusin: TFloatField;
    SCPanel3: TSCPanel;
    Label6: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
    ER: TcxEditRepository;
    ER_EDT: TcxEditRepositoryTextItem;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_KODE: TcxEditRepositoryLookupComboBoxItem;
    MemMasterpromo_uang: TFloatField;
    MemMasterpromo_barang: TFloatField;
    sq_NOTA_DETAIL: TZSequence;
    grddbtvMastertotal: TcxGridDBColumn;
    grddbtvMasterdisc_rp: TcxGridDBColumn;
    MemMasterevoucer: TFloatField;
    MemMasterno_evocer: TStringField;
    MemMastersisa_tagihan: TFloatField;
    qRekappromo_uang: TFloatField;
    qRekappromo_barang: TFloatField;
    qRekapevocer: TFloatField;
    qRekapno_evocer: TStringField;
    frxPajak: TfrxReport;
    MemDetailid_kurs_idr: TStringField;
    MemMastervendor_city_pajak: TStringField;
    MemMastervendor_phone_pajak: TStringField;
    MemMastervendor_name_pajak: TStringField;
    MemMasterjabatan: TStringField;
    MemMasterkurs_pajak: TStringField;
    MemMasterdt_pengukuhan: TStringField;
    MemMasterv_npwp_15: TStringField;
    MemMasterv_npwp_14: TStringField;
    MemMasterv_npwp_13: TStringField;
    MemMasterv_npwp_12: TStringField;
    MemMasterv_npwp_11: TStringField;
    MemMasterv_npwp_10: TStringField;
    MemMasterv_npwp_9: TStringField;
    MemMasterv_npwp_8: TStringField;
    MemMasterv_npwp_7: TStringField;
    MemMasterv_npwp_6: TStringField;
    MemMasterv_npwp_5: TStringField;
    MemMasterv_npwp_4: TStringField;
    MemMasterv_npwp_3: TStringField;
    MemMasterv_npwp_2: TStringField;
    MemMasterv_npwp_1: TStringField;
    MemMasterp_npwp_15: TStringField;
    MemMasterp_npwp_14: TStringField;
    MemMasterp_npwp_13: TStringField;
    MemMasterp_npwp_12: TStringField;
    MemMasterp_npwp_11: TStringField;
    MemMasterp_npwp_10: TStringField;
    MemMasterp_npwp_9: TStringField;
    MemMasterp_npwp_8: TStringField;
    MemMasterp_npwp_7: TStringField;
    MemMasterp_npwp_6: TStringField;
    MemMasterp_npwp_5: TStringField;
    MemMasterp_npwp_4: TStringField;
    MemMasterp_npwp_3: TStringField;
    MemMasterp_nwpw_2: TStringField;
    MemMasterp_npwp_1: TStringField;
    MemMasteralamat_perusahaan: TStringField;
    MemMasternama_perusahaan: TStringField;
    MemMasterkota_perusahaan: TStringField;
    MemMasterdated: TStringField;
    MemMasterreq_number: TStringField;
    MemMasteralamat_pajak_perusahaan: TStringField;
    grddbtvMastersub_total: TcxGridDBColumn;
    LookRekening: TwwLookupDialog;
    LookSalesman: TwwLookupDialog;
    btnCari: TSCButton;
    btnFilter: TSCButton;
    LookBrowse: TwwLookupDialog;
    FilterBrowse: TwwFilterDialog;
    cxStyle5: TcxStyle;
    qryITEMkd_item: TStringField;
    qryITEMnama_item: TStringField;
    qryITEMhrg_beli: TFloatField;
    qryITEMhrg_jual: TFloatField;
    qryITEMsatuan_jual: TStringField;
    qryITEMrasio: TFloatField;
    ER_LCB_ITEM_NAME: TcxEditRepositoryLookupComboBoxItem;
    qryITEMhrg_jual_sm_grosir: TFloatField;
    qryITEMhrg_jual_grosir: TFloatField;
    qryITEMhrg_jual_grosir_besar: TFloatField;
    popPosting: TPopupMenu;
    qExec: TZQuery;
    tsDetail: TcxTabSheet;
    pnlMaster: TSCPanel;
    Shape4: TShape;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Shape3: TShape;
    Shape8: TShape;
    Label2: TLabel;
    Shape7: TShape;
    RzGroupBox2: TRzGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    edtKode: TcxDBTextEdit;
    edtOrdering: TcxDBTextEdit;
    edtDateEdit: TcxDBDateEdit;
    cxGroupBox1: TcxGroupBox;
    Label13: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    cxGroupBox2: TcxGroupBox;
    MemRemarks: TcxDBMemo;
    SCPanel1: TSCPanel;
    Label16: TLabel;
    Label17: TLabel;
    Shape9: TShape;
    Label23: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Shape12: TShape;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edtVAT: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    edtVocer: TcxDBTextEdit;
    edtNoVocer: TcxDBTextEdit;
    cxDBLabel2: TcxDBLabel;
    edtMVocer: TcxDBTextEdit;
    edtNoMVocer: TcxDBTextEdit;
    SCPanel2: TSCPanel;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    grdFP_Detail: TcxGrid;
    grddbtvFP_Detail: TcxGridDBBandedTableView;
    grddbtvFP_Detailnomor: TcxGridDBBandedColumn;
    grddbtvFP_Detailkd_item: TcxGridDBBandedColumn;
    grddbtvFP_Detailnama_item: TcxGridDBBandedColumn;
    grddbtvFP_Detailqty_ot_biji: TcxGridDBBandedColumn;
    grddbtvFP_Detailhrg_jual_lusin: TcxGridDBBandedColumn;
    grddbtvFP_Detailsub_total: TcxGridDBBandedColumn;
    grddbtvFP_DetailColumn2: TcxGridDBBandedColumn;
    grddbtvFP_DetailColumn1: TcxGridDBBandedColumn;
    grdlvlFP_Detail: TcxGridLevel;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    qCekHrg_Jual: TZQuery;
    qCekHrg_Jualhrg: TFloatField;
    getprint: TZReadOnlyQuery;
    getprintprinter: TStringField;
    qPrint: TZQuery;
    qPrintid_nota: TLargeintField;
    qPrintno_nota: TStringField;
    qPrintdt_nota: TDateTimeField;
    qPrintno_bukti: TStringField;
    qPrintdt_ins: TDateTimeField;
    qPrintdt_upd: TDateTimeField;
    qPrintusr_ins: TStringField;
    qPrintusr_upd: TStringField;
    qPrintispost: TStringField;
    qPrintiscancel: TStringField;
    qPrintisdelete: TStringField;
    qPrinttotal: TFloatField;
    qPrintkd_rekanan: TStringField;
    qPrintid_trans: TStringField;
    qPrintid_rek_gl: TStringField;
    qPrintid_division: TStringField;
    qPrintcara_bayar: TStringField;
    qPrintdt_jth_tempo: TDateTimeField;
    qPrintdiskripsi: TStringField;
    qPrintsub_total: TFloatField;
    qPrintclaim: TFloatField;
    qPrintdisc_rp: TFloatField;
    qPrintpromo_uang: TFloatField;
    qPrintpromo_barang: TFloatField;
    qPrintnet_n_ppn: TFloatField;
    qPrintiskirim: TStringField;
    qPrintislunas: TStringField;
    qPrintretur: TFloatField;
    qPrintishpp: TStringField;
    qPrintdt_lunas: TDateTimeField;
    qPrintdt_kirim: TDateTimeField;
    qPrintisok: TStringField;
    qPrintdt_posting: TDateTimeField;
    qPrintnota_diretur: TStringField;
    qPrintid_curr: TStringField;
    qPrintkurs: TFloatField;
    qPrintvat_str: TStringField;
    qPrintvat_num: TFloatField;
    qPrintkd_del_place: TStringField;
    qPrintno_rekap: TStringField;
    qPrintn_hari: TIntegerField;
    qPrintevocer: TFloatField;
    qPrintno_faktur_pajak: TStringField;
    qPrintno_evocer: TStringField;
    qPrintid_import: TLargeintField;
    qPrintpromo_id: TStringField;
    qPrintmvocer: TFloatField;
    qPrintno_mvocer: TStringField;
    qPrintdisc_psn: TFloatField;
    qPrintisget: TStringField;
    qPrintjns_transaksi: TStringField;
    qPrintdisc_total: TFloatField;
    qPrintdisc_member: TFloatField;
    qPrintshift: TIntegerField;
    qPrintisget_pay: TStringField;
    qPrintdibayar: TFloatField;
    qPrintkembali: TFloatField;
    frxPrint: TfrxDBDataset;
    MemMasterkasir: TStringField;
    MemDetailsatuan: TStringField;
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
    MemMasterdibayar: TStringField;
    MemMasterkembali: TStringField;
    MemMasterdisc_member: TStringField;
    frPOS80: TfrxReport;
    grddbtvMasterColumn1: TcxGridDBColumn;
    Masterid_nota: TLargeintField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterno_bukti: TStringField;
    Masterno_faktur_pajak: TStringField;
    Masterdt_ins: TDateTimeField;
    Masterdt_upd: TDateTimeField;
    Mastershift: TIntegerField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterusr_operator: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Masterisget: TStringField;
    Masteriskirim: TStringField;
    Masterdt_kirim: TDateTimeField;
    Masterstatus: TStringField;
    Masterkd_member: TStringField;
    Masterid_trans: TStringField;
    Masterid_rek_gl: TStringField;
    Mastercara_bayar: TStringField;
    Masternama_bank: TStringField;
    Masterno_rek_bank: TStringField;
    Mastersub_total: TFloatField;
    Masterdisc_member_rp: TFloatField;
    Masterdisc_item_rp: TFloatField;
    Mastertotal: TFloatField;
    Masterppn: TFloatField;
    Mastertotal_n_ppn: TFloatField;
    Mastercatatan_belanja: TStringField;
    Detailid_nota_detail: TLargeintField;
    Detailid_nota: TLargeintField;
    Detailid_rek_gl: TStringField;
    Detailnomor: TIntegerField;
    Detailjns_item: TStringField;
    Detailispromo: TStringField;
    Detailkd_item: TStringField;
    Detailnama_item: TStringField;
    Detailqty: TFloatField;
    Detailsatuan: TStringField;
    Detailhrg_jual: TFloatField;
    Detaildisc_rp: TFloatField;
    Detaildisc_psn: TFloatField;
    Detailsub_total: TFloatField;
    Detailstatus: TStringField;
    Detailketerangan: TStringField;
    Masternama_member: TStringField;
    qBrowseid_nota: TLargeintField;
    qBrowseno_nota: TStringField;
    qBrowsedt_nota: TDateTimeField;
    qBrowseusr_upd: TStringField;
    qBrowseusr_operator: TStringField;
    qBrowsedt_ins: TDateTimeField;
    qBrowsedt_upd: TDateTimeField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsekd_member: TStringField;
    qBrowsenama_member: TStringField;
    qBrowsecara_bayar: TStringField;
    qBrowseno_bukti: TStringField;
    qBrowsenama_bank: TStringField;
    qBrowseno_rek_bank: TStringField;
    qBrowsestatus: TStringField;
    qBrowseisget: TStringField;
    qBrowseiskirim: TStringField;
    qBrowsedt_kirim: TDateTimeField;
    qBrowsesub_total: TFloatField;
    qBrowsedisc_member_rp: TFloatField;
    qBrowsedisc_item_rp: TFloatField;
    qBrowsetotal: TFloatField;
    qBrowseppn: TFloatField;
    qBrowsetotal_n_ppn: TFloatField;
    qBrowsecatatan_belanja: TStringField;
    grddbtvMasterColumn2: TcxGridDBColumn;
    grddbtvFP_DetailColumn3: TcxGridDBBandedColumn;
    Label9: TLabel;
    edtDiscItem: TcxDBTextEdit;
    grddbtvMasterColumn3: TcxGridDBColumn;
    Masteralamat: TStringField;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    KIRIM1: TMenuItem;
    qBrowseketerangan: TStringField;
    SELESAI1: TMenuItem;
    BATAL1: TMenuItem;
    Timer1: TTimer;
    MediaPlayer1: TMediaPlayer;
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
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure Mastersub_totalChange(Sender: TField);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure ER_LCB_ITEM_KODEPropertiesCloseUp(Sender: TObject);
    procedure grddbtvFP_Detailkd_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grddbtvFP_Detailnama_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grddbtvFP_Detailid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure edtKodeRekPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtSalemanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnCariClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure ER_LCB_ITEM_NAMEPropertiesCloseUp(Sender: TObject);
    procedure qCekHrg_JualBeforeOpen(DataSet: TDataSet);
    procedure Detailqty_bijiChange(Sender: TField);
    procedure Posting1Click(Sender: TObject);
    procedure Unposting1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure edtItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtqtyKeyPress(Sender: TObject; var Key: Char);
    procedure Cetak1Click(Sender: TObject);
    procedure tsBrowseShow(Sender: TObject);
    procedure KIRIM1Click(Sender: TObject);
    procedure SELESAI1Click(Sender: TObject);
    procedure BATAL1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure popPostingPopup(Sender: TObject);
    procedure grddbtvMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    DBMode: TDBMode;
    { Private declarations }
    vjns_item, vjns_transaksi, vjudul, vlook, vrek_kredit, vrek_debet : string;
    vtag, CountData : integer;
    vSubTotal, vDiscRP : Double;
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;
    procedure Bayar;


  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu:String; ptransaksi : String; pitem : String; plook: String; ptag : integer);

var
  NotaOnlineFrm: TNotaOnlineFrm;

implementation

uses U_DM, U_Currency;

{$R *.dfm}

procedure ShowForm(pNamaMenu: String; ptransaksi: String; pitem: String; plook: String; ptag: integer);
begin
  try
    NotaOnlineFrm := TNotaOnlineFrm.Create(Application);
    with NotaOnlineFrm do begin
      vjns_item:= pitem;
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      vlook:= plook;
      DBMode:= dmNone;
      Timer1.Enabled:= False;
//      try
//        DM.L_User.Close;
//        DM.L_User.Open;
//        DM.L_Customer.Close;
//        DM.L_Customer.Open;
//        DM.L_Item.Close;
//        DM.L_Item.Open;
//        QCustomer.Close;
//        QCustomer.Open;
//        qryRekGL.Close;
//        qryRekGL.Open;
//        qryITEM.Close;
//        qryITEM.Open;
//        QSalesman.Close;
//        QSalesman.Open;
//        qBrowse.Close;
//        qBrowse.Open;
//        Detail.Close;
//        DBMode:= dmBrowse;
//      except
//        on E: Exception do begin
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//        end
//      end;

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

procedure TNotaOnlineFrm.CloneDetail;
begin
  Detail.DisableControls;
  try
    try
      vSubTotal:= 0;
      vDiscRP:= 0;
      kmtCheckDetail.Close;
      kmtCheckDetail.Open;
      Detail.First;
      while not Detail.Eof do begin
        kmtCheckDetail.Append;
        kmtCheckDetailid_item.Value:= Detailkd_item.Value;
        kmtCheckDetail.Post;
        vSubTotal:= vSubTotal+Detailsub_total.AsFloat;
        vDiscRP:= vDiscRP+Detaildisc_rp.AsFloat;
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

function TNotaOnlineFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TNotaOnlineFrm.Bayar;
var
s: String;
begin
//  getprint.Close;
//  getprint.Open;
//
//  DM.L_Perusahaan.Close;
//  DM.L_Perusahaan.Open;
//
//  qPrint.Close;
//  qPrint.Open;
//
//  MemInfoPerusahaan.Close;
//  MemInfoPerusahaan.Open;
//  MemInfoPerusahaan.Append;
//  MemInfoPerusahaannama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
//  MemInfoPerusahaanalamat_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString;
//  MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.L_Perusahaanphone.AsString;
//  MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.L_Perusahaanfax.AsString;
//  MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaancity.AsString;
//  MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
//  MemInfoPerusahaanjudul.AsString:= lblHeader1.Caption;
//  MemInfoPerusahaan.Post;
//
//  MemMaster.Close;
//  MemMaster.Open;
//  MemMaster.Append;
//  MemMasterreq_number.AsString:= Masterno_nota.AsString;
//  MemMasterproject.AsString:= '';
//  MemMastervendor_name.AsString:= Masternama_member.AsString;
//  MemMasterremarks.AsString:= Masterdiskripsi.AsString;
//  MemMasterpo_number.AsString:= Masterno_bukti.AsString;
//  MemMasterid_curr.AsString:= '';
//  MemMasterkurs.AsString:= '';
//  MemMasterdiscount.AsString:= FormatFloat('0,0', Masterdisc_rp.AsFloat);
//  MemMastervat_str.AsString:= Mastervat_str.AsString;
//  MemMastervat_num.AsString:= FormatFloat('0,0', Mastervat_num.AsFloat);
//  MemMastertotal.AsString:= FormatFloat('0,0', Mastertotal.AsFloat);
//  MemMastersub_total.AsString:= FormatFloat('0,0', Mastersub_total.AsFloat);
//  MemMasterdisc_member.AsString:= FormatFloat('0,0', Masterdisc_member.AsFloat);
//  MemMasterpromo_uang.AsFloat:= Masterpromo_uang.AsFloat;
//  MemMasterpromo_barang.AsFloat:= Masterpromo_barang.AsFloat;
//  MemMasterevoucer.AsFloat:= Masterevocer.AsFloat;
//  MemMasterno_evocer.AsString:= Masterno_evocer.AsString;
//  MemMastersisa_tagihan.AsFloat:= Mastersisa.AsFloat;
//  DM.MyKonversi1.Nilai:= Mastersisa.AsFloat;
//  MemMasterterbilang.AsString:= '# '+DM.MyKonversi1.HasilKonversi+' #';
//
//  if Masterispost.AsString='1' then MemMasterposted.AsString:='POSTED'
//  else MemMasterposted.AsString:='';
//
//  MemMasterkasir.AsString:= DM.UserConnect;
//
////  vKembali:= FloatToStr(g.Masterkembali.AsFloat);
////  vKembali:= StringReplace(vKembali,'-','',[rfReplaceAll,rfIgnoreCase]);
////  FKembali:= StrToFloat(vKembali);
////  MemMasterdibayar.AsString:= FormatFloat('0,0', Masterdibayar.AsFloat);
////  MemMasterkembali.AsString:= FormatFloat('0,0', FKembali);
//
//
//  MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
//  MemMastermodel.AsString:= 'NP-'+vjns_transaksi;
//  //          MemMasterdistribusi_document.AsString:= QDocDistributedoc_ditribution.AsString;
//
//  if Masterdt_nota.IsNull then MemMasterdated.AsString:= ''
//  else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm', Masterdt_nota.AsDateTime);
//
//  if Masterdt_jth_tempo.IsNull then MemMasterdt_due.AsString:= ''
//  else MemMasterdt_due.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_jth_tempo.AsDateTime);
//
//  if Masterdt_nota.IsNull then MemMasterdt_prepared.AsString:= 'TANGGL :'
//  else MemMasterdt_prepared.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_nota.AsDateTime);
//
//  MemMasterdt_reviewed_1.AsString:= 'TANGGAL : ';
//  MemMasterdt_approved_1.AsString:= 'TANGGAL : ';
//
//
//  MemMaster.Post;
//
//  MemDetail.Close;
//  MemDetail.Open;
//
//  try
//    Detail.First;
//    while not Detail.Eof do begin
//      MemDetail.Append;
//      MemDetailno.AsString:= Detailnomor.AsString;
//      MemDetailid_item.AsString:= Detailkd_item.AsString;
//      MemDetaildescription.AsString:= Detailnama_item.AsString;
//      MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
//      MemDetailsatuan.AsString:= Detailsatuan_beli.AsString;
//      MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
//      MemDetailqty_lusin.AsFloat:= Detailqty_lusin.AsFloat;
//      MemDetailunit_price.AsFloat:= Detailhrg.AsFloat;
//      MemDetailhrg_lusin.AsFloat:= Detailhrg_jual_lusin.AsFloat;
//      MemDetaildisc.AsFloat:= Detaildisc_rp.AsFloat;
//      MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
//      MemDetail.Post;
//      Detail.Next;
//    end;
//
//  finally
//    Detail.First;
//    Detail.EnableControls
//  end;
//
//  DM.PrepareQuery(qExec);
//  s:= 'update transaksi.nota set ispost='+QuotedStr('1')+' where no_nota='+QuotedStr(Masterno_nota.AsString);
//  DM.ExecQuery(qExec, s);
//
//  frPOS80.PrintOptions.Printer:='POS80';
//  frPOS80.PrepareReport;
//  frPOS80.PrintOptions.ShowDialog:= False;
//  frPOS80.Print;

end;

procedure TNotaOnlineFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    pgTransaction.ActivePageIndex := 0;

    btnCari.Visible:= True;
    btnCari.Enabled:= False;
    btnFilter.Visible:= True;
    btnFilter.Enabled:= False;
    btnCancel.Visible:= False

  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := qBrowse.RecordCount=0;

    if isBrowse then
      pgTransaction.ActivePageIndex := 0
    else
      pgTransaction.ActivePageIndex := 1;


    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnCari.Visible:= isBrowse;
    btnCari.Enabled:= not isEmpty;
    btnFilter.Visible:= isBrowse;
    btnFilter.Enabled:= not isEmpty;
    btnCancel.Visible:= not isBrowse;

  end;
end;

function TNotaOnlineFrm.CheckEditRight(var msg: string): Boolean;
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

function TNotaOnlineFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TNotaOnlineFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNotaOnlineFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Perubahan data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TNotaOnlineFrm.actCloseExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=1 then begin
     pgTransaction.ActivePageIndex:= 0;
     Timer1.Enabled:= True;
  end
  else begin
     Close;
  end;
end;

procedure TNotaOnlineFrm.actAddExecute(Sender: TObject);
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
end;

procedure TNotaOnlineFrm.actEditExecute(Sender: TObject);
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

procedure TNotaOnlineFrm.actDeleteExecute(Sender: TObject);
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

procedure TNotaOnlineFrm.actRefreshExecute(Sender: TObject);
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

procedure TNotaOnlineFrm.actSaveExecute(Sender: TObject);
var
  s: String;
begin

  if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Anda yakin ingin memproses pesanan ini?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  try
    DM.PrepareQuery(qExec);
    s:= 'update transaksi.nota_online set status='+QuotedStr('1')+', usr_operator='+QuotedStr(DM.UserConnect)+
        ' where id_nota='+IntToStr(Masterid_nota.AsLargeInt);
    DM.ExecQuery(qExec, s);
    qBrowse.Refresh;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  DBMode:= dmBrowse;
  UpdateView;
  MediaPlayer1.Stop;
  Timer1.Enabled:= True;


//  DM.StartTransaction;
//  try
//    if Trim(Masterno_nota.AsString)='' then begin
//        qryGet_Nota_Hutang_Number.Close;
//        qryGet_Nota_Hutang_Number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
//        qryGet_Nota_Hutang_Number.Open;
//        if Master.State=dsBrowse then
//           Master.Edit;
//        Masterno_nota.AsString:= qryGet_Nota_Hutang_Numberfn_gen_nota_number.AsString;
//    end;
//
//    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
//        Master.Post;
//    if (Detail.State=dsInsert) or (Detail.State=dsEdit)  then
//        Detail.Post;
//    Master.ApplyUpdates;
//    Detail.ApplyUpdates;
//    Master.CommitUpdates;
//    Detail.CommitUpdates;
////    try
////      qrySubTotal.Close;
////      qrySubTotal.Params.ParamByName('pid_nota').Value:= Masterid_nota.Value;
////      qrySubTotal.Open;
////    except
////        on E: Exception do
////          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
////    end;
//
////    Master.Edit;
////    Mastersub_total.AsFloat:= qrySubTotalsub_total.AsFloat;
////    Masternet_n_ppn.AsFloat:= Mastertotal.AsFloat;
////    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
////        Master.Post;
//    Master.ApplyUpdates;
//    Master.CommitUpdates;
//    DM.CommitTransaction;
//    Bayar;
//    qBrowse.Refresh;
//  except
//    on E: Exception do begin
//      DM.RollbackTransaction;
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//      Exit;
//    end
//  end;
//  DBMode:= dmBrowse;
//  UpdateView;
end;

procedure TNotaOnlineFrm.actCancelExecute(Sender: TObject);
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


procedure TNotaOnlineFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TNotaOnlineFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaOnlineFrm.MasterNewRecord(DataSet: TDataSet);
begin
//   Masterid_nota.AsLargeInt:= -1;
//   DM.vSysDate.Close;
//   DM.vSysDate.Open;
//
//   DM.L_Transaction.Close;
//   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
//   DM.L_Transaction.Open;
//
//   vrek_kredit:= DM.L_Transactionkid_rek_gl.AsString;
//   vrek_debet:= DM.L_Transactiondid_rek_gl.AsString;
//
//   if vrek_kredit<>'' then Masterid_rek_gl.AsString:= vrek_kredit;
//
//
//   Masterdt_nota.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
//   Masterispost.AsString:= '0';
//   Masteriscancel.AsString:= '0';
//   Masterisdelete.AsString:= '0';
//   Masterid_trans.AsString:= vjns_transaksi;
//   Masterdiskripsi.AsString:= '-';
//   Mastervat_num.AsFloat:= 0;
//   Mastersub_total.AsFloat:= 0;
//   Mastertotal.AsFloat:= 0;
//   Masterkurs.AsFloat:= 1;
//   Masterdisc_rp.AsFloat:= 0;
//   Masterclaim.AsFloat:= 0;
//   Masterpromo_uang.AsFloat:= 0;
//   Masterpromo_barang.AsFloat:= 0;
//   Masternet_n_ppn.AsFloat:= 0;
//   Masteriskirim.AsString:= '0';
//   Masterislunas.AsString:= '0';
//   Masterretur.AsFloat:= 0;
//   Masterishpp.AsString:= '0';
//   Masterisok.AsString:= '0';
//   Masterid_curr.AsString:= 'IDR';
//   Mastern_hari.AsInteger:= 1;
//   Masterevocer.AsFloat:= 0;
//   Mastermvocer.AsFloat:= 0;
//   Masterjns_transaksi.AsString:= 'Faktur Penjualan';
//   Mastercara_bayar.AsString:= 'TUNAI';


//   Masterprepared_by.AsString:= DM.UserConnect;
//   Masterreviewed_by.AsString:= DM.L_Transactionvuser_review.AsString;
//   Masterapproved_by.AsString:= DM.L_Transactionvuser_approve.AsString;
//   Masterreviewed_by_2.AsString:= DM.L_Transactionvuser_review2.AsString;
//   Masterapproved_by_2.AsString:= DM.L_Transactionvuser_approve2.AsString;

end;

procedure TNotaOnlineFrm.DetailNewRecord(DataSet: TDataSet);
begin

//  Detailid_nota.AsLargeInt:= Masterid_nota.AsLargeInt;
//  Detailhrg.AsFloat:= 0;
//
//  Detailqty_karton.AsFloat:= 0;
//  Detailqty_lusin.AsFloat:= 0;
//  Detailqty_biji.AsFloat:= 1;
//  Detailqty_total_biji.AsFloat:= 0;
//  Detailbiji_per_karton.AsFloat:= 0;
//
//
//  Detaildisc_rp.AsFloat:= 0;
//  Detaildisc_psn.AsFloat:= 0;
//  Detailhrg_jual_karton.AsFloat:= 0;
//  Detailhrg_jual_lusin.AsFloat:= 0;
//  Detailhrg_beli_karton.AsFloat:= 0;
//  Detailhrg.AsFloat:= 0;
//  Detailispromo.AsString:= '0';
//
//  if vrek_debet<>'' then Detailid_rek_gl.AsString:= vrek_debet;
//
//  if Detail.RecNo=0 then
//    Detailnomor.AsInteger:=1
//  else
//    Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TNotaOnlineFrm.MasterBeforePost(DataSet: TDataSet);
begin

//  if Mastercara_bayar.IsNull or (Trim(Mastercara_bayar.AsString)='') then
//     raise Exception.Create('CARA BAYAR harus diisi !')
//  else
//  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
//     raise Exception.Create('SUPPLIER harus diisi !');
////  else
////  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
////     raise Exception.Create('KODE REKENING harus diisi !');
//
//  if Masterjns_transaksi.AsString = 'Faktur Penjualan' then begin
//     Masterid_trans.AsString:= '201';
//  end else
//  if Masterjns_transaksi.AsString = 'Free Goods Out' then begin
//     Masterid_trans.AsString:= '203';
//  end else
//  if Masterjns_transaksi.AsString = 'Pinjaman Out' then begin
//     Masterid_trans.AsString:= '204';
//  end else
//  if Masterjns_transaksi.AsString = 'Tukar Out' then begin
//     Masterid_trans.AsString:= '205';
//  end;
//
//
//  if Master.State=dsInsert then begin
//    Masterid_nota.AsLargeInt:= sq_NOTA.GetNextValue;
//    Masterusr_ins.AsString:= DM.UserConnect;
//    Masterusr_upd.AsString:= DM.UserConnect;
//  end else if Master.State=dsEdit then
//    Masterusr_upd.AsString:= DM.UserConnect;
//  if Masterid_nota.AsLargeInt= -1 then
//     raise Exception.Create('There is internal error (Masterid_nota not set). All input aborted !');
end;

procedure TNotaOnlineFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_nota').Value:= Masterid_nota.Value;
     Detail.Open;
  end;
end;

procedure TNotaOnlineFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  if Masterstatus.AsString='0' then
     btnSave.Visible:= True
  else
     btnSave.Visible:= False;

end;

procedure TNotaOnlineFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaOnlineFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaOnlineFrm.DetailCalcFields(DataSet: TDataSet);
begin
//  Detailsub_total.AsFloat:= Detailqty.AsFloat*(Detailhrg_jual.AsFloat-Detaildisc_rp.AsFloat-(Detailhrg.AsFloat*Detaildisc_psn.AsFloat/100));
////  Detailsub_total.AsFloat:=(Detailqty_karton.AsFloat*Detailhrg_jual_karton.AsFloat)+
////                        (Detailqty_lusin.AsFloat*Detailhrg_jual_lusin.AsFloat)+
////                        (Detailqty_biji.AsFloat*Detailhrg.AsFloat)-
////                         Detaildisc_rp.AsFloat;
end;

procedure TNotaOnlineFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_nota').Value:= qBrowseid_nota.AsLargeInt;
end;

procedure TNotaOnlineFrm.DetailBeforePost(DataSet: TDataSet);
begin
// if (Detailkd_item.IsNull) or (Trim(Detailkd_item.AsString)='') then
//    raise Exception.Create('KODE harus diisi !')
//// else
//// if (Detailid_rek_gl.IsNull) or (Trim(Detailid_rek_gl.AsString)='') then
////    raise Exception.Create('KODE REKENING harus diisi !')
// else
// if (Detailhrg.IsNull) or (Trim(Detailhrg.AsString)='') then
//    raise Exception.Create('HARGA harus diisi !')
// else
// if Detailhrg.AsFloat=0 then
//    raise Exception.Create('HARGA harus diisi !');
//
// if Detail.State=dsInsert then
//     Detailid_nota_detail.AsLargeInt:= sq_NOTA_DETAIL.GetNextValue;
//
//
//  if Detailqty_karton.IsNull  or (Trim(Detailqty_karton.AsString)='')  then begin
//     if Detailqty_lusin.IsNull or (Trim(Detailqty_lusin.AsString)='') then begin
//        if Detailqty_biji.IsNull or (Trim(Detailqty_biji.AsString)='') then
//           raise Exception.Create('QTY harus diisi !');
//     end;
//  end
//  else
//  if Detailqty_karton.AsFloat=0 then begin
//     if Detailqty_lusin.AsFloat=0 then begin
//        if Detailqty_biji.AsFloat=0 then
//           raise Exception.Create('QTY harus diisi !');
//     end;
//  end;


end;

procedure TNotaOnlineFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TNotaOnlineFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TNotaOnlineFrm.edtCurrencyPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var f: TCurrencyFrm;
begin
//  f:= TCurrencyFrm.Create(Application);
//  try
//    if f.ShowModal=MrOK then
//      try
//        if Master.State=dsBrowse then
//         Master.Edit;
//         Masterid_curr.AsString:= f.Masterid_curr.AsString;
//      except
//        on E: Exception do
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//      end
//  finally
//    f.Free
//  end;

end;

procedure TNotaOnlineFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TNotaOnlineFrm.DetailAfterPost(DataSet: TDataSet);
begin
//  CloneDetail;
//
// if Master.State=dsBrowse then
//    Master.Edit;
// Mastersub_total.AsFloat:= vSubTotal;
// Masterdisc_rp.AsFloat:= vDiscRP;
// Mastervat_num.AsFloat:= vSubTotal*10/100;
// Master.Post;
end;

procedure TNotaOnlineFrm.actPrintExecute(Sender: TObject);
var i, row_count, idx : Integer;
begin
  if qBrowse.RecordCount=0 then
     Exit;

end;

procedure TNotaOnlineFrm.Mastersub_totalChange(Sender: TField);
var vSubAfterDisc : Double;
begin
//   vSubAfterDisc:= Mastersub_total.AsFloat-Masterpromo_uang.AsFloat
//                    -Masterpromo_barang.AsFloat-Masterdisc_rp.AsFloat
//                    -Masterevocer.AsFloat-Mastermvocer.AsFloat;
//   Mastervat_num.AsFloat:= vSubAfterDisc*11/100;
//   Mastertotal.AsFloat:= vSubAfterDisc+Mastervat_num.AsFloat;
//   vSubAfterDisc:= Mastersub_total.AsFloat;
//   Mastertotal.AsFloat:= vSubAfterDisc-(Masterdisc_rp.AsFloat+Masterdisc_member.AsFloat);

end;

procedure TNotaOnlineFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TNotaOnlineFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
end;

procedure TNotaOnlineFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TNotaOnlineFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TNotaOnlineFrm.btnOKClick(Sender: TObject);
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
   Timer1.Enabled:= True;
end;

procedure TNotaOnlineFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
    Timer1.Enabled:= False;

  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TNotaOnlineFrm.ER_LCB_ITEM_KODEPropertiesCloseUp(
  Sender: TObject);
begin
//   if DBMode=dmBrowse then
//      Exit;
//
//   Detailkd_item.AsString:= qryITEMkd_item.AsString;
//   Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
//   Detailhrg.AsFloat:= qryITEMhrg_jual.AsFloat;
//   Detailsatuan_beli.AsString:= qryITEMsatuan_jual.AsString;
   
end;

procedure TNotaOnlineFrm.grddbtvFP_Detailkd_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_KODE.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaOnlineFrm.grddbtvFP_Detailnama_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_NAME.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaOnlineFrm.grddbtvFP_Detailid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaOnlineFrm.MasterCalcFields(DataSet: TDataSet);
begin
//   Mastersisa.AsFloat:= Mastertotal.AsFloat-Masterevocer.AsFloat-Mastermvocer.AsFloat;
end;

procedure TNotaOnlineFrm.edtKodeRekPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if LookRekening.Execute then begin
      if Master.State=dsBrowse then
         Master.Edit ;
      Masterid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;

   end;

end;

procedure TNotaOnlineFrm.edtSalemanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
//  if LookSalesman.Execute then begin
//      if Master.State=dsBrowse then
//         Master.Edit ;
//      Masterid_division.AsString:= QSalesmanid_division.AsString;
//      Masterid_rek_gl.AsString:= QSalesmanid_rek_gl.AsString;
//
//   end;
end;

procedure TNotaOnlineFrm.btnCariClick(Sender: TObject);
begin
   LookBrowse.Execute;
end;

procedure TNotaOnlineFrm.btnFilterClick(Sender: TObject);
begin
   FilterBrowse.Execute;
end;

procedure TNotaOnlineFrm.btnFirstClick(Sender: TObject);
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

procedure TNotaOnlineFrm.ER_LCB_ITEM_NAMEPropertiesCloseUp(
  Sender: TObject);
begin
//   if DBMode=dmBrowse then
//      Exit;
//
//   Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
//   Detailkd_item.AsString:= qryITEMkd_item.AsString;
//   Detailhrg.AsFloat:= qryITEMhrg_jual.AsFloat;
//   Detailsatuan_beli.AsString:= qryITEMsatuan_jual.AsString;
end;


procedure TNotaOnlineFrm.qCekHrg_JualBeforeOpen(DataSet: TDataSet);
begin
//  qCekHrg_Jual.Params.ParamByName('pqty').Value:= Detailqty_biji.AsFloat;
//  qCekHrg_Jual.Params.ParamByName('pkd_item').Value:= Detailkd_item.AsString;
end;

procedure TNotaOnlineFrm.Detailqty_bijiChange(Sender: TField);
begin
//  try
//    qCekHrg_Jual.Close;
//    qCekHrg_Jual.Open;
//    Detailhrg.AsFloat:= qCekHrg_Jualhrg.AsFloat;
//  except
//
//  end;

end;

procedure TNotaOnlineFrm.Posting1Click(Sender: TObject);
var
s: String;
begin
  try
    DM.PrepareQuery(qExec);
    s:= 'update transaksi.nota set ispost='+QuotedStr('1')+' where no_nota='+QuotedStr(qBrowseno_nota.AsString);
    DM.ExecQuery(qExec, s);
  except
  end;
  qBrowse.Refresh;
end;

procedure TNotaOnlineFrm.Unposting1Click(Sender: TObject);
var
s: String;
begin
  try
    DM.PrepareQuery(qExec);
    s:= 'update transaksi.nota set ispost='+QuotedStr('0')+' where no_nota='+QuotedStr(qBrowseno_nota.AsString);
    DM.ExecQuery(qExec, s);
  except
  end;
  qBrowse.Refresh;
end;

procedure TNotaOnlineFrm.Koreksi1Click(Sender: TObject);
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

procedure TNotaOnlineFrm.edtItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_TAB) then
     btnSave.SetFocus;
end;

procedure TNotaOnlineFrm.edtqtyKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key=#13 then
//     try
//        Detail.Append;
//        Detailkd_item.AsString:= qItemkd_item.AsString;
//        Detaildiskripsi.AsString:= qItemnama_item.AsString;
//        Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
//        Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
//        Detailqty_biji.AsFloat:= StrToFloat(edtqty.Text);
//        Detail.Post;
//        edtItem.Text:='';
//        edtqty.Text:='';
//        edtItem.SetFocus;
//     except
//     end;
end;

procedure TNotaOnlineFrm.Cetak1Click(Sender: TObject);
begin
//
//  try
//    Master.Close;
//    Master.Open;
//    Detail.Close;
//    Detail.Params.ParamByName('id_nota').Value:= Masterid_nota.AsLargeInt;
//    Detail.Open;
//  except
//  end;
//
//  getprint.Close;
//  getprint.Open;
//
//  DM.L_Perusahaan.Close;
//  DM.L_Perusahaan.Open;
//
//  qPrint.Close;
//  qPrint.Open;
//
//  MemInfoPerusahaan.Close;
//  MemInfoPerusahaan.Open;
//  MemInfoPerusahaan.Append;
//  MemInfoPerusahaannama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
//  MemInfoPerusahaanalamat_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString;
//  MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.L_Perusahaanphone.AsString;
//  MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.L_Perusahaanfax.AsString;
//  MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaancity.AsString;
//  MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
//  MemInfoPerusahaanjudul.AsString:= lblHeader1.Caption;
//  MemInfoPerusahaan.Post;
//
//  MemMaster.Close;
//  MemMaster.Open;
//  MemMaster.Append;
//  MemMasterreq_number.AsString:= Masterno_nota.AsString;
//  MemMasterproject.AsString:= '';
//  MemMastervendor_name.AsString:= Masternama_rekanan.AsString;
//  MemMasterremarks.AsString:= Masterdiskripsi.AsString;
//  MemMasterpo_number.AsString:= Masterno_bukti.AsString;
//  MemMasterid_curr.AsString:= '';
//  MemMasterkurs.AsString:= '';
//  MemMasterdiscount.AsString:= FormatFloat('0,0', Masterdisc_rp.AsFloat);
//  MemMastervat_str.AsString:= Mastervat_str.AsString;
//  MemMastervat_num.AsString:= FormatFloat('0,0', Mastervat_num.AsFloat);
//  MemMastertotal.AsString:= FormatFloat('0,0', Mastertotal.AsFloat);
//  MemMastersub_total.AsString:= FormatFloat('0,0', Mastersub_total.AsFloat);
//  MemMasterdisc_member.AsString:= FormatCurr('0,0', Masterdisc_member.AsFloat);
//  MemMasterpromo_uang.AsFloat:= Masterpromo_uang.AsFloat;
//  MemMasterpromo_barang.AsFloat:= Masterpromo_barang.AsFloat;
//  MemMasterevoucer.AsFloat:= Masterevocer.AsFloat;
//  MemMasterno_evocer.AsString:= Masterno_evocer.AsString;
//  MemMastersisa_tagihan.AsFloat:= Mastersisa.AsFloat;
//  DM.MyKonversi1.Nilai:= Mastersisa.AsFloat;
//  MemMasterterbilang.AsString:= '# '+DM.MyKonversi1.HasilKonversi+' #';
//
//  if Masterispost.AsString='1' then MemMasterposted.AsString:='POSTED'
//  else MemMasterposted.AsString:='';
//
//  MemMasterkasir.AsString:= DM.UserConnect;
//
////  vKembali:= FloatToStr(g.MemMasterkembali.AsFloat);
////  vKembali:= StringReplace(vKembali,'-','',[rfReplaceAll,rfIgnoreCase]);
////  FKembali:= StrToFloat(vKembali);
////  MemMasterdibayar.AsString:= FormatFloat('0,0', g.MemMasterdibayar.AsFloat);
////  MemMasterkembali.AsString:= FormatFloat('0,0', FKembali);
//
//
//  MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
//  MemMastermodel.AsString:= 'NP-'+vjns_transaksi;
//  //          MemMasterdistribusi_document.AsString:= QDocDistributedoc_ditribution.AsString;
//
//  if Masterdt_nota.IsNull then MemMasterdated.AsString:= ''
//  else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm', Masterdt_nota.AsDateTime);
//
//  if Masterdt_jth_tempo.IsNull then MemMasterdt_due.AsString:= ''
//  else MemMasterdt_due.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_jth_tempo.AsDateTime);
//
//  if Masterdt_nota.IsNull then MemMasterdt_prepared.AsString:= 'TANGGL :'
//  else MemMasterdt_prepared.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_nota.AsDateTime);
//
//  MemMasterdt_reviewed_1.AsString:= 'TANGGAL : ';
//  MemMasterdt_approved_1.AsString:= 'TANGGAL : ';
//
//
//  MemMaster.Post;
//
//  MemDetail.Close;
//  MemDetail.Open;
//
//  try
//    Detail.First;
//    while not Detail.Eof do begin
//      MemDetail.Append;
//      MemDetailno.AsString:= Detailnomor.AsString;
//      MemDetailid_item.AsString:= Detailkd_item.AsString;
//      MemDetaildescription.AsString:= Detailnama_item.AsString;
//      MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
//      MemDetailsatuan.AsString:= Detailsatuan_beli.AsString;
//      MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
//      MemDetailqty_lusin.AsFloat:= Detailqty_lusin.AsFloat;
//      MemDetailunit_price.AsFloat:= Detailhrg.AsFloat;
//      MemDetailhrg_lusin.AsFloat:= Detailhrg_jual_lusin.AsFloat;
//      MemDetaildisc.AsFloat:= Detaildisc_rp.AsFloat;
//      MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
//      MemDetail.Post;
//      Detail.Next;
//    end;
//
//  finally
//    Detail.First;
//    Detail.EnableControls
//  end;
//
//  frPOS80.PrintOptions.Printer:='POS80';
//  frPOS80.PrepareReport;
//  frPOS80.PrintOptions.ShowDialog:= False;
//  frPOS80.Print;
end;

procedure TNotaOnlineFrm.tsBrowseShow(Sender: TObject);
begin
  btnSave.Visible:= False;
  //Timer1.Enabled:= True;
end;

procedure TNotaOnlineFrm.KIRIM1Click(Sender: TObject);
var
  s: String;
begin
  if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Anda yakin ingin mengirim pesanan ini?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  try
    if qBrowsestatus.AsString='1' then begin
        DM.PrepareQuery(qExec);
        s:= 'update transaksi.nota_online set status='+QuotedStr('2')+', usr_operator='+QuotedStr(DM.UserConnect)+
            ' where id_nota='+IntToStr(qBrowseid_nota.AsLargeInt);
        DM.ExecQuery(qExec, s);

    end else begin
        Exit;
    end;

  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  qBrowse.Refresh;
  Timer1.Enabled:= True;
end;

procedure TNotaOnlineFrm.SELESAI1Click(Sender: TObject);
var
  s: String;
begin
  if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Anda yakin pesanan ini sudah selesai?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  try
    if qBrowsestatus.AsString='2' then begin
        DM.PrepareQuery(qExec);
        s:= 'update transaksi.nota_online set status='+QuotedStr('3')+', usr_operator='+QuotedStr(DM.UserConnect)+', '+
            'ispost='+QuotedStr('1')+
            ' where id_nota='+IntToStr(qBrowseid_nota.AsLargeInt);
        DM.ExecQuery(qExec, s);

    end else begin
        Exit;
    end;

  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  qBrowse.Refresh;
  Timer1.Enabled:= True;
end;

procedure TNotaOnlineFrm.BATAL1Click(Sender: TObject);
var
  s: String;
begin
  if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Anda yakin ingin membatalkan pesanan ini?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  try
    DM.PrepareQuery(qExec);
    s:= 'update transaksi.nota_online set iscancel='+QuotedStr('1')+', usr_operator='+QuotedStr(DM.UserConnect)+
        ' where id_nota='+IntToStr(qBrowseid_nota.AsLargeInt);
    DM.ExecQuery(qExec, s);

  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  qBrowse.Refresh;
  Timer1.Enabled:= True;
end;

procedure TNotaOnlineFrm.Timer1Timer(Sender: TObject);
begin
  CountData:= qBrowse.RecordCount;
  try

    if not DM.conn.Connected then begin
       DM.conn.Disconnect;
       DM.conn.Connect;
       btnOK.Click;

       if (qBrowse.RecordCount - CountData) > 0 then begin
          MediaPlayer1.Close;
          MediaPlayer1.FileName:= 'D:\MP3\Young Wild And Free.mp3';
          MediaPlayer1.Open;
          MediaPlayer1.Play;
       end;

    end
    else
    if DM.conn.Connected then begin
       btnOK.Click;

       if (qBrowse.RecordCount - CountData) > 0 then begin
          MediaPlayer1.Close;
          MediaPlayer1.FileName:= 'D:\MP3\Young Wild And Free.mp3';
          MediaPlayer1.Open;
          MediaPlayer1.Play;
       end;

    end

  except
    on E: Exception do begin
      DM.conn.Disconnect;
    end;

  end;
  
end;

procedure TNotaOnlineFrm.popPostingPopup(Sender: TObject);
begin
  Timer1.Enabled:= False;
end;

procedure TNotaOnlineFrm.grddbtvMasterCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Timer1.Enabled:= True;
end;

end.

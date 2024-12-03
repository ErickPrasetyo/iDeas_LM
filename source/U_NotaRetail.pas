unit U_NotaRetail;

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
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TNotaRetailFrm = class(TForm)
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
    SCPanel2: TSCPanel;
    cxGroupBox2: TcxGroupBox;
    QCustomer: TZReadOnlyQuery;
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
    grdFP_Detail: TcxGrid;
    grdlvlFP_Detail: TcxGridLevel;
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
    QCustomerkd_rekanan: TStringField;
    QCustomernama_rekanan: TStringField;
    QCustomerplafon: TFloatField;
    QCustomeralamat: TStringField;
    QCustomerkota: TStringField;
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
    Label8: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
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
    grddbtvFP_Detail: TcxGridDBBandedTableView;
    grddbtvFP_Detailkd_item: TcxGridDBBandedColumn;
    grddbtvFP_Detailqty_ot_biji: TcxGridDBBandedColumn;
    grddbtvFP_Detailhrg_jual_lusin: TcxGridDBBandedColumn;
    grddbtvFP_Detailnomor: TcxGridDBBandedColumn;
    grddbtvFP_Detailnama_item: TcxGridDBBandedColumn;
    grddbtvFP_Detailsub_total: TcxGridDBBandedColumn;
    dsQCustomer: TDataSource;
    dsqryRekGL: TDataSource;
    dsqryITEM: TDataSource;
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
    Detailnama_item: TStringField;
    Detailsub_total: TFloatField;
    QSalesman: TZReadOnlyQuery;
    dsQSalesman: TDataSource;
    MemDetailqty_karton: TFloatField;
    MemDetailqty_lusin: TFloatField;
    MemDetailhrg_lusin: TFloatField;
    Masterno_rekap: TStringField;
    Masternama_salesman: TStringField;
    SCPanel3: TSCPanel;
    Label6: TLabel;
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
    grddbtvMastercara_bayar: TcxGridDBColumn;
    grddbtvMasterno_bukti: TcxGridDBColumn;
    Mastern_hari: TIntegerField;
    ER: TcxEditRepository;
    ER_EDT: TcxEditRepositoryTextItem;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ITEM_KODE: TcxEditRepositoryLookupComboBoxItem;
    MemMasterpromo_uang: TFloatField;
    MemMasterpromo_barang: TFloatField;
    sq_NOTA_DETAIL: TZSequence;
    Detailid_nota_detail: TLargeintField;
    qBrowsepromo_barang: TFloatField;
    qBrowsepromo_uang: TFloatField;
    qBrowsetotal: TFloatField;
    grddbtvMastertotal: TcxGridDBColumn;
    qBrowsedisc_rp: TFloatField;
    grddbtvMasterdisc_rp: TcxGridDBColumn;
    Detailispromo: TStringField;
    Masterevocer: TFloatField;
    Masterno_faktur_pajak: TStringField;
    Masterno_evocer: TStringField;
    Mastersisa: TFloatField;
    Label23: TLabel;
    Label19: TLabel;
    edtVocer: TcxDBTextEdit;
    Label22: TLabel;
    edtNoVocer: TcxDBTextEdit;
    Shape12: TShape;
    cxDBLabel2: TcxDBLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
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
    Masterlcustomer_npwp: TStringField;
    MemMasteralamat_pajak_perusahaan: TStringField;
    qBrowsenama_salesman: TStringField;
    grddbtvMasternama_salesman: TcxGridDBColumn;
    qBrowseid_division: TStringField;
    qBrowsesub_total: TFloatField;
    grddbtvMastersub_total: TcxGridDBColumn;
    Mastermvocer: TFloatField;
    Masterno_mvocer: TStringField;
    Label27: TLabel;
    Label28: TLabel;
    edtMVocer: TcxDBTextEdit;
    edtNoMVocer: TcxDBTextEdit;
    Label29: TLabel;
    Label30: TLabel;
    qBrowseevocer: TFloatField;
    qBrowsemvocer: TFloatField;
    LookRekening: TwwLookupDialog;
    LookSalesman: TwwLookupDialog;
    qBrowsekd_rekanan: TStringField;
    qBrowsevat_num: TFloatField;
    grddbtvMastervat_num: TcxGridDBColumn;
    btnCari: TSCButton;
    btnFilter: TSCButton;
    LookBrowse: TwwLookupDialog;
    FilterBrowse: TwwFilterDialog;
    cxStyle5: TcxStyle;
    grddbtvFP_DetailColumn1: TcxGridDBBandedColumn;
    MemRemarks: TcxDBMemo;
    qryITEMkd_item: TStringField;
    qryITEMnama_item: TStringField;
    qryITEMhrg_beli: TFloatField;
    qryITEMhrg_jual: TFloatField;
    qryITEMsatuan_jual: TStringField;
    qryITEMrasio: TFloatField;
    Detailsatuan_beli: TStringField;
    grddbtvFP_DetailColumn2: TcxGridDBBandedColumn;
    ER_LCB_ITEM_NAME: TcxEditRepositoryLookupComboBoxItem;
    Masterjns_transaksi: TStringField;
    grddbtvMasterColumn1: TcxGridDBColumn;
    qBrowsejns_transaksi: TStringField;
    qCekHrg_Jual: TZQuery;
    qryITEMhrg_jual_sm_grosir: TFloatField;
    qryITEMhrg_jual_grosir: TFloatField;
    qryITEMhrg_jual_grosir_besar: TFloatField;
    QSalesmanid_division: TStringField;
    QSalesmandescription: TStringField;
    qExec: TZQuery;
    frPOS80_: TfrxReport;
    Masterdisc_member: TFloatField;
    MemMasterdisc_member: TStringField;
    MemMasterkasir: TStringField;
    qCekHrg_Jualhrg: TFloatField;
    MemDetailsatuan: TStringField;
    Mastershift: TIntegerField;
    Masterdibayar: TFloatField;
    Masterkembali: TFloatField;
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
    MemMasterdibayar: TStringField;
    MemMasterkembali: TStringField;
    LookRekanan: TcxDBTextEdit;
    qDiscMember: TZQuery;
    qDiscMemberdisc_member_psn: TFloatField;
    Label4: TLabel;
    edtCaraBayar: TcxDBComboBox;
    getprint: TZReadOnlyQuery;
    getprintprinter: TStringField;
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
    edtItem: TcxTextEdit;
    edtqty: TcxTextEdit;
    Label5: TLabel;
    frPOS80: TfrxReport;
    CheckPromoB: TZReadOnlyQuery;
    CheckPromoBid_item_promo: TIntegerField;
    CheckPromoBkd_item: TStringField;
    CheckPromoBnama_item: TStringField;
    CheckPromoBjenis: TStringField;
    CheckPromoBqty_promo: TFloatField;
    CheckPromoBnilai_promo: TFloatField;
    CheckPromoBkd_item_promo: TStringField;
    CheckPromoBnama_item_promo: TStringField;
    CheckPromoBqty_item_promo: TFloatField;
    CheckPromoBdiv: TFloatField;
    grddbtvFP_DetailColumn3: TcxGridDBBandedColumn;
    Label9: TLabel;
    edtDiscItem: TcxDBTextEdit;
    CheckPromoBqty_max: TFloatField;
    Detailketerangan: TStringField;
    grddbtvFP_DetailColumn4: TcxGridDBBandedColumn;
    frPOS80_Copy: TfrxReport;
    qItemlok_rak: TStringField;
    Detailid_warehouse: TStringField;
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
    procedure MemRemarksKeyPress(Sender: TObject; var Key: Char);
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
    procedure edtSalemanPropertiesCloseUp(Sender: TObject);
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
    procedure QSalesmanBeforeOpen(DataSet: TDataSet);
    procedure Masterdisc_memberChange(Sender: TField);
    procedure grddbtvFP_DetailEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure LookRekananKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qDiscMemberBeforeOpen(DataSet: TDataSet);
    procedure edtCaraBayarKeyPress(Sender: TObject; var Key: Char);
    procedure grddbtvFP_Detailkd_itemPropertiesChange(Sender: TObject);
    procedure edtItemKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtyKeyPress(Sender: TObject; var Key: Char);
    procedure edtItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDiscItemPropertiesChange(Sender: TObject);
  private
    DBMode: TDBMode;
    { Private declarations }
    vjns_item, vjns_transaksi, vjudul, vlook, vrek_kredit, vrek_debet : string;
    vtag : integer;
    vSubTotal, vDiscRP : Double;
    isPromoUang : Boolean;
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;
    procedure Print;
    procedure Bayar;
    procedure UpdateBayar(cara, bank, nokartu, dibayar, kembali: string);
    function CheckPromoUang(kd_item: String; qty : Double): Boolean;
    function CheckPromoBarang(kd_item: String; qty : Double): Boolean;


  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu:String; ptransaksi : String; pitem : String; plook: String; ptag : integer);

var
  NotaRetailFrm: TNotaRetailFrm;

implementation

uses U_DM, U_Currency, U_NotaPiutang, U_BayarNotaPenjualan, Math;

{$R *.dfm}

function TNotaRetailFrm.CheckPromoBarang(kd_item: String; qty : Double): Boolean;
begin
  Result := False;
  Try
    CheckPromoB.Close;
    CheckPromoB.Params.ParamByName('kd_item').Value:= kd_item;
    CheckPromoB.Params.ParamByName('jenis').Value:= 'BARANG';
    CheckPromoB.Params.ParamByName('qty').Value:= qty;
    CheckPromoB.Open;
    if CheckPromoB.RecordCount>0 then
    Result:= True
  except

  end
end;

function TNotaRetailFrm.CheckPromoUang(kd_item: String; qty : Double): Boolean;
begin
  Result := False;
  Try
    CheckPromoB.Close;
    CheckPromoB.Params.ParamByName('kd_item').Value:= kd_item;
    CheckPromoB.Params.ParamByName('jenis').Value:= 'UANG';
    CheckPromoB.Params.ParamByName('qty').Value:= qty;
    CheckPromoB.Open;
    if CheckPromoB.RecordCount>0 then
    Result:= True
  except

  end
end;

procedure ShowForm(pNamaMenu: String; ptransaksi: String; pitem: String; plook: String; ptag: integer);
begin
  try
    NotaRetailFrm := TNotaRetailFrm.Create(Application);
    with NotaRetailFrm do begin
      vjns_item:= pitem;
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      vlook:= plook;
      DBMode:= dmNone;
      try
        DM.L_User.Close;
        DM.L_User.Open;
        DM.L_Customer.Close;
        DM.L_Customer.Open;
        DM.L_Item.Close;
        DM.L_Item.Open;
        QCustomer.Close;
        QCustomer.Open;
        qryRekGL.Close;
        qryRekGL.Open;
        qryITEM.Close;
        qryITEM.Open;
        QSalesman.Close;
        QSalesman.Open;
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
  NotaRetailFrm.btnAdd.OnClick(nil);
end;

procedure TNotaRetailFrm.CloneDetail;
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

function TNotaRetailFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;



procedure TNotaRetailFrm.UpdateView;
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
      pgTransaction.ActivePageIndex := 1;
//    else
//      pgTransaction.ActivePageIndex := 1;

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

    edtVAT.Properties.ReadOnly:= isBrowse;
    edtNoVocer.Properties.ReadOnly:= isBrowse;
    edtVocer.Properties.ReadOnly:= isBrowse;
    edtNoMVocer.Properties.ReadOnly:= isBrowse;
    edtMVocer.Properties.ReadOnly:= isBrowse;

    LookRekanan.Properties.ReadOnly:= isBrowse;
//    LookRekanan.Properties.Buttons[0].Visible:= not isBrowse;
//    edtCurrency.Properties.ReadOnly:= isBrowse;
//    edtCurrency.Properties.Buttons[0].Visible:= not isBrowse;
//    edtKodeRek.Properties.ReadOnly:= isBrowse;
//    edtKodeRek.Properties.Buttons[0].Visible:= not isBrowse;
//    edtSaleman.Properties.ReadOnly:= isBrowse;
//    edtSaleman.Properties.Buttons[0].Visible:= not isBrowse;

//    edtKurs.Properties.ReadOnly:= isBrowse;

    edtDateEdit.Properties.ReadOnly:= isBrowse;
    MemRemarks.Properties.ReadOnly:= isBrowse;
    RGModeCetak.Enabled:= isBrowse;


    grddbtvFP_Detail.OptionsData.Inserting:= NOT isBrowse;
    grddbtvFP_Detail.OptionsData.Editing:= NOT isBrowse;
    grddbtvFP_Detail.OptionsData.Deleting:= NOT isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;

    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;
  end;
end;

function TNotaRetailFrm.CheckEditRight(var msg: string): Boolean;
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

function TNotaRetailFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TNotaRetailFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNotaRetailFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Perubahan data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TNotaRetailFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TNotaRetailFrm.actAddExecute(Sender: TObject);
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
  edtItem.SetFocus;
  isPromoUang:= False;
  //Detail.Append;
end;

procedure TNotaRetailFrm.actEditExecute(Sender: TObject);
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

procedure TNotaRetailFrm.actDeleteExecute(Sender: TObject);
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

procedure TNotaRetailFrm.actRefreshExecute(Sender: TObject);
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

procedure TNotaRetailFrm.actSaveExecute(Sender: TObject);
var
s: String;
begin
//  if Mastercara_bayar.IsNull or (Trim(Mastercara_bayar.AsString)='') then
//     raise Exception.Create('CARA BAYAR harus diisi !');

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

//    Master.Edit;
//    Mastersub_total.AsFloat:= qrySubTotalsub_total.AsFloat;
//    Masternet_n_ppn.AsFloat:= Mastertotal.AsFloat;
//    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
//        Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;
    DM.CommitTransaction;
    Bayar;
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
  btnAdd.OnClick(nil);

end;

procedure TNotaRetailFrm.Bayar;
var row_count,i : integer;
    vID : Int64;
    s, vSize, vKembali : String;
    FKembali : Double;
    g : TBayarNotaPenjualanFrm;
begin
  getprint.Close;
  getprint.Open;

    if (Masterdibayar.AsFloat=0) or (Masterdibayar.AsFloat<Mastertotal.AsFloat) then begin
       try
         g:= TBayarNotaPenjualanFrm.Create(Application);
         g.vTotal:= Mastertotal.AsFloat;
         g.vIdNota:= Masterid_nota.AsLargeInt;
         if g.ShowModal=mrOK then begin
           UpdateBayar(g.MemMastercara_bayar.AsString,g.MemMasterbank.AsString,g.MemMasterno_kartu.AsString,
                        FloatToStr(g.MemMasterdibayar.AsFloat),StringReplace(FloatToStr(g.MemMasterkembali.AsFloat),'-','',[rfReplaceAll,rfIgnoreCase]));
//           UpdateBayarKasKecil(g.Masterno_nota.AsString,FloatToStr(g.MemMasterdibayar.AsFloat));

            DM.L_Perusahaan.Close;
            DM.L_Perusahaan.Open;

            qPrint.Close;
            qPrint.Open;

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
            MemMasterdiscount.AsString:= FormatFloat('0,0', Masterdisc_rp.AsFloat);
            MemMastervat_str.AsString:= Mastervat_str.AsString;
            MemMastervat_num.AsString:= FormatFloat('0,0', Mastervat_num.AsFloat);
            MemMastertotal.AsString:= FormatFloat('0,0', Mastertotal.AsFloat);
            MemMastersub_total.AsString:= FormatFloat('0,0', Mastersub_total.AsFloat);
            MemMasterdisc_member.AsString:= FormatFloat('0,0', Masterdisc_member.AsFloat);
            MemMasterpromo_uang.AsFloat:= Masterpromo_uang.AsFloat;
            MemMasterpromo_barang.AsFloat:= Masterpromo_barang.AsFloat;
            MemMasterevoucer.AsFloat:= Masterevocer.AsFloat;
            MemMasterno_evocer.AsString:= Masterno_evocer.AsString;
            MemMastersisa_tagihan.AsFloat:= Mastersisa.AsFloat;
            DM.MyKonversi1.Nilai:= Mastersisa.AsFloat;
            MemMasterterbilang.AsString:= '# '+DM.MyKonversi1.HasilKonversi+' #';

            if Masterispost.AsString='1' then MemMasterposted.AsString:='POSTED'
            else MemMasterposted.AsString:='';

            MemMasterkasir.AsString:= DM.UserConnect;

//            vKembali:= FloatToStr(g.MemMasterkembali.AsFloat);
//            vKembali:= StringReplace(vKembali,'-','',[rfReplaceAll,rfIgnoreCase]);
//            FKembali:= StrToFloat(vKembali);
            FKembali:= g.vTotal-g.MemMasterdibayar.AsFloat;
            MemMasterdibayar.AsString:= FormatFloat('0,0', g.MemMasterdibayar.AsFloat);
            MemMasterkembali.AsString:= FormatFloat('0,0', FKembali);


            MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
            MemMastermodel.AsString:= 'NP-'+vjns_transaksi;
            //          MemMasterdistribusi_document.AsString:= QDocDistributedoc_ditribution.AsString;

            if Masterdt_nota.IsNull then MemMasterdated.AsString:= ''
            else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm', Masterdt_nota.AsDateTime);

            if Masterdt_jth_tempo.IsNull then MemMasterdt_due.AsString:= ''
            else MemMasterdt_due.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_jth_tempo.AsDateTime);

            if Masterdt_nota.IsNull then MemMasterdt_prepared.AsString:= 'TANGGL :'
            else MemMasterdt_prepared.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_nota.AsDateTime);

            MemMasterdt_reviewed_1.AsString:= 'TANGGAL : ';
            MemMasterdt_approved_1.AsString:= 'TANGGAL : ';


            MemMaster.Post;

            MemDetail.Close;
            MemDetail.Open;

            try
              Detail.First;
              while not Detail.Eof do begin
                MemDetail.Append;
                MemDetailno.AsString:= Detailnomor.AsString;
                MemDetailid_item.AsString:= Detailkd_item.AsString;
                if Detailispromo.AsString='1' then
                MemDetaildescription.AsString:= Detailnama_item.AsString+' '+Detailketerangan.AsString
                else
                MemDetaildescription.AsString:= Detailnama_item.AsString;
                MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
                MemDetailsatuan.AsString:= Detailsatuan_beli.AsString;
                MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
                MemDetailqty_lusin.AsFloat:= Detailqty_lusin.AsFloat;
                MemDetailunit_price.AsFloat:= Detailhrg.AsFloat;
                MemDetailhrg_lusin.AsFloat:= Detailhrg_jual_lusin.AsFloat;
                MemDetaildisc.AsFloat:= Detaildisc_rp.AsFloat;
                MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
                MemDetail.Post;
                Detail.Next;
              end;

            finally
              Detail.First;
              Detail.EnableControls
            end;

            DM.PrepareQuery(qExec);
            s:= 'update transaksi.nota set ispost='+QuotedStr('1')+', '+
                'cara_bayar='+QuotedStr(g.MemMastercara_bayar.AsString)+
                ' where no_nota='+QuotedStr(Masterno_nota.AsString);
            DM.ExecQuery(qExec, s);

            frPOS80.PrintOptions.Printer:='POS80';
            frPOS80.PrepareReport;
            frPOS80.PrintOptions.ShowDialog:= False;
            frPOS80.Print;

            if isPromoUang then begin
              if (MessageBox(0, PChar('PERINGATAN !'+#13#10+'**Ada Item Dengan Diskon/Promo Uang**'),
                                      'Perlu Melakukan Cetak Ulang ??', MB_ICONQUESTION or MB_YESNO) = idNo) then
              Exit;

              frPOS80_Copy.PrintOptions.Printer:='POS80';
              frPOS80_Copy.PrepareReport;
              frPOS80_Copy.PrintOptions.ShowDialog:= False;
              frPOS80_Copy.Print;

            end;

         end
         else
           Exit;
       finally
         g.Free;

       end;
    end;

end;

procedure TNotaRetailFrm.UpdateBayar(cara, bank, nokartu, dibayar, kembali: string);
var idx : Int64;
    s: String;
begin
    idx:= Masterid_nota.AsLargeInt;
//    try
//        DM.PrepareQuery(qExec);
//        s:= 'update transaksi.nota set dibayar='+QuotedStr(dibayar)+', kembali='+QuotedStr('0')+' where id_nota='+IntToStr(idx);
//        DM.ExecQuery(qExec, s);
//    except
//    end;

end;

procedure TNotaRetailFrm.Print;
var i, row_count, idx : Integer;
s: String;
begin
//    DM.L_Perusahaan.Close;
//    DM.L_Perusahaan.Open;
//
//    qPrint.Close;
//    qPrint.Open;
//
//    MemInfoPerusahaan.Close;
//    MemInfoPerusahaan.Open;
//    MemInfoPerusahaan.Append;
//    MemInfoPerusahaannama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
//    MemInfoPerusahaanalamat_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString;
//    MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.L_Perusahaanphone.AsString;
//    MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.L_Perusahaanfax.AsString;
//    MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaancity.AsString;
//    MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
//    MemInfoPerusahaanjudul.AsString:= lblHeader1.Caption;
//    MemInfoPerusahaan.Post;
//
//    MemMaster.Close;
//    MemMaster.Open;
//    MemMaster.Append;
//    MemMasterreq_number.AsString:= Masterno_nota.AsString;
//    MemMasterproject.AsString:= '';
//    MemMastervendor_name.AsString:= Masternama_rekanan.AsString;
//    MemMasterremarks.AsString:= Masterdiskripsi.AsString;
//    MemMasterpo_number.AsString:= Masterno_bukti.AsString;
//    MemMasterid_curr.AsString:= '';
//    MemMasterkurs.AsString:= '';
//    MemMasterdiscount.AsString:= FormatFloat('0.0,0', Masterdisc_rp.AsFloat);
//    MemMastervat_str.AsString:= Mastervat_str.AsString;
//    MemMastervat_num.AsString:= FormatFloat('0.0,0', Mastervat_num.AsFloat);
//    MemMastertotal.AsString:= FormatFloat('0.0,0', Mastertotal.AsFloat);
//    MemMastersub_total.AsString:= FormatFloat('0.0,0', Mastersub_total.AsFloat);
//    MemMasterdisc_member.AsString:= FormatFloat('0.0,0', Masterdisc_member.AsFloat);
//    MemMasterpromo_uang.AsFloat:= Masterpromo_uang.AsFloat;
//    MemMasterpromo_barang.AsFloat:= Masterpromo_barang.AsFloat;
//    MemMasterevoucer.AsFloat:= Masterevocer.AsFloat;
//    MemMasterno_evocer.AsString:= Masterno_evocer.AsString;
//    MemMastersisa_tagihan.AsFloat:= Mastersisa.AsFloat;
//    DM.MyKonversi1.Nilai:= Mastersisa.AsFloat;
//    MemMasterterbilang.AsString:= '# '+DM.MyKonversi1.HasilKonversi+' #';
//
//    if Masterispost.AsString='1' then MemMasterposted.AsString:='POSTED'
//    else MemMasterposted.AsString:='';
//
//    MemMasterkasir.AsString:= DM.UserConnect;
//
//
//    MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
//    MemMastermodel.AsString:= 'NP-'+vjns_transaksi;
//    //          MemMasterdistribusi_document.AsString:= QDocDistributedoc_ditribution.AsString;
//
//    if Masterdt_nota.IsNull then MemMasterdated.AsString:= ''
//    else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_nota.AsDateTime);
//
//    if Masterdt_jth_tempo.IsNull then MemMasterdt_due.AsString:= ''
//    else MemMasterdt_due.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_jth_tempo.AsDateTime);
//
//    if Masterdt_nota.IsNull then MemMasterdt_prepared.AsString:= 'TANGGL :'
//    else MemMasterdt_prepared.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_nota.AsDateTime);
//
//    MemMasterdt_reviewed_1.AsString:= 'TANGGAL : ';
//    MemMasterdt_approved_1.AsString:= 'TANGGAL : ';
//
//
//    MemMaster.Post;
//
//    MemDetail.Close;
//    MemDetail.Open;
//
//    try
//      Detail.First;
//      while not Detail.Eof do begin
//        MemDetail.Append;
//        MemDetailno.AsString:= Detailnomor.AsString;
//        MemDetailid_item.AsString:= Detailkd_item.AsString;
//        MemDetaildescription.AsString:= Detailnama_item.AsString;
//        MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
//        MemDetailsatuan.AsString:= Detailsatuan_beli.AsString;
//        MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
//        MemDetailqty_lusin.AsFloat:= Detailqty_lusin.AsFloat;
//        MemDetailunit_price.AsFloat:= Detailhrg.AsFloat;
//        MemDetailhrg_lusin.AsFloat:= Detailhrg_jual_lusin.AsFloat;
//        MemDetaildisc.AsFloat:= Detaildisc_rp.AsFloat;
//        MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
//        MemDetail.Post;
//        Detail.Next;
//      end;
//
//    finally
//      Detail.First;
//      Detail.EnableControls
//    end;
//
//    DM.PrepareQuery(qExec);
//    s:= 'update transaksi.nota set ispost='+QuotedStr('1')+' where no_nota='+QuotedStr(Masterno_nota.AsString);
//    DM.ExecQuery(qExec, s);
//
//    frPOS80.ShowReport;

end;

procedure TNotaRetailFrm.actCancelExecute(Sender: TObject);
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
  btnClose.Click;
end;


procedure TNotaRetailFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TNotaRetailFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaRetailFrm.MasterNewRecord(DataSet: TDataSet);
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
   Masterishpp.AsString:= '0';
   Masterisok.AsString:= '0';
   Masterid_curr.AsString:= 'IDR';
   Mastern_hari.AsInteger:= 1;
   Masterevocer.AsFloat:= 0;
   Mastermvocer.AsFloat:= 0;
   Masterjns_transaksi.AsString:= 'Faktur Penjualan';
   Mastercara_bayar.AsString:= '';
   Masterkd_rekanan.AsString:= 'CASH';
   Masternama_salesman.AsString:= DM.UserConnect;
   Masternama_rekanan.AsString:= 'CASH';
   Masterdisc_member.AsFloat:= 0;

//   Masterprepared_by.AsString:= DM.UserConnect;
//   Masterreviewed_by.AsString:= DM.L_Transactionvuser_review.AsString;
//   Masterapproved_by.AsString:= DM.L_Transactionvuser_approve.AsString;
//   Masterreviewed_by_2.AsString:= DM.L_Transactionvuser_review2.AsString;
//   Masterapproved_by_2.AsString:= DM.L_Transactionvuser_approve2.AsString;

end;

procedure TNotaRetailFrm.DetailNewRecord(DataSet: TDataSet);
begin

  Detailid_nota.AsLargeInt:= Masterid_nota.AsLargeInt;
  Detailhrg.AsFloat:= 0;

  Detailqty_karton.AsFloat:= 0;
  Detailqty_lusin.AsFloat:= 0;
  Detailqty_biji.AsFloat:= 1;
  Detailqty_total_biji.AsFloat:= 0;
  Detailbiji_per_karton.AsFloat:= 0;


  Detaildisc_rp.AsFloat:= 0;
  Detaildisc_psn.AsFloat:= 0;
  Detailhrg_jual_karton.AsFloat:= 0;
  Detailhrg_jual_lusin.AsFloat:= 0;
  Detailhrg_beli_karton.AsFloat:= 0;
  Detailhrg.AsFloat:= 0;
  Detailispromo.AsString:= '0';

  if vrek_debet<>'' then Detailid_rek_gl.AsString:= vrek_debet;

  if Detail.RecNo=0 then
    Detailnomor.AsInteger:=1
  else
    Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TNotaRetailFrm.MasterBeforePost(DataSet: TDataSet);
begin

//  if Mastercara_bayar.IsNull or (Trim(Mastercara_bayar.AsString)='') then
//     raise Exception.Create('CARA BAYAR harus diisi !')
//  else
//  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
//     raise Exception.Create('SUPPLIER harus diisi !')
//  else
//  if edtJnsTransaksi.Text= '' then
//     raise Exception.Create('JENIS TRANSAKSI harus diisi !');
//  else
//  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
//     raise Exception.Create('KODE REKENING harus diisi !');

  if Masterjns_transaksi.AsString = 'Faktur Penjualan' then begin
     Masterid_trans.AsString:= '201';
  end else
  if Masterjns_transaksi.AsString = 'Free Goods Out' then begin
     Masterid_trans.AsString:= '203';
  end else
  if Masterjns_transaksi.AsString = 'Pinjaman Out' then begin
     Masterid_trans.AsString:= '204';
  end else
  if Masterjns_transaksi.AsString = 'Tukar Out' then begin
     Masterid_trans.AsString:= '205';
  end;


  if Master.State=dsInsert then begin
    Masterid_nota.AsLargeInt:= sq_NOTA.GetNextValue;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_nota.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (Masterid_nota not set). All input aborted !');

  Mastershift.AsInteger:= DM.getShift;

end;

procedure TNotaRetailFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_nota').Value:= Masterid_nota.Value;
     Detail.Open;
  end;
end;

procedure TNotaRetailFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TNotaRetailFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaRetailFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TNotaRetailFrm.DetailCalcFields(DataSet: TDataSet);
begin
  Detailsub_total.AsFloat:= Round(Detailqty_biji.AsFloat*Detailhrg.AsFloat);
//  Detailsub_total.AsFloat:=(Detailqty_karton.AsFloat*Detailhrg_jual_karton.AsFloat)+
//                        (Detailqty_lusin.AsFloat*Detailhrg_jual_lusin.AsFloat)+
//                        (Detailqty_biji.AsFloat*Detailhrg.AsFloat)-
//                         Detaildisc_rp.AsFloat;
end;

procedure TNotaRetailFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_nota').Value:= qBrowseid_nota.AsLargeInt;
end;

procedure TNotaRetailFrm.DetailBeforePost(DataSet: TDataSet);
begin
 if (Detailkd_item.IsNull) or (Trim(Detailkd_item.AsString)='') then
    raise Exception.Create('KODE harus diisi !')
// else
// if (Detailid_rek_gl.IsNull) or (Trim(Detailid_rek_gl.AsString)='') then
//    raise Exception.Create('KODE REKENING harus diisi !')
 else
 if (Detailhrg.IsNull) or (Trim(Detailhrg.AsString)='') then
    raise Exception.Create('HARGA harus diisi !')
 else
 if (Detailhrg.AsFloat=0) and (Detailispromo.AsString='0') then
    raise Exception.Create('HARGA harus diisi !');

 if Detail.State=dsInsert then
     Detailid_nota_detail.AsLargeInt:= sq_NOTA_DETAIL.GetNextValue;

//  if CheckDetail(Detailkd_item.AsString) then begin
//     raise Exception.Create('Item Sudah Ada, Silahkan edit Qty Untuk Menambahkan !');
//     Detail.Cancel;
//  end;

  if Detailqty_karton.IsNull  or (Trim(Detailqty_karton.AsString)='')  then begin
     if Detailqty_lusin.IsNull or (Trim(Detailqty_lusin.AsString)='') then begin
        if Detailqty_biji.IsNull or (Trim(Detailqty_biji.AsString)='') then
           raise Exception.Create('QTY harus diisi !');
     end;
  end
  else
  if Detailqty_karton.AsFloat=0 then begin
     if Detailqty_lusin.AsFloat=0 then begin
        if Detailqty_biji.AsFloat=0 then
           raise Exception.Create('QTY harus diisi !');
     end;
  end;


end;

procedure TNotaRetailFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TNotaRetailFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TNotaRetailFrm.edtCurrencyPropertiesButtonClick(
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

procedure TNotaRetailFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TNotaRetailFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;

 if Master.State=dsBrowse then
    Master.Edit;
 Mastersub_total.AsFloat:= Round(vSubTotal);
 Masterdisc_rp.AsFloat:= Round(vDiscRP);
 //Mastervat_num.AsFloat:= vSubTotal*10/100;
 Master.Post;

 grddbtvFP_Detailkd_item.Selected:= true;
end;

procedure TNotaRetailFrm.actPrintExecute(Sender: TObject);
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
          MemMasterpromo_uang.AsFloat:= Masterpromo_uang.AsFloat;
          MemMasterpromo_barang.AsFloat:= Masterpromo_barang.AsFloat;
          MemMasterevoucer.AsFloat:= Masterevocer.AsFloat;
          MemMasterno_evocer.AsString:= Masterno_evocer.AsString;
          MemMastersisa_tagihan.AsFloat:= Mastersisa.AsFloat;
          DM.MyKonversi1.Nilai:= Mastersisa.AsFloat;
          MemMasterterbilang.AsString:= '# '+DM.MyKonversi1.HasilKonversi+' #';

          if Masterispost.AsString='1' then MemMasterposted.AsString:='POSTED'
          else MemMasterposted.AsString:='';


          MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
          MemMastermodel.AsString:= 'NP-'+vjns_transaksi;
//          MemMasterdistribusi_document.AsString:= QDocDistributedoc_ditribution.AsString;

          if Masterdt_nota.IsNull then MemMasterdated.AsString:= ''
          else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm:ss', Masterdt_nota.AsDateTime);

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
                    MemDetaildescription.AsString:= Detailnama_item.AsString;
                    MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
                    MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
                    MemDetailqty_lusin.AsFloat:= Detailqty_lusin.AsFloat;
                    MemDetailunit_price.AsFloat:= Detailhrg_jual_karton.AsFloat;
                    MemDetailhrg_lusin.AsFloat:= Detailhrg_jual_lusin.AsFloat;
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
                    MemDetailqty.Clear;
                    MemDetailqty_karton.Clear;
                    MemDetailqty_lusin.Clear;
                    MemDetailunit_price.Clear;
                    MemDetailhrg_lusin.Clear;
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
                    MemDetaildescription.AsString:= Detailnama_item.AsString;
                    MemDetailqty.AsFloat:= Detailqty_biji.AsFloat;
                    MemDetailqty_karton.AsFloat:= Detailqty_karton.AsFloat;
                    MemDetailqty_lusin.AsFloat:= Detailqty_lusin.AsFloat;
                    MemDetailunit_price.AsFloat:= Detailhrg_jual_karton.AsFloat;
                    MemDetailhrg_lusin.AsFloat:= Detailhrg_jual_lusin.AsFloat;
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

  2: begin
           if Masterno_faktur_pajak.AsString='' then begin
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
           MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
           MemInfoPerusahaan.Post;

          MemMaster.Close;
          MemMaster.Open;
          MemMaster.Append;

          MemMasterreq_number.AsString:= Masterno_faktur_pajak.AsString;
          MemMasternama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
          MemMasteralamat_pajak_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString+', '+DM.L_Perusahaancity.AsString;

          MemMastervendor_name_pajak.AsString:= Masternama_rekanan.AsString;
          MemMastervendor_phone_pajak.AsString:= Masteralamat_rekanan.AsString+', '+Masterkota_rekanan.AsString;

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


          MemMasterv_npwp_1.AsString:= copy(Masterlcustomer_npwp.AsString,1,1);
          MemMasterv_npwp_2.AsString:= copy(Masterlcustomer_npwp.AsString,2,1);

          MemMasterv_npwp_3.AsString:= copy(Masterlcustomer_npwp.AsString,4,1);
          MemMasterv_npwp_4.AsString:= copy(Masterlcustomer_npwp.AsString,5,1);
          MemMasterv_npwp_5.AsString:= copy(Masterlcustomer_npwp.AsString,6,1);

          MemMasterv_npwp_6.AsString:= copy(Masterlcustomer_npwp.AsString,8,1);
          MemMasterv_npwp_7.AsString:= copy(Masterlcustomer_npwp.AsString,9,1);
          MemMasterv_npwp_8.AsString:= copy(Masterlcustomer_npwp.AsString,10,1);

          MemMasterv_npwp_9.AsString:= copy(Masterlcustomer_npwp.AsString,12,1);

          MemMasterv_npwp_10.AsString:= copy(Masterlcustomer_npwp.AsString,14,1);
          MemMasterv_npwp_11.AsString:= copy(Masterlcustomer_npwp.AsString,15,1);
          MemMasterv_npwp_12.AsString:= copy(Masterlcustomer_npwp.AsString,16,1);

          MemMasterv_npwp_13.AsString:= copy(Masterlcustomer_npwp.AsString,18,1);
          MemMasterv_npwp_14.AsString:= copy(Masterlcustomer_npwp.AsString,19,1);
          MemMasterv_npwp_15.AsString:= copy(Masterlcustomer_npwp.AsString,20,1);

          MemMasterapproved_name.AsString:= 'NAMA DIREKTUR';

          DM.vSysDate.Close;
          DM.vSysDate.Open;
          if DM.L_Perusahaandt_pengukuhan.IsNull then MemMasterdt_pengukuhan.AsString:= ''
          else MemMasterdt_pengukuhan.AsString:= FormatDateTime('dd mmmm yyyy', DM.L_Perusahaandt_pengukuhan.AsDateTime);

          if Masterdt_nota.IsNull then MemMasterdated.AsString:= ''
          else MemMasterdated.AsString:= DM.L_Perusahaancity.AsString+', '+FormatDateTime('dd mmmm yyyy hh:mm', Masterdt_nota.AsDateTime);

          MemMastersub_total.AsString:= FormatFloat('0.0,0', Mastersub_total.AsFloat);
          MemMastervat_num.AsString:= FormatFloat('0.0,0', Mastervat_num.AsFloat);
          MemMastertotal.AsString:= FormatFloat('0.0,0', Mastersub_total.AsFloat-Masterdisc_rp.AsFloat);
          MemMasterdiscount.AsString:= FormatFloat('0.0,0', Masterdisc_rp.AsFloat);

          MemMaster.Post;

            MemDetail.Close;
            MemDetail.Open;
            if Detail.RecordCount<18 then begin
              row_count:= 10-Detail.RecordCount;
              Detail.DisableControls;
              Detail.SortedFields := 'nomor';
              try
                Detail.First;
                while not Detail.Eof do begin
                  MemDetail.Append;
                  MemDetailno.AsString:= Detailnomor.AsString;
                  MemDetaildescription.AsString:= ' '+Detaildiskripsi.AsString;
                  MemDetailid_kurs_idr.AsString:= 'Rp.';
                  MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
                  MemDetail.Post;
                  Detail.Next;
                end;
                for i := 1 to row_count do begin
                  MemDetail.Append;
                  MemDetailno.AsString:='';
                  MemDetaildescription.AsString:= '';
                  MemDetailid_kurs_idr.AsString:= '';
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
                  MemDetaildescription.AsString:= ' '+Detaildiskripsi.AsString;
                  MemDetailid_kurs_idr.AsString:= 'Rp.';
                  MemDetailsub_total.AsFloat:= Detailsub_total.AsFloat;
                  MemDetail.Post;
                  Detail.Next;
                end;
              finally
                Detail.First;
                Detail.EnableControls
              end;
            end;

            frxPajak.LoadFromFile('report/frx_pajak.fr3');
            frxPajak.ShowReport;
        end;
  end;  // end of case

end;

procedure TNotaRetailFrm.Mastersub_totalChange(Sender: TField);
var vSubAfterDisc : Double;
begin
//   vSubAfterDisc:= Mastersub_total.AsFloat-Masterpromo_uang.AsFloat
//                    -Masterpromo_barang.AsFloat-Masterdisc_rp.AsFloat
//                    -Masterevocer.AsFloat-Mastermvocer.AsFloat;
//   Mastervat_num.AsFloat:= vSubAfterDisc*10/100;
//   Mastertotal.AsFloat:= vSubAfterDisc+Mastervat_num.AsFloat;

   vSubAfterDisc:= Mastersub_total.AsFloat;
   Mastertotal.AsFloat:= vSubAfterDisc-(Masterdisc_rp.AsFloat+Masterdisc_member.AsFloat);
end;

procedure TNotaRetailFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;
end;

procedure TNotaRetailFrm.MemRemarksKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then begin
       Detail.Append;
       grdFP_Detail.SetFocus;
       grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;
    end;
end;

procedure TNotaRetailFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
end;

procedure TNotaRetailFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TNotaRetailFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TNotaRetailFrm.btnOKClick(Sender: TObject);
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

procedure TNotaRetailFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  dbagbAddDetail.Click;
end;

procedure TNotaRetailFrm.ER_LCB_ITEM_KODEPropertiesCloseUp(
  Sender: TObject);
var key:char;
begin
   if DBMode=dmBrowse then
      Exit;



  if key=#13 then begin

     try
      qItem.Close;
      qItem.Params.ParamByName('pkd_item').Value:= Detailkd_item.Value;
      qItem.Open;
     except
     end;

     Sleep(1000);

     if qItem.RecordCount=0 then begin
      Detailkd_item.AsString:= '';
      Detaildiskripsi.AsString:= '';
      Detailhrg.AsFloat:= 0;
      Detailsatuan_beli.AsString:= '';
      grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;
     end else begin
      Detailkd_item.AsString:= qryITEMkd_item.AsString;
      Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
      Detailhrg.AsFloat:= qryITEMhrg_jual.AsFloat;
      Detailsatuan_beli.AsString:= qryITEMsatuan_jual.AsString;
      grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;
     end;
  end;

//    Detailkd_item.AsString:= qryITEMkd_item.AsString;
//    Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
//    Detailhrg.AsFloat:= qryITEMhrg_jual.AsFloat;
//    Detailsatuan_beli.AsString:= qryITEMsatuan_jual.AsString;

//  if key=#13 then
//     grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;

end;

procedure TNotaRetailFrm.grddbtvFP_Detailkd_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var key:char;
begin
//  if Detail.State in [dsInsert,dsedit] then
//  AProperties := ER_LCB_ITEM_KODE.Properties
//  else AProperties:= ER_EDT.Properties;
//
//  if key=#13 then
//     grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;
  
end;

procedure TNotaRetailFrm.grddbtvFP_Detailnama_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin

  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_ITEM_NAME.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaRetailFrm.grddbtvFP_Detailid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TNotaRetailFrm.MasterCalcFields(DataSet: TDataSet);
begin
   Mastersisa.AsFloat:= Mastertotal.AsFloat-Masterevocer.AsFloat-Mastermvocer.AsFloat;
end;

procedure TNotaRetailFrm.edtSalemanPropertiesCloseUp(Sender: TObject);
begin
  if Master.State=dsBrowse then
     Master.Edit;
  //Masterid_rek_gl.AsString:= QSalesmanid_rek_gl.AsString;
  //edtKodeRek.Text:= QSalesmanid_rek_gl.AsString;

end;

procedure TNotaRetailFrm.edtKodeRekPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if LookRekening.Execute then begin
      if Master.State=dsBrowse then
         Master.Edit ;
      Masterid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;

   end;

end;

procedure TNotaRetailFrm.edtSalemanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if LookSalesman.Execute then begin
      if Master.State=dsBrowse then
         Master.Edit ;
         Masterid_division.AsString:= QSalesmanid_division.AsString;
         Masternama_salesman.AsString:= QSalesmandescription.AsString;
//      Masterid_division.AsString:= QSalesmanid_division.AsString;
//      Masterid_rek_gl.AsString:= QSalesmanid_rek_gl.AsString;

   end;
end;

procedure TNotaRetailFrm.btnCariClick(Sender: TObject);
begin
   LookBrowse.Execute;
end;

procedure TNotaRetailFrm.btnFilterClick(Sender: TObject);
begin
   FilterBrowse.Execute;
end;

procedure TNotaRetailFrm.btnFirstClick(Sender: TObject);
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

procedure TNotaRetailFrm.ER_LCB_ITEM_NAMEPropertiesCloseUp(
  Sender: TObject);
begin
   if DBMode=dmBrowse then
      Exit;

   Detaildiskripsi.AsString:= qryITEMnama_item.AsString;
   Detailkd_item.AsString:= qryITEMkd_item.AsString;
   Detailhrg.AsFloat:= qryITEMhrg_jual.AsFloat;
   Detailsatuan_beli.AsString:= qryITEMsatuan_jual.AsString;
   Detailqty_biji.AsFloat:= 1;
end;


procedure TNotaRetailFrm.qCekHrg_JualBeforeOpen(DataSet: TDataSet);
begin
  qCekHrg_Jual.Params.ParamByName('pqty').Value:= Detailqty_biji.AsFloat;
  qCekHrg_Jual.Params.ParamByName('pkd_item').Value:= Detailkd_item.AsString;
end;

procedure TNotaRetailFrm.Detailqty_bijiChange(Sender: TField);
begin

    try
      qCekHrg_Jual.Close;
      qCekHrg_Jual.Open;
      Detailhrg.AsFloat:= qCekHrg_Jualhrg.AsFloat;

//      qItem.Close;
//      qItem.Params.ParamByName('pkd_item').Value:= Detailkd_item.AsString;
//      qItem.Open;
//
//        if CheckPromoUang(Detailkd_item.AsString, Detailqty_biji.AsFloat) then begin
//           if CheckPromoBdiv.AsFloat>0 then begin
//              Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
//              Detailid_warehouse.AsString:= qItemlok_rak.AsString;
//              Detaildisc_rp.AsFloat:= CheckPromoBnilai_promo.AsFloat*CheckPromoBdiv.AsFloat;
//  //            Detail.Post;
//  //            edtItem.Text:='';
//  //            edtqty.Text:='';
//  //            edtItem.SetFocus;
//           end else begin
//              Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
//              Detailid_warehouse.AsString:= qItemlok_rak.AsString;
//              Detaildisc_rp.AsFloat:= 0;
//  //            Detail.Post;
//  //            edtItem.Text:='';
//  //            edtqty.Text:='';
//  //            edtItem.SetFocus;
//           end
//        end
//        else
//        if CheckPromoBarang(Detailkd_item.AsString, Detailqty_biji.AsFloat) then begin
//          if CheckPromoBdiv.AsFloat>0 then begin
//              Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
//              Detailid_warehouse.AsString:= qItemlok_rak.AsString;
//              Detaildisc_rp.AsFloat:= 0;
//  //            Detail.Post;
//    //          edtItem.Text:='';
//    //          edtqty.Text:='';
//    //          edtItem.SetFocus;
//
//              CheckPromoB.First;
//              while not CheckPromoB.Eof do begin
//                Detail.Append;
//                Detailkd_item.AsString:= CheckPromoBkd_item_promo.AsString;
//                Detaildiskripsi.AsString:= CheckPromoBnama_item_promo.AsString;
//
//                if (CheckPromoBqty_item_promo.AsFloat*CheckPromoBdiv.AsFloat)>CheckPromoBqty_max.AsFloat then
//                    Detailqty_biji.AsFloat:= CheckPromoBqty_max.AsFloat;
//                if (CheckPromoBqty_item_promo.AsFloat*CheckPromoBdiv.AsFloat)<CheckPromoBqty_max.AsFloat then
//                    Detailqty_biji.AsFloat:= CheckPromoBqty_item_promo.AsFloat*CheckPromoBdiv.AsFloat;
//
//                Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
//                Detailid_warehouse.AsString:= qItemlok_rak.AsString;
//                Detailispromo.AsString:= '1';
//                Detaildisc_rp.AsFloat:= 0;
//                Detailhrg.AsFloat:= 0;
//                Detailketerangan.AsString:= Trim('Promo Barang Dari Pembelian "'+UpperCase(qItemnama_item.AsString)+'"');
//                Detail.Post;
//                CheckPromoB.Next;
//              end;
//
//              edtItem.Text:='';
//              edtqty.Text:='';
//              edtItem.SetFocus;
//          end else begin
//
//          end;
//
//        end else begin
//              Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
//              Detailid_warehouse.AsString:= qItemlok_rak.AsString;
//              Detaildisc_rp.AsFloat:= 0;
//  //            Detail.Post;
//  //            edtItem.Text:='';
//  //            edtqty.Text:='';
//  //            edtItem.SetFocus;
//        end;


    except

    end;

end;

procedure TNotaRetailFrm.QSalesmanBeforeOpen(DataSet: TDataSet);
begin
  QSalesman.Params.ParamByName('pinitial').Value:= DM.UserConnect;
end;

procedure TNotaRetailFrm.Masterdisc_memberChange(Sender: TField);
begin
  Mastertotal.AsFloat:= Mastertotal.AsFloat-Masterdisc_member.AsFloat;
end;

procedure TNotaRetailFrm.grddbtvFP_DetailEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin

  if (Key = VK_RETURN) and (grddbtvFP_Detail.Controller.FocusedColumn = grddbtvFP_Detailkd_item) then
    grddbtvFP_Detail.Controller.FocusedColumn := grddbtvFP_Detailnama_item;

  if (Key = VK_RETURN) and (grddbtvFP_Detail.Controller.FocusedColumn = grddbtvFP_Detailqty_ot_biji) then
    edtItem.SetFocus;

  if (Key = VK_TAB) then
      btnSave.SetFocus;

//  if (Key = VK_RETURN) and (grddbtvFP_Detail.Controller.FocusedColumn = grddbtvFP_Detailkd_item) then
//    grddbtvFP_Detail.Controller.FocusedColumn := grddbtvFP_Detailnama_item;
//
//  if (Key = VK_RETURN) and (grddbtvFP_Detail.Controller.FocusedColumn = grddbtvFP_Detailqty_ot_biji) then
//    Key:= VK_DOWN;
//
//  if (Key = VK_TAB) then
//      btnSave.SetFocus;

end;

procedure TNotaRetailFrm.LookRekananKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  try
    qDiscMember.Close;
    qDiscMember.Open;
     if qDiscMemberdisc_member_psn.AsFloat=0 then begin
        Masterkd_rekanan.AsString:= 'CASH';
        Masternama_rekanan.AsString:= 'CASH';
        Masterdisc_member.AsFloat:= 0;
        Mastertotal.AsFloat:= vSubTotal-Masterdisc_member.AsFloat;
     end else begin
        Masterdisc_member.AsFloat:= vSubTotal*qDiscMemberdisc_member_psn.AsFloat/100;
        btnSave.SetFocus;
     end;

  Except
  end;

end;

procedure TNotaRetailFrm.qDiscMemberBeforeOpen(DataSet: TDataSet);
begin
  qDiscMember.Params.ParamByName('pTotal').Value:= Mastertotal.AsFloat;
  qDiscMember.Params.ParamByName('pkd_rekanan').Value:= LookRekanan.Text;
end;

procedure TNotaRetailFrm.edtCaraBayarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
     btnSave.SetFocus;
end;

procedure TNotaRetailFrm.grddbtvFP_Detailkd_itemPropertiesChange(
  Sender: TObject);
var key: Char;
begin
  if key=#13 then begin

    try
      qItem.Close;
      qItem.Params.ParamByName('pkd_item').Value:= Detailkd_item.AsString;
      qItem.Open;

      if qItem.RecordCount=0 then begin
        Detail.Edit;
        Detailkd_item.AsString:= '';
        Detaildiskripsi.AsString:= '';
        Detailhrg.AsFloat:= 0;
        Detailsatuan_beli.AsString:= '';
        grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;
      end else begin
        Detail.Edit;
        Detailkd_item.AsString:= qItemkd_item.AsString;
        Detaildiskripsi.AsString:= qItemnama_item.AsString;
        Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
        Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
        grddbtvFP_Detail.GetColumnByFieldName('qty').FocusWithSelection;
      end;

    except
    end;
  end;

end;


procedure TNotaRetailFrm.edtItemKeyPress(Sender: TObject; var Key: Char);
var
vKey: Word;
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

  if Key=#27 then
     btnSave.SetFocus;


end;

procedure TNotaRetailFrm.edtqtyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    if CheckPromoUang(edtItem.Text, StrToFloat(edtqty.Text)) then begin
       if CheckPromoBdiv.AsFloat>0 then begin
          Detail.Append;
          Detailkd_item.AsString:= qItemkd_item.AsString;
          Detaildiskripsi.AsString:= qItemnama_item.AsString;
          Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
          Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
          Detailqty_biji.AsFloat:= StrToFloat(edtqty.Text);
          Detailid_warehouse.AsString:= qItemlok_rak.AsString;
          Detaildisc_rp.AsFloat:= CheckPromoBnilai_promo.AsFloat*CheckPromoBdiv.AsFloat;
          Detail.Post;
          edtItem.Text:='';
          edtqty.Text:='';
          edtItem.SetFocus;
       end else begin
          Detail.Append;
          Detailkd_item.AsString:= qItemkd_item.AsString;
          Detaildiskripsi.AsString:= qItemnama_item.AsString;
          Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
          Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
          Detailqty_biji.AsFloat:= StrToFloat(edtqty.Text);
          Detailid_warehouse.AsString:= qItemlok_rak.AsString;
          Detaildisc_rp.AsFloat:= 0;
          Detail.Post;
          edtItem.Text:='';
          edtqty.Text:='';
          edtItem.SetFocus;
       end
    end
    else
    if CheckPromoBarang(edtItem.Text, StrToFloat(edtqty.Text)) then begin
      if CheckPromoBdiv.AsFloat>0 then begin
          Detail.Append;
          Detailkd_item.AsString:= qItemkd_item.AsString;
          Detaildiskripsi.AsString:= qItemnama_item.AsString;
          Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
          Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
          Detailqty_biji.AsFloat:= StrToFloat(edtqty.Text);
          Detailid_warehouse.AsString:= qItemlok_rak.AsString;
          Detaildisc_rp.AsFloat:= 0;
          Detail.Post;
//          edtItem.Text:='';
//          edtqty.Text:='';
//          edtItem.SetFocus;

          CheckPromoB.First;
          while not CheckPromoB.Eof do begin
            Detail.Append;
            Detailkd_item.AsString:= CheckPromoBkd_item_promo.AsString;
            Detaildiskripsi.AsString:= CheckPromoBnama_item_promo.AsString;

            if (CheckPromoBqty_item_promo.AsFloat*CheckPromoBdiv.AsFloat)>CheckPromoBqty_max.AsFloat then
                Detailqty_biji.AsFloat:= CheckPromoBqty_max.AsFloat;
            if (CheckPromoBqty_item_promo.AsFloat*CheckPromoBdiv.AsFloat)<CheckPromoBqty_max.AsFloat then
                Detailqty_biji.AsFloat:= CheckPromoBqty_item_promo.AsFloat*CheckPromoBdiv.AsFloat;

            Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
            Detailid_warehouse.AsString:= qItemlok_rak.AsString;
            Detailispromo.AsString:= '1';
            Detaildisc_rp.AsFloat:= 0;
            Detailhrg.AsFloat:= 0;
            Detailketerangan.AsString:= Trim('Promo Barang Dari Pembelian "'+UpperCase(qItemnama_item.AsString)+'"');
            Detail.Post;
            CheckPromoB.Next;
          end;

          edtItem.Text:='';
          edtqty.Text:='';
          edtItem.SetFocus;
      end else begin

      end;

    end else begin
          Detail.Append;
          Detailkd_item.AsString:= qItemkd_item.AsString;
          Detaildiskripsi.AsString:= qItemnama_item.AsString;
          Detailhrg.AsFloat:= qItemhrg_jual.AsFloat;
          Detailsatuan_beli.AsString:= qItemsatuan_jual.AsString;
          Detailqty_biji.AsFloat:= StrToFloat(edtqty.Text);
          Detailid_warehouse.AsString:= qItemlok_rak.AsString;
          Detaildisc_rp.AsFloat:= 0;
          Detail.Post;
          edtItem.Text:='';
          edtqty.Text:='';
          edtItem.SetFocus;
    end

  end;

end;

procedure TNotaRetailFrm.edtItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_TAB) then
     btnSave.SetFocus;
end;

procedure TNotaRetailFrm.edtDiscItemPropertiesChange(Sender: TObject);
begin
  if Masterdisc_rp.AsFloat>0 then
      isPromoUang:= True;

end;

end.

unit U_JurnalPosting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxInplaceContainer,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, DBCtrls, RzDBNav, StdCtrls, SCControl, SCStdControls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxLabel, cxContainer,
  cxTextEdit, cxDBEdit, RzLabel, Mask, RzEdit, RzDBEdit, RzDBLbl, RzPanel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit,
  cxDropDownEdit, Wwkeycb, cxCheckBox, Menus, cxLookAndFeelPainters,
  cxButtons, cxCalendar, wwdbdatetimepicker, DateUtils, AdvToolBar,
  AdvToolBarStylers, AdvAppStyler, AdvPanel, AdvReflectionImage,
  cxLookAndFeels, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TJurnalPostingFrm = class(TForm)
    pnlTop: TSCPanel;
    lblHeader: TLabel;
    pgcPosting: TcxPageControl;
    tsNotaHutang: TcxTabSheet;
    tsNotaDebet: TcxTabSheet;
    qNOTA: TZQuery;
    dsNOTA: TDataSource;
    pnlBottom: TSCPanel;
    btnUnposting: TSCButton;
    btnPosting: TSCButton;
    btnRefresh: TSCButton;
    btnClose: TSCButton;
    tsMEMORIAL: TcxTabSheet;
    qNOTADetail: TZReadOnlyQuery;
    grdHutang: TcxGrid;
    grddbtvBrowseHutang: TcxGridDBTableView;
    grdHutangLevel: TcxGridLevel;
    grdHutangLevel2: TcxGridLevel;
    grddbtvBrowseHutangDetail: TcxGridDBTableView;
    dsNOTADetail: TDataSource;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnOK: TcxButton;
    edtDatePicker1: TwwDBDateTimePicker;
    edtDatePicker2: TwwDBDateTimePicker;
    grdMEMORIAL: TcxGrid;
    grddbtvBrowseMEMORIAL: TcxGridDBTableView;
    grddbtvBrowseMEMORIALDetail: TcxGridDBTableView;
    grdMEMORIALLevel: TcxGridLevel;
    grdMEMORIALLevel2: TcxGridLevel;
    qryMemorial: TZQuery;
    dsMemorial: TDataSource;
    qryMemorialDetail: TZReadOnlyQuery;
    dsMemorialDetail: TDataSource;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    ATBOS: TAdvToolBarOfficeStyler;
    qryMemorialDetailnomor: TIntegerField;
    qryMemorialDetailid_jurnal: TLargeintField;
    qryMemorialDetailid_jurnal_detail: TLargeintField;
    qryMemorialDetailno_reff: TStringField;
    qryMemorialDetailid_rek_gl: TStringField;
    qryMemorialDetaildescription: TStringField;
    qryMemorialDetaildebet: TFloatField;
    qryMemorialDetailkredit: TFloatField;
    qryMemorialno_jurnal: TStringField;
    qryMemorialid_jurnal: TLargeintField;
    qryMemorialdt_jurnal: TDateTimeField;
    qryMemorialno_bukti: TStringField;
    qryMemorialdt_ins: TDateTimeField;
    qryMemorialusr_ins: TStringField;
    qryMemorialispost: TStringField;
    qryMemorialiscancel: TStringField;
    qryMemorialremark: TStringField;
    qryMemorialdebet: TFloatField;
    grddbtvBrowseMEMORIALno_jurnal: TcxGridDBColumn;
    grddbtvBrowseMEMORIALdt_jurnal: TcxGridDBColumn;
    grddbtvBrowseMEMORIALdt_ins: TcxGridDBColumn;
    grddbtvBrowseMEMORIALusr_ins: TcxGridDBColumn;
    grddbtvBrowseMEMORIALispost: TcxGridDBColumn;
    grddbtvBrowseMEMORIALiscancel: TcxGridDBColumn;
    grddbtvBrowseMEMORIALremark: TcxGridDBColumn;
    grddbtvBrowseMEMORIALdebet: TcxGridDBColumn;
    qryMemorialusr_upd: TStringField;
    grddbtvBrowseMEMORIALDetailnomor: TcxGridDBColumn;
    grddbtvBrowseMEMORIALDetailno_reff: TcxGridDBColumn;
    grddbtvBrowseMEMORIALDetailid_rek_gl: TcxGridDBColumn;
    grddbtvBrowseMEMORIALDetaildescription: TcxGridDBColumn;
    grddbtvBrowseMEMORIALDetaildebet: TcxGridDBColumn;
    grddbtvBrowseMEMORIALDetailkredit: TcxGridDBColumn;
    qExec: TZQuery;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    PopPayment: TPopupMenu;
    Posting1: TMenuItem;
    Unposting1: TMenuItem;
    N1: TMenuItem;
    Canceled1: TMenuItem;
    Uncanceling1: TMenuItem;
    tsNotaPiutang: TcxTabSheet;
    tsNotaKredit: TcxTabSheet;
    tsKASMASUK: TcxTabSheet;
    grddbtvBrowseHutangDetailnomor: TcxGridDBColumn;
    grddbtvBrowseHutangDetailno_reff: TcxGridDBColumn;
    grddbtvBrowseHutangDetaildescription: TcxGridDBColumn;
    grddbtvBrowseHutangDetaildibayar: TcxGridDBColumn;
    grddbtvBrowseHutangDetailid_rek_gl: TcxGridDBColumn;
    grddbtvBrowseHutangDetailkd_wbs: TcxGridDBColumn;
    grddbtvBrowseHutangDetailkd_pi: TcxGridDBColumn;
    dbnItem: TRzDBNavigator;
    grdPiutang: TcxGrid;
    grdDBTVPiutang: TcxGridDBTableView;
    grdDBTVPiutangDetail: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    grdPiutangLvl1: TcxGridLevel;
    grdPiutangLvl2: TcxGridLevel;
    grdNK: TcxGrid;
    grdDBTV_NK: TcxGridDBTableView;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    grdDBTV2_NK: TcxGridDBTableView;
    grdLvlNK: TcxGridLevel;
    grdLvl2NK: TcxGridLevel;
    grdBKM: TcxGrid;
    grdDBTV_BKM: TcxGridDBTableView;
    grdDBTV2_BKM: TcxGridDBTableView;
    grdLvlBKM: TcxGridLevel;
    grdLvl2BKM: TcxGridLevel;
    grdDBTV_BKMap_number: TcxGridDBColumn;
    grdDBTV_BKMdt_ap: TcxGridDBColumn;
    grdDBTV_BKMnama_rekanan: TcxGridDBColumn;
    grdDBTV_BKMtotal: TcxGridDBColumn;
    grdDBTV_BKMispost: TcxGridDBColumn;
    grdDBTV_BKMiscancel: TcxGridDBColumn;
    grdDBTV_BKMusr_ins: TcxGridDBColumn;
    grdDBTV_BKMdt_ins: TcxGridDBColumn;
    grdDBTV_BKMid_rek_gl: TcxGridDBColumn;
    grdDBTV2_BKMnomor: TcxGridDBColumn;
    grdDBTV2_BKMdescriptions: TcxGridDBColumn;
    grdDBTV2_BKMno_mrir: TcxGridDBColumn;
    grdDBTV2_BKMid_rek_gl: TcxGridDBColumn;
    grdDBTV2_BKMsub_total: TcxGridDBColumn;
    qryMemorialid_kurs: TStringField;
    qryMemorialkurs: TFloatField;
    qNOTAno_nota: TStringField;
    qNOTAid_nota: TLargeintField;
    qNOTAdt_nota: TDateTimeField;
    qNOTAkd_rekanan: TStringField;
    qNOTAnama_rekanan: TStringField;
    qNOTAid_trans: TStringField;
    qNOTAdisc_rp: TFloatField;
    qNOTAvat_num: TFloatField;
    qNOTAtotal: TFloatField;
    qNOTAispost: TStringField;
    qNOTAiscancel: TStringField;
    qNOTAusr_ins: TStringField;
    qNOTAdt_ins: TDateTimeField;
    qNOTAusr_upd: TStringField;
    qNOTAid_rek_gl: TStringField;
    qNOTADetailid_nota: TLargeintField;
    qNOTADetailkd_item: TStringField;
    qNOTADetailhrg: TFloatField;
    qNOTADetailid_rek_gl: TStringField;
    qNOTADetaildisc_rp: TFloatField;
    qNOTADetaildisc_psn: TFloatField;
    qNOTADetailhrg_jual_karton: TFloatField;
    qNOTADetailhrg_jual_lusin: TFloatField;
    qNOTADetailnomor: TIntegerField;
    qNOTADetaildiskripsi: TStringField;
    grddbtvBrowseHutangno_nota: TcxGridDBColumn;
    grddbtvBrowseHutangdt_nota: TcxGridDBColumn;
    grddbtvBrowseHutangnama_rekanan: TcxGridDBColumn;
    grddbtvBrowseHutangdisc_rp: TcxGridDBColumn;
    grddbtvBrowseHutangvat_num: TcxGridDBColumn;
    grddbtvBrowseHutangtotal: TcxGridDBColumn;
    grddbtvBrowseHutangispost: TcxGridDBColumn;
    grddbtvBrowseHutangiscancel: TcxGridDBColumn;
    grddbtvBrowseHutangusr_upd: TcxGridDBColumn;
    grddbtvBrowseHutangid_rek_gl: TcxGridDBColumn;
    grdDebet: TcxGrid;
    grdDBTVBrowseDebet: TcxGridDBTableView;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    grdDBTVDebetDetail: TcxGridDBTableView;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    grdDebetLevel1: TcxGridLevel;
    grdDebetLevel2: TcxGridLevel;
    grdDBTVPiutangno_nota: TcxGridDBColumn;
    grdDBTVPiutangdt_nota: TcxGridDBColumn;
    grdDBTVPiutangnama_rekanan: TcxGridDBColumn;
    grdDBTVPiutangdisc_rp: TcxGridDBColumn;
    grdDBTVPiutangvat_num: TcxGridDBColumn;
    grdDBTVPiutangtotal: TcxGridDBColumn;
    grdDBTVPiutangispost: TcxGridDBColumn;
    grdDBTVPiutangiscancel: TcxGridDBColumn;
    grdDBTVPiutangid_rek_gl: TcxGridDBColumn;
    grdDBTV_NKdisc_rp: TcxGridDBColumn;
    grdDBTV_NKvat_num: TcxGridDBColumn;
    qPayment: TZQuery;
    dsqPayment: TDataSource;
    dsqPaymentDetail: TDataSource;
    qPaymentDetail: TZReadOnlyQuery;
    qPaymentno_payment: TStringField;
    qPaymentid_payment: TLargeintField;
    qPaymentdt_payment: TDateTimeField;
    qPaymentkd_rekanan: TStringField;
    qPaymentnama_rekanan: TStringField;
    qPaymentid_trans: TStringField;
    qPaymentnominal: TFloatField;
    qPaymentispost: TStringField;
    qPaymentiscancel: TStringField;
    qPaymentusr_ins: TStringField;
    qPaymentdt_ins: TDateTimeField;
    qPaymentusr_upd: TStringField;
    qPaymentid_rek_gl: TStringField;
    qPaymentDetailid_payment: TLargeintField;
    qPaymentDetailno_reff: TStringField;
    qPaymentDetailpembayaran: TFloatField;
    qPaymentDetailsisa: TFloatField;
    qPaymentDetaildibayar: TFloatField;
    qPaymentDetailid_rek_gl: TStringField;
    qPaymentDetailno_bukti: TStringField;
    qPaymentDetailno_payment: TStringField;
    qPaymentDetailid_cc_project: TStringField;
    qPaymentDetailnomor: TIntegerField;
    qPaymentDetaildescription: TStringField;
    tsKASKELUAR: TcxTabSheet;
    grdBKK: TcxGrid;
    grdDBTV_BKK: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    grdDBTV2_BKK: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    grdLvlBKK: TcxGridLevel;
    grdLvl2BKK: TcxGridLevel;
    tsBANKMASUK: TcxTabSheet;
    grdBBM: TcxGrid;
    grdDBTV_BBM: TcxGridDBTableView;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    grdDBTV2_BBM: TcxGridDBTableView;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    grdLvlBBM: TcxGridLevel;
    grdLvl2BBM: TcxGridLevel;
    tsBANKKELUAR: TcxTabSheet;
    grdBBK: TcxGrid;
    grdDBTV_BBK: TcxGridDBTableView;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    grdDBTV2_BBK: TcxGridDBTableView;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    grdLvlBBK: TcxGridLevel;
    grdLvl2BBK: TcxGridLevel;
    tsSETTLEMENT: TcxTabSheet;
    qSETTLEMENT: TZQuery;
    dsqSETTLEMENT: TDataSource;
    dsqSETTLEMENT_DETAIL: TDataSource;
    qSETTLEMENT_DETAIL: TZReadOnlyQuery;
    qryMemorialusr_post: TStringField;
    qryMemorialdt_post: TDateTimeField;
    grddbtvBrowseMEMORIALusr_post: TcxGridDBColumn;
    grddbtvBrowseMEMORIALdt_post: TcxGridDBColumn;
    qPaymentusr_post: TStringField;
    qPaymentdt_post: TDateTimeField;
    grdDBTV_BKMusr_post: TcxGridDBColumn;
    grdDBTV_BKMdt_post: TcxGridDBColumn;
    grdDBTV_BKKusr_post: TcxGridDBColumn;
    grdDBTV_BKKdt_post: TcxGridDBColumn;
    grdDBTV_BBMusr_post: TcxGridDBColumn;
    grdDBTV_BBMdt_post: TcxGridDBColumn;
    grdDBTV_BBKusr_post: TcxGridDBColumn;
    grdDBTV_BBKdt_post: TcxGridDBColumn;
    qPaymentno_cek_bg_tt: TStringField;
    qPaymentjns_ttbg: TStringField;
    grdDBTV_BBMno_cek_bg_tt: TcxGridDBColumn;
    grdDBTV_BBMjns_ttbg: TcxGridDBColumn;
    grdDBTV_BBKno_cek_bg_tt: TcxGridDBColumn;
    grdDBTV_BBKjns_ttbg: TcxGridDBColumn;
    grdSETTLE: TcxGrid;
    grdDBTV_SETTLE: TcxGridDBTableView;
    grdDBTV2_SETTLE: TcxGridDBTableView;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    grdLvlSETTLE: TcxGridLevel;
    grdLvl2SETTLE: TcxGridLevel;
    qSETTLEMENT_DETAILid_settlement: TLargeintField;
    qSETTLEMENT_DETAILnomor: TIntegerField;
    qSETTLEMENT_DETAILid_settlement_detail: TLargeintField;
    qSETTLEMENT_DETAILdiskripsi: TStringField;
    qSETTLEMENT_DETAILid_rek_gl: TStringField;
    qSETTLEMENT_DETAILno_kasbon: TStringField;
    qSETTLEMENT_DETAILnk: TStringField;
    qSETTLEMENT_DETAILjumlah: TFloatField;
    qSETTLEMENT_DETAILfull_name: TStringField;
    qNOTADetailid_nota_detail: TLargeintField;
    qNOTADetailqty_karton: TFloatField;
    qNOTADetailqty_lusin: TFloatField;
    qNOTADetailqty_biji: TFloatField;
    qNOTADetailqty_total_biji: TFloatField;
    qNOTADetailhrg_beli_karton: TFloatField;
    qNOTADetailbiji_per_karton: TFloatField;
    qNOTADetailispromo: TStringField;
    grdDBTV_SETTLEid_settlement: TcxGridDBColumn;
    grdDBTV_SETTLEno_settlement: TcxGridDBColumn;
    grdDBTV_SETTLEdt_settlement: TcxGridDBColumn;
    grdDBTV_SETTLEtotal: TcxGridDBColumn;
    grdDBTV_SETTLEusr_ins: TcxGridDBColumn;
    grdDBTV_SETTLEdt_ins: TcxGridDBColumn;
    grdDBTV_SETTLEispost: TcxGridDBColumn;
    grdDBTV_SETTLEiscancel: TcxGridDBColumn;
    grdDBTV_SETTLEusr_post: TcxGridDBColumn;
    grdDBTV_SETTLEdt_post: TcxGridDBColumn;
    grdDBTV_SETTLEid_rek_gl: TcxGridDBColumn;
    qSETTLEMENTid_settlement: TLargeintField;
    qSETTLEMENTno_settlement: TStringField;
    qSETTLEMENTdt_settlement: TDateTimeField;
    qSETTLEMENTtotal: TFloatField;
    qSETTLEMENTid_rek_gl: TStringField;
    qSETTLEMENTnama_rekening: TStringField;
    qSETTLEMENTusr_ins: TStringField;
    qSETTLEMENTdt_ins: TDateTimeField;
    qSETTLEMENTispost: TStringField;
    qSETTLEMENTiscancel: TStringField;
    qSETTLEMENTusr_post: TStringField;
    qSETTLEMENTdt_post: TDateTimeField;
    grdDBTV_SETTLEnama_rekening: TcxGridDBColumn;
    grdDBTV2_SETTLEnk: TcxGridDBColumn;
    grdDBTV2_SETTLEfull_name: TcxGridDBColumn;
    qSETTLEMENT_DETAILnama_rekening: TStringField;
    grdDBTV2_SETTLEnama_rekening: TcxGridDBColumn;
    qPaymentnama_rekening: TStringField;
    qPaymentDetailid_arus: TStringField;
    qPaymentDetailkd_rekanan: TStringField;
    qPaymentDetailnama_rekening: TStringField;
    qryMemorialDetailkd_rekanan: TStringField;
    qryMemorialDetailid_arus: TStringField;
    qryMemorialDetailnama_rekening: TStringField;
    grdDBTV_BBKnama_rekening: TcxGridDBColumn;
    grdDBTV_BBKid_payment: TcxGridDBColumn;
    grdDBTV2_BBKid_arus: TcxGridDBColumn;
    grdDBTV2_BBKnama_rekening: TcxGridDBColumn;
    grdDBTV_BBMid_payment: TcxGridDBColumn;
    grdDBTV_BBMnama_rekening: TcxGridDBColumn;
    grdDBTV2_BBMid_arus: TcxGridDBColumn;
    grdDBTV2_BBMnama_rekening: TcxGridDBColumn;
    grdDBTV_BKKid_payment: TcxGridDBColumn;
    grdDBTV_BKKnama_rekening: TcxGridDBColumn;
    grdDBTV2_BKKid_arus: TcxGridDBColumn;
    grdDBTV2_BKKnama_rekening: TcxGridDBColumn;
    grdDBTV_BKMid_payment: TcxGridDBColumn;
    grdDBTV_BKMnama_rekening: TcxGridDBColumn;
    grdDBTV2_BKMid_arus: TcxGridDBColumn;
    grdDBTV2_BKMnama_rekening: TcxGridDBColumn;
    grddbtvBrowseMEMORIALid_jurnal: TcxGridDBColumn;
    grddbtvBrowseMEMORIALDetailid_arus: TcxGridDBColumn;
    grddbtvBrowseMEMORIALDetailnama_rekening: TcxGridDBColumn;
    qNOTAnama_rekening: TStringField;
    qNOTADetailnama_rekening: TStringField;
    grdDBTV_NKid_nota: TcxGridDBColumn;
    grdDBTV_NKnama_rekening: TcxGridDBColumn;
    qNOTApromo_uang: TFloatField;
    qNOTApromo_barang: TFloatField;
    qNOTAnota_diretur: TStringField;
    qNOTAevocer: TFloatField;
    qNOTAno_evocer: TStringField;
    qNOTAnet_n_ppn: TFloatField;
    grdDBTV_NKpromo_uang: TcxGridDBColumn;
    grdDBTV_NKpromo_barang: TcxGridDBColumn;
    grdDBTV_NKnota_diretur: TcxGridDBColumn;
    grdDBTV2_NKkd_item: TcxGridDBColumn;
    grdDBTV2_NKid_rek_gl: TcxGridDBColumn;
    grdDBTV2_NKhrg_jual_karton: TcxGridDBColumn;
    grdDBTV2_NKhrg_jual_lusin: TcxGridDBColumn;
    grdDBTV2_NKnomor: TcxGridDBColumn;
    grdDBTV2_NKdiskripsi: TcxGridDBColumn;
    grdDBTV2_NKsub_total: TcxGridDBColumn;
    grdDBTV2_NKqty_karton: TcxGridDBColumn;
    grdDBTV2_NKqty_lusin: TcxGridDBColumn;
    grdDBTV2_NKqty_biji: TcxGridDBColumn;
    grdDBTV2_NKispromo: TcxGridDBColumn;
    grdDBTV2_NKnama_rekening: TcxGridDBColumn;
    qNOTADetailsub_total_jual: TFloatField;
    qNOTADetailsub_total_beli: TFloatField;
    grdDBTVPiutangid_nota: TcxGridDBColumn;
    grdDBTVPiutangnama_rekening: TcxGridDBColumn;
    grdDBTVPiutangpromo_uang: TcxGridDBColumn;
    grdDBTVPiutangpromo_barang: TcxGridDBColumn;
    grdDBTVPiutangevocer: TcxGridDBColumn;
    grdDBTVPiutangusr_ins: TcxGridDBColumn;
    grdDBTVPiutangdt_ins: TcxGridDBColumn;
    grdDBTVPiutangDetailhrg_jual_karton: TcxGridDBColumn;
    grdDBTVPiutangDetailhrg_jual_lusin: TcxGridDBColumn;
    grdDBTVPiutangDetailqty_karton: TcxGridDBColumn;
    grdDBTVPiutangDetailqty_lusin: TcxGridDBColumn;
    grdDBTVPiutangDetailqty_biji: TcxGridDBColumn;
    grdDBTVPiutangDetailispromo: TcxGridDBColumn;
    grdDBTVPiutangDetailnama_rekening: TcxGridDBColumn;
    grdDBTVBrowseDebetid_nota: TcxGridDBColumn;
    grdDBTVBrowseDebetusr_ins: TcxGridDBColumn;
    grdDBTVBrowseDebetdt_ins: TcxGridDBColumn;
    grdDBTVBrowseDebetnama_rekening: TcxGridDBColumn;
    grdDBTVDebetDetailqty_karton: TcxGridDBColumn;
    grdDBTVDebetDetailqty_biji: TcxGridDBColumn;
    grdDBTVDebetDetailhrg_beli_karton: TcxGridDBColumn;
    grdDBTVDebetDetailnama_rekening: TcxGridDBColumn;
    grddbtvBrowseHutangid_nota: TcxGridDBColumn;
    grddbtvBrowseHutangusr_ins: TcxGridDBColumn;
    grddbtvBrowseHutangdt_ins: TcxGridDBColumn;
    grddbtvBrowseHutangnama_rekening: TcxGridDBColumn;
    qNOTAno_bukti: TStringField;
    grddbtvBrowseHutangno_bukti: TcxGridDBColumn;
    grdDBTVPiutangno_bukti: TcxGridDBColumn;
    grddbtvBrowseHutangDetailqty_karton: TcxGridDBColumn;
    grddbtvBrowseHutangDetailhrg_beli_karton: TcxGridDBColumn;
    grddbtvBrowseHutangDetailnama_rekening: TcxGridDBColumn;
    grdDBTVPiutangkd_rekanan: TcxGridDBColumn;
    qNOTAid_division: TStringField;
    qNOTAnama_sales: TStringField;
    qNOTAmvocer: TFloatField;
    qNOTAcara_bayar: TStringField;
    grdDBTVPiutangmvocer: TcxGridDBColumn;
    grdDBTVPiutangcara_bayar: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure tsNotaHutangShow(Sender: TObject);
    procedure tsNotaDebetShow(Sender: TObject);
    procedure tsMEMORIALShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure edtDatePicker2CloseUp(Sender: TObject);
    procedure tsNotaPiutangShow(Sender: TObject);
    procedure tsNotaKreditShow(Sender: TObject);
    procedure tsKASMASUKShow(Sender: TObject);
    procedure Posting1Click(Sender: TObject);
    procedure Unposting1Click(Sender: TObject);
    procedure Canceled1Click(Sender: TObject);
    procedure Uncanceling1Click(Sender: TObject);
    procedure btnPostingClick(Sender: TObject);
    procedure btnUnpostingClick(Sender: TObject);
    procedure tsKASKELUARShow(Sender: TObject);
    procedure tsBANKMASUKShow(Sender: TObject);
    procedure tsBANKKELUARShow(Sender: TObject);
    procedure tsSETTLEMENTShow(Sender: TObject);
  private
    { Private declarations }
    DBMode: TDBMode;
    isEmpty: Boolean;
    vTag : integer;
    procedure UpdateView;
    procedure PostingNota(isPost: String; vMode : Integer);
    procedure PostingPayment(isPost: String; vMode : Integer);
    procedure PostingJurnal(isPost: String; vMode : Integer);
    procedure PostingSettlement(isPost: String; vMode : Integer);
    procedure OpenNota(idTrans: String);
    procedure OpenPayment(idTrans: String);
    procedure OpenJurnal(idTrans: String);
    procedure OpenSettlement(idTrans: String);


  public
    { Public declarations }
  end;

var
  JurnalPostingFrm: TJurnalPostingFrm;

   procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}
procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  JurnalPostingFrm:= TJurnalPostingFrm.Create(Application);
  try
    DM.L_Rekanan.Close;
    DM.L_Rekanan.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  JurnalPostingFrm.lblHeader.Caption:= pNamaMenu;
  JurnalPostingFrm.vtag:= ptag;
  JurnalPostingFrm.UpdateView;
  JurnalPostingFrm.pgcPosting.ActivePageIndex:= 0;
  JurnalPostingFrm.Show;
end;


procedure TJurnalPostingFrm.UpdateView;
var isBrowse: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
    vqry: TZQuery;
begin
  if DBMode=dmNone then begin
    pgcPosting.ActivePageIndex := 0;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnUnposting.Visible:= True;
    btnPosting.Visible:= True;
    btnUnposting.Enabled:= False;
    btnPosting.Enabled:= False;

  end else begin
    isBrowse := DBMode=dmBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnRefresh.Visible := isBrowse;
    btnPosting.Visible:= not isEmpty and isBrowse and accedit;
    btnUnposting.Visible:= not isEmpty and isBrowse and accedit;

  end;
end;




procedure TJurnalPostingFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TJurnalPostingFrm.FormShow(Sender: TObject);
begin
    ShowWindow(Handle, SW_Maximize)
end;

procedure TJurnalPostingFrm.btnRefreshClick(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
    0 : begin
        tsNotaHutangShow(nil);
        isEmpty:=(qNOTA.RecordCount=0)
        end;
    1 : begin
        tsNotaDebetShow(nil);
        isEmpty:=(qNOTA.RecordCount=0)
        end;
    2 : begin
        tsNotaPiutangShow(nil);
        isEmpty:= qNOTA.RecordCount=0
        end;
    3 : begin
        tsNotaKreditShow(nil);
        isEmpty:= qNOTA.RecordCount=0
        end;
    4 : begin
        tsMEMORIALShow(nil);
        isEmpty:= qryMemorial.RecordCount=0
        end;
    5 : begin
        tsKASMASUKShow(nil);
        isEmpty:= qPayment.RecordCount=0
        end;
    6 : begin
        tsKASKELUARShow(nil);
        isEmpty:= qPayment.RecordCount=0
        end;
    7 : begin
        tsBANKMASUKShow(nil);
        isEmpty:= qPayment.RecordCount=0
        end;
    8 : begin
        tsBANKKELUARShow(nil);
        isEmpty:= qPayment.RecordCount=0
        end;
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;


procedure TJurnalPostingFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TJurnalPostingFrm.OpenNota(idTrans: String);
begin
  try
    qNOTADetail.Close;
    qNOTA.Close;
    qNOTA.Params.ParamByName('pid_trans').AsString:= idTrans ;
    qNOTA.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qNOTA.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
    qNOTA.Open;
    qNOTADetail.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  isEmpty:= qNOTA.RecordCount=0;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TJurnalPostingFrm.OpenJurnal(idTrans: String);
begin
  try
    qryMemorialDetail.Close;
    qryMemorial.Close;
    qryMemorial.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qryMemorial.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
    qryMemorial.Open;
    qryMemorialDetail.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  isEmpty:= qryMemorial.RecordCount=0;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TJurnalPostingFrm.OpenPayment(idTrans: String);
begin
  try
    qPaymentDetail.Close;
    qPayment.Close;
    qPayment.Params.ParamByName('pid_trans').AsString:= idTrans;
    qPayment.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qPayment.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
    qPayment.Open;
    qPaymentDetail.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  isEmpty:= qPayment.RecordCount=0;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TJurnalPostingFrm.OpenSettlement(idTrans: String);
begin
  try
    qSETTLEMENT_DETAIL.Close;
    qSETTLEMENT.Close;
    qSETTLEMENT.Params.ParamByName('pid_trans').AsString:= idTrans;
    qSETTLEMENT.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qSETTLEMENT.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
    qSETTLEMENT.Open;
    qSETTLEMENT_DETAIL.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  isEmpty:= qSETTLEMENT.RecordCount=0;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TJurnalPostingFrm.tsNotaHutangShow(Sender: TObject);
begin
  OpenNota('101');
end;

procedure TJurnalPostingFrm.tsNotaDebetShow(Sender: TObject);
begin
 OpenNota('102');
end;


procedure TJurnalPostingFrm.tsNotaPiutangShow(Sender: TObject);
begin
  OpenNota('201');
end;

procedure TJurnalPostingFrm.tsNotaKreditShow(Sender: TObject);
begin
  OpenNota('202');
end;

procedure TJurnalPostingFrm.tsMEMORIALShow(Sender: TObject);
begin
 OpenJurnal('');
end;
procedure TJurnalPostingFrm.tsKASKELUARShow(Sender: TObject);
begin
 OpenPayment('401');
end;


procedure TJurnalPostingFrm.tsKASMASUKShow(Sender: TObject);
begin
 OpenPayment('402');
end;

procedure TJurnalPostingFrm.tsBANKKELUARShow(Sender: TObject);
begin
 OpenPayment('403');
end;


procedure TJurnalPostingFrm.tsBANKMASUKShow(Sender: TObject);
begin
 OpenPayment('404');
end;


procedure TJurnalPostingFrm.tsSETTLEMENTShow(Sender: TObject);
begin
  OpenSettlement('408');
end;



procedure TJurnalPostingFrm.btnOKClick(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
    0 : tsNotaHutangShow(nil);
    1 : tsNotaDebetShow(nil);
    2 : tsNotaPiutangShow(nil);
    3 : tsNotaKreditShow(nil);
    4 : tsMEMORIALShow(nil);
    5 : tsKASMASUKShow(nil);
    6 : tsKASKELUARShow(nil);
    7 : tsBANKMASUKShow(nil);
    8 : tsBANKKELUARShow(nil);
    9 : tsSETTLEMENTShow(nil);
  end;
end;

procedure TJurnalPostingFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TJurnalPostingFrm.edtDatePicker2CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if edtDatePicker2.Date<edtDatePicker1.Date then begin
    DecodeDate(edtDatePicker2.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    edtDatePicker1.Date:=dt;
  end
end;



procedure TJurnalPostingFrm.PostingNota(isPost: String; vMode : Integer);
var s: String;
    sts_dlg: TfrmStatus_Dialog;
begin
  case vmode of //POSTING/UNPOSTING PER
    0 : begin
         qExec.Close;
         qExec.SQL.Clear;
         qExec.Params.Clear;
         s:= 'update transaksi.nota set ispost='+QuotedStr(isPost);
         s:= s+' where id_nota='+IntToStr(qNOTAid_nota.AsLargeInt);
         qExec.SQL.Add(s);
         qExec.ExecSQL;
         qNOTA.Refresh;
         qNOTADetail.Refresh;
    end;
    1 : begin//cancel/uncancel per
         qExec.Close;
         qExec.SQL.Clear;
         qExec.Params.Clear;
         s:= 'update transaksi.nota set iscancel='+QuotedStr(isPost);
         s:= s+' where id_nota='+IntToStr(qNOTAid_nota.AsLargeInt);
         qExec.SQL.Add(s);
         qExec.ExecSQL;
         qNOTA.Refresh;
         qNOTADetail.Refresh;
    end;
    2 : begin        //posting all
          try
            sts_dlg:= TfrmStatus_Dialog.Create(Application);
            sts_dlg.Reset_Progress;
            sts_dlg.Set_Min(1);
            sts_dlg.Set_Max(qNOTA.RecordCount+2);
            sts_dlg.Set_Status('Please wait, Execute action ...!!!');
            sts_dlg.Show;

            qNOTADetail.DisableControls;
            qNOTA.DisableControls;
            qNOTA.First;
            sts_dlg.Progress_It;
            try
               while not qNOTA.eof do begin
                 qExec.Close;
                 qExec.SQL.Clear;
                 qExec.Params.Clear;
                 s:= 'update transaksi.nota set ispost='+QuotedStr(isPost);
                 s:= s+' where id_nota='+IntToStr(qNOTAid_nota.AsLargeInt);
                 qExec.SQL.Add(s);
                 qExec.ExecSQL;
                 qNOTA.Next;
                 sts_dlg.Progress_It;
               end;

             qNOTA.Refresh;
             qNOTADetail.Refresh;
             sts_dlg.Progress_It;
            except
              on E: Exception do
                DM.MyMsg(mmError,'Error has been encountered !',E.Message)
            end;
          finally
             qNOTA.First;
             qNOTA.EnableControls;
             qNOTADetail.EnableControls;
             sts_dlg.Free;
          end;
    end;
  end;
end;

procedure TJurnalPostingFrm.PostingJurnal(isPost: String; vMode : Integer);
var s: String;
    sts_dlg: TfrmStatus_Dialog;
begin
  case vmode of //POSTING/UNPOSTING PER
    0 :  begin
           qExec.Close;
           qExec.SQL.Clear;
           qExec.Params.Clear;
           s:= 'update accfin.jurnal set ispost='+QuotedStr(isPost);
           if isPost='1' then s:= s+' , usr_post='+QuotedStr(DM.UserConnect)+' , dt_post=current_timestamp'
           else s:= s+' , usr_post=null , dt_post=null';
           s:= s+' where id_jurnal='+IntToStr(qryMemorialid_jurnal.AsLargeInt);
           qExec.SQL.Add(s);
           qExec.ExecSQL;
           qryMemorial.Refresh;
           qryMemorialDetail.Refresh;
    end;
    1 :  begin
           qExec.Close;
           qExec.SQL.Clear;
           qExec.Params.Clear;
           s:= 'update accfin.jurnal set iscancel='+QuotedStr(isPost);
           s:= s+' , usr_post= null , dt_post=null';
           s:= s+' where id_jurnal='+IntToStr(qryMemorialid_jurnal.AsLargeInt);
           qExec.SQL.Add(s);
           qExec.ExecSQL;
           qryMemorial.Refresh;
           qryMemorialDetail.Refresh;
    end;
    2 : begin      //posting all
           try
            sts_dlg:= TfrmStatus_Dialog.Create(Application);
            sts_dlg.Reset_Progress;
            sts_dlg.Set_Min(1);
            sts_dlg.Set_Max(qryMemorial.RecordCount+2);
            sts_dlg.Set_Status('Please wait, Execute action ...!!!');
            sts_dlg.Show;

            qryMemorialDetail.DisableControls;
            qryMemorial.DisableControls;
            qryMemorial.First;
            sts_dlg.Progress_It;
             try
               while not qryMemorial.Eof do begin
                 qExec.Close;
                 qExec.SQL.Clear;
                 qExec.Params.Clear;
                 s:= 'update accfin.jurnal set ispost='+QuotedStr(isPost);

                 if isPost='1' then s:= s+' , usr_post='+QuotedStr(DM.UserConnect)+' , dt_post=current_timestamp'
                 else s:= s+' , usr_post=null , dt_post=null';

                 s:= s+' where id_jurnal='+IntToStr(qryMemorialid_jurnal.AsLargeInt);
                 qExec.SQL.Add(s);
                 qExec.ExecSQL;
                 qryMemorial.Next;
                 sts_dlg.Progress_It;
               end;
               qryMemorial.Refresh;
               qryMemorialDetail.Refresh;
               sts_dlg.Progress_It;
             except
                on E: Exception do
                  DM.MyMsg(mmError,'Error has been encountered !',E.Message)
             end;
           finally
             qryMemorial.First;
             qryMemorial.EnableControls;
             qryMemorialDetail.EnableControls;
             sts_dlg.Free;
           end;
    end;

  end;

end;

procedure TJurnalPostingFrm.PostingPayment(isPost: String; vMode : Integer);
var s: String;
    sts_dlg: TfrmStatus_Dialog;
begin
  case vmode of //POSTING/UNPOSTING PER
    0 : begin
         qExec.Close;
         qExec.SQL.Clear;
         qExec.Params.Clear;
         s:= 'update accfin.payment set ispost='+QuotedStr(isPost);
         if isPost='1' then s:= s+' , usr_post='+QuotedStr(DM.UserConnect)+' , dt_post=current_timestamp'
         else s:= s+' , usr_post=null , dt_post=null';
         s:= s+' where id_payment='+IntToStr(qPaymentid_payment.AsLargeInt);
         qExec.SQL.Add(s);
         qExec.ExecSQL;
         qPayment.Refresh;
         qPaymentDetail.Refresh;
    end;
    1 : begin  //CANCEL/UNCANCEL PER
         qExec.Close;
         qExec.SQL.Clear;
         qExec.Params.Clear;
         s:= 'update accfin.payment set iscancel='+QuotedStr(isPost);
         s:= s+' , usr_post=null , dt_post=null';
         s:= s+' where id_payment='+IntToStr(qPaymentid_payment.AsLargeInt);
         qExec.SQL.Add(s);
         qExec.ExecSQL;
         qPayment.Refresh;
         qPaymentDetail.Refresh;
    end;
    2 : begin
           try
            sts_dlg:= TfrmStatus_Dialog.Create(Application);
            sts_dlg.Reset_Progress;
            sts_dlg.Set_Min(1);
            sts_dlg.Set_Max(qPayment.RecordCount+2);
            sts_dlg.Set_Status('Please wait, Execute action ...!!!');
            sts_dlg.Show;

            qPaymentDetail.DisableControls;
            qPayment.DisableControls;
            qPayment.First;
            sts_dlg.Progress_It;
             try
              while not qPayment.Eof do begin
               qExec.Close;
               qExec.SQL.Clear;
               qExec.Params.Clear;
               s:= 'update accfin.payment set ispost='+QuotedStr(isPost);
               if isPost='1' then s:= s+' , usr_post='+QuotedStr(DM.UserConnect)+' , dt_post=current_timestamp'
               else s:= s+' , usr_post=null , dt_post=null';
               s:= s+' where id_payment='+IntToStr(qPaymentid_payment.AsLargeInt);
               qExec.SQL.Add(s);
               qExec.ExecSQL;
               qPayment.Next;
               sts_dlg.Progress_It;
              end;
               qPayment.Refresh;
               qPaymentDetail.Refresh;
               sts_dlg.Progress_It;
             except
                on E: Exception do
                  DM.MyMsg(mmError,'Error has been encountered !',E.Message)
             end;
           finally
             qPayment.First;
             qPayment.EnableControls;
             qPaymentDetail.EnableControls;
             sts_dlg.Free;
           end;
    end;

  end;
end;

procedure TJurnalPostingFrm.PostingSettlement(isPost: String; vMode : Integer);
var s: String;
    sts_dlg: TfrmStatus_Dialog;
begin
  case vmode of //POSTING/UNPOSTING PER
    0 : begin
       qExec.Close;
       qExec.SQL.Clear;
       qExec.Params.Clear;
       s:= 'update accfin.settlement set ispost='+QuotedStr(isPost);
       if isPost='1' then s:= s+' , usr_post='+QuotedStr(DM.UserConnect)+' , dt_post=current_timestamp'
       else s:= s+' , usr_post=null , dt_post=null';
       s:= s+' where id_settlement='+IntToStr(qSETTLEMENTid_settlement.AsLargeInt);
       qExec.SQL.Add(s);
       qExec.ExecSQL;
       qSETTLEMENT.Refresh;
       qSETTLEMENT_DETAIL.Refresh;
    end;
    1 : begin       //cancel/uncancel all
       qExec.Close;
       qExec.SQL.Clear;
       qExec.Params.Clear;
       s:= 'update accfin.settlement set iscancel='+QuotedStr(isPost);
       s:= s+' , usr_post=null , dt_post=null';
       s:= s+' where id_settlement='+IntToStr(qSETTLEMENTid_settlement.AsLargeInt);
       qExec.SQL.Add(s);
       qExec.ExecSQL;
       qSETTLEMENT.Refresh;
       qSETTLEMENT_DETAIL.Refresh;
    end;
    2 : begin
           try
            sts_dlg:= TfrmStatus_Dialog.Create(Application);
            sts_dlg.Reset_Progress;
            sts_dlg.Set_Min(1);
            sts_dlg.Set_Max(qSETTLEMENT.RecordCount+2);
            sts_dlg.Set_Status('Please wait, Execute action ...!!!');
            sts_dlg.Show;

            qSETTLEMENT_DETAIL.DisableControls;
            qSETTLEMENT.DisableControls;
            qSETTLEMENT.First;
            sts_dlg.Progress_It;
             try
              while not qSETTLEMENT.Eof do begin
               qExec.Close;
               qExec.SQL.Clear;
               qExec.Params.Clear;
               s:= 'update accfin.settlement set ispost='+QuotedStr(isPost);
               if isPost='1' then s:= s+' , usr_post='+QuotedStr(DM.UserConnect)+' , dt_post=current_timestamp'
               else s:= s+' , usr_post=null , dt_post=null';
               s:= s+' where id_settlement='+IntToStr(qSETTLEMENTid_settlement.AsLargeInt);
               qExec.SQL.Add(s);
               qExec.ExecSQL;
               qSETTLEMENT.Next;
               sts_dlg.Progress_It;
              end;
               qSETTLEMENT.Refresh;
               qSETTLEMENT_DETAIL.Refresh;
               sts_dlg.Progress_It;
             except
                on E: Exception do
                  DM.MyMsg(mmError,'Error has been encountered !',E.Message)
             end;
           finally
             qSETTLEMENT.First;
             qSETTLEMENT.EnableControls;
             qSETTLEMENT_DETAIL.EnableControls;
             sts_dlg.Free;
           end;
    end;
  end;
end;


procedure TJurnalPostingFrm.Posting1Click(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
    0 : PostingNota('1',0);
    1 : PostingNota('1',0);
    2 : PostingNota('1',0);
    3 : PostingNota('1',0);
    4 : PostingJurnal('1',0);
    5 : PostingPayment('1',0);
    6 : PostingPayment('1',0);
    7 : PostingPayment('1',0);
    8 : PostingPayment('1',0);
    9 : PostingSettlement('1',0);
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TJurnalPostingFrm.Unposting1Click(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
    0 : PostingNota('0',0);
    1 : PostingNota('0',0);
    2 : PostingNota('0',0);
    3 : PostingNota('0',0);
    4 : PostingJurnal('0',0);
    5 : PostingPayment('0',0);
    6 : PostingPayment('0',0);
    7 : PostingPayment('0',0);
    8 : PostingPayment('0',0);
    9 : PostingSettlement('0',0);
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TJurnalPostingFrm.Canceled1Click(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
    0 : PostingNota('1',1);
    1 : PostingNota('1',1);
    2 : PostingNota('1',1);
    3 : PostingNota('1',1);
    4 : PostingJurnal('1',1);
    5 : PostingPayment('1',1);
    6 : PostingPayment('1',1);
    7 : PostingPayment('1',1);
    8 : PostingPayment('1',1);
    9 : PostingSettlement('1',1);
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TJurnalPostingFrm.Uncanceling1Click(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
    0 : PostingNota('0',1);
    1 : PostingNota('0',1);
    2 : PostingNota('0',1);
    3 : PostingNota('0',1);
    4 : PostingJurnal('0',1);
    5 : PostingPayment('0',1);
    6 : PostingPayment('0',1);
    7 : PostingPayment('0',1);
    8 : PostingPayment('0',1);
    9 : PostingSettlement('0',1);
  end;
  DBMode:= dmBrowse;
  UpdateView;

end;

procedure TJurnalPostingFrm.btnPostingClick(Sender: TObject);
begin

  if DM.MyMsg(mmConfirmation,'Do you want to continue ?','To avoid NOT RESPONDING system, shortest date filtered needed.')=101 then
    Exit;


  case pgcPosting.ActivePageIndex of
    0 : PostingNota('1',2);
    1 : PostingNota('1',2);
    2 : PostingNota('1',2);
    3 : PostingNota('1',2);
    4 : PostingJurnal('1',2);
    5 : PostingPayment('1',2);
    6 : PostingPayment('1',2);
    7 : PostingPayment('1',2);
    8 : PostingPayment('1',2);
    9 : PostingSettlement('1',2);
  end; //---------------------end of cae
  DBMode:= dmBrowse;
  UpdateView;

end;

procedure TJurnalPostingFrm.btnUnpostingClick(Sender: TObject);
begin

  if DM.MyMsg(mmConfirmation,'Do you want to continue ?','To avoid NOT RESPONDING system, shortest date filtered needed.')=101 then
    Exit;


  case pgcPosting.ActivePageIndex of
    0 : PostingNota('0',2);
    1 : PostingNota('0',2);
    2 : PostingNota('0',2);
    3 : PostingNota('0',2);
    4 : PostingJurnal('0',2);
    5 : PostingPayment('0',2);
    6 : PostingPayment('0',2);
    7 : PostingPayment('0',2);
    8 : PostingPayment('0',2);
    9 : PostingSettlement('0',2);
  end;
  DBMode:= dmBrowse;
  UpdateView;

end;

end.

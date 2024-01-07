unit U_ItemReceive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, cxButtonEdit,
  cxCalendar, cxEditRepositoryItems, cxDBEditRepository, frxClass,
  frxExportPDF, frxExportXLS, frxExportRTF, kbmMemTable, frxDBSet,
  wwDialog, wwidlg, ZDataset, AdvToolBar, AdvToolBarStylers, ZSequence,
  ZAbstractRODataset, ZAbstractDataset, ActnList, cxGridBandedTableView,
  cxGridTableView, AdvPanel, AdvAppStyler, cxGridDBBandedTableView,
  RzPanel, cxMemo, cxDBEdit, StdCtrls, wwdblook, Wwdbdlg, DBCtrls,
  cxGroupBox, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxContainer,
  ExtCtrls, SCControl, SCStdControls, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  AdvGlowButton, AdvReflectionImage, wwdbdatetimepicker, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;


type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TItemReceiveFrm = class(TForm)
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
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
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
    RzGroupBox2: TRzGroupBox;
    edtPosted: TcxDBCheckBox;
    edtBatal: TcxDBCheckBox;
    sq_PURCHASE_RECEIVE: TZSequence;
    qryGet_IReceive_Number: TZQuery;
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
    Label7: TLabel;
    DBText1: TDBText;
    SCPanel1: TSCPanel;
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    LookReviewer: TwwLookupDialog;
    LookApprover: TwwLookupDialog;
    frxDBMaster: TfrxDBDataset;
    MemMaster: TkbmMemTable;
    MemMasterreq_number: TStringField;
    MemMasterdated: TStringField;
    MemMasterremarks: TStringField;
    MemMasterprepared_name: TStringField;
    MemMasterreviewed_name: TStringField;
    MemMasterapproved_name: TStringField;
    MemMasterdt_prepared: TStringField;
    MemDetail: TkbmMemTable;
    frxDBDetail: TfrxDBDataset;
    MemMasterproject: TStringField;
    MemMasterexpedition: TStringField;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    qryGet_IReceive_Numberfn_gen_lpb_number: TStringField;
    actPrint: TAction;
    qryUpdatePO: TZReadOnlyQuery;
    frPR: TfrxReport;
    MemMastermodel: TStringField;
    MemMasterdistribusi_document: TStringField;
    MemMasterprinted_by: TStringField;
    MemMasterpo_number: TStringField;
    MemMastervendor_name: TStringField;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    L_WareHouse: TZReadOnlyQuery;
    L_WareHouseid_warehouse: TStringField;
    L_WareHousedescription: TStringField;
    qryCheck: TZReadOnlyQuery;
    QDocDistribute: TZReadOnlyQuery;
    QDocDistributedoc_ditribution: TStringField;
    MemMasterreviewed_name_2: TStringField;
    MemMasterapproved_name_2: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterdt_reviewed_2: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterdt_approved_2: TStringField;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    sq_purchase_receive_detail: TZSequence;
    MemMasterposted: TStringField;
    qryUpdatePOproc_update_po_ir: TStringField;
    Masterid_purchase_receive: TLargeintField;
    Masterno_purchase_receive: TStringField;
    Masterdt_receive: TDateTimeField;
    Masterid_reff: TLargeintField;
    Masterreff_number: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterremarks: TStringField;
    Masterisdelete: TStringField;
    Masterid_trans: TStringField;
    Masterprepared_by: TStringField;
    Masterreviewed_by: TStringField;
    Masterapproved_by: TStringField;
    Masterno_invoice: TStringField;
    Masterreturn_kind: TStringField;
    Masterisclosed: TStringField;
    Masterlprepared_name: TStringField;
    Masterlreviewed_name: TStringField;
    Masterlapproved_name: TStringField;
    Masterlnama_rekanan: TStringField;
    lblCurrency: TLabel;
    Detailid_purchase_receive: TLargeintField;
    Detailid_item: TStringField;
    Detailsatuan: TStringField;
    Detaildescription: TStringField;
    Detailqty: TFloatField;
    Detailunit_price: TFloatField;
    Detailid_po_detail: TLargeintField;
    Detailnomor: TIntegerField;
    Detailid_warehouse: TStringField;
    Detailid_purchase_receive_detail: TLargeintField;
    Detailid_po: TLargeintField;
    Detailqty_po: TFloatField;
    Detailsatuan_po: TStringField;
    Detailratio: TFloatField;
    Detailqoh: TFloatField;
    Detailqty_ot: TFloatField;
    Detailqty_ir: TFloatField;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    Detailqty_gudang: TFloatField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    btnAddItems: TSCButton;
    Mastertotal: TFloatField;
    MemMasterjudul: TStringField;
    Masterid_rek_gl: TStringField;
    Detailid_rek_gl: TStringField;
    cxEditRepository1: TcxEditRepository;
    ER_LCB_KODE: TcxEditRepositoryLookupComboBoxItem;
    ER_TEXT: TcxEditRepositoryTextItem;
    dsL_WareHouse: TDataSource;
    qrySupplier: TZReadOnlyQuery;
    dsSupplier: TDataSource;
    qryItem: TZReadOnlyQuery;
    dsItem: TDataSource;
    cxStyle5: TcxStyle;
    ER_LCB_DISKRIPSI: TcxEditRepositoryLookupComboBoxItem;
    Masterlalamat_rekanan: TStringField;
    grddbtvMasterreff_number: TcxGridDBColumn;
    actHrgBeli: TAction;
    actHPP: TAction;
    ER_LCB_GUDANG: TcxEditRepositoryLookupComboBoxItem;
    grdDetail: TcxGrid;
    grdDetailDBBTV: TcxGridDBBandedTableView;
    grdDetailDBBTVnomor: TcxGridDBBandedColumn;
    grdDetailDBBTVid_item: TcxGridDBBandedColumn;
    grdDetailDBBTVdescription: TcxGridDBBandedColumn;
    grdDetailDBBTVqty_po: TcxGridDBBandedColumn;
    grdDetailDBBTVratio: TcxGridDBBandedColumn;
    grdDetailDBBTVqty: TcxGridDBBandedColumn;
    grdDetailDBBTVid_warehouse: TcxGridDBBandedColumn;
    grdlvlDetail: TcxGridLevel;
    GroupBox1: TGroupBox;
    MemRemarks: TcxDBMemo;
    Mastergrand_total: TFloatField;
    Mastersubtotal: TFloatField;
    pnlPrepared: TRzPanel;
    LblL_Prepared: TLabel;
    dbt_UserPrepared: TDBText;
    _DB_TGL_1: TDBText;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    frPRBackUp: TfrxReport;
    MemMastertotal: TFloatField;
    MemMasterppn: TFloatField;
    MemMastergtotal: TFloatField;
    MemMasterdisc_rp: TFloatField;
    qryUpdate: TZQuery;
    Masterctotal: TFloatField;
    Masterkd_rekanan: TStringField;
    SCPanel3: TSCPanel;
    Label15: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    btnCari: TSCButton;
    btnFilter: TSCButton;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
    Label5: TLabel;
    qBrowseid_purchase_receive: TLargeintField;
    qBrowseno_purchase_receive: TStringField;
    qBrowsedt_receive: TDateTimeField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsekd_rekanan: TStringField;
    qBrowsenama_rekanan: TStringField;
    qBrowsereff_number: TStringField;
    qrySubTotal: TZQuery;
    qrySubTotalsub_total: TFloatField;
    edtNoPO: TcxDBButtonEdit;
    qryPO: TZReadOnlyQuery;
    LookPO: TwwLookupDialog;
    qryPODetail: TZReadOnlyQuery;
    btnAmbilData: TSCButton;
    MemDetailid_item: TStringField;
    MemDetailsatuan: TStringField;
    MemDetaildescription: TStringField;
    MemDetailqty: TFloatField;
    MemDetailunit_price: TFloatField;
    MemDetailid_po_detail: TLargeintField;
    MemDetailnomor: TIntegerField;
    MemDetailid_warehouse: TStringField;
    MemDetailid_purchase_receive_detail: TLargeintField;
    MemDetailid_po: TLargeintField;
    MemDetailqty_po: TFloatField;
    MemDetailsatuan_po: TStringField;
    MemDetailratio: TFloatField;
    MemDetailqoh: TFloatField;
    MemDetailqty_ot: TFloatField;
    MemDetailqty_ir: TFloatField;
    MemDetailid_rek_gl: TStringField;
    qryPOno_srt_jalan: TStringField;
    qryPOno_invoice: TStringField;
    qryPOdt_nota: TDateTimeField;
    qryPOnama_rekanan: TStringField;
    qryPODetailno_nota: TStringField;
    qryPODetaildt_nota: TDateTimeField;
    qryPODetailkd_rekanan: TStringField;
    qryPODetailnama_rekanan: TStringField;
    qryPODetailid_nota_detail: TLargeintField;
    qryPODetailid_nota: TLargeintField;
    qryPODetailnomor: TIntegerField;
    qryPODetailkd_item: TStringField;
    qryPODetailid_rek_gl: TStringField;
    qryPODetaildisc_rp: TFloatField;
    qryPODetaildisc_psn: TFloatField;
    qryPODetailhrg_jual_karton: TFloatField;
    qryPODetailhrg_jual_lusin: TFloatField;
    qryPODetailhrg: TFloatField;
    qryPODetailqty_karton: TFloatField;
    qryPODetailqty_lusin: TFloatField;
    qryPODetailqty_biji: TFloatField;
    qryPODetailqty_total_biji: TFloatField;
    qryPODetaildiskripsi: TStringField;
    qryPODetailhrg_beli_karton: TFloatField;
    qryPODetailbiji_per_karton: TFloatField;
    qryPODetailispromo: TStringField;
    qryPODetailstatus: TStringField;
    qryPODetaildisc_psn_non_promo: TFloatField;
    qryPODetailrasio: TFloatField;
    qryPODetailsatuan_stok: TStringField;
    qryPOid_nota: TLargeintField;
    Detailqty_karton: TFloatField;
    Detailqty_lusin: TFloatField;
    Detailqty_biji: TFloatField;
    qQTYpcs: TZReadOnlyQuery;
    qQTYpcspcode: TLargeintField;
    qQTYpcsnma_produk: TMemoField;
    qQTYpcsqty_pmbelian_terbesar: TLargeintField;
    qQTYpcsqty_terkecil: TLargeintField;
    grdDetailDBBTVColumn1: TcxGridDBBandedColumn;
    qryItemkd_item: TStringField;
    qryItemsatuan_beli: TStringField;
    qryItemnama_item: TStringField;
    qryItemrasio: TFloatField;
    qryItemsatuan_jual: TStringField;
    qryItemhrg_beli: TFloatField;
    qryPOkd_rekanan: TStringField;
    qryPOjns_transaksi: TStringField;
    qTT: TZQuery;
    qTTid_nota: TLargeintField;
    qTTno_nota: TStringField;
    qTTdt_nota: TDateTimeField;
    qTTno_bukti: TStringField;
    qTTdt_ins: TDateTimeField;
    qTTdt_upd: TDateTimeField;
    qTTusr_ins: TStringField;
    qTTusr_upd: TStringField;
    qTTispost: TStringField;
    qTTiscancel: TStringField;
    qTTisdelete: TStringField;
    qTTtotal: TFloatField;
    qTTkd_rekanan: TStringField;
    qTTid_trans: TStringField;
    qTTid_rek_gl: TStringField;
    qTTid_division: TStringField;
    qTTcara_bayar: TStringField;
    qTTdt_jth_tempo: TDateTimeField;
    qTTdiskripsi: TStringField;
    qTTsub_total: TFloatField;
    qTTclaim: TFloatField;
    qTTdisc_rp: TFloatField;
    qTTpromo_uang: TFloatField;
    qTTpromo_barang: TFloatField;
    qTTnet_n_ppn: TFloatField;
    qTTiskirim: TStringField;
    qTTislunas: TStringField;
    qTTretur: TFloatField;
    qTTishpp: TStringField;
    qTTdt_lunas: TDateTimeField;
    qTTdt_kirim: TDateTimeField;
    qTTisok: TStringField;
    qTTdt_posting: TDateTimeField;
    qTTnota_diretur: TStringField;
    qTTid_curr: TStringField;
    qTTkurs: TFloatField;
    qTTvat_str: TStringField;
    qTTvat_num: TFloatField;
    qTTkd_del_place: TStringField;
    qTTno_rekap: TStringField;
    qTTn_hari: TIntegerField;
    qTTevocer: TFloatField;
    qTTno_faktur_pajak: TStringField;
    qTTno_evocer: TStringField;
    qTTid_import: TLargeintField;
    qTTpromo_id: TStringField;
    qTTmvocer: TFloatField;
    qTTno_mvocer: TStringField;
    qTTdisc_psn: TFloatField;
    qTTisget: TStringField;
    qTTjns_transaksi: TStringField;
    qTTdisc_total: TFloatField;
    qTTdisc_member: TFloatField;
    qTTshift: TIntegerField;
    qTTisget_pay: TStringField;
    qTTdibayar: TFloatField;
    qTTkembali: TFloatField;
    frxDBTT: TfrxDBDataset;
    qTTnama_supplier: TStringField;
    frxTT: TfrxReport;
    dsTT: TDataSource;
    edtSupplier: TcxDBButtonEdit;
    LookSupplier: TwwLookupDialog;
    qrySuppliernama_rekanan: TStringField;
    qrySupplierkd_rekanan: TStringField;
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
    procedure actPrintExecute(Sender: TObject);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailCalcFields(DataSet: TDataSet);
    procedure grdPO_DetailDBBTVid_unitPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure grdPO_DetailEnter(Sender: TObject);
    procedure edtSupplierCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure edtDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure grdDetailDBBTVid_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure cxEditRepository1LookupComboBoxItem1PropertiesCloseUp(
      Sender: TObject);
    procedure grdDetailDBBTVid_warehouseGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure MemRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure grdDetailDBTableView1descriptionGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure grdDetailDBBTVCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtNoPOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAmbilDataClick(Sender: TObject);
    procedure edtSupplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    vjns_transaksi, vrek_kredit, vrek_debet, vjudul : string;
    v_total : double;
    vtag : integer;
    DBMode: TDBMode;
    is_Clicked, isTambah : Boolean;
    OldPt : Tpoint;

    { Private declarations }

    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;

  public
    { Public declarations }
  end;

var
  ItemReceiveFrm: TItemReceiveFrm;

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);

implementation

uses U_DM, U_Unit;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);
begin
    ItemReceiveFrm:= TItemReceiveFrm.Create(Application);
    ItemReceiveFrm.pgTransaction.ActivePageIndex:=0;
    ItemReceiveFrm.vjns_transaksi:= ptransaksi;
//    ItemReceiveFrm.vpo_trans:= copy(ptransaksi,1,1)+'01';
    ItemReceiveFrm.vtag:= ptag;
    ItemReceiveFrm.DBMode:= dmNone;
    ItemReceiveFrm.isTambah:= False;
    try
      DM.L_User.Close;
      DM.L_User.Open;
      DM.L_Supplier.Close;
      DM.L_Supplier.Open;
      DM.L_Item.Close;
      DM.L_Item.Open;
      ItemReceiveFrm.qBrowse.Close;
      ItemReceiveFrm.qBrowse.Open;
      ItemReceiveFrm.Detail.Close;
      ItemReceiveFrm.DBMode:= dmBrowse;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end;
    ItemReceiveFrm.UpdateView;
    ItemReceiveFrm.lblHeader1.Caption:= pNamaMenu;
    ItemReceiveFrm.Caption:= pNamaMenu;
    ItemReceiveFrm.vjudul:= pNamaMenu;
    ItemReceiveFrm.Show;
end;


procedure TItemReceiveFrm.CloneDetail;
begin
   try
     Detail.DisableControls;
    try
      kmtCheckDetail.Close;
      kmtCheckDetail.Open;
      Detail.First;
      while not Detail.Eof do begin
        kmtCheckDetail.Append;
        kmtCheckDetailid_item.Value:= Detailid_item.Value;
        kmtCheckDetail.Post;
        Detail.Next
      end;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
   finally
     Detail.EnableControls;
   end;
end;

function TItemReceiveFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TItemReceiveFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accrekening, accpreparer, accreviewer, accapprover: Boolean;
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
    btnClose.Enabled:= True;
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
    btnClose.Enabled:= isBrowse;
//    btnHrgBeli.Visible:= isBrowse;
//    btnHrgBeli.Enabled:= not isEmpty;
//    btnStok.Visible:= isBrowse;
//    btnStok.Enabled:= not isEmpty;

    edtDateEdit.Properties.ReadOnly:= isBrowse;

    edtPosted.Properties.ReadOnly:= isBrowse;
    edtBatal.Properties.ReadOnly:= isBrowse;

    MemRemarks.Properties.ReadOnly:= isBrowse;

    grdDetailDBBTV.OptionsData.Inserting:= NOT isBrowse;
    grdDetailDBBTV.OptionsData.Editing:= NOT isBrowse;
    grdDetailDBBTV.OptionsData.Deleting:= NOT isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;

    if not isBrowse then
      edtNoPO.SetFocus;
  end;
end;

function TItemReceiveFrm.CheckEditRight(var msg: string): Boolean;
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

function TItemReceiveFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TItemReceiveFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TItemReceiveFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TItemReceiveFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TItemReceiveFrm.actAddExecute(Sender: TObject);
begin
  try
    pgTransaction.ActivePageIndex:= 1;
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_purchase_receive').Value:= -1;
    Detail.Open;
    DBMode:= dmInsert;
    isTambah:= True;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TItemReceiveFrm.actEditExecute(Sender: TObject);
begin
  try
    pgTransaction.ActivePageIndex:= 1;
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

procedure TItemReceiveFrm.actDeleteExecute(Sender: TObject);
begin
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
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TItemReceiveFrm.actRefreshExecute(Sender: TObject);
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



procedure TItemReceiveFrm.actSaveExecute(Sender: TObject);
var s: String;
begin
    if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                              'Sekali disimpan, Dokumen ini tidak bisa dikoreksi.'+#13#10+
                              'Apakah data yang Anda masukkan sudah benar?'),
                              'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
        Exit;

    DM.StartTransaction;
    try
      if Masterno_purchase_receive.AsString='' then begin
          qryGet_IReceive_Number.Close;
          qryGet_IReceive_Number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
          qryGet_IReceive_Number.Open;
          if Master.State=dsBrowse then
             Master.Edit;
          Masterno_purchase_receive.AsString:= qryGet_IReceive_Numberfn_gen_lpb_number.AsString;
      end;
      Master.CheckBrowseMode;
      Detail.CheckBrowseMode;
      Master.ApplyUpdates;
      Detail.ApplyUpdates;
      Master.CommitUpdates;
      Detail.CommitUpdates;

      qrySubTotal.Close;
      qrySubTotal.Params.ParamByName('pid_purchase_receive').Value:= Masterid_purchase_receive.Value;
      qrySubTotal.Open;

      Master.Edit;
      if Master.State=dsBrowse then
        Master.Edit;
      Mastersubtotal.AsFloat:= qrySubTotalsub_total.AsFloat;
      Masterispost.AsString:= '1';
      Master.Post;
      Master.ApplyUpdates;
      Master.CommitUpdates;

        s:= 'update transaksi.nota set isget='+QuotedStr('1');
        s:= s+' where no_bukti='+QuotedStr(Masterno_invoice.AsString);
        qryUpdate.Close;
        qryUpdate.SQL.Clear;
        qryUpdate.Params.Clear;
        qryUpdate.SQL.Add(s);
        qryUpdate.ExecSQL;

      DM.CommitTransaction;
      qBrowse.Refresh;
    except
      on E: Exception do begin
        DM.RollbackTransaction;
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end
    end;
    isTambah:= False;
    DBMode:= dmBrowse;
    UpdateView
end;

procedure TItemReceiveFrm.actCancelExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda yakin membatalkan data ini ?','')=101 then
     Exit;
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


procedure TItemReceiveFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TItemReceiveFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;

  try
    qryItem.Close;
    qryItem.Open;

    L_WareHouse.Close;
    L_WareHouse.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TItemReceiveFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_purchase_receive.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   DM.L_Transaction.Close;
   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
   DM.L_Transaction.Open;

   Masterdt_receive.AsDateTime:= DM.vSysDatedt_server.AsDateTime;

   Masterid_reff.AsLargeInt:=-1;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterisclosed.AsString:= '0';
   Masterid_trans.AsString:= vjns_transaksi;
   Masterprepared_by.AsString:= DM.UserConnect;
//   Masterreviewed_by.AsString:= DM.L_Transactionvuser_review.AsString;
   Masterapproved_by.AsString:= DM.UserConnect;

   Masterid_rek_gl.AsString:= DM.L_Transactionkid_rek_gl.AsString;
   vrek_kredit := DM.L_Transactionkid_rek_gl.AsString;
    vrek_debet := DM.L_Transactiondid_rek_gl.AsString;
   Mastersubtotal.AsFloat:= 0;
   Mastertotal.AsFloat:= 0;
end;

procedure TItemReceiveFrm.DetailNewRecord(DataSet: TDataSet);
begin
    Detailid_purchase_receive.AsLargeInt:= Masterid_purchase_receive.AsLargeInt;
    Detailid_purchase_receive_detail.AsLargeInt:= sq_purchase_receive_detail.GetNextValue;
    Detailqty_ot.AsFloat:= 0;
    Detailqty_ir.AsFloat:= 0;
    Detailqty_gudang.AsFloat:= 0;
    Detailqoh.AsFloat:= 0;

    Detailqty_po.AsFloat:= 1;
    Detailsatuan_po.AsString:= '-';
    Detailratio.AsFloat:= 1;

    Detailqty_karton.AsFloat:= 0;
    Detailqty_lusin.AsFloat:= 0;
    Detailqty_biji.AsFloat:= 0;

    if Detail.RecNo=0 then
      Detailnomor.AsInteger:=1
    else
      Detailnomor.AsInteger:=Detail.RecNo;

    Detailid_warehouse.AsString:='GDU';
end;

procedure TItemReceiveFrm.MasterBeforePost(DataSet: TDataSet);
begin
//  if Masterreff_number.IsNull or (Trim(Masterreff_number.AsString)='') then begin
//     raise Exception.Create('Nomor PO Harus diisi !');
//  end;


  Mastertotal.AsFloat:= Masterctotal.AsFloat;


  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
     Masterid_rek_gl.Clear;

  if Masterreff_number.IsNull or (Trim(Masterreff_number.AsString)='') then begin
     raise Exception.Create('NOMOR PO Harus diisi !');
  end;

  if Master.State=dsInsert then begin
    Masterid_purchase_receive.AsLargeInt:= sq_PURCHASE_RECEIVE.GetNextValue;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_purchase_receive.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (masterid_purchase_receive not set). All input aborted !');
end;

procedure TItemReceiveFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_purchase_receive').Value:= Masterid_purchase_receive.Value;
     Detail.Open;
  end;
end;

procedure TItemReceiveFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TItemReceiveFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TItemReceiveFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TItemReceiveFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_purchase_receive').Value:= qBrowseid_purchase_receive.AsLargeInt;
end;


procedure TItemReceiveFrm.DetailBeforePost(DataSet: TDataSet);
begin
    Detailqty.AsFloat:= Detailqty_gudang.AsFloat;

//    if DataSet.State=dsInsert then begin
//      if CheckDetail(Detailid_item.Value) then begin
//        raise Exception.Create('KODE sudah ada !')
//      end
//    end else
//    if DataSet.State=dsEdit then begin
//      if Detailid_item.OldValue<>Detailid_item.Value then begin
//        if CheckDetail(Detailid_item.Value) then begin
//          raise Exception.Create('KODE sudah ada !')
//        end
//      end
//    end;

    if Detailid_warehouse.IsNull or (Trim(Detailid_warehouse.AsString)='') then
       raise Exception.Create('GUDANG harus diisi !')
    else
    if Detailqty.IsNull or (Detailqty.AsFloat=0)  then
       raise Exception.Create('QTY harus diisi !');

    if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
       Detailid_rek_gl.Clear;
end;

procedure TItemReceiveFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TItemReceiveFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    exit;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TItemReceiveFrm.actPrintExecute(Sender: TObject);
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
   MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO.JPG');
   MemInfoPerusahaan.Post;

   qTT.Close;
   qTT.Params.ParamByName('no_nota').Value:= Masterno_invoice.Value;
   qTT.Open;

   frxTT.ShowReport;

//
//  MemMaster.Close;
//  MemMaster.Open;
//  MemMaster.Append;
//  MemMasterreq_number.AsString:= Masterno_purchase_receive.AsString;
//  MemMastervendor_name.AsString:= Masterlnama_rekanan.AsString;
//  MemMasterremarks.AsString:= Masterremarks.AsString;
//  if Masterispost.AsString='1' then MemMasterposted.AsString:='POSTED'
//  else MemMasterposted.AsString:='';
//
////  QDocDistribute.Close;
////  QDocDistribute.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
////  QDocDistribute.Open;
//
//  MemMasterprepared_name.AsString:= Masterlprepared_name.AsString;
//  MemMasterreviewed_name.AsString:= Masterlreviewed_name.AsString;
//  MemMasterapproved_name.AsString:= Masterlapproved_name.AsString;
//
//  MemMasterprinted_by.AsString:= 'Dicetak Oleh : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
//  MemMastermodel.AsString:= 'IR-'+vjns_transaksi;
//  MemMasterdistribusi_document.AsString:= '';
//  MemMasterpo_number.AsString:= Masterreff_number.AsString;
//  MemMasterjudul.AsString:= UpperCase('BARANG '+vjudul);
//
//  MemMastertotal.AsFloat:= Mastersubtotal.AsFloat;
//  MemMasterdisc_rp.AsFloat:= 0;
//  MemMasterppn.AsFloat:= 0;
//  MemMastergtotal.AsFloat:= Mastergrand_total.AsFloat;
//
//
//  if Masterdt_receive.IsNull then MemMasterdated.AsString:= ''
//  else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_receive.AsDateTime);
//
//  if Masterdt_receive.IsNull then MemMasterdt_prepared.AsString:= 'TGL : '
//  else MemMasterdt_prepared.AsString:= 'TGL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_receive.AsDateTime);
//
//  MemMasterdt_reviewed_1.AsString:= 'TGL : ';
//  MemMasterdt_reviewed_2.AsString:= 'TGL : ';
//  MemMasterdt_approved_1.AsString:= 'TGL : ';
//  MemMasterdt_approved_2.AsString:= 'TGL : ';
//
//  MemMaster.Post;
//
//    MemDetail.Close;
//    MemDetail.Open;
//      Detail.DisableControls;
//      Detail.SortedFields := 'nomor';
//      try
//        Detail.First;
//        while not Detail.Eof do begin
//          MemDetail.Append;
//          MemDetailnomor.AsString:= Detailnomor.AsString;
//          MemDetailid_item.AsString:= ' '+Detailid_item.AsString;
//          MemDetaildescription.AsString:= ' '+Detaildescription.AsString;
//          MemDetailqty.AsFloat:= Detailqty.AsFloat;
//          MemDetailqty_po.AsFloat:= Detailqty_po.AsFloat;
//          MemDetailratio.AsFloat:= Detailratio.AsFloat;
//          MemDetailunit_price.AsFloat:= Detailunit_price.AsFloat;
//          MemDetailsatuan.AsString:= UpperCase(Detailsatuan.AsString);
//          MemDetailsatuan_po.AsString:= UpperCase(Detailsatuan_po.AsString);
//          MemDetailid_warehouse.AsString:= UpperCase(Detailid_warehouse.AsString);
//          MemDetail.Post;
//          Detail.Next;
//        end;
//      finally
//        Detail.First;
//        Detail.EnableControls
//      end;
//    frPR.ShowReport;
//
//    if (Masterispost.AsString='0') then begin
//      DM.StartTransaction;
//      try
//        if Master.State=dsBrowse then
//          Master.Edit;
//        Masterispost.AsString:='1';
//        Master.Post;
//
//        Master.ApplyUpdates;
//        Master.CommitUpdates;
//        DM.CommitTransaction;
//      except
//        on E: Exception do begin
//          DM.RollbackTransaction;
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//          Exit;
//        end
//      end;
//    DBMode:= dmBrowse;
//    UpdateView
//    end;
end;

procedure TItemReceiveFrm.DetailAfterPost(DataSet: TDataSet);
begin
    CloneDetail;
end;

procedure TItemReceiveFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TItemReceiveFrm.DetailCalcFields(DataSet: TDataSet);

begin
  Detailqty_gudang.AsFloat := Detailqty_po.AsFloat * Detailratio.AsFloat;
end;

procedure TItemReceiveFrm.grdPO_DetailDBBTVid_unitPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var f: TUnitFrm;
begin
  f:= TUnitFrm.Create(Application);
  try
    if f.ShowModal=MrOK then begin
       if Detail.State=dsBrowse then
          Detail.Edit;
       Detailsatuan.AsString:= f.Masterkd_satuan.AsString;
    end;
  finally
    f.Free
  end;   
end;

procedure TItemReceiveFrm.grdPO_DetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
    Master.Post;
end;

procedure TItemReceiveFrm.edtSupplierCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then begin
    Masterkd_rekanan.AsString:= qrySupplierkd_rekanan.AsString;
  end;
end;

procedure TItemReceiveFrm.edtDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
    if dbMode=dmBrowse then
       Exit;

    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TItemReceiveFrm.grdDetailDBBTVid_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if Detail.State in [dsInsert,dsedit] then
       AProperties := ER_LCB_KODE.Properties
    else
       AProperties := ER_TEXT.Properties;
end;

procedure TItemReceiveFrm.grdDetailDBTableView1descriptionGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if Detail.State in [dsInsert,dsedit] then
       AProperties := ER_LCB_DISKRIPSI.Properties
    else
       AProperties := ER_TEXT.Properties;
end;

procedure TItemReceiveFrm.cxEditRepository1LookupComboBoxItem1PropertiesCloseUp(
  Sender: TObject);
var s : String;
begin
    if Detail.State=dsBrowse then
      Exit;

    Detaildescription.AsString:= qryItemnama_item.AsString;
    Detailid_item.AsString:= qryItemkd_item.AsString;
    Detailqty_po.AsFloat:= 1;
    Detailratio.AsFloat:= qryItemrasio.AsFloat;
    Detailsatuan_po.AsString:= qryItemsatuan_beli.AsString;
    Detailunit_price.AsFloat:= qryItemhrg_beli.AsFloat;
    Detailsatuan.AsString:= qryItemsatuan_beli.AsString;
end;

procedure TItemReceiveFrm.grdDetailDBBTVid_warehouseGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if Detail.State in [dsInsert,dsedit] then
       AProperties := ER_LCB_GUDANG.Properties
    else
       AProperties := ER_TEXT.Properties;
end;

procedure TItemReceiveFrm.MemRemarksKeyPress(Sender: TObject;
  var Key: Char);
begin
    if DBMode=dmBrowse then
      Exit;

    if Key=#13 then begin
      Detail.Append;
      grdDetail.SetFocus;
      grdDetailDBBTV.GetColumnByFieldName('id_item').FocusWithSelection;
    end;
end;

procedure TItemReceiveFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
end;

procedure TItemReceiveFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TItemReceiveFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TItemReceiveFrm.btnOKClick(Sender: TObject);
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

procedure TItemReceiveFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TItemReceiveFrm.grdDetailDBBTVCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TItemReceiveFrm.edtNoPOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
     qryPO.Close;
     qryPO.Params.ParamByName('kd_rekanan').Value:= Masterkd_rekanan.AsString;
     qryPO.Open;
     if LookPO.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masterreff_number.AsString:= qryPOno_srt_jalan.AsString;
        Masterno_invoice.AsString:= qryPOno_invoice.AsString;
     end;
   except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TItemReceiveFrm.btnAmbilDataClick(Sender: TObject);
begin
 if Master.State<>dsBrowse then
    Master.Post;

   try
     Detail.DisableControls;
     try
       qryPODetail.Close;
       qryPODetail.Params.ParamByName('pno_bukti').Value:= Masterno_invoice.Value;
       qryPODetail.Open;

       qQTYpcs.Close;
       qQTYpcs.Params.ParamByName('pno_bukti').Value:= qryPOno_invoice.Value;
       qQTYpcs.Open;

       if qryPODetail.RecordCount>0 then begin
          qryPODetail.First;
          while not qryPODetail.Eof do begin
             Detail.Append;
             Detailnomor.AsInteger:= qryPODetailnomor.AsInteger;
             Detailid_item.AsString:= qryPODetailkd_item.AsString;
             Detaildescription.AsString:= qryPODetaildiskripsi.AsString;
             Detailunit_price.AsFloat:= qryPODetailhrg_jual_karton.AsFloat;
             Detailqty_karton.AsFloat:= qryPODetailqty_karton.AsFloat;
             Detailqty_lusin.AsFloat:= qryPODetailqty_lusin.AsFloat;
             Detailqty_biji.AsFloat:= qryPODetailqty_biji.AsFloat;
             Detailsatuan.AsString:= qryPODetailsatuan_stok.AsString;
             Detail.Post;
             qryPODetail.Next;
          end;
       end
       else begin
          DM.MyMsg(mmInformation,'Tidak ada data faktur penjualan !!!','');
       end;
     except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
     end;
   finally
     Detail.EnableControls;
   end;

end;

procedure TItemReceiveFrm.edtSupplierPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if Master.State=dsBrowse then
      Exit;

    try
      qrySupplier.Close;
      qrySupplier.Open;
       if LookSupplier.Execute then begin
          if Master.State=dsBrowse then
             Master.Edit;
          Masterkd_rekanan.AsString:= qrySupplierkd_rekanan.AsString;
       end;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

end.

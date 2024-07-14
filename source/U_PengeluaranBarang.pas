unit U_PengeluaranBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox,
  wwdbdatetimepicker, cxEditRepositoryItems, cxDBEditRepository, frxClass,
  ZDataset, kbmMemTable, frxExportRTF, frxExportPDF, frxDBSet,
  frxExportXLS, wwDialog, wwidlg, AdvToolBar, AdvToolBarStylers, ZSequence,
  ZAbstractRODataset, ZAbstractDataset, ActnList, cxGridBandedTableView,
  cxGridTableView, AdvPanel, AdvAppStyler, RzPanel, DBCtrls, ExtCtrls,
  cxDBLabel, StdCtrls, wwdblook, Wwdbdlg, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxMemo, cxContainer, SCControl,
  SCStdControls, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, AdvGlowButton,
  AdvReflectionImage, cxButtonEdit, cxLookAndFeels, cxLookAndFeelPainters,
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
  TPengeluaranBarangFrm = class(TForm)
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    btnClose: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    pgTransaction: TcxPageControl;
    tsBrowse: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    grddbtvMasterreq_number: TcxGridDBColumn;
    grddbtvMasterdt_req: TcxGridDBColumn;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    tsDetail: TcxTabSheet;
    pnlMaster: TSCPanel;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    dbagbAddDetail: TDBAdvGlowButton;
    dbagbDeleteDetail: TDBAdvGlowButton;
    dbagbEditDetail: TDBAdvGlowButton;
    dbagbSaveDetail: TDBAdvGlowButton;
    dbagbCancelDetail: TDBAdvGlowButton;
    dbagbRefreshDetail: TDBAdvGlowButton;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grddbtvDetailnomor: TcxGridDBColumn;
    grddbtvDetailid_item: TcxGridDBColumn;
    grddbtvDetaildescription: TcxGridDBColumn;
    grddbtvDetailid_unit: TcxGridDBColumn;
    grddbtvDetailqty_ot: TcxGridDBColumn;
    grdlvlDetail: TcxGridLevel;
    SCPanel1: TSCPanel;
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
    actPrint: TAction;
    dsMaster: TDataSource;
    Master: TZQuery;
    Masterid_mutasi: TLargeintField;
    Mastermutasi_no: TStringField;
    Masterdt_mutasi: TDateTimeField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterdescription: TStringField;
    Masterid_trans: TStringField;
    Masterisdelete: TStringField;
    Masterremarks: TStringField;
    Masterno_bukti: TStringField;
    Masterprepared_by: TStringField;
    Masterreviewed_by: TStringField;
    Masterapproved_by: TStringField;
    Masterlpreparer: TStringField;
    Masterlreviewer: TStringField;
    Masterlapprover: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Detail: TZQuery;
    Detailid_mutasi: TLargeintField;
    Detailid_item: TStringField;
    Detaildescription: TStringField;
    Detailqty_in: TFloatField;
    Detailqty_ot: TFloatField;
    Detailsatuan: TStringField;
    Detailid_warehouse: TStringField;
    Detailid_warehouse2: TStringField;
    Detailnomor: TIntegerField;
    Detailremarks: TStringField;
    dsDetail: TDataSource;
    SQ: TZSequence;
    ATBOS: TAdvToolBarOfficeStyler;
    frxXLSExport1: TfrxXLSExport;
    frxDBMaster: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBDetail: TfrxDBDataset;
    MemDetail: TkbmMemTable;
    MemDetailid_item: TStringField;
    MemDetaildescription: TStringField;
    MemDetailqty_ot: TFloatField;
    MemDetailsatuan: TStringField;
    MemDetailid_warehouse: TStringField;
    MemDetailid_warehouse2: TStringField;
    MemDetailremarks: TStringField;
    MemDetailnama_item: TStringField;
    MemDetailno: TStringField;
    MemMaster: TkbmMemTable;
    MemMastermutasi_no: TStringField;
    MemMasterdescription: TStringField;
    MemMasterremarks: TStringField;
    MemMasterno_bukti: TStringField;
    MemMasterprepared_by: TStringField;
    MemMasterreviewed_by: TStringField;
    MemMasterapproved_by: TStringField;
    MemMasterprinted_by: TStringField;
    MemMasterjenis_trans: TStringField;
    MemMastermodel: TStringField;
    MemMasterdocumen_distribution: TStringField;
    MemMasterdt_mutasi: TStringField;
    MemMasterposted: TStringField;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    SQDetail: TZSequence;
    frIT: TfrxReport;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    qryCheck: TZReadOnlyQuery;
    qryGet_Mutasi_Number: TZQuery;
    Masterltrans: TStringField;
    MemMasterheader: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterdt_review: TStringField;
    qryGet_Mutasi_Numbernew_number: TStringField;
    Detailunit_price: TFloatField;
    Detailistambahan: TStringField;
    grddbtvMasterlwarehouse: TcxGridDBColumn;
    btnGetItems: TSCButton;
    pnlPrepared: TRzPanel;
    LblL_Prepared: TLabel;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    dbt_UserPrepared: TDBText;
    cxStyle5: TcxStyle;
    Detailid_mutasi_detail: TLargeintField;
    _DB_TGL_1: TDBText;
    grddbtvMasterno_bukti: TcxGridDBColumn;
    Masterppn_rp: TFloatField;
    Mastertotal: TFloatField;
    MemMasterno_permintaan: TStringField;
    MemMasternama_bagian: TStringField;
    MemDetailharga: TStringField;
    Detailppn_rp: TFloatField;
    Detailsub_total: TFloatField;
    L_Warehouse: TZReadOnlyQuery;
    L_Warehouseid_warehouse: TStringField;
    L_Warehousedescription: TStringField;
    Masterkd_rekanan: TStringField;
    qryRekanan: TZReadOnlyQuery;
    qryRekanankd_rekanan: TStringField;
    qryRekanannama_rekanan: TStringField;
    LItem2: TZReadOnlyQuery;
    dsLItem2: TDataSource;
    cxEditRepository1: TcxEditRepository;
    ER_LCB_KODE: TcxEditRepositoryLookupComboBoxItem;
    ER_TEXT: TcxEditRepositoryTextItem;
    ER_LCB_DISKRIPSI: TcxEditRepositoryLookupComboBoxItem;
    LItem2kd_item: TStringField;
    LItem2nama_item: TStringField;
    LItem2kd_satuan: TStringField;
    LItem2hpp: TFloatField;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qBrowse: TZQuery;
    qBrowseid_mutasi: TLargeintField;
    qBrowsemutasi_no: TStringField;
    qBrowsedt_mutasi: TDateTimeField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsedescription: TStringField;
    dsqBrowse: TDataSource;
    qBrowseremarks: TStringField;
    MemDetailsub_total: TFloatField;
    Masterbiaya: TFloatField;
    MemDetailqty_in: TFloatField;
    grddbtvDetailid_warehouse: TcxGridDBColumn;
    qryNoProduksi: TZReadOnlyQuery;
    LookNoProduksi: TwwLookupDialog;
    dsL_Warehouse: TDataSource;
    ER_LCB_WAREHOUSE: TcxEditRepositoryLookupComboBoxItem;
    MemMasternama_item: TStringField;
    qryNoProduksino_planning: TStringField;
    qryNoProduksidt_start: TDateTimeField;
    qryNoProduksidt_end: TDateTimeField;
    qryNoProduksiremarks: TStringField;
    qryNoProduksiusr_upd: TStringField;
    qBrowseno_bukti: TStringField;
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
    cebPosted: TcxDBCheckBox;
    cbCenceled: TcxDBCheckBox;
    GroupBox1: TGroupBox;
    MemRemarks: TcxDBMemo;
    edtKode: TcxDBTextEdit;
    edtOrdering: TcxDBTextEdit;
    edtDateEdit: TcxDBDateEdit;
    GBTujuan: TGroupBox;
    Label4: TLabel;
    edtRekanan: TwwDBLookupComboDlg;
    LItem2description: TStringField;
    LItem: TZReadOnlyQuery;
    dsLItem: TDataSource;
    LItemnama_item: TStringField;
    LItemkd_item: TStringField;
    LItemkd_satuan: TStringField;
    edtNoPO: TcxDBButtonEdit;
    Label5: TLabel;
    LookPO: TwwLookupDialog;
    qryPODetail: TZReadOnlyQuery;
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
    qryPO: TZReadOnlyQuery;
    qryPODetailnama_item: TStringField;
    qryupdate: TZQuery;
    grddbtvDetailColumn1: TcxGridDBColumn;
    Detailno_faktur_jual: TStringField;
    Label7: TLabel;
    cxDBLabel2: TcxDBLabel;
    Masterkd_outlet: TStringField;
    qryPOno_nota: TStringField;
    qryPOno_bukti: TStringField;
    qryPOdt_nota: TDateTimeField;
    qryPOjns_transaksi: TStringField;
    qryPOnama_supplier: TStringField;
    qryPOkd_rekanan: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure DetailBeforeInsert(DataSet: TDataSet);
    procedure DetailBeforeEdit(DataSet: TDataSet);
    procedure grdDetailEnter(Sender: TObject);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure DetailNewRecord(DataSet: TDataSet);
    procedure DetailBeforePost(DataSet: TDataSet);
    procedure actCancelExecute(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure grddbtvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure pgTransactionPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure pgTransactionChange(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure MemRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure edtRekananCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DetailCalcFields(DataSet: TDataSet);
    procedure edtRekananEnter(Sender: TObject);
    procedure grddbtvDetailid_itemGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grddbtvDetaildescriptionGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_DISKRIPSIPropertiesCloseUp(Sender: TObject);
    procedure ER_LCB_DISKRIPSIPropertiesInitPopup(Sender: TObject);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure grddbtvDetailid_warehouseGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure edtNoBuktiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtNoPOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnGetItemsClick(Sender: TObject);
  private
    { Private declarations }
    vjns_transaksi, vjudul: string;
    vtag : integer;
    DBMode: TDBMode;
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;
    function CheckStok: Boolean;

  public
    { Public declarations }
  end;

var
  PengeluaranBarangFrm: TPengeluaranBarangFrm;

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);

implementation

uses U_DM, frxbarcode;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);
begin
   try
        PengeluaranBarangFrm:= TPengeluaranBarangFrm.Create(Application);
        with PengeluaranBarangFrm do begin
            vjns_transaksi:= ptransaksi;
            vtag:= ptag;
            DBMode:= dmNone;
            try
              DM.L_User.Close;
              DM.L_User.Open;
              DM.L_Item.Close;
              DM.L_Item.Open;
              L_Warehouse.Close;
              L_Warehouse.Open;
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
            lblHeader1.Caption:= pNamaMenu;
            Caption:= pNamaMenu;
            ShowWindow(Handle, SW_Maximize);
            Show;
        end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;

end;

procedure TPengeluaranBarangFrm.CloneDetail;
begin
  Detail.DisableControls;
  try
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
  end
end;

function TPengeluaranBarangFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

function TPengeluaranBarangFrm.CheckStok: Boolean;
var dt : String;
begin
  dt:= FormatDateTime('dd/mm/yyyy',Masterdt_mutasi.AsDateTime);
  Result:= False;
  try
    Detail.DisableControls;
    try
      Detail.First;
      while not Detail.Eof do begin
         if Detailqty_ot.AsFloat>DM.CheckStock(Detailid_item.AsString,Detailid_warehouse.AsString,dt) then begin
            Result:= True;
         end;
         Detail.Next;
      end;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  finally
    Detail.First;
    Detail.EnableControls;
  end;
end;


procedure TPengeluaranBarangFrm.UpdateView;
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

    edtDateEdit.Properties.ReadOnly:= isBrowse;
    edtRekanan.ReadOnly:= isBrowse;
    edtRekanan.ShowButton:= not isBrowse;
    MemRemarks.Properties.ReadOnly:= isBrowse;

    grddbtvDetail.OptionsData.Inserting:= NOT isBrowse;
    grddbtvDetail.OptionsData.Editing:= NOT isBrowse;
    grddbtvDetail.OptionsData.Deleting:= NOT isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;

    if not isBrowse then
      edtRekanan.SetFocus;
  end;
end;


function TPengeluaranBarangFrm.CheckEditRight(var msg: string): Boolean;
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

function TPengeluaranBarangFrm.CheckDeleteRight(var msg: string): Boolean;
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


procedure TPengeluaranBarangFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TPengeluaranBarangFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TPengeluaranBarangFrm.actCloseExecute(Sender: TObject);
begin
   Close;
end;

procedure TPengeluaranBarangFrm.actAddExecute(Sender: TObject);
begin
  try
    pgTransaction.ActivePageIndex:= 1;
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_mutasi').Value:= -1;
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

procedure TPengeluaranBarangFrm.actEditExecute(Sender: TObject);
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

procedure TPengeluaranBarangFrm.actDeleteExecute(Sender: TObject);
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

procedure TPengeluaranBarangFrm.actRefreshExecute(Sender: TObject);
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

procedure TPengeluaranBarangFrm.actSaveExecute(Sender: TObject);
var s: String;
begin
 if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Sekali disimpan, Dokumen ini tidak bisa dikoreksi.'+#13#10+
                            'Apakah data yang Anda masukkan sudah benar?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;


  DM.StartTransaction;
  try
    if Mastermutasi_no.AsString='' then begin
        qryGet_Mutasi_Number.Close;
        qryGet_Mutasi_Number.Params.ParamByName('pid_trans').AsString:= Masterid_trans.AsString;
        qryGet_Mutasi_Number.Open;
        if Master.State=dsBrowse then Master.Edit;
           Mastermutasi_no.AsString:= qryGet_Mutasi_Numbernew_number.AsString;
    end;

    if (Master.State=dsInsert) or (Master.State=dsEdit) then
       Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit) then
       Detail.Post;

    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;

    Master.Edit;
    Masterispost.AsString:='1';
    Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;

    s:= 'update transaksi.nota set isget='+QuotedStr('1');
    s:= s+' where no_nota='+QuotedStr(Masterno_bukti.AsString);
    qryupdate.Close;
    qryupdate.SQL.Clear;
    qryupdate.Params.Clear;
    qryupdate.SQL.Add(s);
    qryupdate.ExecSQL;

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
  UpdateView
end;

procedure TPengeluaranBarangFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TPengeluaranBarangFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TPengeluaranBarangFrm.grdDetailEnter(Sender: TObject);
begin
   if DBMode=dmBrowse then
      Exit;

  if Master.State<>dsBrowse then
     Master.Post;

end;

procedure TPengeluaranBarangFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if (Masterkd_rekanan.IsNull) or (Masterkd_rekanan.AsString='') then
      raise Exception.Create('Petugas belum diisi!');
  if (Masterdescription.IsNull) or (Masterdescription.AsString='') then
      raise Exception.Create('Jenis Pekerjaan Belum Diisi!');

  if Master.State=dsInsert then begin
      Masterid_mutasi.AsLargeInt:= SQ.GetNextValue;
      Masterusr_ins.AsString:= DM.UserConnect;
      Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
      Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_mutasi.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (mutasiId_mutasi not set). All input aborted !');
end;


procedure TPengeluaranBarangFrm.MasterNewRecord(DataSet: TDataSet);
begin
    DM.vSysDate.Close;
    DM.vSysDate.Open;
    Masterdt_mutasi.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
    Masterdescription.AsString:='-';
    Masterispost.AsString:= '0';
    Masteriscancel.AsString:= '0';
    Masterisdelete.AsString:= '0';
    Masterbiaya.AsFloat:= 0;
    Masterid_trans.AsString:= vjns_transaksi;
    Masterprepared_by.AsString:= DM.UserConnect;
//    DM.L_Transaction.Close;
//    DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
//    DM.L_Transaction.Open;
//    Masterreviewed_by.AsString:= DM.L_Transactionvuser_review.AsString;
//    Masterapproved_by.AsString:= DM.L_Transactionvuser_approve.AsString;
end;

procedure TPengeluaranBarangFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_mutasi.AsLargeInt:= Masterid_mutasi.AsLargeInt;
  Detailqty_in.AsFloat:=0;
  Detailqty_ot.AsFloat:=0;
  Detailunit_price.AsFloat:= 0;
  Detailid_warehouse2.Clear;
  Detailid_warehouse.Value:= 'GBS';
  Detailistambahan.AsString:= '0';

  if Detail.RecNo=0 then
     Detailnomor.AsInteger:=1
  else
     Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TPengeluaranBarangFrm.DetailBeforePost(DataSet: TDataSet);
var dt : String;
begin

    Detailid_warehouse2.Clear;
    if (Detailid_item.IsNull) or (Detailid_item.AsString='') then
        raise Exception.Create('ID Item belum diisi !')
    else
    if (Detailid_warehouse.IsNull) or (Detailid_warehouse.AsString='') then
        raise Exception.Create('Lokasi belum diisi !')
    else
    if Detailqty_ot.IsNull or (Detailqty_ot.AsFloat=0) then
        raise Exception.Create('QTY belum diisi !');


    Detailppn_rp.Value:= (Detailunit_price.AsFloat) * 0.1;

    if Detail.State=dsInsert then
      Detailid_mutasi_detail.AsLargeInt:= SQDetail.GetNextValue;
end;

procedure TPengeluaranBarangFrm.actCancelExecute(Sender: TObject);
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

procedure TPengeluaranBarangFrm.btnPrintClick(Sender: TObject);
var msg: string;
   i, row_count: Integer;
begin
  if Master.RecordCount=0 then
     Exit;

   DM.L_Perusahaan.Close;
   DM.L_Perusahaan.Open;
   DM.L_Transaction.Close;
   DM.L_Transaction.Open;
   DM.L_User.Close;
   DM.L_User.Open;

   Detail.Close;
   Detail.Params.ParamByName('id_mutasi').Value:=Masterid_mutasi.Value;
   Detail.Open;

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

  MemMaster.Close;
  MemMaster.Open;
  MemMaster.Append;
  MemMasterheader.AsString:= UpperCase(vjudul);
  MemMastermutasi_no.AsString:= Mastermutasi_no.AsString;
  MemMasterremarks.AsString:= Masterremarks.AsString;
  MemMastermodel.AsString:= Masterltrans.AsString;
  MemMasterno_bukti.AsString:= '';
  MemMasterno_permintaan.AsString:= '';;
  MemMasternama_bagian.AsString:= Masterdescription.AsString;
  MemMasternama_item.AsString:= Masterno_bukti.AsString;

  if Masterdt_mutasi.IsNull then MemMasterdt_mutasi.AsString:= ''
  else MemMasterdt_mutasi.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_mutasi.AsDateTime);

  if Masterispost.AsString='1' then MemMasterposted.AsString:= 'POSTED'
  else MemMasterposted.Clear;

  if Masterdt_mutasi.IsNull then MemMasterdt_prepared.AsString:= ''
  else MemMasterdt_prepared.AsString:= 'TGL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_mutasi.AsDateTime);

  MemMasterdt_review.AsString:= 'TGL :';


  MemMasterprepared_by.AsString:= Masterlpreparer.AsString;
  MemMasterreviewed_by.AsString:= Masterlreviewer.AsString;
  MemMasterapproved_by.AsString:= Masterlapprover.AsString;

  MemMasterprinted_by.AsString:= 'Dicetak Oleh : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
  MemMastermodel.AsString:= 'BP-'+vjns_transaksi;

  MemMasterdocumen_distribution.AsString:= '';
  MemMaster.Post;

    MemDetail.Close;
    MemDetail.Open;

      Detail.DisableControls;
      try
        Detail.First;
        while not Detail.Eof do begin
          MemDetail.Append;
          MemDetailno.AsString:= IntToStr(Detailnomor.AsInteger);
          MemDetailid_item.AsString:= Detailid_item.AsString;
          MemDetaildescription.AsString:= Detaildescription.AsString;
          MemDetailqty_ot.AsFloat:= Detailqty_ot.AsFloat;
          MemDetailqty_in.AsFloat:= Detailqty_in.AsFloat;
          MemDetailsatuan.AsString:= UpperCase(Detailsatuan.AsString);
          MemDetailid_warehouse.AsString:= Detailid_warehouse.AsString;
          MemDetailid_warehouse2.AsString:= Detailid_warehouse2.AsString;
          MemDetailharga.AsString:= FormatFloat('0.0,0',Detailunit_price.AsFloat);
          MemDetailsub_total.AsFloat:= Detailqty_ot.AsFloat*Detailunit_price.AsFloat;
          MemDetail.Post;
          Detail.Next;
        end;
      finally
        Detail.First;
        Detail.EnableControls
      end;

 frIT.ShowReport;

end;

procedure TPengeluaranBarangFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_mutasi').Value:= qBrowseid_mutasi.AsLargeInt;
end;

procedure TPengeluaranBarangFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;

end;

procedure TPengeluaranBarangFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    exit;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end

end;

procedure TPengeluaranBarangFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TPengeluaranBarangFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TPengeluaranBarangFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   pgTransaction.ActivePageIndex:=1;
end;

procedure TPengeluaranBarangFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
   AllowChange:=(DBMode=dmBrowse) or (DBMode=dmNone);
end;

procedure TPengeluaranBarangFrm.pgTransactionChange(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_mutasi').Value:=Masterid_mutasi.Value;
     Detail.Open;
  end;
end;

procedure TPengeluaranBarangFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then
      SelectNext(ActiveControl, True, True);
end;

procedure TPengeluaranBarangFrm.MemRemarksKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grddbtvDetail.GetColumnByFieldName('description').FocusWithSelection;
    end;
end;

procedure TPengeluaranBarangFrm.edtRekananCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   if DBMode=dmBrowse then
      Exit;
   if modified then begin
      Masterdescription.AsString:= qryRekanannama_rekanan.AsString;
      //Masterkd_rekanan.AsString:= qryRekanankd_rekanan.AsString;
   end;
end;

procedure TPengeluaranBarangFrm.DetailCalcFields(DataSet: TDataSet);
begin
    Detailsub_total.AsFloat:= ((Detailunit_price.AsFloat+Detailppn_rp.AsFloat) * Detailqty_ot.AsFloat);
end;

procedure TPengeluaranBarangFrm.edtRekananEnter(Sender: TObject);
begin
  try
    qryRekanan.Close;
    qryRekanan.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TPengeluaranBarangFrm.grddbtvDetailid_itemGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if Detail.State in [dsInsert,dsedit] then begin
       AProperties := ER_LCB_KODE.Properties;
    end
    else
       AProperties := ER_TEXT.Properties;
end;

procedure TPengeluaranBarangFrm.grddbtvDetaildescriptionGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if Detail.State in [dsInsert,dsedit] then begin
       AProperties := ER_LCB_DISKRIPSI.Properties;
    end
    else
       AProperties := ER_TEXT.Properties;
end;

procedure TPengeluaranBarangFrm.ER_LCB_DISKRIPSIPropertiesCloseUp(
  Sender: TObject);
begin
    if Detail.State=dsBrowse then
      Exit;

    Detaildescription.AsString:= LItemnama_item.AsString;
    Detailid_item.AsString:= LItemkd_item.AsString;
    Detailsatuan.AsString:= LItemkd_satuan.AsString;
//    Detailunit_price.AsFloat:= DM.CheckHargaJual('MANDIRI',LItemid_item.AsString);
//    Detailqty_in.AsFloat:= DM.CheckStock(LItemkd_item.AsString,'GDU',FormatDateTime('dd-mm-yyyy',edtDateEdit.Date));
    Detailistambahan.AsString:= '0';
//    Detailunit_price.AsFloat:= LItemhpp.AsFloat;
end;

procedure TPengeluaranBarangFrm.ER_LCB_DISKRIPSIPropertiesInitPopup(
  Sender: TObject);
begin
    try
      LItem.Close;
      LItem.Open;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end;
end;

procedure TPengeluaranBarangFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
end;

procedure TPengeluaranBarangFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TPengeluaranBarangFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TPengeluaranBarangFrm.btnOKClick(Sender: TObject);
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

procedure TPengeluaranBarangFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TPengeluaranBarangFrm.grddbtvDetailid_warehouseGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if Detail.State in [dsInsert,dsedit] then begin
       AProperties := ER_LCB_WAREHOUSE.Properties;
    end
    else
       AProperties := ER_TEXT.Properties;
end;

procedure TPengeluaranBarangFrm.edtNoBuktiPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    if DBMode=dmBrowse then
       Exit;

    try
      qryNoProduksi.Close;
      qryNoProduksi.Open;
      if LookNoProduksi.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masterno_bukti.AsString:= qryNoProduksino_planning.AsString;
      end;
    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

procedure TPengeluaranBarangFrm.edtNoPOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   try
     qryPO.Close;
     qryPO.Open;
     if LookPO.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masterno_bukti.AsString:= qryPOno_nota.AsString;
        Masterkd_rekanan.AsString:= qryPOkd_rekanan.AsString;
     end;
   except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;

procedure TPengeluaranBarangFrm.btnGetItemsClick(Sender: TObject);
begin
   if Master.State<>dsBrowse then
      Master.Post;

   try
     Detail.DisableControls;
     try
       qryPODetail.Close;
       qryPODetail.Params.ParamByName('pno_nota').Value:= Masterno_bukti.Value;
       qryPODetail.Open;

       if qryPODetail.RecordCount>0 then begin
          qryPODetail.First;
          while not qryPODetail.Eof do begin
             Detail.Append;
             Detailnomor.AsInteger:= qryPODetailnomor.AsInteger;
             Detailid_item.AsString:= qryPODetailkd_item.AsString;
             Detaildescription.AsString:= qryPODetailnama_item.AsString;
             Detailsatuan.AsString:= qryPODetailsatuan_stok.AsString;
             Detailunit_price.AsFloat:= qryPODetailhrg.AsFloat;
             Detailqty_ot.AsFloat:= qryPODetailqty_biji.AsFloat;
             Detailno_faktur_jual.AsString:= qryPODetailno_nota.AsString;
             //Detailsatuan_po.AsString:= qryPODetailsatuan_stok.AsString;
             //Detailsatuan.AsString:= qryPODetailsatuan_stok.AsString;
             //Detailqty_po.AsFloat:= qryPODetailqty_karton.AsFloat;
             //Detailratio.AsFloat:= qryPODetailrasio.AsFloat;
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

end.

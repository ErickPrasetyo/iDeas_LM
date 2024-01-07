unit U_InventoryAdjusment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, cxButtonEdit,
  cxDBEditRepository, cxEditRepositoryItems, kbmMemTable, frxClass,
  frxDBSet, frxExportRTF, frxExportPDF, frxExportXLS, ZDataset, wwDialog,
  wwidlg, AdvToolBar, AdvToolBarStylers, ZSequence, ZAbstractRODataset,
  ZAbstractDataset, ActnList, cxGridBandedTableView, cxGridTableView,
  AdvPanel, AdvAppStyler, DBCtrls, RzPanel, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxMemo, StdCtrls, cxContainer,
  ExtCtrls, SCControl, SCStdControls, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  AdvGlowButton, AdvReflectionImage, wwdbdatetimepicker, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, ADODB;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TStringArray = array of string;
  TInventoryAdjusmentFrm = class(TForm)
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
    grddbtvMasterdescription: TcxGridDBColumn;
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
    edtCancel: TcxDBCheckBox;
    sq_Mutasi: TZSequence;
    qryGet_Adjust_Number: TZQuery;
    GroupBox1: TGroupBox;
    MemRemarks: TcxDBMemo;
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
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grdlvlDetail: TcxGridLevel;
    SCPanel1: TSCPanel;
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    LookReviewer: TwwLookupDialog;
    LookApprover: TwwLookupDialog;
    grddbtvDetailid_item: TcxGridDBColumn;
    grddbtvDetaildescription: TcxGridDBColumn;
    grddbtvDetailqty_in: TcxGridDBColumn;
    grddbtvDetailqty_ot: TcxGridDBColumn;
    grddbtvDetailid_warehouse: TcxGridDBColumn;
    grddbtvDetailnomor: TcxGridDBColumn;
    LItem: TZReadOnlyQuery;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frPR: TfrxReport;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemDetail: TkbmMemTable;
    MemDetailid_item: TStringField;
    MemDetailid_unit: TStringField;
    MemDetaildescription: TStringField;
    MemDetailqty: TFloatField;
    MemDetailno: TStringField;
    MemDetailwarehouse_id: TStringField;
    MemDetailwarehouse_id2: TStringField;
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
    MemMastersupplier_name: TStringField;
    MemMastermodel: TStringField;
    MemMasterdocumen_distribution: TStringField;
    MemMasterprinted_by: TStringField;
    actPrint: TAction;
    MemDetailqty2: TFloatField;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    MemMasterreviewed_name_2: TStringField;
    MemMasterapproved_name_2: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterdt_reviewed_2: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterdt_approved_2: TStringField;
    QDocDistribute: TZReadOnlyQuery;
    QDocDistributedoc_ditribution: TStringField;
    MemMasterposted: TStringField;
    Masterid_mutasi: TLargeintField;
    Mastermutasi_no: TStringField;
    Masterdt_mutasi: TDateTimeField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterdescription: TStringField;
    Masterid_trans: TStringField;
    Masterisdelete: TStringField;
    Masterremarks: TStringField;
    Masterno_bukti: TStringField;
    Detailid_mutasi: TLargeintField;
    Detaildescription: TStringField;
    Detailqty_in: TFloatField;
    Detailqty_ot: TFloatField;
    Detailid_warehouse: TStringField;
    Detailid_warehouse2: TStringField;
    Detailnomor: TIntegerField;
    Detailremarks: TStringField;
    Masterprepared_by: TStringField;
    Masterreviewed_by: TStringField;
    Masterapproved_by: TStringField;
    Masterlreviewed_name: TStringField;
    Masterlprepared_name: TStringField;
    Masterlapproved_name: TStringField;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    qryGet_Adjust_Numbernew_number: TStringField;
    dsLItem: TDataSource;
    Detailunit_price: TFloatField;
    cxEditRepository1: TcxEditRepository;
    ER_TEXT: TcxEditRepositoryTextItem;
    qryGetStok: TZReadOnlyQuery;
    qryGetStokstok: TFloatField;
    LookItem: TwwLookupDialog;
    actLookItem: TAction;
    pnlPrepared: TRzPanel;
    LblL_Prepared: TLabel;
    dbt_UserPrepared: TDBText;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    frPRBackUp: TfrxReport;
    cxStyle5: TcxStyle;
    qryWarehouse: TZReadOnlyQuery;
    dsWarehouse: TDataSource;
    qryWarehouseid_warehouse: TStringField;
    qryWarehousedescription: TStringField;
    ER_LCB_GUDANG: TcxEditRepositoryLookupComboBoxItem;
    Detailid_mutasi_detail: TLargeintField;
    sq_mutasi_detail: TZSequence;
    SCPanel3: TSCPanel;
    Label15: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
    Detailid_item: TStringField;
    Detailistambahan: TStringField;
    Detailppn_rp: TFloatField;
    qBrowseid_mutasi: TLargeintField;
    qBrowsemutasi_no: TStringField;
    qBrowsedt_mutasi: TDateTimeField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsedescription: TStringField;
    Masterppn_rp: TFloatField;
    Mastertotal: TFloatField;
    Masterkd_rekanan: TStringField;
    LItemnama_item: TStringField;
    LItemkd_item: TStringField;
    LItemkd_satuan: TStringField;
    LItemid_warehouse: TStringField;
    LItemstok: TFloatField;
    LItemdescription: TStringField;
    grddbtvDetailColumn1: TcxGridDBColumn;
    Detailselisih: TFloatField;
    lblTM: TSCLabel;
    cbSheet: TcxComboBox;
    SCLabel1: TSCLabel;
    OpenDialog1: TOpenDialog;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    ADODataSet1F1: TStringField;
    ADODataSet1F2: TStringField;
    ADODataSet1F3: TStringField;
    ADODataSet1F4: TStringField;
    ADODataSet1F5: TStringField;
    kmtData: TkbmMemTable;
    kmtDataF1: TStringField;
    kmtDataF2: TStringField;
    kmtDataF3: TStringField;
    kmtDataF4: TStringField;
    kmtDataF5: TStringField;
    dskmtData: TDataSource;
    qryITEM: TZReadOnlyQuery;
    qryITEMid_item: TStringField;
    qryITEMitem_name: TStringField;
    qryITEMid_cat_item: TStringField;
    qryITEMrasio: TFloatField;
    qryITEMrasio_lusin: TFloatField;
    qryITEMstok: TFloatField;
    qryITEMstok_str: TMemoField;
    qryITEMhrg_beli_karton: TFloatField;
    Detailsatuan: TStringField;
    ADODataSet1F6: TStringField;
    kmtDataF6: TStringField;
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
    procedure grdDetailEnter(Sender: TObject);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure MemRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure actLookItemExecute(Sender: TObject);
    procedure grddbtvDetailid_itemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure grddbtvDetailid_warehouseGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure lblTMClick(Sender: TObject);
    procedure SCLabel1Click(Sender: TObject);
    procedure qryITEMBeforeOpen(DataSet: TDataSet);
    procedure DetailCalcFields(DataSet: TDataSet);
  private
    vNamaFile, vjns_item, vjns_transaksi, vjudul, principal : string;
    vtag : integer;
    DBMode: TDBMode;
    procedure ConnectToExcel;
    procedure FetchData;
    { Private declarations }
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;
    procedure CloseClonedDetail;

  public
    { Public declarations }
  end;

var
  InventoryAdjusmentFrm: TInventoryAdjusmentFrm;

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);

implementation

uses U_DM, U_Status_Dialog, StrUtils;

{$R *.dfm}
function splistr(text:string): TStringArray;
var
  idx : integer;
  I: Integer;
  data : TStringArray;
  tempdata : string;
begin
  SetLength(data, 3);
  idx := 0;
  for I := 1 to Length(text) do
  begin
    if(text[i] = '.') then
    begin
      if idx >= Length(data) then
        SetLength(data, length(data) + 1);

      data[idx] := tempdata;
      inc(idx);
      tempdata := '';
    end
    else
    begin
      tempdata := tempdata + text[i];
    end;
  end;

  if idx >= Length(data) then
    SetLength(data, length(data) + 1);

  data[idx] := tempdata;

  Result := data;
end;

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);
begin
  InventoryAdjusmentFrm:= TInventoryAdjusmentFrm.Create(Application);
  InventoryAdjusmentFrm.vjns_transaksi:= ptransaksi;

  InventoryAdjusmentFrm.vtag:= ptag;
  InventoryAdjusmentFrm.DBMode:= dmNone;
//  ShowWindow(Handle, SW_Maximize);
  try
    DM.L_User.Close;
    DM.L_User.Open;

    InventoryAdjusmentFrm.qryWarehouse.Close;
    InventoryAdjusmentFrm.qryWarehouse.Open;

    InventoryAdjusmentFrm.qBrowse.Close;
    InventoryAdjusmentFrm.qBrowse.Open;
    InventoryAdjusmentFrm.Detail.Close;
    InventoryAdjusmentFrm.DBMode:= dmBrowse;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  InventoryAdjusmentFrm.UpdateView;
  InventoryAdjusmentFrm.vjudul:=pNamaMenu;
  InventoryAdjusmentFrm.lblHeader1.Caption:= pNamaMenu;
  InventoryAdjusmentFrm.Caption:= pNamaMenu;
  InventoryAdjusmentFrm.Show;
end;

procedure TInventoryAdjusmentFrm.CloneDetail;
begin
  try
    kmtCheckDetail.Close;
    kmtCheckDetail.Open;
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
end;

function TInventoryAdjusmentFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TInventoryAdjusmentFrm.CloseClonedDetail;
begin
  kmtCheckDetail.Close;
end;


procedure TInventoryAdjusmentFrm.UpdateView;
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

    edtDateEdit.Properties.ReadOnly:= isBrowse;
    MemRemarks.Properties.ReadOnly:= isBrowse;
    edtPosted.Properties.ReadOnly:= isBrowse;
    edtCancel.Properties.ReadOnly:= isBrowse;
//    LblL_Reviewed_1.Enabled:= not isBrowse;
//    LbL_Approved_1.Enabled:= not isBrowse;


    grddbtvDetail.OptionsData.Inserting:= NOT isBrowse;
    grddbtvDetail.OptionsData.Editing:= NOT isBrowse;
    grddbtvDetail.OptionsData.Deleting:= NOT isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete
  end;
end;

function TInventoryAdjusmentFrm.CheckEditRight(var msg: string): Boolean;
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

function TInventoryAdjusmentFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TInventoryAdjusmentFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TInventoryAdjusmentFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
     DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TInventoryAdjusmentFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TInventoryAdjusmentFrm.actAddExecute(Sender: TObject);
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

procedure TInventoryAdjusmentFrm.actEditExecute(Sender: TObject);
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

procedure TInventoryAdjusmentFrm.actDeleteExecute(Sender: TObject);
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

procedure TInventoryAdjusmentFrm.actRefreshExecute(Sender: TObject);
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

procedure TInventoryAdjusmentFrm.actSaveExecute(Sender: TObject);
begin
 if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Sekali disimpan, Dokumen ini tidak bisa dikoreksi.'+#13#10+
                            'Apakah data yang Anda masukkan sudah benar?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  DM.StartTransaction;
  try
    if Mastermutasi_no.AsString='' then begin
        qryGet_Adjust_Number.Close;
        qryGet_Adjust_Number.Params.ParamByName('pid_trans').AsString:= Masterid_trans.AsString;
        qryGet_Adjust_Number.Open;
        if Master.State=dsBrowse then
           Master.Edit;
        Mastermutasi_no.AsString:= qryGet_Adjust_Numbernew_number.AsString;
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

procedure TInventoryAdjusmentFrm.actCancelExecute(Sender: TObject);
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


procedure TInventoryAdjusmentFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TInventoryAdjusmentFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_mutasi.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Masterdt_mutasi.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisdelete.AsString:= '0';
//   Masterispaket.AsString:= '0';
//   Masteristambahan.AsString:= '0';
   Mastertotal.AsFloat:= 0;
   Masterppn_rp.AsFloat:= 0;
   Masterid_trans.AsString:= vjns_transaksi;
   Masterdescription.AsString:= '-';
   DM.L_Transaction.Close;
   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
   DM.L_Transaction.Open;
   Masterprepared_by.AsString:= DM.UserConnect;
//   Masterreviewed_by.AsString:= DM.L_Transactionvuser_review.AsString;
//   Masterapproved_by.AsString:= DM.L_Transactionvuser_approve.AsString;
end;

procedure TInventoryAdjusmentFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_mutasi.AsLargeInt:= Masterid_mutasi.AsLargeInt;
  Detailistambahan.AsString:= '0';
  Detailunit_price.AsFloat:= 0;
  Detailistambahan.AsString:= '0';
  Detailppn_rp.AsFloat:= 0;
  

  if Detail.RecNo=0 then
    Detailnomor.AsInteger:=1
  else
    Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TInventoryAdjusmentFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
     Masterkd_rekanan.Clear;

  if Master.State=dsInsert then begin
    Masterid_mutasi.AsLargeInt:= sq_Mutasi.GetNextValue;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_mutasi.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (mutasiId_mutasi not set). All input aborted !');
end;

procedure TInventoryAdjusmentFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
    Detail.Close;
    Detail.Params.ParamByName('id_mutasi').Value:= Masterid_mutasi.AsLargeInt;
    Detail.Open;
  end;
end;

procedure TInventoryAdjusmentFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TInventoryAdjusmentFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TInventoryAdjusmentFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TInventoryAdjusmentFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_mutasi').Value:= qBrowseid_mutasi.AsLargeInt;
end;

procedure TInventoryAdjusmentFrm.DetailBeforePost(DataSet: TDataSet);
begin
  Detailid_warehouse2.AsString:= Detailid_warehouse.AsString;

  if Detailid_warehouse.IsNull or (Trim(Detailid_warehouse.AsString)='') then
     raise Exception.Create('GUDANG harus diisi !')
  else
  if Detailqty_in.IsNull  then
     raise Exception.Create('QTY DATABASE harus diisi !')
  else
  if Detailqty_ot.IsNull  then
     raise Exception.Create('QTY STOCK OPNAME harus diisi !');

  if DataSet.State=dsInsert then begin
    if CheckDetail(Detailid_item.Value) then begin
      raise Exception.Create('KODE sudah ada !')
    end
  end else
  if DataSet.State=dsEdit then begin
    if Detailid_item.OldValue<>Detailid_item.Value then begin
      if CheckDetail(Detailid_item.Value) then begin
        raise Exception.Create('KODE sudah ada !')
      end
    end
  end;

  if Detail.State=dsInsert then
     Detailid_mutasi_detail.AsLargeInt:= sq_mutasi_detail.GetNextValue; 

end;

procedure TInventoryAdjusmentFrm.grdDetailEnter(Sender: TObject);
var s : String;
begin
    if DBMode=dmBrowse then
      Exit;

    if Master.State<>dsBrowse then
      Master.Post;

end;

procedure TInventoryAdjusmentFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;

end;

procedure TInventoryAdjusmentFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Exit;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end

end;

procedure TInventoryAdjusmentFrm.actPrintExecute(Sender: TObject);
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
   MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO_RS.JPG');
   MemInfoPerusahaan.Post;

  MemMaster.Close;
  MemMaster.Open;
  MemMaster.Append;
  MemMasterreq_number.AsString:= Mastermutasi_no.AsString;
  MemMasterremarks.AsString:= Masterdescription.AsString;
  if Masterispost.AsString='1' then MemMasterposted.AsString:= 'POSTED'
  else MemMasterposted.Clear;

  MemMasterprepared_name.AsString:= Masterlprepared_name.AsString;
  MemMasterreviewed_name.AsString:= Masterlreviewed_name.AsString;
  MemMasterapproved_name.AsString:= Masterlapproved_name.AsString;

  MemMasterprinted_by.AsString:= 'Dicetak Oleh : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
  MemMastermodel.AsString:= 'IA-'+vjns_transaksi;
//  QDocDistribute.Close;
//  QDocDistribute.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
//  QDocDistribute.Open;
//  MemMasterdocumen_distribution.AsString:= QDocDistributedoc_ditribution.AsString;


  if Masterdt_mutasi.IsNull then MemMasterdated.AsString:= ''
  else MemMasterdated.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_mutasi.AsDateTime);

  if Masterdt_mutasi.IsNull then MemMasterdt_prepared.AsString:= 'TGL : '
  else MemMasterdt_prepared.AsString:= 'TGL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_mutasi.AsDateTime);

  MemMasterdt_reviewed_1.AsString:= 'TGL : ';

  MemMasterdt_approved_1.AsString:= 'TGL : ';


  MemMaster.Post;

    MemDetail.Close;
    MemDetail.Open;
    if Detail.RecordCount<10 then begin
      row_count:= 10-Detail.RecordCount;
      Detail.DisableControls;
      try
        Detail.First;
        while not Detail.Eof do begin
          MemDetail.Append;
          MemDetailno.AsString:= Detailnomor.AsString;
          MemDetailid_item.AsString:= Detailid_item.AsString;
          MemDetaildescription.AsString:= Detaildescription.AsString;
          MemDetailqty.AsFloat:= Detailqty_in.AsFloat;
          MemDetailqty2.AsFloat:= Detailqty_ot.AsFloat;
          MemDetailid_unit.AsString:= UpperCase(Detailsatuan.AsString);
          MemDetailwarehouse_id.AsString:= Detailid_warehouse.AsString;
          MemDetailwarehouse_id2.AsString:= Detailid_warehouse2.AsString;
          MemDetail.Post;
          Detail.Next;
        end;
        for i := 1 to row_count do begin
          MemDetail.Append;
          MemDetailno.AsString:= '';
          MemDetailid_item.AsString:= '';
          MemDetaildescription.AsString:= '';
          MemDetailqty.AsString:= '';
          MemDetailqty2.AsString:= '';
          MemDetailid_unit.AsString:= '';
          MemDetailwarehouse_id.AsString:= '';
          MemDetailwarehouse_id2.AsString:= '';
          MemDetail.Post;
        end;
      finally
        Detail.First;
        Detail.EnableControls
      end
    end else begin
      Detail.DisableControls;
      try
        Detail.First;
        while not Detail.Eof do begin
          MemDetail.Append;
          MemDetailno.AsString:= Detailnomor.AsString;
          MemDetailid_item.AsString:= Detailid_item.AsString;
          MemDetaildescription.AsString:= Detaildescription.AsString;
          MemDetailqty.AsFloat:= Detailqty_in.AsFloat;
          MemDetailqty2.AsFloat:= Detailqty_ot.AsFloat;
          MemDetailid_unit.AsString:= UpperCase(Detailsatuan.AsString);
          MemDetailwarehouse_id.AsString:= Detailid_warehouse.AsString;
          MemDetail.Post;
          Detail.Next;
        end;
      finally
        Detail.First;
        Detail.EnableControls
      end
    end;
 frPR.ShowReport;

end;

procedure TInventoryAdjusmentFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TInventoryAdjusmentFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TInventoryAdjusmentFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then
      SelectNext(ActiveControl, True, True);
end;

procedure TInventoryAdjusmentFrm.MemRemarksKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grddbtvDetail.GetColumnByFieldName('id_item').FocusWithSelection;
    end;
end;

procedure TInventoryAdjusmentFrm.actLookItemExecute(Sender: TObject);
begin
//    if (DBMode<>dmInsert) and (DBMode<>dmEdit) then
//      Exit;
//    if Detail.State=dsBrowse then
//      Exit;
//
//    try
//      LItem.Close;
////      Litem.Params.ParamByName('pid_cat_item').AsString:= vjns_item;
////      Litem.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', edtDateEdit.Date);
//      LItem.Open;
//      if LookItem.Execute then begin
//        Detaildescription.AsString:= LItemnama_item.AsString;
//        Detailid_item.AsString:= LItemkd_item.AsString;
//        Detailqty_in.AsFloat:= LItemstok.AsFloat;
//        Detailsatuan.AsString:= LItemkd_satuan.AsString;
//        Detailid_warehouse.AsString:= LItemid_warehouse.AsString;
//        Detailid_warehouse2.AsString:= LItemid_warehouse.AsString;
//        Detailunit_price.AsFloat:= 0;
//      end;
//    except
//      on E: Exception do
//        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//    end;
end;

procedure TInventoryAdjusmentFrm.grddbtvDetailid_itemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    actLookItem.Execute;
end;

procedure TInventoryAdjusmentFrm.grddbtvDetailid_warehouseGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if Detail.State in [dsInsert,dsedit] then
       AProperties := ER_LCB_GUDANG.Properties
    else
       AProperties := ER_TEXT.Properties;

end;

procedure TInventoryAdjusmentFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
end;

procedure TInventoryAdjusmentFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TInventoryAdjusmentFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TInventoryAdjusmentFrm.btnOKClick(Sender: TObject);
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

procedure TInventoryAdjusmentFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TInventoryAdjusmentFrm.ConnectToExcel;
var strConn :  widestring;
begin
  strConn:='Provider=Microsoft.ACE.OLEDB.12.0;' +
           'Data Source='+vNamaFile+';' +
           'Extended Properties="Excel 12.0;HDR=NO;IMEX=1"';

  AdoConnection1.Connected:=False;
  AdoConnection1.ConnectionString:=strConn;
  try
    AdoConnection1.Open;

    AdoConnection1.GetTableNames(cbSheet.Properties.Items,True);
  except
    ShowMessage('Unable to connect to Excel, make sure the workbook ' + vNamaFile + ' exist!');
    raise;
  end;
end;

procedure TInventoryAdjusmentFrm.FetchData;
begin
  if not AdoConnection1.Connected then ConnectToExcel;

  ADODataSet1.Close;
  ADODataSet1.CommandText:=  'SELECT * FROM ['+cbSheet.Text+']';
  try
    ADODataSet1.Open;
  except
    ShowMessage('Unable to read data from Excel, make sure the query ' + vNamaFile + ' is meaningful!');
    raise;
  end;
end;

procedure TInventoryAdjusmentFrm.lblTMClick(Sender: TObject);
begin
  if ADOConnection1.Connected then ADOConnection1.Close;

   if OpenDialog1.Execute then begin
      vNamaFile:= OpenDialog1.FileName;
      if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TInventoryAdjusmentFrm.SCLabel1Click(Sender: TObject);
var s, qtyIn, qtyOt_str : String;
    idx : Int64;
    sts_dlg: TfrmStatus_Dialog;
    dataSO, dataSTOK : TStringArray;
    Rasio, qtyOt, karton, lusin, biji, skarton, slusin, sbiji : Double;
    i : Integer;
begin
   if cbSheet.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi Sheet Data Tidak Ditemukan !!!','Pilih Dahulu Lokasi Sheet Data !!!');
      Exit;
   end;

  ConnectToExcel;
  FetchData;
  try
    kmtData.Close;
    kmtData.Open;
    kmtData.EmptyTable;
    kmtData.LoadFromDataSet(ADODataSet1, [mtcpoAppend]);
//    kmtData.Filter:= 'F1='+QuotedStr(Masterid_item.AsString);
//    kmtData.Filtered:= True;
    kmtData.Open;

    if kmtData.RecordCount=0 then begin
       DM.MyMsg(mmInformation,'Data Tidak Ditemukan !!!','Harap Cek Kembali Data Anda !!!');
       Exit;
    end;

    sts_dlg:= TfrmStatus_Dialog.Create(Application);
    sts_dlg.Reset_Progress;
    sts_dlg.Set_Min(1);
    sts_dlg.Set_Max(kmtData.RecordCount+1);
    sts_dlg.Set_Status('Please wait, Execute action ...!!!');
    sts_dlg.Show;

    kmtData.First;
    sts_dlg.Progress_It;
    while not kmtData.Eof do begin

       if kmtDataF1.AsString='Kode Item' then
       kmtData.Next;

       if kmtDataF1.AsString='' then
       Break;

       Detail.Append;
       Detailid_item.AsString:= kmtDataF1.AsString;
       Detaildescription.AsString:= kmtDataF2.AsString;
       Detailqty_in.AsFloat:= StrToFloat(kmtDataF3.AsString);
       Detailid_warehouse.AsString:= kmtDataF4.AsString;
       if kmtDataF6.AsString='' then
       Detailqty_ot.AsFloat:= 0
       else Detailqty_ot.AsFloat:= StrToFloat(kmtDataF6.AsString);

//       qryITEM.Close;
//       qryITEM.Open;
//       Detailqty_in.AsFloat:= qryITEMstok.AsFloat;
//       qtyIn_str:= qryITEMstok_str.AsString;
//       Detailunit_price.AsFloat:= qryITEMhrg_beli_karton.AsFloat;
//       qtyOt_str:= kmtDataF3.AsString;
//       Rasio:= qryITEMrasio.AsFloat;
//
//       dataSTOK:= splistr(qryITEMstok_str.AsString);
//       for i := 0 to Length(dataSTOK)-1 do
//       begin
//        case i of
//          0:
//          begin
//            Skarton:= StrToFloat(dataSTOK[i]);
//          end;
//          1:
//          begin
//            Slusin:= StrToFloat(dataSTOK[i]);
//          end;
//          2:
//          begin
//            Sbiji:= StrToFloat(dataSTOK[i]);
//          end;
//        end;
//       end;
//
//       dataSO:= splistr(kmtDataF3.AsString);
//       for i := 0 to Length(dataSO)-1 do
//       begin
//        case i of
//          0:
//          begin
//            karton:= StrToFloat(dataSO[i]);
//          end;
//          1:
//          begin
//            lusin:= StrToFloat(dataSO[i]);
//          end;
//          2:
//          begin
//            biji:= StrToFloat(dataSO[i]);
//          end;
//        end;
//       end;
//
//       Detailsatuan.AsString:= FloatToStr(skarton-karton)+'.'+FloatToStr(slusin-lusin)+'.'+FloatToStr(sbiji-biji);
//       qtyOt:= (karton*Rasio)+(lusin*1)+biji;
//       Detailqty_ot.AsFloat:= qtyOt;
//       Detailqty_db_str.AsString:= qtyIn_str;
//       Detailqty_terima.AsString:= qtyOt_str;

       Detail.Post;
       kmtData.Next;
       sts_dlg.Progress_It;
    end;

    if ADOConnection1.Connected then ADOConnection1.Close;

  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
  end;

  cbSheet.Text:= '';
  sts_dlg.Free;
end;

procedure TInventoryAdjusmentFrm.qryITEMBeforeOpen(DataSet: TDataSet);
begin
  qryITEM.Params.ParamByName('pwarehouse').Value:= Detailid_warehouse.Value;
  qryITEM.Params.ParamByName('ptgl1').Value:= kmtDataF5.Value;
  qryITEM.Params.ParamByName('pid_item').Value:= Detailid_item.Value;
end;

procedure TInventoryAdjusmentFrm.DetailCalcFields(DataSet: TDataSet);
begin
  Detailselisih.AsFloat:= Detailqty_in.AsFloat-Detailqty_ot.AsFloat;
end;

end.

unit U_Settlement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxDBEditRepository, cxEditRepositoryItems, ZDataset, wwDialog, wwidlg,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvPanel, AdvAppStyler, kbmMemTable, frxClass, frxDBSet, frxExportXML,
  frxExportRTF, frxExportPDF, ZSequence, ZAbstractRODataset,
  ZAbstractDataset, AdvGlowButton, DBCtrls, ExtCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMemo, RzPanel, cxLabel, wwdbdatetimepicker, cxContainer, cxMaskEdit,
  StdCtrls, Wwkeycb, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, RzDBNav,
  SCStdControls, SCControl, AdvReflectionImage, cxButtonEdit, cxDBLabel,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode = (dmNone, dmBrowse, dmInsert, dmEdit);
  TSettlementFrm = class(TForm)
    pnlBottom: TSCPanel;
    pgcMaster: TcxPageControl;
    tabBrowse: TcxTabSheet;
    tabDetail: TcxTabSheet;
    Master: TZQuery;
    dsMaster: TDataSource;
    Sq_SETTLE: TZSequence;
    grdBrowse: TcxGrid;
    grddbtvBrowse_PO: TcxGridDBTableView;
    grdBrowseLevel1: TcxGridLevel;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grdLvlDetail: TcxGridLevel;
    Detail: TZQuery;
    dsDetail: TDataSource;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    edtDateEdit: TcxDBDateEdit;
    SCPanel2: TSCPanel;
    Label13: TLabel;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxXMLExport1: TfrxXMLExport;
    Label17: TLabel;
    edtOrdering: TcxDBTextEdit;
    grddbtvBrowse_POispost: TcxGridDBColumn;
    grddbtvBrowse_POiscancel: TcxGridDBColumn;
    adpDetail: TAdvDockPanel;
    atbPR_Item_Detail: TAdvToolBar;
    dbagbAddPR_Item_Detail: TDBAdvGlowButton;
    dbagbDeletePR_Item_Detail: TDBAdvGlowButton;
    dbagbEditPR_Item_Detail: TDBAdvGlowButton;
    dbagbSavePR_Item_Detail: TDBAdvGlowButton;
    dbagbCancelPR_Item_Detail: TDBAdvGlowButton;
    dbagbRefreshPR_Item_Detail: TDBAdvGlowButton;
    Panel1: TPanel;
    LblMC_Inspector: TLabel;
    dbt_UserPrepared: TDBText;
    _DB_TGL_1: TDBText;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    Panel2: TPanel;
    LblDisetujui: TLabel;
    dbt_UserApproved: TDBText;
    _DB_TGL_3: TDBText;
    LblInspector: TLabel;
    _DB_Name_3: TDBText;
    Panel3: TPanel;
    LbLDiterima: TLabel;
    dbt_UserReviewed: TDBText;
    _DB_TGL_2: TDBText;
    LblReviewer: TLabel;
    _DB_Name_2: TDBText;
    RzGroupBox3: TRzGroupBox;
    edtDescription: TcxDBMemo;
    grddbtvBrowse_POstok_no: TcxGridDBColumn;
    Label3: TLabel;
    edtMRIRNo: TcxDBTextEdit;
    Shape2: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape9: TShape;
    Shape10: TShape;
    qryGet_SETTLE_number: TZQuery;
    edtPosted: TcxDBCheckBox;
    edtCanceled: TcxDBCheckBox;
    Shape1: TShape;
    grddbtvBrowse_POdoc_no: TcxGridDBColumn;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    LookReviewer: TwwLookupDialog;
    LookApprover: TwwLookupDialog;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    Masterid_settlement: TLargeintField;
    Masterno_settlement: TStringField;
    Masterdt_settlement: TDateTimeField;
    Masterremarks: TStringField;
    Masterissettlement: TStringField;
    Mastertotal: TFloatField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterprepared_by: TStringField;
    Masterreviewed_by: TStringField;
    Masterapproved_by: TStringField;
    Masterdt_prepared: TDateTimeField;
    Masterdt_reviewed: TDateTimeField;
    Masterdt_approved: TDateTimeField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    grddbtvDetaildiskripsi: TcxGridDBColumn;
    grddbtvDetailnomor: TcxGridDBColumn;
    qryPegawai: TZReadOnlyQuery;
    Detailid_settlement: TLargeintField;
    Detailid_settlement_detail: TLargeintField;
    Detaildiskripsi: TStringField;
    Detailnomor: TIntegerField;
    Detailid_rek_gl: TStringField;
    grddbtvDetailid_rek_gl: TcxGridDBColumn;
    Detailnama_rekening: TStringField;
    grddbtvDetailnama_rekening: TcxGridDBColumn;
    qryGet_SETTLE_numbersettle_number: TStringField;
    qryKasBon: TZReadOnlyQuery;
    Masterprepared_name: TStringField;
    Masterreviewed_name: TStringField;
    Masterapproved_name: TStringField;
    sq_Detail: TZSequence;
    qrySubTotal: TZReadOnlyQuery;
    qrySubTotalsub_total: TFloatField;
    btnSubmit: TAdvGlowButton;
    grddbtvBrowse_POremarks: TcxGridDBColumn;
    grddbtvBrowse_POusr_ins: TcxGridDBColumn;
    grddbtvBrowse_POprepared_by: TcxGridDBColumn;
    grddbtvBrowse_POdt_settlement: TcxGridDBColumn;
    pnlSearch: TSCPanel;
    Shape12: TShape;
    Label40: TLabel;
    Shape13: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    btnClose: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnDelete: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnCari: TSCButton;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
    qBrowseid_settlement: TLargeintField;
    qBrowseno_settlement: TStringField;
    qBrowsedt_settlement: TDateTimeField;
    qBrowseusr_ins: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowseremarks: TStringField;
    SCPanel3: TSCPanel;
    Label28: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    pnlTop: TAdvPanel;
    lblHeader: TLabel;
    dbnMaster: TRzDBNavigator;
    qBrowseprepared_by: TStringField;
    qBrowseusr_post: TStringField;
    qBrowsedt_post: TDateTimeField;
    Masterid_trans: TStringField;
    Masterid_curr: TStringField;
    Masterkurs: TFloatField;
    Masterusr_post: TStringField;
    Masterdt_post: TDateTimeField;
    Detailno_kasbon: TStringField;
    Detailnk: TStringField;
    Detailjumlah: TFloatField;
    grddbtvDetailno_kasbon: TcxGridDBColumn;
    grddbtvDetailjumlah: TcxGridDBColumn;
    qBrowsetotal: TFloatField;
    Masterid_rek_gl: TStringField;
    frxRepMaster: TfrxReport;
    ER: TcxEditRepository;
    ER_EDT: TcxEditRepositoryTextItem;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_NO_KASBON: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_NOPEG: TcxEditRepositoryLookupComboBoxItem;
    qryRekGL: TZReadOnlyQuery;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    dsqryRekGL: TDataSource;
    qryPegawaink: TStringField;
    qryPegawaiinitial: TStringField;
    qryPegawaifull_name: TStringField;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    qryKasBonno_kasbon: TStringField;
    qryKasBondt_purposed: TDateTimeField;
    qryKasBonkasbon_untuk: TStringField;
    qryKasBonid_rek_gl: TStringField;
    qryKasBonjumlah: TFloatField;
    qryKasBonpembayaran: TFloatField;
    qryKasBonsisa: TFloatField;
    dsqryKasBon: TDataSource;
    MemMaster: TkbmMemTable;
    MemDetail: TkbmMemTable;
    frxDBMemMaster: TfrxDBDataset;
    frxDBMemDetail: TfrxDBDataset;
    MemMasterid_settlement: TLargeintField;
    MemMasterno_settlement: TStringField;
    MemMasterremarks: TStringField;
    MemMasterissettlement: TStringField;
    MemMastertotal: TFloatField;
    MemMasterusr_ins: TStringField;
    MemMasterusr_upd: TStringField;
    MemMasterdt_ins: TDateTimeField;
    MemMasterdt_upd: TDateTimeField;
    MemMasterprepared_by: TStringField;
    MemMasterreviewed_by: TStringField;
    MemMasterapproved_by: TStringField;
    MemMasterispost: TStringField;
    MemMasteriscancel: TStringField;
    MemMasterisdelete: TStringField;
    MemMasterid_trans: TStringField;
    MemMasterid_curr: TStringField;
    MemMasterkurs: TFloatField;
    MemMasterusr_post: TStringField;
    MemMasterdt_post: TDateTimeField;
    MemMasterid_rek_gl: TStringField;
    MemDetailid_settlement: TLargeintField;
    MemDetailnomor: TIntegerField;
    MemDetailid_settlement_detail: TLargeintField;
    MemDetaildiskripsi: TStringField;
    MemDetailid_rek_gl: TStringField;
    MemDetailno_kasbon: TStringField;
    MemDetailnk: TStringField;
    MemDetailjumlah: TFloatField;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    MemInfoPerusahaanjudul: TStringField;
    MemInfoPerusahaanperiode: TStringField;
    MemInfoPerusahaanprinted_by: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    frPR: TfrxReport;
    MemMasterterbilang: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterdt_reviewed: TStringField;
    MemMasterdt_approved: TStringField;
    MemMasterposted: TStringField;
    MemDetailjumlah_str: TStringField;
    MemMasterdt_settlement: TStringField;
    Detailnama_pegawai: TStringField;
    qryRekap: TZQuery;
    qryRekapid_settlement: TLargeintField;
    qryRekapno_settlement: TStringField;
    qryRekapdt_settlement: TDateTimeField;
    qryRekapusr_ins: TStringField;
    qryRekapispost: TStringField;
    qryRekapiscancel: TStringField;
    qryRekapremarks: TStringField;
    qryRekapprepared_by: TStringField;
    qryRekapusr_post: TStringField;
    qryRekapdt_post: TDateTimeField;
    qryRekaptotal: TFloatField;
    qryRekapid_settlement_1: TLargeintField;
    qryRekapnomor: TIntegerField;
    qryRekapid_settlement_detail: TLargeintField;
    qryRekapdiskripsi: TStringField;
    qryRekapid_rek_gl: TStringField;
    qryRekapno_kasbon: TStringField;
    qryRekapnk: TStringField;
    qryRekapjumlah: TFloatField;
    frxDBRekap: TfrxDBDataset;
    qryRekapfull_name: TStringField;
    RGModeCetak: TRadioGroup;
    grddbtvBrowse_POtotal: TcxGridDBColumn;
    Masternk: TStringField;
    LookPegawai: TwwLookupDialog;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    edtKodeRek: TcxDBButtonEdit;
    Label4: TLabel;
    Masternama_pegawai: TStringField;
    cxDBLabel1: TcxDBLabel;
    qBrowsenk: TStringField;
    qBrowsefull_name: TStringField;
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgcMasterPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure DetailBeforePost(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure LbLDiterimaClick(Sender: TObject);
    procedure LblDisetujuiClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DetailNewRecord(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure DetailBeforeDelete(DataSet: TDataSet);
    procedure DetailBeforeEdit(DataSet: TDataSet);
    procedure btnSubmitClick(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure pgcMasterChange(Sender: TObject);
    procedure grddbtvBrowse_POCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdDetailEnter(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFieldNamePropertiesChange(Sender: TObject);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure tabDetailShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbnMasterClick(Sender: TObject; Button: TNavigateBtn);
    procedure grddbtvDetailid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
    procedure grddbtvDetailno_kasbonGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_NO_KASBONPropertiesCloseUp(Sender: TObject);
    procedure edtKodeRekPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    DBMode : TDBMode;
    vjns_transaksi, vJudul, vSettle : string;
    vtag : Integer;
    isAddAllow, isEditAllow, isDeleteAllow : Boolean;
    vSubTotal : Double;
    procedure UpdateView;
    procedure OpenDataset;
    procedure CloneDetail;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;


  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu: String; ptransaksi, isSettle: String; ptag: integer);

var
  SettlementFrm: TSettlementFrm;
//  isView: Boolean;

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu: String; ptransaksi, isSettle: String; ptag: integer);
begin
  try
    SettlementFrm := TSettlementFrm.Create(Application);
    with SettlementFrm do begin
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      vSettle:= isSettle;
      OpenDataset;
      vjudul:= pNamaMenu;
      lblHeader.Caption:= UpperCase(pNamaMenu);
      Caption:= pNamaMenu;
      Show;
    end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;


procedure TSettlementFrm.CloneDetail;
begin
  Detail.DisableControls;
  try
    try
      vSubTotal:= 0;
      Detail.First;
      while not Detail.Eof do begin
        vSubTotal:= vSubTotal+Detailjumlah.AsFloat;
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



procedure TSettlementFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    pgcMaster.ActivePageIndex := 0;
    dbnMaster.Enabled:= False;

    btnAdd.Visible:= True;
    btnAdd.Enabled:= False;
    btnDelete.Visible:= True;
    btnDelete.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnSave.Visible:= False;
    btnEdit.Visible:= True;
    btnEdit.Enabled:= False;
    btnCancel.Visible:= False;
    btnSubmit.Visible:= False;
    btnCari.Visible:= False;
    adpDetail.Visible:= False;
  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := qBrowse.RecordCount=0;

    if isBrowse then pgcMaster.ActivePageIndex := 0
    else pgcMaster.ActivePageIndex := 1;

    dbnMaster.Enabled := isBrowse;
    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled:= not isEmpty and accprint;
    btnSubmit.Visible:= False;
    btnCari.Visible:= isBrowse;
    btnCari.Enabled:= not isEmpty;

    isAddAllow:= accinsert;
    isEditAllow:= accedit;
    isDeleteAllow:= accdelete;

    edtKodeRek.Properties.ReadOnly:= isBrowse;
    edtKodeRek.Properties.Buttons[0].Visible:= not isBrowse;

    edtDescription.Properties.ReadOnly:= isBrowse;

    edtPosted.Properties.ReadOnly:= isBrowse and not DM.isSuperUser;
    edtCanceled.Properties.ReadOnly:= isBrowse and not DM.isSuperUser;


    edtDateEdit.Properties.ReadOnly:= isBrowse;
    LblDisetujui.Enabled:= not isBrowse;
    LbLDiterima.Enabled:= not isBrowse;

    grddbtvDetail.OptionsData.Inserting:= NOT isBrowse;
    grddbtvDetail.OptionsData.Editing:= NOT isBrowse;
    grddbtvDetail.OptionsData.Deleting:= NOT isBrowse;

    adpDetail.Visible:= not isBrowse;

    dbagbAddPR_Item_Detail.Enabled:= accinsert;
    dbagbEditPR_Item_Detail.Enabled:= accedit;
    dbagbDeletePR_Item_Detail.Enabled:= accdelete;
  end;
end;

procedure TSettlementFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;

function TSettlementFrm.CheckEditRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';
  if not isEditAllow then begin
    msg:= 'Anda tidak memiliki hak untuk melakukan Koreksi. Hubungi Administrator !';
    Result:= False;
    Exit
  end;

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

function TSettlementFrm.CheckDeleteRight(var msg: string): Boolean;
begin
  Result:= True;
  msg:= '';
  if not isDeleteAllow then begin
    msg:= 'Anda tidak memiliki hak untuk menghapus data ini !';
    Result:= False;
    Exit
  end;

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

procedure TSettlementFrm.btnAddClick(Sender: TObject);
begin
  if pgcMaster.ActivePageIndex=0 then
     pgcMaster.ActivePageIndex:= 1;

  try
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_settlement').Value:=-1;
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

procedure TSettlementFrm.btnDeleteClick(Sender: TObject);
begin
  if pgcMaster.ActivePageIndex=0 then
     pgcMaster.ActivePageIndex:= 1;

   if Master.RecordCount=0 then
      Exit;

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
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView;

end;

procedure TSettlementFrm.btnRefreshClick(Sender: TObject);
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

procedure TSettlementFrm.btnEditClick(Sender: TObject);
begin
  if qBrowse.RecordCount=0 then
     Exit;
  if pgcMaster.ActivePageIndex=0 then
     pgcMaster.ActivePageIndex:= 1;

   try
    Master.Edit;
    DBMode:= dmEdit;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView;
end;

procedure TSettlementFrm.pgcMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TSettlementFrm.OpenDataset;
begin
  try
    DM.L_user.Close;
    DM.L_user.Open;
    DM.L_Rek_GL.Close;
    DM.L_Rek_GL.Open;
    DM.L_Pegawai.Close;
    DM.L_Pegawai.Open;
    qryRekGL.Close;
    qryRekGL.Open;
    qryPegawai.Close;
    qryPegawai.Open;
    qBrowse.Close;
    qBrowse.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  DBMode:=dmBrowse;
  UpdateView;
end;

procedure TSettlementFrm.FormShow(Sender: TObject);
begin
  ShowWindow(handle,SW_SHOWMAXIMIZED);
end;

procedure TSettlementFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterid_settlement.AsLargeInt:= -1;

  DM.vSysDate.Close;
  DM.vSysDate.Open;
  Masterdt_settlement.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
  Masterdt_prepared.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
  Masterispost.AsString:= '0';
  Masteriscancel.AsString:= '0';
  Masterisdelete.AsString:= '0';


  Masterid_trans.AsString:= vjns_transaksi;
  Mastertotal.AsFloat:= 0;
  Masterissettlement.AsString:= vSettle;
  Masterid_curr.AsString:= 'IDR';
  Masterkurs.AsFloat:= 1;
  Masterprepared_by.AsString:= DM.UserConnect;
end;

procedure TSettlementFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TSettlementFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_settlement.AsLargeInt:= Masterid_settlement.AsLargeInt;
  Detailid_settlement_detail.AsLargeInt:= sq_Detail.GetNextValue;
  Detailnk.AsString:= Masternk.AsString;
  Detailjumlah.AsFloat:= 0;
  if Detail.RecNo=0 then
    Detailnomor.AsInteger:=1
  else
    Detailnomor.AsInteger:=Detail.RecNo;

end;


procedure TSettlementFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TSettlementFrm.DetailBeforePost(DataSet: TDataSet);
begin

  if Detailno_kasbon.IsNull or (Trim(Detailno_kasbon.AsString)='') then
     raise Exception.Create('NO. KASBON Harus Diisi !')
  else
  if Detaildiskripsi.IsNull or (Trim(Detaildiskripsi.AsString)='') then
     raise Exception.Create('DISKRIPSI harus Diisi !')
  else
  if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
     raise Exception.Create('Kode rekening Harus Diisi !')
  else
  if Detailjumlah.IsNull  then
     raise Exception.Create('NOMINAL Harus Diisi !')
  else
  if Detailjumlah.AsFloat=0  then
     raise Exception.Create('NOMINAL Harus Diisi !');

end;

procedure TSettlementFrm.MasterBeforePost(DataSet: TDataSet);
begin

   if (Masterid_rek_gl.IsNull) or (Trim(Masterid_rek_gl.AsString)='') then
       Masterid_rek_gl.Clear;

   if Masterid_curr.IsNull or (Trim(Masterid_curr.AsString)='') then
       raise Exception.Create('Field CURRENCY must have value !')
   else
   if Masterkurs.AsFloat=0 then
      raise Exception.Create('Field RATES must have value !')
   else
   if Masterkurs.IsNull then
      raise Exception.Create('Field RATES must have value !');

  if Master.State=dsInsert then begin
    Masterid_settlement.AsLargeInt:= Sq_SETTLE.GetNextValue;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then begin
    Masterusr_upd.AsString:= DM.UserConnect;
  end;
end;



procedure TSettlementFrm.btnPrintClick(Sender: TObject);
var i, row_count: Integer;
begin
  if pgcMaster.ActivePageIndex=0 then
     pgcMaster.ActivePageIndex:= 1;

   if pgcMaster.ActivePageIndex=0 then begin
      DM.MyMsg(mmInformation,'Untuk mencetak dokumen pindah ke mode detail terlebih dahulu','');
      Exit;
   end;

   if Master.RecordCount=0 then
    Exit;

       DM.vSysDate.Close;
       DM.vSysDate.Open;




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
           MemInfoPerusahaanjudul.AsString:= lblHeader.Caption;
           MemInfoPerusahaanprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
           MemInfoPerusahaanperiode.AsString:= 'Periode : '+ FormatDateTime('dd/mm/yyyy', dtpStart.Date)+
                                               ' S/D '+ FormatDateTime('dd/mm/yyyy', dtpEnd.Date);           
           MemInfoPerusahaan.Post;

     if RGModeCetak.ItemIndex=0 then begin

        try
          MemMaster.Close;
          MemMaster.Open;
          MemMaster.Append;
          MemMasterno_settlement.AsString:= Masterno_settlement.AsString;
          MemMasterdt_settlement.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_settlement.AsDateTime);
          MemMasterremarks.AsString:= Masterremarks.AsString;

          MemMasterprepared_by.AsString:= Masterprepared_name.AsString;
          MemMasterreviewed_by.AsString:= Masterreviewed_name.AsString;
          MemMasterapproved_by.AsString:= Masterapproved_name.AsString;
          MemMasterid_curr.AsString:= '';
          MemMasterkurs.AsString:= '';
          MemMastertotal.AsFloat:= Mastertotal.AsFloat;
          DM.MyKonversi1.Nilai:= Mastertotal.AsFloat;
          MemMasterterbilang.AsString:= DM.MyKonversi1.HasilKonversi;

          if Masterdt_prepared.IsNull then MemMasterdt_prepared.AsString:= 'TGL :'
          else MemMasterdt_prepared.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_prepared.AsDateTime);

          if Masterdt_reviewed.IsNull then MemMasterdt_reviewed.AsString:= 'TGL :'
          else MemMasterdt_reviewed.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_reviewed.AsDateTime);

          if Masterdt_approved.IsNull then MemMasterdt_approved.AsString:= 'TGL :'
          else MemMasterdt_approved.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_approved.AsDateTime);


          MemMaster.Post;

           MemDetail.Close;
           MemDetail.Open;
           if Detail.RecordCount<9 then begin
              row_count:= 9-Detail.RecordCount;
              Detail.DisableControls;
              try
                Detail.First;
                while not Detail.Eof do begin
                  MemDetail.Append;
                  MemDetailnomor.AsString:= Detailnomor.AsString;
                  MemDetaildiskripsi.AsString:= Detaildiskripsi.AsString;
                  MemDetailid_rek_gl.AsString:= Detailid_rek_gl.AsString;
                  MemDetailno_kasbon.AsString:= Detailno_kasbon.AsString;
                  MemDetailnk.AsString:= Detailnama_pegawai.AsString;
                  MemDetailjumlah.AsFloat:= Detailjumlah.AsFloat;
                  MemDetailjumlah_str.AsString:= FormatFloat('0.0,0',Detailjumlah.AsFloat);
                  MemDetail.Post;
                  Detail.Next;
                end;
                for i:=1  to row_count do begin
                  MemDetail.Append;
                  MemDetailnomor.AsString:= '';
                  MemDetaildiskripsi.AsString:= '';
                  MemDetailid_rek_gl.AsString:= '';
                  MemDetailno_kasbon.AsString:= '';
                  MemDetailnk.AsString:= '';
                  MemDetailjumlah.Clear;
                  MemDetailjumlah_str.AsString:= '';
                  MemDetail.Post;
                end;
              finally
                 Detail.First;
                 Detail.EnableControls;
              end;
           end else begin
             Detail.DisableControls;
             try
               Detail.First;
                while not Detail.Eof do begin
                  MemDetail.Append;
                  MemDetailnomor.AsString:= Detailnomor.AsString;
                  MemDetaildiskripsi.AsString:= Detaildiskripsi.AsString;
                  MemDetailid_rek_gl.AsString:= Detailid_rek_gl.AsString;
                  MemDetailno_kasbon.AsString:= Detailno_kasbon.AsString;
                  MemDetailnk.AsString:= Detailnama_pegawai.AsString;
                  MemDetailjumlah.AsFloat:= Detailjumlah.AsFloat;
                  MemDetailjumlah_str.AsString:=FormatFloat('0.0,0',Detailjumlah.AsFloat);
                  MemDetail.Post;
                  Detail.Next;
                end;
             finally
                Detail.First;
                Detail.EnableControls;
             end;
           end;
           frPR.ShowReport;
         except
          on E: Exception do
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
         end;
     end
     else begin
         qryRekap.Close;
         qryRekap.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
         qryRekap.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
         qryRekap.Open;

         frxRepMaster.ShowReport();
     end;

end;

procedure TSettlementFrm.LblDisetujuiClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
    Exit;

  if not (Detail.State=dsBrowse) then begin
    MessageBox(0, 'SETTLEMENT Detail not saved yet !, Please Save it first.', 'Warning', MB_ICONWARNING or MB_OK);
    exit
  end;

  try
    DM.LReviewer.Close;
    DM.LReviewer.Params.ParamByName('ptag').Value:= vtag;
    DM.LReviewer.Open;
    if LookReviewer.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       Masterreviewed_by.AsString:= DM.LReviewervuser.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TSettlementFrm.LbLDiterimaClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
    Exit;

  if not (Detail.State=dsBrowse) then begin
    DM.MyMsg(mmWarning,'SETTLEMENT Detail not saved yet !, Please Save it first.','') ;
    exit;
  end;

  try
    DM.LApprover.Close;
    DM.LApprover.Params.ParamByName('ptag').Value:= vtag;
    DM.LApprover.Open;
    if LookApprover.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       Masterapproved_by.AsString:= DM.LApprovervuser.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TSettlementFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end;

  if (Master.State=dsInsert) or (Master.State=dsEdit) then
     Master.Post;

end;

procedure TSettlementFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TSettlementFrm.DetailBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;
  if not DM.isSuperUser then
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
end;

procedure TSettlementFrm.DetailBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;
  if not DM.isSuperUser then
    if not CheckEditRight(msg) then
      raise Exception.Create(msg);

  if (Master.State=dsInsert) or (Master.State=dsEdit) then
       Master.Post;    
end;

procedure TSettlementFrm.btnSubmitClick(Sender: TObject);
var s: string;
    temp : Int64;
begin
//   if Master.RecordCount=0 then
//      Exit;
//
//   if not SameText(Masterusr_ins.AsString,DM.UserConnect) then begin
//    MessageBox(0, PChar('This document is created by '+Masterusr_ins.AsString+'. You have no right to submit it.'), 'Warning', MB_ICONWARNING or MB_OK);
//    Exit;
//  end;
//
//  if Trim(Masterispost.AsString)='1' then begin
//    MessageBox(0, PChar('This document has been Posted.'+#13#10+'You have to unpost it first !'), 'Warning', MB_ICONWARNING or MB_OK);
//    Exit
//  end;
//
//  if Masterqc_inspector.IsNull or (Trim(Masterqc_inspector.AsString)='') then begin
//    MessageBox(0, 'QC Inspector must be Initialized !', 'Warning', MB_ICONWARNING or MB_OK);
//    Exit
//  end else
//  if Masterreviewed.IsNull or (Trim(Masterreviewed.AsString)='') then begin
//    MessageBox(0, 'REVIEWED BY must be Initialized !', 'Warning', MB_ICONWARNING or MB_OK);
//    Exit
//  end;
//
//  if SameText(Masterstatus_auth.AsString,'PREPARED') then begin
//     // Send Massage to Reviewer First Time
//    if not DM.Send_Messages(Masterqc_inspector.AsString,
//                            'Request for MRIR QC Inspection',
//                            'Dear Mr/Mrs. '+Masterlqc_inspect_name.AsString+','+#13#10#13#10+
//                            'Please check Material Receiving Inspection Report document with index no : '+Masterstok_no.AsString+' for QC Inspection authorization as soon as possible.'+#13#10+
//                            'Thank you for your attention.',
//                            'MRIR',
//                            Masterstok_no.AsString,
//                            '2',
//                            s) then
//      MessageBox(0, PChar('Error sending message ! '+#13#10+'Error : '+s), 'Error', MB_ICONERROR or MB_OK)
//    else
//      MessageBox(0, PChar('Message has been sent to QC Inspector !'), 'Information', MB_ICONINFORMATION or MB_OK)
//  end else
//  begin
//    if SameText(Masterstatus_auth.AsString,'QC-REJECTED') then begin
//       // Send Massage to Reviewer Again
//      if not DM.Send_Messages(Masterqc_inspector.AsString,
//                              'Request for MRIR QC Inspection (with suggested revision)',
//                              'Dear Mr/Mrs. '+Masterlqc_inspect_name.AsString+','+#13#10#13#10+
//                              'MC Inspector has revised Material Receiving Inspection Report document with index no : '+Masterstok_no.AsString+'.'+#13#10+
//                              'Please check again the document for QC Inspection authorization as soon as possible.'+#13#10+
//                              'Thank you for your attention.',
//                              'MRIR',
//                              Masterstok_no.AsString,
//                              '2',
//                              s) then
//        MessageBox(0, PChar('Error sending message ! '+#13#10+'Error : '+s), 'Error', MB_ICONERROR or MB_OK)
//      else
//        MessageBox(0, PChar('Message has been sent to QC Inspector !'), 'Information', MB_ICONINFORMATION or MB_OK)
//    end;
//  end;
//
end;

procedure TSettlementFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_settlement').Value:= qBrowseid_settlement.AsLargeInt;
end;

procedure TSettlementFrm.btnCancelClick(Sender: TObject);
begin
   if DM.MyMsg(mmConfirmation,'Do you want to Cancel this data ?','')=101 then
      Exit;
   try
      Master.Cancel;
      Detail.Cancel;
      Master.CancelUpdates;
      Detail.CancelUpdates;
   except
       on E: Exception do
         DM.MyMsg(mmError,'Error has been encountered !',E.Message);
   end;
   DBMode:=dmBrowse;
   UpdateView;
end;

procedure TSettlementFrm.btnSaveClick(Sender: TObject);
begin
  if (MessageBox(0, PChar('Warning ! '+#13#10+
                            'Once Applied, this document become Un-Edited.'+#13#10+
                            'Do you want to Applied this document?'),
                            'Confirmation', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

 // init the rek_gl_expense value (less or greater);


  if Trim(Masterno_settlement.AsString)='' then begin
     if Master.State=dsBrowse then
        Master.Edit;
      qryGet_SETTLE_number.Close;
      qryGet_SETTLE_number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
      qryGet_SETTLE_number.Open;
      Masterno_settlement.AsString:= qryGet_SETTLE_numbersettle_number.AsString;
  end;


  DM.StartTransaction;
  try

   if (Master.State=dsInsert) or (Master.State=dsEdit) then
       Master.Post;
   if (Detail.State=dsInsert) or (Detail.State=dsEdit) then
       Detail.Post;

   Master.ApplyUpdates;
   Detail.ApplyUpdates;
   Master.CommitUpdates;
   Detail.CommitUpdates;


   qrySubTotal.Close;
   qrySubTotal.Params.ParamByName('pid_settlement').Value:= Masterid_settlement.Value;
   qrySubTotal.Open;

   if Master.State=dsBrowse then
      Master.Edit;
   Mastertotal.AsFloat:= qrySubTotalsub_total.AsFloat;
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

procedure TSettlementFrm.pgcMasterChange(Sender: TObject);
begin
   if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_settlement').Value:= Masterid_settlement.Value;
     Detail.Open;
  end;
end;

procedure TSettlementFrm.grddbtvBrowse_POCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgcMaster.ActivePageIndex:= 1;
end;

procedure TSettlementFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TSettlementFrm.btnCariClick(Sender: TObject);
begin
  pnlSearch.Visible:= not pnlSearch.Visible
end;

procedure TSettlementFrm.FormCreate(Sender: TObject);
begin
  cbFieldName.Clear;
  cbFieldName.Properties.Items.Add('Index No');
  cbFieldName.Properties.Items.Add('Settlement No..');
end;

procedure TSettlementFrm.cbFieldNamePropertiesChange(Sender: TObject);
begin
  case cbFieldName.ItemIndex of
    0: edtSearch.SearchField:= 'id_settlement';
    1: edtSearch.SearchField:= 'no_settlement';
  end;
end;

procedure TSettlementFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;
  
 if Master.State=dsBrowse then
    Master.Edit;
 Mastertotal.Value:= vSubTotal;
 Master.Post;
end;

procedure TSettlementFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
end;

procedure TSettlementFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
  qBrowse.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
end;

procedure TSettlementFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TSettlementFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TSettlementFrm.tabDetailShow(Sender: TObject);
begin
   try
     Master.Close;
     Master.Open;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
   end;
end;

procedure TSettlementFrm.btnOKClick(Sender: TObject);
begin
   try
     qBrowse.Close;
     qBrowse.Open;
     DBMode:= dmBrowse;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
   end;
   UpdateView;
end;

procedure TSettlementFrm.dbnMasterClick(Sender: TObject;
  Button: TNavigateBtn);
begin
   try
     Master.Close;
     Master.Open;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
   end;
end;

procedure TSettlementFrm.grddbtvDetailid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TSettlementFrm.ER_LCB_REK_GLPropertiesCloseUp(Sender: TObject);
begin
    Detailid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString
end;

procedure TSettlementFrm.grddbtvDetailno_kasbonGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_NO_KASBON.Properties ;
     try
       qryKasBon.Close;
       qryKasBon.Params.ParamByName('pnk').AsString:= Masternk.AsString;
       qryKasBon.Open;
     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end;
     end;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TSettlementFrm.ER_LCB_NO_KASBONPropertiesCloseUp(
  Sender: TObject);
begin
   Detailno_kasbon.AsString:= qryKasBonno_kasbon.AsString;
   Detaildiskripsi.AsString:= 'Angsuran Kasbon No. : '+qryKasBonno_kasbon.AsString+' Untuk '+qryKasBonkasbon_untuk.AsString;
   Detailid_rek_gl.AsString:= qryKasBonid_rek_gl.AsString;
   Detailjumlah.AsFloat:= qryKasBonsisa.AsFloat;
end;

procedure TSettlementFrm.edtKodeRekPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;
    try
      qryPegawai.Close;
      qryPegawai.Open;

      if LookPegawai.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masternk.AsString:= qryPegawaink.AsString;
      end;
    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

end.


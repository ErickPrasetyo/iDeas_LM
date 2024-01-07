unit U_MemorialUli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, ADODB,
  cxEditRepositoryItems, cxDBEditRepository, frxClass, ZDataset, frxDBSet,
  ZSequence, kbmMemTable, frxExportRTF, frxExportPDF, frxExportXLS,
  wwDialog, wwidlg, AdvToolBar, AdvToolBarStylers, ZAbstractRODataset,
  ZAbstractDataset, ActnList, cxGridBandedTableView, cxGridTableView,
  AdvPanel, AdvAppStyler, DBCtrls, ExtCtrls, SCStdControls, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel, cxGroupBox,
  cxMaskEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMemo, StdCtrls, RzPanel,
  cxContainer, wwdbdatetimepicker, SCControl, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, AdvGlowButton, AdvReflectionImage,
  cxButtonEdit, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TMemorialUliFrm = class(TForm)
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
    grddbtvMasterdescription: TcxGridDBColumn;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
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
    cebPosted: TcxDBCheckBox;
    cbCenceled: TcxDBCheckBox;
    GroupBox1: TGroupBox;
    MemRemarks: TcxDBMemo;
    edtKode: TcxDBTextEdit;
    edtOrdering: TcxDBTextEdit;
    edtDateEdit: TcxDBDateEdit;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    dbagbAddDetail: TDBAdvGlowButton;
    dbagbDeleteDetail: TDBAdvGlowButton;
    dbagbEditDetail: TDBAdvGlowButton;
    dbagbSaveDetail: TDBAdvGlowButton;
    dbagbCancelDetail: TDBAdvGlowButton;
    dbagbRefreshDetail: TDBAdvGlowButton;
    grdDetail: TcxGrid;
    grdDetailDBBTV: TcxGridDBTableView;
    grdlvl_Detail: TcxGridLevel;
    SCPanel1: TSCPanel;
    pnlPrepared: TPanel;
    LblL_Prepared: TLabel;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    dbt_UserPrepared: TDBText;
    pnlApproved: TPanel;
    LbL_Approved_1: TLabel;
    lblApprover_1: TLabel;
    _DB_Name_4: TDBText;
    dbt_UserApproved: TDBText;
    pnlReviewed_1: TPanel;
    LblL_Reviewed_1: TLabel;
    lblReviewer_1: TLabel;
    _DB_Name_2: TDBText;
    dbt_UserReviewed: TDBText;
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
    Detail: TZQuery;
    dsDetail: TDataSource;
    ATBOS: TAdvToolBarOfficeStyler;
    LookReviewer: TwwLookupDialog;
    LookApprover: TwwLookupDialog;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    sq_Jurnal: TZSequence;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    qryGet_JU_Number: TZQuery;
    qryDetailTotal: TZReadOnlyQuery;
    Masterid_jurnal: TLargeintField;
    Masterno_jurnal: TStringField;
    Masterdt_jurnal: TDateTimeField;
    Masterno_bukti: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterid_trans: TStringField;
    Masterkurs: TFloatField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Masterremark: TStringField;
    Masterprepared_by: TStringField;
    Masterdebet: TFloatField;
    Masterkredit: TFloatField;
    Masterperuntukan: TStringField;
    Masterlpreparer: TStringField;
    Masterlreviewer: TStringField;
    Masterlapprover: TStringField;
    Detailnomor: TIntegerField;
    Detailid_jurnal: TLargeintField;
    Detailid_jurnal_detail: TLargeintField;
    Detailno_reff: TStringField;
    Detailid_rek_gl: TStringField;
    Detaildescription: TStringField;
    Detaildebet: TFloatField;
    Detailkredit: TFloatField;
    grdDetailDBBTVid_rek_gl: TcxGridDBColumn;
    grdDetailDBBTVdebet: TcxGridDBColumn;
    grdDetailDBBTVkredit: TcxGridDBColumn;
    grdDetailDBBTVnomor: TcxGridDBColumn;
    grdDetailDBBTVno_reff: TcxGridDBColumn;
    grdDetailDBBTVdescription: TcxGridDBColumn;
    qryDetailTotaltotal_debet: TFloatField;
    qryDetailTotaltotal_kredit: TFloatField;
    sq_Jurnal_detail: TZSequence;
    qryUpdate: TZReadOnlyQuery;
    frReport: TfrxReport;
    frxDBMaster: TfrxDBDataset;
    MemMaster: TkbmMemTable;
    MemMasterid_curr: TStringField;
    MemMastercaption: TStringField;
    MemMasterterbilang: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterprepared_name: TStringField;
    MemMasterreviewed_name_1: TStringField;
    MemMasterapproved_name_1: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterdistribusi_document: TStringField;
    MemMasterprinted_by: TStringField;
    MemMastermodel: TStringField;
    MemMasterposted: TStringField;
    MemMasterkurs: TStringField;
    MemMastertotal_str: TStringField;
    MemDetail: TkbmMemTable;
    MemDetailno_reff: TStringField;
    MemDetailid_rek_gl: TStringField;
    MemDetailnomor: TIntegerField;
    MemDetaildescription: TStringField;
    frxDBDetail: TfrxDBDataset;
    MemDetaildebet: TStringField;
    MemDetailkredit: TStringField;
    MemMasterno: TStringField;
    MemMasterremarks: TStringField;
    MemMasterdt: TStringField;
    Label4: TLabel;
    Masterreviewed_by_1: TStringField;
    Masterapproved_by_1: TStringField;
    Masterreviewed_by_2: TStringField;
    Masterapproved_by_2: TStringField;
    Masterid_kurs: TStringField;
    qryGET_NO_REFF: TZQuery;
    qryGET_NO_REFFreff_number: TStringField;
    MemMasterdebet: TStringField;
    MemMasterkredit: TStringField;
    cxGroupBox3: TcxGroupBox;
    Label5: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cdblName: TcxDBLabel;
    cdblAddress: TcxDBLabel;
    qryRekanan: TZReadOnlyQuery;
    L_Nota: TZReadOnlyQuery;
    dsL_Nota: TDataSource;
    L_ID_REK_GL: TZReadOnlyQuery;
    L_ID_REK_GLvid_rek_gl: TStringField;
    L_ID_REK_GLdescriptions: TStringField;
    L_ID_REK_GLisdetail: TStringField;
    L_ID_REK_GLid_rek_gl: TStringField;
    dsL_ID_REK_GL: TDataSource;
    Masternama_rekanan: TStringField;
    Masteralamat_rekanan: TStringField;
    cxStyle5: TcxStyle;
    L_Notano_nota: TStringField;
    L_Notadt_nota: TDateTimeField;
    L_Notatotal: TFloatField;
    L_Notapembayaran: TFloatField;
    L_Notajenis: TStringField;
    EDT_REPO: TcxEditRepository;
    ADOConnection1: TADOConnection;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    lblTM: TSCLabel;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    EDT_REPOLookKodeRekening: TcxEditRepositoryLookupComboBoxItem;
    EDT_REPOTextItem1: TcxEditRepositoryTextItem;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
    qBrowseid_jurnal: TLargeintField;
    qBrowseno_jurnal: TStringField;
    qBrowsedt_jurnal: TDateTimeField;
    qBrowseremark: TStringField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsedebet: TFloatField;
    qBrowsenama_rekanan: TStringField;
    grddbtvMasterdebet: TcxGridDBColumn;
    grddbtvMasternama_rekanan: TcxGridDBColumn;
    Detailid_arus: TStringField;
    L_ARUS_KAS: TZReadOnlyQuery;
    L_ARUS_KASid_arus: TStringField;
    L_ARUS_KASdeskripsi: TStringField;
    dsL_ARUS_KAS: TDataSource;
    EDT_REPOLookARUSKAS: TcxEditRepositoryLookupComboBoxItem;
    EDT_REPOLookREKANAN: TcxEditRepositoryLookupComboBoxItem;
    Detailnama_rekening: TStringField;
    grdDetailDBBTVnama_rekening: TcxGridDBColumn;
    Masterkd_rekanan: TStringField;
    Detailkd_rekanan: TStringField;
    qBrowsekd_rekanan: TStringField;
    qBrowseusr_post: TStringField;
    qBrowsedt_post: TDateTimeField;
    grddbtvMasterusr_post: TcxGridDBColumn;
    grddbtvMasterdt_post: TcxGridDBColumn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EDT_REPO_REFF: TcxEditRepositoryLookupComboBoxItem;
    qryGet_JU_Numbernew_number: TStringField;
    LNota: TZReadOnlyQuery;
    LNotano_nota: TStringField;
    LNotadt_nota: TDateTimeField;
    LNotaid_division: TStringField;
    LNotakd_rekanan: TStringField;
    LNotakd_item: TStringField;
    LNotanilai: TFloatField;
    dsJenisRekanan: TDataSource;
    edtCustNo: TcxDBButtonEdit;
    qryRekanankd_rekanan: TStringField;
    qryRekanannama_rekanan: TStringField;
    LookRekanan: TwwLookupDialog;
    L_Notadiskripsi: TStringField;
    L_Notaid_rek_gl: TStringField;
    LblHutangUli: TSCLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure DetailBeforeInsert(DataSet: TDataSet);
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
    procedure lblTMClick(Sender: TObject);
    procedure EDT_REPOLookKodeRekeningPropertiesCloseUp(Sender: TObject);
    procedure EDT_REPOLookKodeRekeningPropertiesInitPopup(Sender: TObject);
    procedure grdDetailDBBTVid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure grdDetailDBBTVid_arusGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDetailDBBTVid_rekananGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDetailDBBTVno_reffGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure edtJenisPropertiesCloseUp(Sender: TObject);
    procedure edtCustNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EDT_REPO_REFFPropertiesCloseUp(Sender: TObject);
    procedure LblHutangUliClick(Sender: TObject);
  private
    { Private declarations }
    vjns_transaksi, vjns_gudang, vpo_trans, vjudul: string;
    vtag : integer;
    DBMode: TDBMode;
    OldPt : Tpoint;
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    procedure CloneDetail;
    function CheckDetail(id_item: string): Boolean;

  public
    { Public declarations }
  end;

var
  MemorialUliFrm: TMemorialUliFrm;

procedure ShowForm(ptransaksi : String; pnamamenu : String; ptag : integer);

implementation

uses U_DM, U_Status_Dialog, U_LookPiutangUli, U_LookHutangUli;

{$R *.dfm}

procedure ShowForm(ptransaksi : String; pnamamenu : String; ptag : integer);
var sts_dlg: TfrmStatus_Dialog;
begin
   try
    sts_dlg:= TfrmStatus_Dialog.Create(Application);
    sts_dlg.Reset_Progress;
    sts_dlg.Set_Min(1);
    sts_dlg.Set_Max(7);
    sts_dlg.Set_Status('Please wait, Execute action ...!!!');
    sts_dlg.Show;
    try
        MemorialUliFrm:= TMemorialUliFrm.Create(Application);
        sts_dlg.Progress_It;
        with MemorialUliFrm do begin
            vjns_transaksi:= ptransaksi;
            vtag:= ptag;
            DBMode:= dmNone;
            try
              DM.L_User.Close;
              DM.L_User.Open;
              sts_dlg.Progress_It;
              L_ARUS_KAS.Close;
              L_ARUS_KAS.Open;
              sts_dlg.Progress_It;
              qryRekanan.Close;
              qryRekanan.Open;
              sts_dlg.Progress_It;
              DM.L_JenisRekanan.Close;
              DM.L_JenisRekanan.Open;
              sts_dlg.Progress_It;
              DM.L_Rekanan.Close;
              DM.L_Rekanan.Open;
              sts_dlg.Progress_It;
              qBrowse.Close;
              qBrowse.Open;
              sts_dlg.Progress_It;
              Detail.Close;
              DBMode:= dmBrowse;
            except
              on E: Exception do begin
                DM.MyMsg(mmError,'Error has been encountered !',E.Message)
              end
            end;
            lblHeader1.Caption:= pnamamenu;
            Caption:= pnamamenu;
            UpdateView;
            ShowWindow(Handle, SW_Maximize);
            Show;
        end;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end;
   finally
     sts_dlg.Free;
   end;

end;

procedure TMemorialUliFrm.CloneDetail;
begin
  Detail.DisableControls;
  try
    try
      kmtCheckDetail.Close;
      kmtCheckDetail.Open;
      Detail.First;
      while not Detail.Eof do begin
        kmtCheckDetail.Append;
        kmtCheckDetailid_item.Value:= Detailno_reff.Value;
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

function TMemorialUliFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;


procedure TMemorialUliFrm.UpdateView;
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

    edtDateEdit.Properties.ReadOnly:= isBrowse;
    MemRemarks.Properties.ReadOnly:= isBrowse;
    LblL_Reviewed_1.Enabled:= not isBrowse;
    LbL_Approved_1.Enabled:= not isBrowse;
    edtCustNo.Properties.ReadOnly:= isBrowse;
    edtCustNo.Properties.Buttons[0].Visible:= not isBrowse;

    grdDetailDBBTV.OptionsData.Editing:=not isBrowse;
    grdDetailDBBTV.OptionsData.Appending:=not isBrowse;
    grdDetailDBBTV.OptionsData.Deleting:=not isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete
  end;
end;


function TMemorialUliFrm.CheckEditRight(var msg: string): Boolean;
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

function TMemorialUliFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TMemorialUliFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
end;

procedure TMemorialUliFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TMemorialUliFrm.actCloseExecute(Sender: TObject);
begin
   Close;
end;

procedure TMemorialUliFrm.actAddExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  try
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_jurnal').Value:= -1;
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

procedure TMemorialUliFrm.actEditExecute(Sender: TObject);
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

procedure TMemorialUliFrm.actDeleteExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

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
  UpdateView
end;

procedure TMemorialUliFrm.actRefreshExecute(Sender: TObject);
begin
  DBMode:= dmNone;
  try
    Master.Close;
    Master.Open;
    DBMode:= dmBrowse;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TMemorialUliFrm.actSaveExecute(Sender: TObject);
var s:String;
begin
  if (MessageBox(0, PChar('Peringatan ! '+#13#10+
//                            'Sekali disimpan, Dokumen ini tidak bisa dikoreksi.'+#13#10+
                            'Apakah data yang Anda masukkan sudah benar?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  DM.StartTransaction;
  try
    if Masterno_jurnal.AsString='' then begin
        qryGet_JU_Number.Close;
        qryGet_JU_Number.Open;
        if Master.State=dsBrowse then Master.Edit;
           Masterno_jurnal.AsString:= qryGet_JU_Numbernew_number.AsString;
    end;

    if (Master.State=dsInsert) or (Master.State=dsEdit) then
       Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit) then
       Detail.Post;

    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;

    qryDetailTotal.Close;
    qryDetailTotal.Params.ParamByName('pid_jurnal').Value:= Masterid_jurnal.Value;
    qryDetailTotal.Open;

    if qryDetailTotal.RecordCount=1 then begin
       if qryDetailTotaltotal_debet.AsFloat<>qryDetailTotaltotal_kredit.AsFloat then begin
          DM.MyMsg(mmError,'Total debet dan total kredit harus sama !','');
          Exit;
       end;
    end;

    Master.Edit;
    Masterdebet.AsFloat:= qryDetailTotaltotal_debet.AsFloat;
    Masterkredit.AsFloat:= qryDetailTotaltotal_kredit.AsFloat;
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

procedure TMemorialUliFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TMemorialUliFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;

  try

    L_Nota.Close;
    L_Nota.Params.ParamByName('pid_rekanan').Value:= Masterkd_rekanan.AsString;
    L_Nota.Open;
    if L_ID_REK_GL.State=dsInactive then begin
       L_ID_REK_GL.Close;
       L_ID_REK_GL.Open;
    end;

    if L_ARUS_KAS.State=dsInactive then begin
       L_ARUS_KAS.Close;
       L_ARUS_KAS.Open;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TMemorialUliFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterdt_jurnal.IsNull then
      raise Exception.Create('Tanggal Memorial harus diisi!');

  if Master.State=dsInsert then begin
      Masterid_jurnal.AsLargeInt:= sq_Jurnal.GetNextValue;
      Masterusr_ins.AsString:= DM.UserConnect;
      Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
      Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_jurnal.AsLargeInt= -1 then
     raise Exception.Create('There is internal error (Id Jurnal not set). All input aborted !');
end;


procedure TMemorialUliFrm.MasterNewRecord(DataSet: TDataSet);
begin
    DM.vSysDate.Close;
    DM.vSysDate.Open;
    Masterdt_jurnal.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
    Masterid_kurs.AsString:='IDR';
    Masterkurs.AsFloat:=1;
    Masterdebet.AsFloat:=0;
    Masterkredit.AsFloat:=0;
    Masterremark.AsString:='-';
    Masterispost.AsString:= '0';
    Masteriscancel.AsString:= '0';
    Masterisdelete.AsString:= '0';
    Masterid_trans.AsString:= vjns_transaksi;
    Masterprepared_by.AsString:= DM.UserConnect;
    Masterperuntukan.AsString:= 'SUPPLIER';
    Masterkd_rekanan.AsString:= '00000';
    Masterno_bukti.AsString:= 'ULI';
end;

procedure TMemorialUliFrm.DetailNewRecord(DataSet: TDataSet);
begin

  Detailid_jurnal.AsLargeInt:= Masterid_jurnal.AsLargeInt;
  Detaildebet.AsFloat:=0;
  Detailkredit.AsFloat:=0;

  if Detail.RecNo=0 then
     Detailnomor.AsInteger:=1
  else
     Detailnomor.AsInteger:=Detail.RecNo;
end;

procedure TMemorialUliFrm.DetailBeforePost(DataSet: TDataSet);
begin
  if (Detailid_arus.IsNull) or (Detailid_arus.AsString='') then
      Detailid_arus.Clear;

  if (Detailkd_rekanan.IsNull) or (Detailkd_rekanan.AsString='') then
      Detailkd_rekanan.Clear;

  if (Detailid_rek_gl.IsNull) or (Detailid_rek_gl.AsString='') then
      Detailid_rek_gl.Clear;

  if (Detailid_rek_gl.IsNull) or (Detailid_rek_gl.AsString='') then
      raise Exception.Create('KODE REKENING belum diisi !');
  if (Detaildescription.IsNull) or (Detaildescription.AsString='') then
      raise Exception.Create('Diskripsi belum diisi !');
  if Detaildebet.IsNull then
      raise Exception.Create('Debet belum diisi !');
  if Detailkredit.IsNull then
      raise Exception.Create('Kredit belum diisi !');
  if (Detaildebet.AsFloat=0) and (Detailkredit.AsFloat=0) then
      raise Exception.Create('Debet atau Kredit salah satu harus diisi !');
  if (Detaildebet.AsFloat=Detailkredit.AsFloat)then
      raise Exception.Create('Debet dan Kredit tidak boleh sama !');

  if DataSet.State=dsInsert then begin
    if CheckDetail(Detailno_reff.Value) then begin
      raise Exception.Create('No. Reff sudah ada !')
    end
  end else
  if DataSet.State=dsEdit then begin
    if Detailno_reff.OldValue<>Detailno_reff.Value then begin
      if CheckDetail(Detailno_reff.Value) then begin
        raise Exception.Create('No. Reff sudah ada !')
      end
    end
  end;

  if Detail.State=dsInsert then
     Detailid_jurnal_detail.AsInteger:= sq_Jurnal_detail.GetNextValue;

  if Detailno_reff.IsNull or (Trim(Detailno_reff.AsString)='') then begin
     qryGET_NO_REFF.Close;
     qryGET_NO_REFF.Params.ParamByName('pseq').Value:= 'accfin.sq_no_reff';
     qryGET_NO_REFF.Open;
     Detailno_reff.AsString:= qryGET_NO_REFFreff_number.AsString;
  end;
end;

procedure TMemorialUliFrm.actCancelExecute(Sender: TObject);
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

procedure TMemorialUliFrm.btnPrintClick(Sender: TObject);
var msg: string;
   i, row_count: Integer;
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
   MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
   MemInfoPerusahaan.Post;

  MemMaster.Close;
  MemMaster.Open;
  MemMaster.Append;
  MemMasterno.AsString:= Masterno_jurnal.AsString;
  MemMasterremarks.AsString:= Masterremark.AsString;

  if Masterdt_jurnal.IsNull then MemMasterdt.AsString:= ''
  else MemMasterdt.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_jurnal.AsDateTime);

  if Masterispost.AsString='1' then MemMasterposted.AsString:= 'POSTED'
  else MemMasterposted.Clear;

  if Masterdt_jurnal.IsNull then MemMasterdt_prepared.AsString:= ''
  else MemMasterdt_prepared.AsString:= 'TGL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_jurnal.AsDateTime);

  MemMasterdt_reviewed_1.AsString:= 'TGL :';

  MemMasterprepared_name.AsString:= Masterlpreparer.AsString;
  MemMasterreviewed_name_1.AsString:= Masterlreviewer.AsString;
  MemMasterapproved_name_1.AsString:= Masterlapprover.AsString;

  MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
  MemMastermodel.AsString:= 'MM-'+vjns_transaksi;
  MemMasterdebet.AsString:= FormatFloat('#,##0.00;(#,##0.00)',Masterdebet.AsFloat);
  MemMasterkredit.AsString:= FormatFloat('#,##0.00;(#,##0.00)',Masterkredit.AsFloat);
  DM.MyKonversi1.Nilai:= Masterdebet.AsFloat;
  MemMasterterbilang.AsString:= DM.MyKonversi1.HasilKonversi;
  MemMastercaption.AsString:= UpperCase('Jurnal Umum');
//  QDocDistribute.Close;
//  QDocDistribute.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
//  QDocDistribute.Open;
//  MemMasterdistribusi_document.AsString:= QDocDistributedoc_ditribution.AsString;
  MemMaster.Post;

    MemDetail.Close;
    MemDetail.Open;
    if Detail.RecordCount<8 then begin
      row_count:= 8-Detail.RecordCount;
      Detail.DisableControls;
      try
        Detail.First;
        while not Detail.Eof do begin
          MemDetail.Append;
          MemDetailnomor.AsString:= IntToStr(Detailnomor.AsInteger);
          MemDetailno_reff.AsString:= Detailno_reff.AsString;
          MemDetaildescription.AsString:= Detaildescription.AsString;
          MemDetailid_rek_gl.AsString:= Detailid_rek_gl.AsString;
          MemDetaildebet.AsString:= FormatFloat('#,##0.00;(#,##0.00)', Detaildebet.AsFloat);
          MemDetailkredit.AsString:= FormatFloat('#,##0.00;(#,##0.00)', Detailkredit.AsFloat);
          MemDetail.Post;
          Detail.Next;
        end;
        for i := 1 to row_count do begin
          MemDetail.Append;
          MemDetailnomor.AsString:= '';
          MemDetailno_reff.AsString:= '';
          MemDetaildescription.AsString:= '';
          MemDetailid_rek_gl.AsString:= '';
          MemDetaildebet.Clear;
          MemDetailkredit.Clear;
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
          MemDetailnomor.AsString:= IntToStr(Detailnomor.AsInteger);
          MemDetailno_reff.AsString:= Detailno_reff.AsString;
          MemDetaildescription.AsString:= Detaildescription.AsString;
          MemDetailid_rek_gl.AsString:= Detailid_rek_gl.AsString;
          MemDetaildebet.AsString:= FormatFloat('#,##0.00;(#,##0.00)', Detaildebet.AsFloat);
          MemDetailkredit.AsString:= FormatFloat('#,##0.00;(#,##0.00)', Detailkredit.AsFloat);
          MemDetail.Post;
          Detail.Next;
        end;
      finally
        Detail.First;
        Detail.EnableControls
      end
    end;
 frReport.ShowReport;
end;

procedure TMemorialUliFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_jurnal').Value:= qBrowseid_jurnal.AsLargeInt;
end;

procedure TMemorialUliFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;

end;

procedure TMemorialUliFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    exit;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TMemorialUliFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TMemorialUliFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TMemorialUliFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   pgTransaction.ActivePageIndex:=1;
end;

procedure TMemorialUliFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
   AllowChange:=(DBMode=dmBrowse) or (DBMode=dmNone);
end;

procedure TMemorialUliFrm.pgTransactionChange(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_jurnal').Value:= Masterid_jurnal.Value;
     Detail.Open;
  end;
end;

procedure TMemorialUliFrm.EditKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
end;

procedure TMemorialUliFrm.MemRemarksKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grdDetailDBBTV.GetColumnByFieldName('no_reff').FocusWithSelection;
    end;
end;

procedure TMemorialUliFrm.lblTMClick(Sender: TObject);
var f : TLookPiutangUliFrm;
    s : String;
begin
   if DBMode=dmBrowse then
     Exit;

  try
      if Master.State<>dsBrowse then Master.Post;

//      qryUpdate.Close;
//      qryUpdate.SQL.Clear;
//      qryUpdate.Params.Clear;
//      s:= 'select * from accfin.fn_get_piutang_lain()';
//      qryUpdate.SQL.Add(s);
//      qryUpdate.Open;

//      if qryUpdate.RecordCount>0 then begin
         try
           f:= TLookPiutangUliFrm.Create(Application);
           Detail.DisableControls;
           if f.ShowModal=mrYEs then begin
              if f.kmtPR.RecordCount>0 then begin
                 try
                    if f.kmtPR.State=dsEdit then
                       f.kmtPR.Post;
                    f.kmtPR.First;
                    while not f.kmtPR.Eof do begin
                      if (f.kmtPRispilih.AsString='1') then begin
                        Detail.Append;
                        Detailno_reff.AsString:= f.kmtPRno_nota.AsString;
                        Detaildescription.AsString:= f.kmtPRdiskripsi.AsString;
                        Detailid_rek_gl.AsString:= f.kmtPRid_rek_gl.AsString;
                        Detaildebet.AsFloat:= 0;
                        Detailkredit.AsFloat:= f.kmtPRnilai.AsFloat;
                        Detail.Post;
                      end;
                      f.kmtPR.Next;
                    end;
                 except
                    on E: Exception do
                      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
                 end;
              end;

          end;

         finally
            f.Free;
            Detail.EnableControls;
         end;  // END OF ITEM BON

  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;

end;

procedure TMemorialUliFrm.EDT_REPOLookKodeRekeningPropertiesCloseUp(
  Sender: TObject);
begin
   Detailid_rek_gl.AsString:= L_ID_REK_GLid_rek_gl.AsString;
end;

procedure TMemorialUliFrm.EDT_REPOLookKodeRekeningPropertiesInitPopup(
  Sender: TObject);
begin
    try
      L_ID_REK_GL.Close;
      L_ID_REK_GL.Open;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

procedure TMemorialUliFrm.grdDetailDBBTVid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := EDT_REPOLookKodeRekening.Properties
  else
     AProperties := EDT_REPOTextItem1.Properties;
end;

procedure TMemorialUliFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TMemorialUliFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TMemorialUliFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.ParamByName('pid_trans').Value:= vjns_transaksi;
end;

procedure TMemorialUliFrm.btnOKClick(Sender: TObject);
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

procedure TMemorialUliFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TMemorialUliFrm.grdDetailDBBTVid_arusGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
     AProperties := EDT_REPOLookARUSKAS.Properties
  else
     AProperties := EDT_REPOTextItem1.Properties;
end;

procedure TMemorialUliFrm.grdDetailDBBTVid_rekananGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
     AProperties := EDT_REPOLookREKANAN.Properties
  else
     AProperties := EDT_REPOTextItem1.Properties;
end;

procedure TMemorialUliFrm.grdDetailDBBTVno_reffGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
     AProperties := EDT_REPO_REFF.Properties
  else
     AProperties := EDT_REPOTextItem1.Properties;
end;

procedure TMemorialUliFrm.edtJenisPropertiesCloseUp(Sender: TObject);
begin
   if Master.State=dsBrowse then
      Master.Edit;
   Masterperuntukan.AsString:= DM.L_JenisRekanandescription.AsString;
end;

procedure TMemorialUliFrm.edtCustNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;


//    qryRekanan.Close;
//    if UpperCase(Trim(edtJenis.Text))='OUTLET' then
//         qryRekanan.Params.ParamByName('pjenis').AsString:= 'CUSTOMER'
//    else qryRekanan.Params.ParamByName('pjenis').AsString:= UpperCase(Trim(edtJenis.Text));
//    qryRekanan.Open;

//    try
//      if LookRekanan.Execute then begin
//        if Master.State=dsBrowse then
//           Master.Edit;
//        Masternama_rekanan.Value:= qryRekanannama_rekanan.AsString;
//        Masterkd_rekanan.Value:= qryRekanankd_rekanan.AsString;
//      end;
//    except
//    on E: Exception do
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//    end;
end;

procedure TMemorialUliFrm.EDT_REPO_REFFPropertiesCloseUp(Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

  Detailno_reff.AsString:= L_Notano_nota.AsString;
  Detaildescription.AsString:= L_Notadiskripsi.AsString;
  Detaildebet.AsFloat:= L_Notatotal.AsFloat;
  Detailid_rek_gl.AsString:= L_Notaid_rek_gl.AsString;
end;

procedure TMemorialUliFrm.LblHutangUliClick(Sender: TObject);
var f : TLookHutangUliFrm;
    s : String;
begin
   if DBMode=dmBrowse then
     Exit;

  try
      if Master.State<>dsBrowse then Master.Post;

        try
           f:= TLookHutangUliFrm.Create(Application);
           Detail.DisableControls;
           if f.ShowModal=mrYEs then begin
              if f.kmtPR.RecordCount>0 then begin
                 try
                    if f.kmtPR.State=dsEdit then
                       f.kmtPR.Post;
                    f.kmtPR.First;
                    while not f.kmtPR.Eof do begin
                      if (f.kmtPRispilih.AsString='1') then begin
                        Detail.Append;
                        Detailno_reff.AsString:= f.kmtPRno_doc.AsString;
                        Detaildescription.AsString:= f.kmtPRremarks.AsString;
                        Detailid_rek_gl.AsString:= f.kmtPRid_rek_gl.AsString;
                        Detaildebet.AsFloat:= f.kmtPRsisa_idr.AsFloat;
                        Detailkredit.AsFloat:= 0;
                        Detail.Post;
                      end;
                      f.kmtPR.Next;
                    end;
                 except
                    on E: Exception do
                      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
                 end;
              end;

          end;

         finally
            f.Free;
            Detail.EnableControls;
         end;  // END OF ITEM BON

  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;

end;

end.

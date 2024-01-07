unit U_KasirNonTunai;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, wwDialog, wwidlg,
  cxEditRepositoryItems, cxDBEditRepository, frxClass, ZDataset, frxDBSet,
  kbmMemTable, AdvToolBar, AdvToolBarStylers, ZSequence,
  ZAbstractRODataset, ZAbstractDataset, ActnList, cxGridBandedTableView,
  cxGridTableView, AdvPanel, AdvAppStyler, cxGridDBBandedTableView,
  DBCtrls, ExtCtrls, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxDBEdit, cxButtonEdit, cxDBLabel,
  cxGroupBox, RzPanel, cxTextEdit, cxMaskEdit, cxCalendar, cxContainer,
  cxLabel, StdCtrls, wwdbdatetimepicker, SCControl, SCStdControls,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, AdvGlowButton,
  AdvReflectionImage, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TKasirNonTunaiFrm = class(TForm)
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
    pnlMaster: TSCPanel;
    Label5: TLabel;
    edtDateEdit: TcxDBDateEdit;
    edtId_SO: TcxDBTextEdit;
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
    Shape7: TShape;
    Shape8: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label1: TLabel;
    RzGroupBox2: TRzGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    sq_Kasir: TZSequence;
    qryGet_KK_Number: TZQuery;
    Shape5: TShape;
    Shape6: TShape;
    ATBos: TAdvToolBarOfficeStyler;
    SCPanel1: TSCPanel;
    pnlPrepared: TPanel;
    LblL_Prepared: TLabel;
    dbt_UserPrepared: TDBText;
    _DB_TGL_1: TDBText;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    edtRemarks: TcxDBMemo;
    MemMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemDetail: TkbmMemTable;
    actPrint: TAction;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    qrySubTotal: TZReadOnlyQuery;
    qrySubTotalsub_total: TFloatField;
    grddbtvMasterdt_payment: TcxGridDBColumn;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    grddbtvMasterno_payment: TcxGridDBColumn;
    grddbtvMasterno_bukti: TcxGridDBColumn;
    grdDetail: TcxGrid;
    grdDetailDBBTV: TcxGridDBBandedTableView;
    grdlvl_Detail: TcxGridLevel;
    grdDetailDBBTVnomor: TcxGridDBBandedColumn;
    grdDetailDBBTVdescription: TcxGridDBBandedColumn;
    edtIdxNo: TcxDBTextEdit;
    Label6: TLabel;
    L_Nota: TZReadOnlyQuery;
    qryGET_NO_REFF: TZQuery;
    qryGET_NO_REFFreff_number: TStringField;
    qryUpdate: TZReadOnlyQuery;
    MemMasterno_payment: TStringField;
    MemMasterremark: TStringField;
    MemMasterbank: TStringField;
    MemMasteran: TStringField;
    MemMasteremployee: TStringField;
    MemMasterid_curr: TStringField;
    MemMasterno_bukti: TStringField;
    MemMasterid_cc_project: TStringField;
    MemDetailno_reff: TStringField;
    MemDetailid_rek_gl: TStringField;
    MemDetailnomor: TIntegerField;
    MemDetaildescription: TStringField;
    frPR: TfrxReport;
    MemMastercaption: TStringField;
    MemMasterdated: TStringField;
    MemMastersupplier: TStringField;
    MemMasterterbilang: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterprepared_name: TStringField;
    MemMasterreviewed_name_1: TStringField;
    MemMasterreviewed_name_2: TStringField;
    MemMasterdt_reviewed_2: TStringField;
    MemMasterapproved_name_1: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterapproved_name_2: TStringField;
    MemMasterdt_approved_2: TStringField;
    MemMasterdistribusi_document: TStringField;
    MemMasterprinted_by: TStringField;
    MemMastermodel: TStringField;
    MemMasterdt_payment: TStringField;
    MemMasterposted: TStringField;
    MemMasterkurs: TStringField;
    MemMastertotal_str: TStringField;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    L_ID_REK_KAS: TZReadOnlyQuery;
    L_ID_REK_KASid_rek_gl: TStringField;
    L_ID_REK_KASdescriptions: TStringField;
    dsL_ID_REK_KAS: TDataSource;
    edtRekGL: TcxDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    dsL_Nota: TDataSource;
    cxStyle5: TcxStyle;
    ER: TcxEditRepository;
    ER_LCB_REFF: TcxEditRepositoryLookupComboBoxItem;
    ER_EDT: TcxEditRepositoryTextItem;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    dsqBrowse: TDataSource;
    qBrowse: TZReadOnlyQuery;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    grddbtvMasterid_rek_gl: TcxGridDBColumn;
    ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_CC: TcxEditRepositoryLookupComboBoxItem;
    ER_LCB_ARUS: TcxEditRepositoryLookupComboBoxItem;
    Masterid_kas_kecil: TLargeintField;
    Masterdt_kas_kecil: TDateTimeField;
    Masterno_kas_kecil: TStringField;
    Masterketerangan: TStringField;
    Masteratas_nama: TStringField;
    Mastertotal: TFloatField;
    Masterid_trans: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Masterid_rek_gl: TStringField;
    Masterkd_rekanan: TStringField;
    Detailnomor: TIntegerField;
    Detailid_kas_kecil: TLargeintField;
    Detailid_kas_kecil_detail: TLargeintField;
    Detaildt_biaya: TDateTimeField;
    Detailisbukti: TStringField;
    Detailno_reff: TStringField;
    Detaildiskripsi: TStringField;
    Detaildebet: TFloatField;
    Detailkredit: TFloatField;
    Detailid_rek_gl: TStringField;
    qBrowseid_kas_kecil: TLargeintField;
    qBrowseno_kas_kecil: TStringField;
    qBrowsedt_kas_kecil: TDateTimeField;
    qBrowseid_rek_gl: TStringField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsenama_rekening: TStringField;
    Detailkd_rekanan: TStringField;
    grdDetailDBBTVdebet: TcxGridDBBandedColumn;
    grdDetailDBBTVkredit: TcxGridDBBandedColumn;
    Masterprepared_by: TStringField;
    Masterdt_prepared: TDateTimeField;
    edtCustNo: TcxDBButtonEdit;
    qryGet_KK_Numberkk_number: TStringField;
    Masterlprepared_name: TStringField;
    MemDetaildebet: TFloatField;
    MemDetailkredit: TFloatField;
    sq_Kasir_Detail: TZSequence;
    grdDetailDBBTVdt_biaya: TcxGridDBBandedColumn;
    grdDetailDBBTVkd_rekanan: TcxGridDBBandedColumn;
    Detailno_cek_bg_tt: TStringField;
    Detailbank: TStringField;
    grdDetailDBBTVno_cek_bg_tt: TcxGridDBBandedColumn;
    grdDetailDBBTVbank: TcxGridDBBandedColumn;
    ER_LCB_CUSTOMER: TcxEditRepositoryLookupComboBoxItem;
    L_Notano_nota: TStringField;
    L_Notadt_nota: TDateTimeField;
    L_Notano_bukti: TStringField;
    L_Notaid_division: TStringField;
    L_Notakd_rekanan: TStringField;
    L_Notanama_rekanan: TStringField;
    L_Notadiskripsi: TStringField;
    L_Notatotal: TFloatField;
    L_Notapembayaran: TFloatField;
    L_Notasisa: TFloatField;
    qBrowseatas_nama: TStringField;
    qBrowsedebet: TFloatField;
    qBrowsekredit: TFloatField;
    grddbtvMasterdebet: TcxGridDBColumn;
    grddbtvMasterkredit: TcxGridDBColumn;
    qryRekanan: TZReadOnlyQuery;
    qryRekanankd_rekanan: TStringField;
    qryRekanannama_rekanan: TStringField;
    LookRekanan: TwwLookupDialog;
    qBrowsediskripsi: TStringField;
    grdDetailDBBTVno_reff: TcxGridDBBandedColumn;
    qBrowseno_cek_bg_tt: TStringField;
    qBrowsebank: TStringField;
    qBrowsedt_biaya: TDateTimeField;
    grddbtvMasterno_cek_bg_tt: TcxGridDBColumn;
    grddbtvMasterbank: TcxGridDBColumn;
    grddbtvMasterdt_biaya: TcxGridDBColumn;
    Label4: TLabel;
    Masternama_salesman: TStringField;
    edtAtasNama: TcxDBTextEdit;
    qryCek: TZReadOnlyQuery;
    qryCekvcount: TLargeintField;
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
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure DetailBeforeEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure DetailBeforePost(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure DetailAfterOpen(DataSet: TDataSet);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure edtRekGLEnter(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure edtRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure grdDetailDBBTVid_rek_glGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure grdDetailDBBTVid_cc_projectGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_LCB_REFFPropertiesCloseUp(Sender: TObject);
    procedure grdDetailDBBTVno_reffGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure edtCustNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure F4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdDetailDBBTVkd_rekananGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure btnFirstClick(Sender: TObject);
    procedure edtDateEditPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    vjns_transaksi, vjudul, vNoKasir : string;
    vtag : integer;
    DBMode: TDBMode;
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
  KasirNonTunaiFrm: TKasirNonTunaiFrm;

implementation

uses U_DM;

{$R *.dfm}
procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);
begin
    try
      KasirNonTunaiFrm := TKasirNonTunaiFrm.Create(Application);
      with KasirNonTunaiFrm do begin
        vjns_transaksi:= ptransaksi;
        vtag:= ptag;
        DBMode:= dmNone;
        try
          DM.L_User.Close;
          DM.L_User.Open;
//          L_ID_REK_GL.Close;
//          L_ID_REK_GL.Open;
          L_ID_REK_KAS.Close;
          L_ID_REK_KAS.Open;
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

procedure TKasirNonTunaiFrm.CloneDetail;
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

function TKasirNonTunaiFrm.CheckDetail(id_item: string): Boolean;
begin
  Result:= False;
  try
    Result:= kmtCheckDetail.Locate('id_item',id_item,[loCaseInsensitive])
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

function TKasirNonTunaiFrm.CheckEditRight(var msg: string): Boolean;
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

function TKasirNonTunaiFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TKasirNonTunaiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TKasirNonTunaiFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TKasirNonTunaiFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TKasirNonTunaiFrm.actAddExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;
  vNoKasir:= '';
  try
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_kas_kecil').Value:= -1;
    Detail.Open;    
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView;
  edtRekGL.SetFocus;
end;

procedure TKasirNonTunaiFrm.actEditExecute(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=0 then
     pgTransaction.ActivePageIndex:= 1;

  vNoKasir:= Masterno_kas_kecil.AsString;
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

procedure TKasirNonTunaiFrm.actDeleteExecute(Sender: TObject);
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
      DBMode:= dmNone;      
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TKasirNonTunaiFrm.actRefreshExecute(Sender: TObject);
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

procedure TKasirNonTunaiFrm.actSaveExecute(Sender: TObject);
begin

 if (MessageBox(0, PChar('Peringatan ! '+#13#10+
//                            'Sekali disimpan, Dokumen ini tidak bisa dikoreksi.'+#13#10+
                            'Apakah data yang Anda masukkan sudah benar?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  DM.StartTransaction;
  try

    if Masterno_kas_kecil.AsString='' then begin
       if Master.State=dsBrowse then Master.Edit;
        qryGet_KK_Number.Close;
        qryGet_KK_Number.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
        qryGet_KK_Number.Params.ParamByName('ptgl').AsString:= FormatDateTime('dd-mm-yyyy',Masterdt_kas_kecil.AsDateTime);
        qryGet_KK_Number.Open;
        Masterno_kas_kecil.AsString:= qryGet_KK_Numberkk_number.AsString;
    end
    else begin
       if Masterno_kas_kecil.AsString<>vNoKasir then begin
           qryCek.Close;
           qryCek.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
           qryCek.Params.ParamByName('pnomor').AsString:= Masterno_kas_kecil.AsString;
           qryCek.Open;
           if qryCekvcount.AsInteger>0 then begin
              DM.MyMsg(mmInformation,'Nomor Kasir Sudah ada !','');
              Exit;
           end;
       end;
    end;

    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit)  then
        Detail.Post;
    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;

    qrySubTotal.Close;
    qrySubTotal.Params.ParamByName('pid_kas_kecil').Value:= Masterid_kas_kecil.Value;
    qrySubTotal.Open;

    Master.Edit;
    Mastertotal.AsFloat:= qrySubTotalsub_total.AsFloat;
    if (Master.State=dsInsert) or (Master.State=dsEdit)  then
        Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;

    DM.CommitTransaction;
    qBrowse.Refresh;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TKasirNonTunaiFrm.actCancelExecute(Sender: TObject);
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

procedure TKasirNonTunaiFrm.UpdateView;
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

    edtRekGL.Properties.ReadOnly := isBrowse;
    edtRekGL.Properties.Buttons[0].Visible:= not isBrowse;
    edtCustNo.Properties.ReadOnly:= isBrowse;
    edtCustNo.Properties.Buttons[0].Visible:= not isBrowse;
    edtRemarks.Properties.ReadOnly:= isBrowse;
    edtAtasNama.Properties.ReadOnly:= isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete;

    grdDetailDBBTV.OptionsData.Editing:=not isBrowse;
    grdDetailDBBTV.OptionsData.Appending:=not isBrowse;
    grdDetailDBBTV.OptionsData.Deleting:=not isBrowse;
  end;
end;

procedure TKasirNonTunaiFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TKasirNonTunaiFrm.grdDetailEnter(Sender: TObject);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TKasirNonTunaiFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterid_kas_kecil.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Detail.Close;
   Detail.Params.ParamByName('id_kas_kecil').Value:= Masterid_kas_kecil.Value;
   Detail.Open;
   Masterdt_kas_kecil.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterid_trans.AsString := vjns_transaksi;
   Mastertotal.AsFloat:= 0;


   DM.L_Transaction.Close;
   DM.L_Transaction.Params.ParamByName('pid_trans').Value:= vjns_transaksi ;
   DM.L_Transaction.Open;
   Masterprepared_by.AsString:= DM.UserConnect;
   DM.L_Perusahaan.Close;
   DM.L_Perusahaan.Open;
   Masterno_kas_kecil.AsString:= 'KN'+DM.L_Perusahaannomor_distributor.AsString+'-'+FormatDateTime('YYMM',DM.vSysDatedt_server.AsDateTime)+'-00000';

end;

procedure TKasirNonTunaiFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_kas_kecil.AsLargeInt:= Masterid_kas_kecil.AsLargeInt;

  Detaildebet.AsFloat:= 0;
  Detailkredit.AsFloat:= 0;
  Detailisbukti.AsString:= '0';


  if Detail.RecordCount<>0 then
    Detailnomor.AsInteger:= Detail.RecordCount + 1
  else
    Detailnomor.AsInteger:= 1;
end;

procedure TKasirNonTunaiFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterkd_rekanan.IsNull or (Trim(Masterkd_rekanan.AsString)='') then
    Masterkd_rekanan.Clear;

  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
     raise Exception.Create('JENIS KAS harus diisi !');

  if Master.State=dsInsert then begin
     Masterid_kas_kecil.AsLargeInt:= sq_Kasir.GetNextValue;
     Masterusr_ins.AsString:= DM.UserConnect;
     Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
     Masterusr_upd.AsString:= DM.UserConnect;
  if Masterid_kas_kecil.AsLargeInt= -1 then
    raise Exception.Create('There is internal error (id_payment not set). All input aborted !');
end;

procedure TKasirNonTunaiFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_kas_kecil').Value:= Masterid_kas_kecil.Value;
     Detail.Open;
  end;
end;

procedure TKasirNonTunaiFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TKasirNonTunaiFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TKasirNonTunaiFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_kas_kecil').Value:= qBrowseid_kas_kecil.AsLargeInt;
end;

procedure TKasirNonTunaiFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
    if Master.State<>dsBrowse then
       Master.Post;
end;

procedure TKasirNonTunaiFrm.actPrintExecute(Sender: TObject);
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
   MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
   MemInfoPerusahaan.Post;

        
//  DM.QDocDistribute.Close;
//  DM.QDocDistribute.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
//  DM.QDocDistribute.Open;

  MemMaster.Close;
  MemMaster.Open;
  MemMaster.Append;
  MemMasterno_payment.AsString:= Masterno_kas_kecil.AsString;
  MemMasterprepared_name.AsString:= Masterlprepared_name.AsString;
  MemMasterreviewed_name_1.AsString:= '';
  MemMasterapproved_name_1.AsString:= '';
//  MemMasterreviewed_name_2.AsString:= Masterlreviewed_name_2.AsString;
//  MemMasterapproved_name_2.AsString:= Masterlapproved_name_2.AsString;
  MemMasterprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
  MemMastermodel.AsString:= 'KK-'+vjns_transaksi;
//  MemMasterdistribusi_document.AsString:= DM.QDocDistributedoc_ditribution.AsString;
  MemMastersupplier.AsString:= Masteratas_nama.AsString;
  MemMasterremark.AsString:= Masterketerangan.AsString;
  MemMastercaption.AsString:= UpperCase(vjudul);
  MemMasterid_cc_project.AsString:= '';
  MemMasterid_curr.AsString:= '';
  MemMasterkurs.AsString:= '';
  DM.MyKonversi1.Nilai:= Mastertotal.AsFloat;
  MemMasterterbilang.AsString:= DM.MyKonversi1.HasilKonversi;
  MemMastertotal_str.AsString:= FormatFloat('0.0,0', Mastertotal.AsFloat);


  if Masterispost.AsString='1' then MemMasterposted.AsString:= 'POSTED'
  else MemMasterposted.AsString:= '';

  if Masterdt_kas_kecil.IsNull then MemMasterdt_payment.AsString:= ''
  else MemMasterdt_payment.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_kas_kecil.AsDateTime);

  if Masterdt_prepared.IsNull then MemMasterdt_prepared.AsString:= 'TGL : '
  else MemMasterdt_prepared.AsString:= 'TGL : '+FormatDateTime('dd-mmm-yyyy', Masterdt_prepared.AsDateTime);




  MemMaster.Post;

    MemDetail.Close;
    MemDetail.Open;
      Detail.DisableControls;
      try
        Detail.First;
        while not Detail.Eof do begin
          MemDetail.Append;
          MemDetailnomor.AsInteger:= Detailnomor.AsInteger;
          MemDetailno_reff.AsString:= Detailno_reff.AsString;
          MemDetaildescription.AsString:= Detaildiskripsi.AsString;
          MemDetailid_rek_gl.AsString:= Detailid_rek_gl.AsString;
          if Detaildebet.AsFloat>0 then
             MemDetaildebet.AsFloat:= Detaildebet.AsFloat
          else MemDetaildebet.AsFloat:= Detailkredit.AsFloat;
          MemDetailkredit.AsFloat:= 0;
          MemDetail.Post;
          Detail.Next;
        end;
      finally
        Detail.First;
        Detail.EnableControls
      end;
 frPR.ShowReport;
end;

procedure TKasirNonTunaiFrm.DetailBeforePost(DataSet: TDataSet);
begin
  if Detaildt_biaya.IsNull or (Trim(Detaildt_biaya.AsString)='') then
     Detaildt_biaya.Clear;
  if Detailkd_rekanan.IsNull or (Trim(Detailkd_rekanan.AsString)='') then
     Detailkd_rekanan.Clear;
  if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
     Detailid_rek_gl.Clear;
  if Detailkd_rekanan.IsNull or (Trim(Detailkd_rekanan.AsString)='') then
     Detailkd_rekanan.Clear;
  if Detailbank.IsNull or (Trim(Detailbank.AsString)='') then
     Detailbank.Clear;

  if DataSet.State=dsInsert then begin
    if CheckDetail(Detailno_reff.Value) then begin
      raise Exception.Create('NO. REFF sudah ada !')
    end
  end else
  if DataSet.State=dsEdit then begin
    if Detailno_reff.OldValue<>Detailno_reff.Value then begin
      if CheckDetail(Detailno_reff.Value) then begin
        raise Exception.Create('NO. REFF sudah ada !')
      end
    end
  end ;

  if Detail.State=dsInsert then
     Detailid_kas_kecil_detail.AsLargeInt:= sq_Kasir_Detail.GetNextValue;

  if Detaildebet.IsNull or (Trim(Detaildebet.AsString)='') then
    raise Exception.Create('DIBAYAR harus diisi !')
  else
  if Detaildiskripsi.IsNull or (Trim(Detaildiskripsi.AsString)='') then
    raise Exception.Create('Diskripsi harus diisi !')
  else
//  if Detailid_rek_gl.IsNull or (Trim(Detailid_rek_gl.AsString)='') then
//    raise Exception.Create('KODE REK harus diisi !')
//  else
//  if Detailid_arus.IsNull or (Trim(Detailid_arus.AsString)='') then
//    raise Exception.Create('ARUS KAS harus diisi !');
//  else
//  if Detaildibayar.AsFloat>Detailsisa.AsFloat then
//    raise Exception.Create('Dibayar lebih besar dari Sisa !');

//  if Detailid_rekanan.IsNull or (Trim(Detailid_rekanan.AsString)='') then begin
//     Detailid_rekanan.AsString:= Masterid_rekanan.AsString;
//  end;

  if Detailno_reff.IsNull or (Trim(Detailno_reff.AsString)='') then begin
     qryGET_NO_REFF.Close;
     qryGET_NO_REFF.Params.ParamByName('pseq').Value:= 'accfin.sq_no_reff_kk';
     qryGET_NO_REFF.Open;
     Detailno_reff.AsString:= qryGET_NO_REFFreff_number.AsString;
  end;

end;

procedure TKasirNonTunaiFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TKasirNonTunaiFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end

end;

procedure TKasirNonTunaiFrm.DetailAfterOpen(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TKasirNonTunaiFrm.DetailAfterPost(DataSet: TDataSet);
begin
  CloneDetail;
end;

procedure TKasirNonTunaiFrm.edtRekGLEnter(Sender: TObject);
begin
  try
    L_ID_REK_KAS.Close;
    L_ID_REK_KAS.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TKasirNonTunaiFrm.EditKeyPress(Sender: TObject; var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TKasirNonTunaiFrm.edtRemarksKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then begin
       Detail.Append;
       grdDetail.SetFocus;
       grdDetailDBBTV.GetColumnByFieldName('no_reff').FocusWithSelection;
    end;
end;

procedure TKasirNonTunaiFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TKasirNonTunaiFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end
end;

procedure TKasirNonTunaiFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
  qBrowse.ParamByName('pid_trans').Value:= vjns_transaksi;
end;

procedure TKasirNonTunaiFrm.btnOKClick(Sender: TObject);
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

procedure TKasirNonTunaiFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TKasirNonTunaiFrm.grdDetailDBBTVid_rek_glGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_REK_GL.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasirNonTunaiFrm.grdDetailDBBTVid_cc_projectGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then
        AProperties := ER_LCB_CC.Properties
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasirNonTunaiFrm.ER_LCB_REFFPropertiesCloseUp(Sender: TObject);
begin
   if Detail.State=dsBrowse then
      Exit;

  Detailno_reff.AsString:= L_Notano_nota.AsString;
  Detaildiskripsi.AsString:= L_Notadiskripsi.AsString;
  Detaildebet.AsFloat:= L_Notasisa.AsFloat;
  Detailkredit.AsFloat:= 0;
//  Detailid_rek_gl.AsString:= L_Notaid_rek_gl.AsString;
  Detailkd_rekanan.AsString:= L_Notakd_rekanan.AsString;
end;

procedure TKasirNonTunaiFrm.grdDetailDBBTVno_reffGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_REFF.Properties;
    try
      L_Nota.Close;
      L_Nota.Params.ParamByName('pid').Value:= Masterkd_rekanan.AsString;
      L_Nota.Open;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasirNonTunaiFrm.edtCustNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;


    qryRekanan.Close;
    qryRekanan.Params.ParamByName('pjenis').AsString:= 'SALESMAN';
    qryRekanan.Open;

    try
      if LookRekanan.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masteratas_nama.Value:= qryRekanannama_rekanan.AsString;
        Masterkd_rekanan.Value:= qryRekanankd_rekanan.AsString;
        Masternama_salesman.Value:= qryRekanannama_rekanan.AsString;
      end;
    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

procedure TKasirNonTunaiFrm.F4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   edtCustNoPropertiesButtonClick(Nil,0);
end;

procedure TKasirNonTunaiFrm.grdDetailDBBTVkd_rekananGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Detail.State in [dsInsert,dsedit] then begin
     AProperties := ER_LCB_CUSTOMER.Properties;
  end
  else
     AProperties := ER_EDT.Properties;
end;

procedure TKasirNonTunaiFrm.btnFirstClick(Sender: TObject);
begin
     try
       Detail.Close;
       Master.Close;
       Master.Open;
       Detail.Params.ParamByName('id_kas_kecil').Value:= Masterid_kas_kecil.AsLargeInt;
       Detail.Open;
     except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
     end;
end;

procedure TKasirNonTunaiFrm.edtDateEditPropertiesChange(Sender: TObject);
begin
//   if Master.State=dsBrowse then
//      Master.edit;
//   Masterno_kas_kecil.AsString:= 'KN'+DM.L_Perusahaannomor_distributor.AsString+'-'+FormatDateTime('YYMM',edtDateEdit.Date)+'-00000';
end;

end.

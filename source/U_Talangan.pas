unit U_Talangan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dateutils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, frxClass,
  frxDBSet, kbmMemTable, ZSequence, ZDataset, wwDialog, wwidlg, AdvPanel,
  AdvAppStyler, cxGridBandedTableView, cxGridTableView, AdvToolBar,
  AdvToolBarStylers, ZAbstractRODataset, ZAbstractDataset, DBCtrls,
  RzDBNav, ExtCtrls, cxCheckListBox, cxDBCheckListBox, cxButtonEdit,
  cxDBEdit, cxDropDownEdit, cxCalendar, cxMemo, cxGroupBox, RzPanel,
  SCStdControls, wwdbdatetimepicker, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, Wwkeycb, SCControl, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  AdvReflectionImage, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode = (dmBrowse, dmNone, dmInsert, dmEdit);
  TTalanganFrm = class(TForm)
    pgcMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    pnlBottom: TSCPanel;
    pnlHeader: TAdvPanel;
    lblHeader1: TLabel;
    Master: TZQuery;
    dsKasbon: TDataSource;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    grdMasterDBTable: TcxGridDBTableView;
    grdMasterLevel1: TcxGridLevel;
    grdMaster: TcxGrid;
    grdMasterDBTableno_kasbon: TcxGridDBColumn;
    grdMasterDBTabledt_purposed: TcxGridDBColumn;
    SqKasbon: TZSequence;
    LookApprover: TwwLookupDialog;
    RepKasbon: TfrxReport;
    kmtMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    kmtMasternk: TStringField;
    kmtMasterno_kasbon: TStringField;
    kmtMasterproject_no: TStringField;
    kmtMasterno_pi: TStringField;
    kmtMasterlampiran: TStringField;
    kmtMasterkasbon_untuk: TStringField;
    kmtMasterprepared_by: TStringField;
    kmtMasterreviewed_by: TStringField;
    kmtMasterapproved_by: TStringField;
    kmtMasterjumlah: TStringField;
    kmtMasterdt_prepared: TStringField;
    kmtMasterdt_purposed: TStringField;
    kmtMasterdt_reviewed: TStringField;
    kmtMasterdt_approved: TStringField;
    kmtMasterterbilang: TStringField;
    kmtMasternama_pegawai: TStringField;
    kmtMasterpurposed_by: TStringField;
    kmtMasternama_proyek: TStringField;
    kmtMastertotal: TStringField;
    qryGen_Kasbon_Number: TZReadOnlyQuery;
    qryGen_Kasbon_Numbernew_kasbon_number: TStringField;
    Masterid_kasbon: TLargeintField;
    Masternk: TStringField;
    Masterno_kasbon: TStringField;
    Masterlampiran: TStringField;
    Masterkasbon_untuk: TStringField;
    Masterjumlah: TFloatField;
    Masterprepared_by: TStringField;
    Masterreviewed_by: TStringField;
    Masterapproved_by: TStringField;
    Masterdt_prepared: TDateTimeField;
    Masterdt_purposed: TDateTimeField;
    Masterdt_reviewed: TDateTimeField;
    Masterdt_approved: TDateTimeField;
    Masterstatus_auth: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Masterisclosed: TStringField;
    Masterprepared_name: TStringField;
    Masterreviewed_name: TStringField;
    Masterapproved_name: TStringField;
    Masternama_pegawai: TStringField;
    Mastertunggakan: TFloatField;
    kmtMastertunggakan: TStringField;
    grdMasterDBTableispost: TcxGridDBColumn;
    grdMasterDBTableiscancel: TcxGridDBColumn;
    grdMasterDBTableisclosed: TcxGridDBColumn;
    Masterremarks: TStringField;
    grdMasterDBTableremarks: TcxGridDBColumn;
    qryCheckCA: TZQuery;
    qryUpdate_Auth: TZQuery;
    kmtMasterkasir: TStringField;
    pnlSearch: TSCPanel;
    Shape12: TShape;
    Label40: TLabel;
    Shape13: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    Masterkurs: TFloatField;
    grdMasterDBTableid_kasbon: TcxGridDBColumn;
    btnEdit: TSCButton;
    btnAdd: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnClose: TSCButton;
    btnPrint: TSCButton;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    Masterid_trans: TStringField;
    Masterid_curr: TStringField;
    pnlDataDetail: TRzPanel;
    Shape1: TShape;
    Shape2: TShape;
    edtPosted: TcxDBCheckBox;
    edtCanceled: TcxDBCheckBox;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
    qBrowseid_kasbon: TLargeintField;
    qBrowsenk: TStringField;
    qBrowseno_kasbon: TStringField;
    qBrowsedt_purposed: TDateTimeField;
    qBrowseremarks: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowseisclosed: TStringField;
    qBrowsestatus_auth: TStringField;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    SCPanel2: TRzPanel;
    pnlPrepared: TPanel;
    LblL_Prepared: TLabel;
    dbt_UserPrepared: TDBText;
    _DB_TGL_1: TDBText;
    _Lnk_Klik1: TLabel;
    _DB_Name_1: TDBText;
    pnlReviewed_2: TPanel;
    LblL_Approved: TLabel;
    dbt_UserReviewed_2: TDBText;
    _DB_TGL_3: TDBText;
    lblReviewer_2: TLabel;
    _DB_Name_3: TDBText;
    kmtMasterlogo: TBlobField;
    Masternama_rekening: TStringField;
    dbnMaster: TRzDBNavigator;
    Masterispersonal: TStringField;
    qBrowsekasbon_untuk: TStringField;
    Panel2: TPanel;
    LblDisetujui: TLabel;
    dbt_UserApproved: TDBText;
    DBText3: TDBText;
    LblInspector: TLabel;
    DBText4: TDBText;
    LookReviewer: TwwLookupDialog;
    cxLabel3: TcxLabel;
    edtDT_Purposed: TcxDBDateEdit;
    lblSatuan: TcxLabel;
    edtJumlah: TcxDBTextEdit;
    edtLampiran: TcxDBMemo;
    SCPanel3: TSCPanel;
    edtUntuk: TcxDBMemo;
    cxLabel2: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    frKasBon_A5: TfrxReport;
    frxDBInfoPerusahaan: TfrxDBDataset;
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
    MemDetail: TkbmMemTable;
    MemDetailid_item: TStringField;
    MemDetailid_unit: TStringField;
    MemDetaildescription: TStringField;
    MemDetailqty: TFloatField;
    MemDetailno: TStringField;
    MemDetailunit_price: TFloatField;
    MemDetaildisc: TFloatField;
    MemDetailsub_total: TFloatField;
    frxDBDetail: TfrxDBDataset;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    Masterid_rek_gl: TStringField;
    qryCheckCAsisa_kasbon: TFloatField;
    cxLabel5: TcxLabel;
    cxLabel10: TcxLabel;
    edtRekGL: TcxDBButtonEdit;
    DBText2: TDBText;
    RGModeCetak: TRadioGroup;
    frxRepMaster: TfrxReport;
    frxDBRekap: TfrxDBDataset;
    qBrowseid_rek_gl: TStringField;
    qBrowsejumlah: TFloatField;
    qBrowseprepared_name: TStringField;
    qBrowsereviewed_name: TStringField;
    qBrowseapproved_name: TStringField;
    qBrowsenama_rekening: TStringField;
    grdMasterDBTablenama_rekening: TcxGridDBColumn;
    LblKd_item: TcxLabel;
    cxLabel9: TcxLabel;
    edtNK: TcxDBButtonEdit;
    DBText1: TDBText;
    cxLabel13: TcxLabel;
    qBrowsefull_name: TStringField;
    grdMasterDBTablefull_name: TcxGridDBColumn;
    qryRek_GL: TZQuery;
    LookRekening: TwwLookupDialog;
    qryRek_GLid_rek_gl: TStringField;
    qryRek_GLdescriptions: TStringField;
    procedure edtNKPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure pgcMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure grdMasterDBTableCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure LblL_ApprovedClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure qBrowseBeforeOpen(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure dbnMasterClick(Sender: TObject; Button: TNavigateBtn);
    procedure LblDisetujuiClick(Sender: TObject);
    procedure F4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRekGLPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure F6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    isEditAllow,isDeleteAllow,isAddAllow : Boolean;
    vjns_transaksi, vjudul : String;
    vtag : integer;
    DBMode : TDBMode;
    procedure UpdateView;
    procedure OpenDataset;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;
    function CountOutStanding(nK: string): Single;
    function GetRekGL(param: string): String;

  public
    { Public declarations }
  end;

var
  TalanganFrm: TTalanganFrm;

  procedure ShowForm(pNamaMenu: String; ptransaksi: String; ptag: integer);

implementation

uses U_DM, MD5, U_CariRekanan;

{$R *.dfm}
procedure ShowForm(pNamaMenu: String; ptransaksi: String; ptag: integer);
begin
  try
    TalanganFrm := TTalanganFrm.Create(Application);
    with TalanganFrm do begin
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      DBMode:= dmNone;
      try
        OpenDataset;
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
      ShowWindow(Handle,SW_SHOWMAXIMIZED);
      Show;
    end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;


function TTalanganFrm.CountOutStanding(nK: string): Single;
var s : String;
begin
 Result:= 0;
 try
    qryCheckCA.Close;
    qryCheckCA.Params.ParamByName('pnk').AsString:= nK;
    qryCheckCA.Open;
 except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
 end;

 Result:= qryCheckCAsisa_kasbon.AsFloat;

end;

function TTalanganFrm.GetRekGL(param: string): String;
begin

end;

function TTalanganFrm.CheckEditRight(var msg: string): Boolean;
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

function TTalanganFrm.CheckDeleteRight(var msg: string): Boolean;
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

procedure TTalanganFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
    lvl : Integer;    
begin
  if DBMode=dmNone then begin
     pgcMaster.ActivePageIndex:=0;
     dbnMaster.Enabled := False;

     btnAdd.Visible:= True;
     btnAdd.Enabled:= False;
     btnEdit.Visible:= True;
     btnEdit.Enabled:= False;
     btnDelete.Visible:= True;
     btnDelete.Enabled:= False;
     btnPrint.Visible:= True;
     btnPrint.Enabled:= False;
     btnRefresh.Visible:= True;
     btnRefresh.Enabled:= False;
     btnSave.Visible:= False;
     btnCancel.Visible:= False;
  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := qBrowse.RecordCount=0;

    if isBrowse then pgcMaster.ActivePageIndex := 0
    else pgcMaster.ActivePageIndex := 1;
    dbnMaster.Enabled := isBrowse;
    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    isEditAllow:=accedit;
    isDeleteAllow:=accdelete;
    isAddAllow:=accinsert;

    btnAdd.Visible:= isbrowse;
    btnAdd.Enabled:= accinsert;
    btnEdit.Visible:= isBrowse;
    btnEdit.Enabled:= not isEmpty and accedit;
    btnDelete.Visible:= isbrowse;
    btnDelete.Enabled:= not isEmpty and accdelete;
    btnRefresh.Visible:= isBrowse;
    btnRefresh.Enabled:= isBrowse;
    btnSave.Visible:= not isBrowse;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled:= accprint and not isEmpty;
    btnCancel.Visible:= not isBrowse;

    LblDisetujui.Enabled:= not isBrowse;
    LblL_Approved.Enabled:= not isBrowse;

    dbnMaster.Enabled:= isBrowse;

    edtLampiran.Properties.ReadOnly:= isBrowse;
    edtJumlah.Properties.ReadOnly:= isBrowse;
    edtUntuk.Properties.ReadOnly:= isBrowse;
    edtDT_Purposed.Properties.ReadOnly:= isBrowse;

    edtNK.Properties.ReadOnly:= isBrowse;
    edtNK.Properties.Buttons[0].Visible:= not isBrowse;
    edtRekGL.Properties.ReadOnly:= isBrowse;
    edtRekGL.Properties.Buttons[0].Visible:= not isBrowse;

//    lsbPersonal.ReadOnly:= isBrowse;
//    edtCurrency.Properties.ReadOnly:= isBrowse;
//    edtCurrency.Properties.Buttons[0].Visible:= not isBrowse;
//    edtRates.Properties.ReadOnly:= isBrowse;

    edtPosted.Properties.ReadOnly:= isBrowse and not DM.isSuperUser;
    edtCanceled.Properties.ReadOnly:= isBrowse and not DM.isSuperUser;

  end;
end;

procedure TTalanganFrm.OpenDataset;
begin
  try
    dm.L_Pegawai.Close;
    dm.L_Pegawai.Open;
    DM.L_User.Close;
    dm.L_User.Open;
    qBrowse.Close;
    qBrowse.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TTalanganFrm.edtNKPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var f : TCariRekananFrm;
begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;

    try
        f:= TCariRekananFrm.Create(Application);
        f.vMode:= 0;
        F.vJenis:= 'SUPPLIER';
        try
          if f.ShowModal=mrOK then begin
            if Master.State=dsBrowse then
               Master.Edit;
            Masternk.Value:= f.qRekanankd_rekanan.AsString;
            Mastertunggakan.AsFloat:= CountOutStanding(f.qRekanankd_rekanan.AsString);
          end;
        except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end;
    finally
      f.Free;
    end;
end;


procedure TTalanganFrm.btnAddClick(Sender: TObject);
begin
  if  pgcMaster.ActivePageIndex=0 then
      pgcMaster.ActivePageIndex:=1;
      
  try
    Master.Append;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TTalanganFrm.btnEditClick(Sender: TObject);
begin
  if  pgcMaster.ActivePageIndex=0 then
      pgcMaster.ActivePageIndex:=1;

  try
    Master.Edit;
    DBMode:= dmEdit;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TTalanganFrm.btnDeleteClick(Sender: TObject);
begin
  if  pgcMaster.ActivePageIndex=0 then
      pgcMaster.ActivePageIndex:=1;

   if qBrowse.RecordCount=0 then
      Exit;

   if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
      Exit;

  try
    Master.Edit;
    Masterisdelete.AsString:= '1';
    Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  qbrowse.Refresh;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TTalanganFrm.btnRefreshClick(Sender: TObject);
begin
   OpenDataset;
end;

procedure TTalanganFrm.pgcMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TTalanganFrm.grdMasterDBTableCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   pgcMaster.ActivePageIndex:=1;
end;

procedure TTalanganFrm.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TTalanganFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
    if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TTalanganFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTalanganFrm.btnSaveClick(Sender: TObject);
begin

//   if Masterispersonal.AsString='10' then
//      Masterid_rek_gl_debet.AsString:= DM.GetRekForm(vjns_transaksi,'K')
//   else Masterid_rek_gl_debet.AsString:= DM.GetRekForm(vjns_transaksi, 'D');


  try
    Master.Post;
    qBrowse.Refresh;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TTalanganFrm.btnCancelClick(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda Ingin Membatalkan ?','')=101 then
     Exit;
  try
    Master.Cancel;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TTalanganFrm.MasterBeforePost(DataSet: TDataSet);
begin
   if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
      Masterid_rek_gl.Clear;
   if Masternk.IsNull or (Trim(Masternk.AsString)='') then
      Masternk.Clear;

   if Masterkurs.AsFloat=0 then
      raise Exception.Create('KURS Harus diisi !')
   else
   if Masterkurs.IsNull then
      raise Exception.Create('KURS Harus diisi !');
   if Masternk.IsNull or (Trim(Masternk.AsString)='') then
      raise Exception.Create('YANG MENGAJUKAN Harus diisi!')
   else
   if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
      raise Exception.Create('KODE REKENING Harus diisi!')
   else
   if Masterid_curr.IsNull or (Trim(Masterid_curr.AsString)='') then
      raise Exception.Create('MATA UANG Harus diisi!')
   else
   if Masterkasbon_untuk.IsNull or (Trim(Masterkasbon_untuk.AsString)='') then
      raise Exception.Create('DIGUNAKAN UNTUK Harus diisi !')
   else
   if Masterdt_purposed.IsNull then
      raise Exception.Create('TGL PENGAJUAN Harus Diisi !')
   else
   if Masterjumlah.AsFloat=0 then
      raise Exception.Create('JUMLAH KASBON Harus Diisi !')
   else
   if Masterjumlah.IsNull then
      raise Exception.Create('JUMLAH KASBON Harus Diisi !');



  if (Trim(Masterno_kasbon.AsString)='') then begin
      qryGen_Kasbon_Number.Close;
      qryGen_Kasbon_Number.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
      qryGen_Kasbon_Number.Open;
      Masterno_kasbon.AsString:= qryGen_Kasbon_Numbernew_kasbon_number.AsString;
  end;

   if Masterno_kasbon.IsNull or (Trim(Masterno_kasbon.AsString)='') then
      raise Exception.Create('NO. KASbon Harus Diisi !');


   if Master.State=dsInsert then begin
      Masterusr_ins.AsString:=DM.UserConnect;
      Masterusr_upd.AsString:=DM.UserConnect;
      Masterid_kasbon.AsInteger:=SqKasbon.GetNextValue;
   end else if Master.State=dsEdit then
      Masterusr_upd.AsString:=DM.UserConnect;
end;

procedure TTalanganFrm.MasterNewRecord(DataSet: TDataSet);
begin

   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterisclosed.AsString:= '0';
   Masterispersonal.AsString:= '01';
   Masterremarks.AsString:= '0';

   Masterid_trans.AsString:= vjns_transaksi;
   Masterstatus_auth.AsString:='PREPARED';
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Masterdt_purposed.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterdt_prepared.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterprepared_by.AsString:= DM.UserConnect;
   Masterjumlah.AsFloat:= 0;
   Mastertunggakan.AsFloat:= 0;
   Masterid_curr.AsString:= 'IDR';
   Masterkurs.AsFloat:= 1;
end;

procedure TTalanganFrm.LblL_ApprovedClick(Sender: TObject);
begin
   try
       DM.LApprover.Close;
       DM.LApprover.Params.ParamByName('ptag').Value:=vtag;
       DM.LApprover.Open;
       if LookApprover.Execute then begin
          Masterapproved_by.AsString:=DM.LApprovervuser.AsString;
       end;
    except
       on E: Exception do
          DM.MyMsg(mmError,'Error Has Been Encountered !',E.Message);
    end;
end;

procedure TTalanganFrm.btnPrintClick(Sender: TObject);
var i : integer;
begin
 if qBrowse.RecordCount=0 then
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
       MemInfoPerusahaanperiode.AsString:= 'Periode : '+ FormatDateTime('dd/mm/yyyy', dtpStart.Date)+
                                           ' S/D '+ FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
       MemInfoPerusahaanjudul.AsString:= lblHeader1.Caption;
       MemInfoPerusahaanprinted_by.AsString:= 'user print : '+DM.UserConnect+'@'+FormatDateTime('ddmmyy:hhmm',now);
       MemInfoPerusahaan.Post;

       if RGModeCetak.ItemIndex=1 then begin
           try
             qBrowse.DisableControls;
             qBrowse.First;

             frxRepMaster.ShowReport();
           finally
             qBrowse.First;
             qBrowse.EnableControls;
           end;
       end
       else begin
        try
           kmtMaster.Close;
           kmtMaster.Open;
           kmtMaster.Append;
           kmtMasterlogo.LoadFromFile('IMAGES/LOGO.JPG');;
           kmtMasternk.AsString:=Masternk.AsString;
           kmtMasternama_pegawai.AsString:= Masterid_rek_gl.AsString+'/'+ Masternama_rekening.AsString;
           kmtMasterno_kasbon.AsString:= Masterno_kasbon.AsString;
           kmtMasterproject_no.AsString:= '';
           kmtMasterno_pi.AsString:='-';
           if Masterispersonal.AsString='00' then
              kmtMasternama_proyek.AsString:= 'PERSONAL'
           else kmtMasternama_proyek.AsString:= 'NON PERSONAL';
           kmtMasterlampiran.AsString:='Form Travel / Invoice / PO / '+ Masterlampiran.AsString;
           kmtMasterkasbon_untuk.AsString:=Masterkasbon_untuk.AsString;
           kmtMastertunggakan.AsString:= FormatFloat('0.0,0', Mastertunggakan.AsFloat);
           kmtMastertotal.AsString:= FormatFloat('0.0,0', Mastertunggakan.AsFloat+Masterjumlah.AsFloat);
           kmtMasterjumlah.AsString:=FormatFloat('0.0,0',Masterjumlah.AsFloat);
           DM.MyKonversi1.Nilai:= Masterjumlah.AsFloat;
           kmtMasterterbilang.AsString:=DM.MyKonversi1.HasilKonversi;
           kmtMasterpurposed_by.AsString:=Masternama_pegawai.AsString;
           kmtMasterprepared_by.AsString:=Masterprepared_name.AsString;
           kmtMasterreviewed_by.AsString:=Masterreviewed_name.AsString;
           kmtMasterapproved_by.AsString:=Masterapproved_name.AsString;

//           kmtMasterkasir.AsString:='Nama :'+QReceiverfull_name.AsString;
           if Masterdt_purposed.IsNull then kmtMasterdt_purposed.AsString:= 'Date : '
           else kmtMasterdt_purposed.AsString:= 'Date : '+FormatDateTime('dd-mmm-yyyy',Masterdt_purposed.AsDateTime);

           if Masterdt_prepared.IsNull then kmtMasterdt_prepared.AsString:= 'Tanggal : '
           else kmtMasterdt_prepared.AsString:= 'Date : '+FormatDateTime('dd-mmm-yyyy',Masterdt_prepared.AsDateTime);


           if Masterdt_reviewed.IsNull then kmtMasterdt_reviewed.AsString:= 'Date : '
           else kmtMasterdt_reviewed.AsString:= 'Date : '+FormatDateTime('dd-mmm-yyyy',Masterdt_reviewed.AsDateTime);
           if Masterdt_approved.IsNull then kmtMasterdt_approved.AsString:= 'Date : '
           else kmtMasterdt_approved.AsString:= 'Date : '+FormatDateTime('dd-mmm-yyyy',Masterdt_approved.AsDateTime);
           kmtMaster.Post;

           MemDetail.Close;
           MemDetail.Open;
           MemDetail.Append;
           MemDetailno.AsString:= '1';
           MemDetaildescription.AsString:= Masterkasbon_untuk.AsString;
           MemDetailsub_total.AsFloat:= Masterjumlah.AsFloat;
           MemDetail.Post;

          for i := 1 to 4 do begin
            MemDetail.Append;
            MemDetailno.AsString:= '';
            MemDetaildescription.AsString:= '';
            MemDetailsub_total.AsString:= '';
            MemDetail.Post;
          end;

          frKasBon_A5.ShowReport();
        except
        on E : Exception do begin
           DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end;
        end;

       end; // end of mode cetak

end;

procedure TTalanganFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('id_kasbon').Value:= qBrowseid_kasbon.AsLargeInt;
end;

procedure TTalanganFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end;
end;

procedure TTalanganFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Abort;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end

end;


procedure TTalanganFrm.qBrowseBeforeOpen(DataSet: TDataSet);
begin
  qBrowse.ParamByName('pid_trans').AsString:= vjns_transaksi;
  qBrowse.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  qBrowse.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
end;

procedure TTalanganFrm.btnOKClick(Sender: TObject);
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

procedure TTalanganFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TTalanganFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TTalanganFrm.tsDetailShow(Sender: TObject);
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

procedure TTalanganFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TTalanganFrm.dbnMasterClick(Sender: TObject; Button: TNavigateBtn);
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

procedure TTalanganFrm.LblDisetujuiClick(Sender: TObject);
begin
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

procedure TTalanganFrm.F4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   edtNKPropertiesButtonClick(nil,0);
end;

procedure TTalanganFrm.edtRekGLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if (DBMode=dmNone) or (DBMode=dmBrowse) then
      Exit;

        try
          qryRek_GL.Close;
          qryRek_GL.Open;
          if LookRekening.Execute then begin
            if Master.State=dsBrowse then
               Master.Edit;
            Masterid_rek_gl.Value:= qryRek_GLid_rek_gl.AsString;
          end;
        except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end;

end;

procedure TTalanganFrm.F6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  edtRekGLPropertiesButtonClick(nil,0);
end;

end.


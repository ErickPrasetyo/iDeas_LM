unit U_LapSetoran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, frxClass,
  kbmMemTable, frxDBSet, frxExportRTF, frxExportPDF, frxExportXLS,
  AdvToolBar, AdvToolBarStylers, ZSequence, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, cxGridBandedTableView,
  cxGridTableView, AdvPanel, AdvAppStyler, cxDropDownEdit, cxDBEdit,
  cxGroupBox, cxMaskEdit, cxCalendar, cxTextEdit, cxMemo, StdCtrls,
  cxContainer, RzPanel, ExtCtrls, SCControl, SCStdControls, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, AdvGlowButton, AdvReflectionImage,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, wwdbdatetimepicker,
  cxButtons, cxButtonEdit, wwDialog, wwidlg, AdvMenus;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TLapSetoranFrm = class(TForm)
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
    grddbtvMasterdt_req: TcxGridDBColumn;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    pnlMaster: TSCPanel;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    Detail: TZQuery;
    dsDetail: TDataSource;
    RzGroupBox2: TRzGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
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
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    actPrint: TAction;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    qryGet_Kasir_Number: TZQuery;
    actPosting: TAction;
    btnGetItems: TSCButton;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    grddbtvDetailno_nota: TcxGridDBColumn;
    grddbtvDetailurut: TcxGridDBColumn;
    grddbtvDetailnama_pasien: TcxGridDBColumn;
    grddbtvDetailtotal_tagihan: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    grddbtvMastertotal: TcxGridDBColumn;
    SCPanel1: TSCPanel;
    Label8: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnOK: TcxButton;
    edtDatePicker1: TwwDBDateTimePicker;
    edtDatePicker2: TwwDBDateTimePicker;
    grddbtvDetaildt_nota: TcxGridDBColumn;
    qUser: TZQuery;
    LookupUser: TwwLookupDialog;
    edtPetugas: TcxDBButtonEdit;
    MemInfoPerusahaanemail: TStringField;
    grddbtvMastertunai: TcxGridDBColumn;
    grddbtvMasterklaim: TcxGridDBColumn;
    qNota: TZQuery;
    qExec: TZQuery;
    sq_kasir: TZSequence;
    qUsernk: TStringField;
    qUserfull_name: TStringField;
    frxTT: TfrxReport;
    Masterid: TLargeintField;
    Masterno_setoran: TStringField;
    Masteran: TStringField;
    Masterid_rek_gl: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterdt_ins: TDateTimeField;
    Masterdt_upd: TDateTimeField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Masterisclosed: TStringField;
    Mastertotal_awal: TFloatField;
    Mastertotal_akhir: TFloatField;
    Masterdt_setoran: TDateTimeField;
    Masterketerangan: TStringField;
    Mastershift: TIntegerField;
    qryGet_Kasir_Numberfn_gen_setoran_number: TStringField;
    Detailid: TLargeintField;
    Detailid_setoran: TLargeintField;
    Detailurut: TIntegerField;
    Detailno_nota: TStringField;
    Detaildt_nota: TDateTimeField;
    Detailcara_bayar: TStringField;
    Detailnama_supplier: TStringField;
    Detailkd_supplier: TStringField;
    Detailketerangan: TStringField;
    Detailtotal_bayar: TFloatField;
    edtmodal: TcxDBTextEdit;
    qNotaid_payment: TLargeintField;
    qNotadt_payment: TDateTimeField;
    qNotadue_date: TDateTimeField;
    qNotaid_trans: TStringField;
    qNotausr_ins: TStringField;
    qNotausr_upd: TStringField;
    qNotadt_ins: TDateTimeField;
    qNotadt_upd: TDateTimeField;
    qNotaispost: TStringField;
    qNotaiscancel: TStringField;
    qNotaisdelete: TStringField;
    qNotano_payment: TStringField;
    qNotanominal: TFloatField;
    qNotaiscair: TStringField;
    qNotadt_cair: TDateTimeField;
    qNotaistolak: TStringField;
    qNotaremarks: TStringField;
    qNotabank: TStringField;
    qNotano_cek_bg_tt: TStringField;
    qNotaan: TStringField;
    qNotanama_rekanan: TStringField;
    qNotano_bkbb: TStringField;
    qNotaid_rek_gl: TStringField;
    qNotajns_ttbg: TStringField;
    qNotaid_curr: TStringField;
    qNotakurs: TFloatField;
    qNotano_bukti: TStringField;
    qNotaid_cc_project: TStringField;
    qNotaprepared_by: TStringField;
    qNotadt_prepared: TDateTimeField;
    qNotareviewed_by_1: TStringField;
    qNotareviewed_by_2: TStringField;
    qNotaapproved_by_1: TStringField;
    qNotakd_rekanan: TStringField;
    qNotausr_post: TStringField;
    qNotadt_post: TDateTimeField;
    qNotajns_rekanan: TStringField;
    qNotaemployee: TStringField;
    qNotasubtotal: TFloatField;
    qTotal: TZQuery;
    qTotaltotal: TFloatField;
    qNotano_reff: TStringField;
    Masterpembayaran: TFloatField;
    memMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    memDetail: TkbmMemTable;
    frxDBDetail: TfrxDBDataset;
    memMasterno_setoran: TStringField;
    memMasteran: TStringField;
    memMastertotal_awal: TFloatField;
    memMastertotal_akhir: TFloatField;
    memMasterdt_setoran: TDateTimeField;
    memMasterpembayaran: TFloatField;
    memDetailnomor: TStringField;
    memDetaildeskripsi: TStringField;
    memDetailtotal: TFloatField;
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
    procedure MasterBeforeEdit(DataSet: TDataSet);
    procedure MasterBeforeDelete(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure btnGetItemsClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPetugasPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MasterCalcFields(DataSet: TDataSet);
  private
    vjns_transaksi, vjudul, vnoReg : string;
    vtag : integer;
    vid_nota : Int64;
    DBMode: TDBMode;
    issparepart : boolean;
    { Private declarations }
    procedure UpdateView;
    function CheckEditRight(var msg: string): Boolean;
    function CheckDeleteRight(var msg: string): Boolean;

  public
    { Public declarations }
  end;

var
  LapSetoranFrm: TLapSetoranFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);


implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LapSetoranFrm:= TLapSetoranFrm.Create(Application);
  LapSetoranFrm.vtag:= ptag;
  LapSetoranFrm.DBMode:= dmNone;
  try
    DM.LTransactionAll.Close;
    DM.LTransactionAll.Open;
    LapSetoranFrm.Master.Close;
    LapSetoranFrm.Master.Open;
    LapSetoranFrm.Detail.Close;
    LapSetoranFrm.DBMode:= dmBrowse;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  LapSetoranFrm.UpdateView;
  LapSetoranFrm.vjudul:= pNamaMenu;
  LapSetoranFrm.lblHeader1.Caption:= pNamaMenu;
  LapSetoranFrm.Caption:= pNamaMenu;
  LapSetoranFrm.Show;
end;


procedure TLapSetoranFrm.UpdateView;
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
    btnPrint.Visible:= False;
    adpDetailNavigator.Visible:= False;
  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := Master.RecordCount=0;

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
    edtDateEdit.Properties.Buttons[0].Visible:= not isBrowse;

    edtPetugas.Properties.ReadOnly:= isBrowse;
    edtPetugas.Properties.Buttons[0].Visible:= not isBrowse;

    MemRemarks.Properties.ReadOnly:= isBrowse;

    edtPetugas.Properties.ReadOnly:= isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
  end;
end;

function TLapSetoranFrm.CheckEditRight(var msg: string): Boolean;
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

function TLapSetoranFrm.CheckDeleteRight(var msg: string): Boolean;
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


procedure TLapSetoranFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TLapSetoranFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan tombol simpan/batal sebelum keluar form ini.')
end;

procedure TLapSetoranFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TLapSetoranFrm.actAddExecute(Sender: TObject);
begin
  try
    pgTransaction.ActivePageIndex:= 1;
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_setoran').Value:= Masterid.AsLargeInt;
    Detail.Open;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TLapSetoranFrm.actEditExecute(Sender: TObject);
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

procedure TLapSetoranFrm.actDeleteExecute(Sender: TObject);
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
    Master.Refresh;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TLapSetoranFrm.actRefreshExecute(Sender: TObject);
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

procedure TLapSetoranFrm.actSaveExecute(Sender: TObject);
var s : String;
begin

 if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Sekali Disimpan Dokumen ini TIDAK BISA DIUBAH'+#13#10+
                            'Anda Yakin Dokumen ini sudah benar semua ?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  DM.StartTransaction;
  try
    if Masterno_setoran.AsString='' then begin
      qryGet_Kasir_Number.Close;
      qryGet_Kasir_Number.Open;
      if Master.State=dsBrowse then Master.Edit;
//      qTotal.Close;
//      qTotal.Open;
//      Mastertotal_awal.AsFloat:= qTotalvtotal.AsFloat;
      Masterno_setoran.AsString:= qryGet_Kasir_Numberfn_gen_setoran_number.AsString;
    end;


    if (Master.State=dsInsert) or (Master.State=dsEdit) then
       Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit)  then
        Detail.Post;

    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;

    Master.Edit;
    Masterispost.AsString:= '1';
    Mastertotal_akhir.AsFloat:= Mastertotal_awal.AsFloat-qTotaltotal.AsFloat;

    if (Master.State=dsInsert) or (Master.State=dsEdit) then
       Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;


    DM.CommitTransaction;
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

procedure TLapSetoranFrm.actCancelExecute(Sender: TObject);
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


procedure TLapSetoranFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TLapSetoranFrm.MasterNewRecord(DataSet: TDataSet);
var
 Jam, Min, Det, MDet: Word;
begin
   Masterid.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Masterdt_setoran.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisclosed.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterketerangan.AsString:= '-';
   Mastertotal_awal.AsFloat:= 0;
   Mastertotal_akhir.AsFloat:= 0;
   Masteran.AsString:= '';
   Mastershift.AsInteger:=1;
end;

procedure TLapSetoranFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_setoran.AsLargeInt:= Masterid.AsLargeInt;

  if Detail.RecNo=0 then
     Detailurut.AsInteger:=1
  else
     Detailurut.AsInteger:=Detail.RecNo;
end;

procedure TLapSetoranFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if (Masteran.IsNull) or (Trim(Masteran.AsString)='') then
     Raise Exception.Create('PETUGAS harus diisi !');

  if Master.State=dsInsert then begin
      Masterid.AsLargeInt:= sq_kasir.GetNextValue;
      Masterusr_ins.AsString:= DM.UserConnect;
      Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
      Masterusr_upd.AsString:= DM.UserConnect;

end;

procedure TLapSetoranFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_setoran').Value:= Masterid.Value;
     Detail.Open;
  end;
end;

procedure TLapSetoranFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TLapSetoranFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TLapSetoranFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TLapSetoranFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
  master.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date);
end;

procedure TLapSetoranFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Exit;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TLapSetoranFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end
end;



procedure TLapSetoranFrm.actPrintExecute(Sender: TObject);
var i, row_count: Integer;
begin
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
   MemInfoPerusahaanemail.AsString:= 'email : '+DM.L_Perusahaanemail.AsString;
   MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaancity.AsString;
   MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
   MemInfoPerusahaan.Post;

   memMaster.Close;
   memMaster.Open;
   memMaster.Append;
   memMasterno_setoran.AsString:= Masterno_setoran.AsString;
   memMasteran.AsString:= Masteran.AsString;
   memMastertotal_awal.AsFloat:= Mastertotal_awal.AsFloat;
   memMastertotal_akhir.AsFloat:= Mastertotal_akhir.AsFloat;
   memMasterdt_setoran.AsDateTime:= Masterdt_setoran.AsDateTime;
   memMasterpembayaran.AsFloat:= Masterpembayaran.AsFloat;
   memMaster.Post;

   memDetail.Close;
   memDetail.Open;
   Detail.First;
   while not Detail.Eof do
   begin
    memDetail.Append;
    memDetailnomor.AsString:= IntToStr(Detailurut.AsInteger);
    memDetaildeskripsi.AsString:= Trim('Pembayaran :'+Detailnama_supplier.AsString+' No Faktur :'+
                                        Detailno_nota.AsString);
    memDetailtotal.AsFloat:= Detailtotal_bayar.AsFloat;
    memDetail.Post;
    Detail.Next;
   end;
   frxTT.ShowReport;

end;

procedure TLapSetoranFrm.btnGetItemsClick(Sender: TObject);
var
dt0 : String;
begin
  dt0:= FormatDateTime('dd/mm/yyyy', Masterdt_setoran.AsDateTime);
  if Mastertotal_awal.AsFloat=0 then
     raise Exception.Create('MODAL AWAL HARUS DI ISI..!!');

  try
    qNota.Close;
    qNota.Params.ParamByName('ptgl0').Value:= dt0;
    qNota.Open;

    qTotal.Close;
    qTotal.Params.ParamByName('ptgl0').Value:= dt0;
    qTotal.Open;

    qNota.First;
    while not qNota.Eof do
    begin
      Detail.Append;
      Detailno_nota.AsString:= qNotano_reff.AsString;
      Detaildt_nota.AsDateTime:= qNotadt_payment.AsDateTime;
      Detailcara_bayar.AsString:='';
      Detailnama_supplier.AsString:= qNotanama_rekanan.AsString;
      Detailtotal_bayar.AsFloat:= qNotanominal.AsFloat;
      Detail.Post;
      qNota.Next;
    end;

  except
  end;

end;

procedure TLapSetoranFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
    DecodeDate(edtDatePicker1.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TLapSetoranFrm.btnOKClick(Sender: TObject);
begin
  if pgTransaction.ActivePageIndex=1 then
     pgTransaction.ActivePageIndex:= 0;
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView;
end;

procedure TLapSetoranFrm.FormShow(Sender: TObject);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;
  edtDatePicker1.Date:= DM.vSysDatedt_server.AsDateTime;
  edtDatePicker1CloseUp(Self);
  btnOK.Click;
end;

procedure TLapSetoranFrm.edtPetugasPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 if DBMode=dmBrowse then
    Exit;
  try
    qUser.Close;
    qUser.Open;
    if lookupUser.Execute then
       Masteran.AsString:= qUserfull_name.AsString;
  except

  end;
end;

procedure TLapSetoranFrm.MasterCalcFields(DataSet: TDataSet);
begin
  Masterpembayaran.AsFloat:= Mastertotal_awal.AsFloat-Mastertotal_akhir.AsFloat;
end;

end.

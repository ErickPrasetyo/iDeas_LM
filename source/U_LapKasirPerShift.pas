unit U_LapKasirPerShift;

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
  cxButtons, cxButtonEdit, wwDialog, wwidlg, AdvMenus, dxSkinBlack,
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
  TLapKasirPerShiftFrm = class(TForm)
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
    dbagbAddDetail: TDBAdvGlowButton;
    dbagbDeleteDetail: TDBAdvGlowButton;
    dbagbEditDetail: TDBAdvGlowButton;
    dbagbSaveDetail: TDBAdvGlowButton;
    dbagbCancelDetail: TDBAdvGlowButton;
    dbagbRefreshDetail: TDBAdvGlowButton;
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
    lblHeader2: TLabel;
    actPosting: TAction;
    btnGetItems: TSCButton;
    qryGet_Kasir_Numberfn_gen_kasir_number: TStringField;
    grddbtvMastershift: TcxGridDBColumn;
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
    Label4: TLabel;
    edtShift: TcxDBComboBox;
    Label5: TLabel;
    edtDateTransaksi: TcxDBDateEdit;
    Label6: TLabel;
    grddbtvDetailid_rekanan: TcxGridDBColumn;
    grddbtvMastertotal: TcxGridDBColumn;
    grddbtvMasterdt_transaksi: TcxGridDBColumn;
    SCPanel1: TSCPanel;
    Label8: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnOK: TcxButton;
    edtDatePicker1: TwwDBDateTimePicker;
    edtDatePicker2: TwwDBDateTimePicker;
    grddbtvDetaildt_nota: TcxGridDBColumn;
    MemDetail: TkbmMemTable;
    MemDetailcara_bayar: TStringField;
    MemDetailjns_pembayaran: TStringField;
    MemDetailno_nota: TStringField;
    MemDetailbayar: TStringField;
    MemDetailnama_pasien: TStringField;
    MemDetailpenjamin: TStringField;
    MemDetailno: TStringField;
    MemDetailtotall: TFloatField;
    MemDetailtotal_tunai: TFloatField;
    MemDetailtotal_kredit: TFloatField;
    MemDetaildibayar: TFloatField;
    MemDetailno_reg: TStringField;
    MemDetailuser: TStringField;
    MemDetaildibayar_str: TStringField;
    MemDetailjenis_nota: TStringField;
    MemDetailid_pasien: TStringField;
    MemMaster: TkbmMemTable;
    MemMasterchecked: TStringField;
    MemMasterapproved: TStringField;
    MemMastermade: TStringField;
    MemMasterjudul: TStringField;
    MemMasterdt_print: TStringField;
    MemMasterusr_print: TStringField;
    MemMasterremarks: TStringField;
    MemMasterno_kasir: TStringField;
    MemMasterdt_kasir: TStringField;
    MemMastershift: TIntegerField;
    MemMasterposted: TStringField;
    MemMastertotal_str: TStringField;
    MemMasterterbilang: TStringField;
    MemMasterdt_transaksi: TStringField;
    frxDBDetail: TfrxDBDataset;
    frxDBMaster: TfrxDBDataset;
    frxRepMaster2: TfrxReport;
    MemDetailtunai: TFloatField;
    MemDetailkredit: TFloatField;
    qUser: TZQuery;
    LookupUser: TwwLookupDialog;
    edtPetugas: TcxDBButtonEdit;
    MemDetailjns_pasien: TStringField;
    MemInfoPerusahaanemail: TStringField;
    grddbtvMastertunai: TcxGridDBColumn;
    grddbtvMasterklaim: TcxGridDBColumn;
    MemDetailtotal_seluruh: TFloatField;
    Masterno_kasir: TStringField;
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
    Masterid_trans: TStringField;
    Mastertotal: TFloatField;
    Masterdt_kasir: TDateTimeField;
    Masterketerangan: TStringField;
    Mastershift: TIntegerField;
    Masterdt_transaksi: TDateTimeField;
    Detailid_kasir: TLargeintField;
    Detailurut: TIntegerField;
    Detailno_nota: TStringField;
    Detaildt_nota: TDateTimeField;
    Detailcara_bayar: TStringField;
    Detailid_trans: TStringField;
    Detailnama_kasir: TStringField;
    Detailnama_customer: TStringField;
    Detailketerangan: TStringField;
    Detailsub_total: TFloatField;
    Detaildisc_member: TFloatField;
    Detailtotal: TFloatField;
    Masterid: TLargeintField;
    Detailid: TLargeintField;
    qNota: TZQuery;
    qNotaid_nota: TLargeintField;
    qNotano_nota: TStringField;
    qNotadt_nota: TDateTimeField;
    qNotano_bukti: TStringField;
    qNotadt_ins: TDateTimeField;
    qNotadt_upd: TDateTimeField;
    qNotausr_ins: TStringField;
    qNotausr_upd: TStringField;
    qNotaispost: TStringField;
    qNotaiscancel: TStringField;
    qNotaisdelete: TStringField;
    qNotatotal: TFloatField;
    qNotakd_rekanan: TStringField;
    qNotaid_trans: TStringField;
    qNotaid_rek_gl: TStringField;
    qNotaid_division: TStringField;
    qNotacara_bayar: TStringField;
    qNotadt_jth_tempo: TDateTimeField;
    qNotadiskripsi: TStringField;
    qNotasub_total: TFloatField;
    qNotaclaim: TFloatField;
    qNotadisc_rp: TFloatField;
    qNotapromo_uang: TFloatField;
    qNotapromo_barang: TFloatField;
    qNotanet_n_ppn: TFloatField;
    qNotaiskirim: TStringField;
    qNotaislunas: TStringField;
    qNotaretur: TFloatField;
    qNotaishpp: TStringField;
    qNotadt_lunas: TDateTimeField;
    qNotadt_kirim: TDateTimeField;
    qNotaisok: TStringField;
    qNotadt_posting: TDateTimeField;
    qNotanota_diretur: TStringField;
    qNotaid_curr: TStringField;
    qNotakurs: TFloatField;
    qNotavat_str: TStringField;
    qNotavat_num: TFloatField;
    qNotakd_del_place: TStringField;
    qNotano_rekap: TStringField;
    qNotan_hari: TIntegerField;
    qNotaevocer: TFloatField;
    qNotano_faktur_pajak: TStringField;
    qNotano_evocer: TStringField;
    qNotaid_import: TLargeintField;
    qNotapromo_id: TStringField;
    qNotamvocer: TFloatField;
    qNotano_mvocer: TStringField;
    qNotadisc_psn: TFloatField;
    qNotaisget: TStringField;
    qNotajns_transaksi: TStringField;
    qNotadisc_total: TFloatField;
    qNotadisc_member: TFloatField;
    qNotashift: TIntegerField;
    qNotanama_rekanan: TStringField;
    qTotal: TZQuery;
    qTotalvtotal: TFloatField;
    qExec: TZQuery;
    sq_kasir: TZSequence;
    qUsernk: TStringField;
    qUserfull_name: TStringField;
    grddbtvDetailColumn1: TcxGridDBColumn;
    frxTT: TfrxReport;
    qTotalUser: TZQuery;
    qTotalUsernama_kasir: TStringField;
    qTotalUserdt_transaksi: TDateTimeField;
    qTotalUserkepala_kasir: TStringField;
    qTotalUsershift: TIntegerField;
    frxDBTotal: TfrxDBDataset;
    PopUp: TAdvPopupMenu;
    LaporanKasir1: TMenuItem;
    TSetoran1: TMenuItem;
    qTotalUsertotal_tunai: TFloatField;
    qTotalUsertotal_debet: TFloatField;
    qTotalUsertotal_qris: TFloatField;
    qNotajns_penjualan: TMemoField;
    grddbtvDetailColumn2: TcxGridDBColumn;
    Detailjns_penjualan: TStringField;
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
    procedure qNotaBeforeOpen(DataSet: TDataSet);
    procedure qTotalBeforeOpen(DataSet: TDataSet);
    procedure LaporanKasir1Click(Sender: TObject);
    procedure TSetoran1Click(Sender: TObject);
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
  LapKasirPerShiftFrm: TLapKasirPerShiftFrm;

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);


implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);
begin
  LapKasirPerShiftFrm:= TLapKasirPerShiftFrm.Create(Application);
  LapKasirPerShiftFrm.vjns_transaksi:= ptransaksi;
  LapKasirPerShiftFrm.vtag:= ptag;
  LapKasirPerShiftFrm.DBMode:= dmNone;
  try
    DM.LTransactionAll.Close;
    DM.LTransactionAll.Open;
    LapKasirPerShiftFrm.Master.Close;
    LapKasirPerShiftFrm.Master.Open;
    LapKasirPerShiftFrm.Detail.Close;
    LapKasirPerShiftFrm.DBMode:= dmBrowse;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  LapKasirPerShiftFrm.UpdateView;
  LapKasirPerShiftFrm.vjudul:= pNamaMenu;
  LapKasirPerShiftFrm.lblHeader1.Caption:= pNamaMenu;
  LapKasirPerShiftFrm.Caption:= pNamaMenu;
  LapKasirPerShiftFrm.Show;
end;


procedure TLapKasirPerShiftFrm.UpdateView;
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

    edtShift.Properties.ReadOnly:= isBrowse;
    edtShift.Properties.Buttons[0].Visible:= not isBrowse;

    edtDateTransaksi.Properties.ReadOnly:= isBrowse;
    edtDateTransaksi.Properties.Buttons[0].Visible:= not isBrowse;
    edtPetugas.Properties.ReadOnly:= isBrowse;

    grddbtvDetail.OptionsData.Inserting:= NOT isBrowse;
    grddbtvDetail.OptionsData.Editing:= NOT isBrowse;
    grddbtvDetail.OptionsData.Deleting:= NOT isBrowse;

    adpDetailNavigator.Visible:= not isBrowse;
    dbagbAddDetail.Enabled:= accinsert;
    dbagbEditDetail.Enabled:= accedit;
    dbagbDeleteDetail.Enabled:= accdelete
  end;
end;

function TLapKasirPerShiftFrm.CheckEditRight(var msg: string): Boolean;
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

function TLapKasirPerShiftFrm.CheckDeleteRight(var msg: string): Boolean;
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


procedure TLapKasirPerShiftFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TLapKasirPerShiftFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan tombol simpan/batal sebelum keluar form ini.')
end;

procedure TLapKasirPerShiftFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TLapKasirPerShiftFrm.actAddExecute(Sender: TObject);
begin
  try
    pgTransaction.ActivePageIndex:= 1;
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_kasir').Value:= Masterid.AsLargeInt;
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

procedure TLapKasirPerShiftFrm.actEditExecute(Sender: TObject);
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

procedure TLapKasirPerShiftFrm.actDeleteExecute(Sender: TObject);
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

procedure TLapKasirPerShiftFrm.actRefreshExecute(Sender: TObject);
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

procedure TLapKasirPerShiftFrm.actSaveExecute(Sender: TObject);
var s : String;
begin

 if (MessageBox(0, PChar('Peringatan ! '+#13#10+
                            'Sekali Disimpan Dokumen ini TIDAK BISA DIUBAH'+#13#10+
                            'Anda Yakin Dokumen ini sudah benar semua ?'),
                            'Konfirmasi', MB_ICONQUESTION or MB_YESNO) = idNo) then
      Exit;

  DM.StartTransaction;
  try
    if Masterno_kasir.AsString='' then begin
      qryGet_Kasir_Number.Close;
      qryGet_Kasir_Number.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
      qryGet_Kasir_Number.Open;
      if Master.State=dsBrowse then Master.Edit;
      qTotal.Close;
      qTotal.Open;
      Mastertotal.AsFloat:= qTotalvtotal.AsFloat;
      Masterno_kasir.AsString:= qryGet_Kasir_Numberfn_gen_kasir_number.AsString;
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

  DM.PrepareQuery(qExec);
  s:= 'update transaksi.nota set isget='+QuotedStr('1')+' where no_nota in(select no_nota from accfin.kasir_detail where id_kasir='+IntToStr(Masterid.AsLargeInt)+')';
  DM.ExecQuery(qExec, s);
  
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TLapKasirPerShiftFrm.actCancelExecute(Sender: TObject);
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


procedure TLapKasirPerShiftFrm.pgTransactionPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TLapKasirPerShiftFrm.MasterNewRecord(DataSet: TDataSet);
var
 Jam, Min, Det, MDet: Word;
begin
   Masterid.AsLargeInt:= -1;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Masterdt_kasir.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masterdt_transaksi.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
//   DecodeTime(DM.vSysDatedt_server.AsDateTime,Jam,Min,Det,MDet);
//   if (Jam>8) and (Jam<16) then Mastershift.AsInteger:= 1
//   else Mastershift.AsInteger:= 2;
   Mastershift.AsInteger:= DM.getShift;
   Masterispost.AsString:= '0';
   Masteriscancel.AsString:= '0';
   Masterisclosed.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterid_trans.AsString:= vjns_transaksi;
   Masterketerangan.AsString:= '-';
   Mastertotal.AsFloat:= 0;
//   DM.LookUser.Close;
//   DM.LookUser.Params.ParamByName('user').AsString:= dm.UserConnect;
//   DM.LookUser.Open;
   Masteran.AsString:= '';
end;

procedure TLapKasirPerShiftFrm.DetailNewRecord(DataSet: TDataSet);
begin
  Detailid_kasir.AsLargeInt:= Masterid.AsLargeInt;
//  Detailiscair.AsString:='0';
//  Detaildebet.AsFloat:= 0;
//  Detailkredit.AsFloat:= 0;

  if Detail.RecNo=0 then
     Detailurut.AsInteger:=1
  else
     Detailurut.AsInteger:=Detail.RecNo;
end;

procedure TLapKasirPerShiftFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Mastershift.IsNull or (Mastershift.AsInteger=0) then
     raise Exception.Create('Shift belum diisi !')
  else
  if (Masteran.IsNull) or (Trim(Masteran.AsString)='') then
     Raise Exception.Create('PETUGAS harus diisi !');

  if Master.State=dsInsert then begin
      Masterid.AsLargeInt:= sq_kasir.GetNextValue;
      Masterusr_ins.AsString:= DM.UserConnect;
      Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
      Masterusr_upd.AsString:= DM.UserConnect;
//  if Masterid.AsLargeInt= -1 then
//     raise Exception.Create('There is internal error (kasirKd_kasir not set). All input aborted !');
end;

procedure TLapKasirPerShiftFrm.pgTransactionChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     Detail.Close;
     Detail.Params.ParamByName('id_kasir').Value:= Masterid.Value;
     Detail.Open;
  end;
end;

procedure TLapKasirPerShiftFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgTransaction.ActivePageIndex:= 1
end;

procedure TLapKasirPerShiftFrm.DetailBeforeInsert(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TLapKasirPerShiftFrm.DetailBeforeEdit(DataSet: TDataSet);
begin
  if Master.State<>dsBrowse then
     Master.Post;
end;

procedure TLapKasirPerShiftFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
  Master.Params.ParamByName('pid_trans').Value:= vjns_transaksi;
  Master.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
  master.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date);
end;

procedure TLapKasirPerShiftFrm.MasterBeforeEdit(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
    Exit;

  if not DM.isSuperUser then begin
    if not CheckEditRight(msg) then
      raise Exception.Create(msg)
  end
end;

procedure TLapKasirPerShiftFrm.MasterBeforeDelete(DataSet: TDataSet);
var msg: string;
begin
  if Master.RecordCount=0 then
     Exit;

  if not DM.isSuperUser then begin
    if not CheckDeleteRight(msg) then
      raise Exception.Create(msg)
  end
end;



procedure TLapKasirPerShiftFrm.actPrintExecute(Sender: TObject);
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


   PopUp.PopupAtCursor;

//
//
//   MemMaster.Close;
//   MemMaster.Open;
//   MemMaster.Append;
//
//   MemMasterno_kasir.AsString:= Masterno_kasir.AsString;
//   MemMasterremarks.AsString:= Masterketerangan.AsString;
//
//    if (Masterispost.AsString='1') and (Masteriscancel.AsString='0') then MemMasterposted.AsString:= 'POSTED'
//    else
//    if (Masterispost.AsString='0') and (Masteriscancel.AsString='1') then MemMasterposted.AsString:= 'BATAL'
//    else MemMasterposted.Clear;
//
//   Dm.qryUser.Close;
//   DM.qryUser.Params.ParamByName('pvuser').Value:= DM.UserConnect;
//   DM.qryUser.Open;
//
//   MemMasterusr_print.AsString:= DM.qryUserfull_name.AsString;
//   MemMasterdt_print.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm:ss',now);
//
//   if Masterdt_kasir.IsNull then MemMasterdt_kasir.AsString:= ''
//   else MemMasterdt_kasir.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_kasir.AsDateTime);
//
//    if Masterdt_transaksi.IsNull then MemMasterdt_transaksi.AsString:= ''
//   else MemMasterdt_transaksi.AsString:= FormatDateTime('dd-mmm-yyyy', Masterdt_transaksi.AsDateTime);
//
//   MemMastershift.Value:= Mastershift.AsInteger;
//   MemMastertotal_str.AsString:= FormatFloat('#,##0.00;(#,##0.00)',Mastertotal.AsFloat);
//   DM.MyKonversi1.Nilai:= Mastertotal.AsFloat;
//   MemMasterterbilang.AsString:= '# '+DM.MyKonversi1.HasilKonversi+' #';
//   MemMaster.Post;
//
////    MemDetail.Close;
////    MemDetail.Open;
////    Detail.DisableControls;
////    try
////      Detail.First;
////      while not Detail.Eof do begin
////         MemDetail.Append;
////         MemDetailno_nota.AsString:= Detailno_nota.AsString;
////         MemDetailno_reg.AsString:= Detailno_register.AsString;
////         MemDetaildibayar.AsFloat:= Detaildibayar.AsFloat;
////         MemDetailbayar.AsString:= Detailcara_bayar.AsString;
////         MemDetailnama_pasien.Value:=UpperCase(Detailnama_pasien.AsString);
////         MemDetailid_pasien.AsString:= Detailid_pasien.AsString;
////         MemDetailtotall.AsFloat:= Detaildibayar.AsFloat;
////         MemDetailuser.AsString:= Detailusr_ins.AsString;
////         MemDetailno.AsString:= IntToStr(Detail.RecNo);
////         MemDetailjenis_nota.AsString:= Detailketerangan.AsString;
////         if Detailcara_bayar.AsString='TUNAI' then
////            MemDetailcara_bayar.AsString:= Detailcara_bayar.AsString
////         else MemDetailcara_bayar.AsString:= 'PIUTANG';
////         MemDetailjns_pembayaran.AsString:= Detailjenis.AsString;
////         MemDetail.Post;
////         Detail.Next;
////      end;
////    finally
////      Detail.First;
////      Detail.EnableControls
////    end;
//
////    qPrint.Close;
////    qPrint.Params.ParamByName('kd_kasir').Value:= Masterkd_kasir.Value;
////    qPrint.Open;
//
//    MemDetail.Close;
//    MemDetail.Open;
//    qPrint.DisableControls;
//    try
//      qPrint.First;
//      while not qPrint.Eof do begin
//         MemDetail.Append;
//         MemDetailno_nota.AsString:= qPrintno_nota.AsString;
//         MemDetailno_reg.AsString:= qPrintno_register.AsString;
//         MemDetaildibayar.AsFloat:= qPrintdibayar.AsFloat;
//         MemDetailbayar.AsString:= qPrintcara_bayar.AsString;
//         MemDetailnama_pasien.Value:=UpperCase(qPrintnama_pasien.AsString);
//         MemDetailid_pasien.AsString:= qPrintid_pasien.AsString;
//         MemDetailtotall.AsFloat:= qPrintdibayar.AsFloat;
//         MemDetailuser.AsString:= qPrintusr_ins.AsString;
//         MemDetailno.AsString:= IntToStr(qPrint.RecNo);
//         MemDetailjenis_nota.AsString:= qPrintketerangan.AsString;
//         MemDetailcara_bayar.AsString:= qPrintstatus.AsString;
//         MemDetailjns_pembayaran.AsString:= qPrintjns_pembayaran.AsString;
//         MemDetailtotal_tunai.AsFloat:= qPrinttotal_tunai.AsFloat;
//         MemDetailtotal_kredit.AsFloat:= qPrinttotal_kredit.AsFloat;
//         MemDetailtunai.AsFloat:= qPrinttunai.AsFloat;
//         MemDetailkredit.AsFloat:= qPrintkredit.AsFloat;
//         MemDetailtotal_seluruh.AsFloat:= qPrinttotal_seluruh.AsFloat;
//         MemDetail.Post;
//         qPrint.Next;
//      end;
//    finally
//      qPrint.First;
//      qPrint.EnableControls
//    end;
// frxRepMaster2.ShowReport;
end;

procedure TLapKasirPerShiftFrm.btnGetItemsClick(Sender: TObject);
var dt, dt2 : TDateTime;
    y,m,d: Word;
    sts_dlg: TfrmStatus_Dialog;
begin
    Detail.Refresh;

   if (Master.State<>dsBrowse) then
      Master.Post;



    DecodeDate(edtDateTransaksi.Date,y,m,d);

    if Mastershift.AsInteger=3 then
       dt2:= EncodeDate(y,m,d+1)
    else dt2:= Masterdt_transaksi.AsDateTime;

    Detail.DisableControls;
    Try
      sts_dlg:= TfrmStatus_Dialog.Create(Application);
      sts_dlg.Reset_Progress;
      sts_dlg.Set_Min(1);
      sts_dlg.Set_Max(3);
      sts_dlg.Set_Status('Harap Tunggu, Sedang Proses Loading Data ...!!!');
      sts_dlg.Show;

      try
        qNota.Close;
        qNota.Open;
        sts_dlg.Progress_It;
        if qNota.RecordCount>0 then begin
           qNota.First;
           while not qNota.Eof do begin
              Detail.Append;
              Detailid_kasir.AsLargeInt:= Masterid.AsLargeInt;
              Detailno_nota.AsString:= qNotano_nota.AsString;
              Detaildt_nota.AsDateTime:= qNotadt_nota.AsDateTime;
              Detailcara_bayar.AsString:= qNotacara_bayar.AsString;
              Detailid_trans.AsString:= qNotaid_trans.AsString;
              Detailnama_kasir.AsString:= qNotausr_upd.AsString;
              Detailnama_customer.AsString:= qNotanama_rekanan.AsString;
              Detailketerangan.AsString:= '-';
              Detailjns_penjualan.AsString:= qNotajns_penjualan.AsString;
              Detailsub_total.AsFloat:= qNotasub_total.AsFloat;
              Detaildisc_member.AsFloat:= qNotadisc_member.AsFloat;
              Detailtotal.AsFloat:= qNotatotal.AsFloat;
              Detail.Post;
              qNota.Next;
              sts_dlg.Progress_It;
           end;

        end

      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end;


      sts_dlg.Progress_It;
    finally
      sts_dlg.Free;
      Detail.First;
      Detail.EnableControls;
    end;


//   Detail.DisableControls;
//   try
//    sts_dlg:= TfrmStatus_Dialog.Create(Application);
//    sts_dlg.Reset_Progress;
//    sts_dlg.Set_Min(1);
//    sts_dlg.Set_Max(3);
//    sts_dlg.Set_Status('Harap Tunggu, Sedang Proses Loading Data ...!!!');
//    sts_dlg.Show;
//
//     try
//
//       if Mastershift.AsInteger=3 then begin
//         qryNota3.Close;
//         qryNota3.Params.ParamByName('pshift').Value:= Mastershift.Value;
//         qryNota3.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',Masterdt_transaksi.AsDateTime);
//         qryNota3.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dt2);
//         qryNota3.Open;
//         sts_dlg.Progress_It;
//         if qryNota3.RecordCount>0 then begin
//            qryNota3.First;
//            while not qryNota3.Eof do begin
//                Detail.Append;
//                Detailno_nota.Value:= qryNota3no_nota.Value;
//                Detailno_register.Value:= qryNota3no_register.Value;
//                Detailnama_pasien.AsString:= qryNota3nama_pasien.AsString;
//                Detailketerangan.AsString:= qryNota3nama_transaksi.AsString;
//
//                Detailcara_bayar.AsString:= qryNota3cara_bayar.AsString;
//                Detailjns_pembayaran.AsString:= qryNota3jns_pembayaran.AsString;
//                if qryNota3id_pasien.AsString='-' then Detailid_pasien.Clear
//                else
//                if (qryNota3id_pasien.IsNull) or (Trim(qryNota3id_pasien.AsString)='') then
//                   Detailid_pasien.Clear
//                else
//                   Detailid_pasien.AsString:= qryNota3id_pasien.AsString;
//
//                if (Trim(qryNota3id_penjamin.AsString)='') or (qryNota3id_penjamin.IsNull) then
//                    Detailid_penjamin.AsString:= qryNota3id_pasien.AsString
//                else begin
//                    if (Trim(qryNota3id_penjamin.AsString)='-') then
//                        Detailid_penjamin.AsString:= qryNota3id_pasien.AsString
//                    else
//                       Detailid_penjamin.AsString:= qryNota3id_penjamin.AsString;
//                end;
//                Detailid_trans.AsString:= qryNota3id_trans.AsString;
//                //Detaildibayar.AsFloat:= DM.Pembulatan(qryNota3total.AsFloat-qryNota3disc_rp.AsFloat);
//                Detailtunai.AsFloat:= qryNota3tunai.AsFloat;
//                Detailklaim.AsFloat:= qryNota3klaim.AsFloat;
//                Detaildt_nota.AsDateTime:= qryNota3dt_nota.AsDateTime;
//                Detailusr_ins.AsString:= qryNota3usr_upd.AsString;
//                if (qryNota3id_rek_gl.IsNull) or (Trim(qryNota3id_rek_gl.AsString)='') then
//                    Detailid_rek_gl.Clear
//                else
//                    Detailid_rek_gl.AsString:= qryNota3id_rek_gl.AsString;
//                Detail.Post;
//                qryNota3.Next;
//                sts_dlg.Progress_It;
//            end;
//         end else begin
//            DM.MyMsg(mmInformation,'Data tidak ditemukan !','');
//         end;
//       end else begin
//         qryNota.Close;
//         qryNota.Params.ParamByName('pshift').Value:= Mastershift.Value;
//         qryNota.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',Masterdt_transaksi.AsDateTime);
//         qryNota.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dt2);
//         qryNota.Open;
//         sts_dlg.Progress_It;
//         if qryNota.RecordCount>0 then begin
//            qryNota.First;
//            while not qryNota.Eof do begin
//                Detail.Append;
//                Detailno_nota.Value:= qryNotano_nota.Value;
//                Detailno_register.Value:= qryNotano_register.Value;
//                Detailnama_pasien.AsString:= qryNotanama_pasien.AsString;
//                Detailketerangan.AsString:= qryNotanama_transaksi.AsString;
//
//                Detailcara_bayar.AsString:= qryNotacara_bayar.AsString;
//                Detailjns_pembayaran.AsString:= qryNotajns_pembayaran.AsString;
//                if qryNotaid_pasien.AsString='-' then Detailid_pasien.Clear
//                else
//                if (qryNotaid_pasien.IsNull) or (Trim(qryNotaid_pasien.AsString)='') then
//                   Detailid_pasien.Clear
//                else
//                   Detailid_pasien.AsString:= qryNotaid_pasien.AsString;
//
//                if (Trim(qryNotaid_penjamin.AsString)='') or (qryNotaid_penjamin.IsNull) then
//                    Detailid_penjamin.AsString:= qryNotaid_pasien.AsString
//                else begin
//                    if (Trim(qryNotaid_penjamin.AsString)='-') then
//                        Detailid_penjamin.AsString:= qryNotaid_pasien.AsString
//                    else
//                       Detailid_penjamin.AsString:= qryNotaid_penjamin.AsString;
//                end;
//                Detailid_trans.AsString:= qryNotaid_trans.AsString;
//                //Detaildibayar.AsFloat:= DM.Pembulatan(qryNotatotal.AsFloat-qryNotadisc_rp.AsFloat);
//                Detailtunai.AsFloat:= qryNotatunai.AsFloat;
//                Detailklaim.AsFloat:= qryNotaklaim.AsFloat;
//                Detaildt_nota.AsDateTime:= qryNotadt_nota.AsDateTime;
//                Detailusr_ins.AsString:= qryNotausr_upd.AsString;
//                if (qryNotaid_rek_gl.IsNull) or (Trim(qryNotaid_rek_gl.AsString)='') then
//                    Detailid_rek_gl.Clear
//                else
//                    Detailid_rek_gl.AsString:= qryNotaid_rek_gl.AsString;
//                Detail.Post;
//                qryNota.Next;
//                sts_dlg.Progress_It;
//            end;
//         end else begin
//            DM.MyMsg(mmInformation,'Data tidak ditemukan !','');
//         end;
//       end;
//     except
//        on E: Exception do
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//     end;
//   sts_dlg.Progress_It;
//   finally
//     sts_dlg.Free;
//     Detail.First;
//     Detail.EnableControls;
//   end;

end;

procedure TLapKasirPerShiftFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
    DecodeDate(edtDatePicker1.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TLapKasirPerShiftFrm.btnOKClick(Sender: TObject);
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

procedure TLapKasirPerShiftFrm.FormShow(Sender: TObject);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;
  edtDatePicker1.Date:= DM.vSysDatedt_server.AsDateTime;
  edtDatePicker1CloseUp(Self);
  btnOK.Click;
end;

procedure TLapKasirPerShiftFrm.edtPetugasPropertiesButtonClick(Sender: TObject;
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

procedure TLapKasirPerShiftFrm.qNotaBeforeOpen(DataSet: TDataSet);
begin
  qNota.Params.ParamByName('pshift').Value:= edtShift.Text;
  qNota.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', edtDateTransaksi.Date);
end;

procedure TLapKasirPerShiftFrm.qTotalBeforeOpen(DataSet: TDataSet);
begin
  qTotal.Params.ParamByName('pshift').Value:= edtShift.Text;
  qTotal.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', edtDateTransaksi.Date);
end;

procedure TLapKasirPerShiftFrm.LaporanKasir1Click(Sender: TObject);
begin
  frxRepMaster2.ShowReport;
end;

procedure TLapKasirPerShiftFrm.TSetoran1Click(Sender: TObject);
begin
  try
    qTotalUser.Close;
    qTotalUser.Params.ParamByName('id_kasir').Value:= Masterid.AsLargeInt;
    qTotalUser.Open;
  except
  end;
    frxTT.ShowReport;
end;

end.

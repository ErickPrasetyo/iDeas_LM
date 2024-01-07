unit U_StatusKasbon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxMemo, Menus, AdvMenus,
  wwDialog, wwidlg, ZAbstractRODataset, ZDataset, frxExportCSV,
  frxExportXLS, frxClass, frxDBSet, frxExportODF, frxExportRTF,
  frxExportPDF, cxGridBandedTableView, cxGridTableView, cxPC, cxGridLevel,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtonEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxContainer,
  cxGroupBox, SCStdControls, AdvReflectionImage, StdCtrls, SCControl,
  cxSplitter, cxRadioGroup, RzPanel, ExtCtrls, DBCtrls, RzDBNav,
  kbmMemTable, RzSplit, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TStatusKasbonFrm = class(TForm)
    pnlTop: TSCPanel;
    lblHeader: TLabel;
    SR: TcxStyleRepository;
    Header: TcxStyle;
    OddRow: TcxStyle;
    EvenRow: TcxStyle;
    cxStyle4: TcxStyle;
    UrgentStyle: TcxStyle;
    DoneStyle: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxODTExport1: TfrxODTExport;
    frxODSExport1: TfrxODSExport;
    frxXLSExport1: TfrxXLSExport;
    frxCSVExport1: TfrxCSVExport;
    qryCA: TZReadOnlyQuery;
    dsCA: TDataSource;
    PopCA: TPopupMenu;
    Summary1: TMenuItem;
    Detail1: TMenuItem;
    frxDBInfo: TfrxDBDataset;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtInfopnamamenu: TStringField;
    kmtInfoperiode: TStringField;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat: TStringField;
    kmtInfofax_telp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    kmtInfoprepared_name: TStringField;
    frxDBMaster: TfrxDBDataset;
    frxCAStatus: TfrxReport;
    qryPrintKBStatus: TZReadOnlyQuery;
    LookEmployee: TwwLookupDialog;
    pgcMaster: TcxPageControl;
    tabStatus: TcxTabSheet;
    tabPayment: TcxTabSheet;
    pnlMain: TSCPanel;
    grdMaster: TcxGrid;
    grdDBTV_CA: TcxGridDBTableView;
    grdLvlMaster: TcxGridLevel;
    SCPanel3: TSCPanel;
    cxGroupBox3: TcxGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SCPanel4: TSCPanel;
    btnFilter: TSCButton;
    cboCAStatus: TcxComboBox;
    edtDateFrom: TcxDateEdit;
    edtDateTo: TcxDateEdit;
    SCPanel1: TSCPanel;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SCPanel5: TSCPanel;
    btnFilter2: TSCButton;
    cboCAPayment: TcxComboBox;
    edtDateFrom1: TcxDateEdit;
    edtDateTo1: TcxDateEdit;
    frxRepCAPayment: TfrxReport;
    frxDBPayment: TfrxDBDataset;
    qryPrintPayment: TZReadOnlyQuery;
    dsqDRealisasi: TDataSource;
    qDRealisasi: TZReadOnlyQuery;
    qDRealisasino_payment: TStringField;
    qDRealisasino_reff: TStringField;
    qDRealisasidt_payment: TDateTimeField;
    qDRealisasikurs: TFloatField;
    qDRealisasiid_curr: TStringField;
    dsqRealisasi: TDataSource;
    qRealisasi: TZReadOnlyQuery;
    qryPrintPaymentnk: TStringField;
    qryPrintPaymentfull_name: TStringField;
    qryPrintPaymentkasbon_untuk: TStringField;
    qryPrintPaymentno_kasbon: TStringField;
    qryPrintPaymentdt_purposed: TDateTimeField;
    qryPrintPaymentid_curr: TStringField;
    qryPrintPaymentkurs: TFloatField;
    qryPrintPaymentjumlah: TFloatField;
    qryPrintPaymentca_total_payment: TFloatField;
    qryPrintPaymenttotal_diff: TFloatField;
    qryPrintPaymentno_payment: TStringField;
    qryPrintPaymentdt_payment: TDateTimeField;
    pnlBottom: TAdvPanel;
    lblRowCount: TLabel;
    btnClose: TSCButton;
    dbnBrowse: TRzDBNavigator;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    cxTabSheet1: TcxTabSheet;
    qryCAnk: TStringField;
    qryCAfull_name: TStringField;
    qryCAkasbon_untuk: TStringField;
    qryCAno_kasbon: TStringField;
    qryCAdt_purposed: TDateTimeField;
    qryCAkasbon_proposed: TFloatField;
    qryCAca_total_payment: TFloatField;
    qryCAtotal_settlement: TFloatField;
    qryCAtotal_diff: TFloatField;
    SCPanel7: TSCPanel;
    cxGroupBox2: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SCPanel8: TSCPanel;
    btnFilter3: TSCButton;
    cboCASettlement: TcxComboBox;
    edtDateFrom2: TcxDateEdit;
    edtDateTo2: TcxDateEdit;
    grdDBTV_CAnk: TcxGridDBColumn;
    grdDBTV_CAfull_name: TcxGridDBColumn;
    grdDBTV_CAkasbon_untuk: TcxGridDBColumn;
    grdDBTV_CAno_kasbon: TcxGridDBColumn;
    grdDBTV_CAdt_purposed: TcxGridDBColumn;
    grdDBTV_CAkasbon_proposed: TcxGridDBColumn;
    grdDBTV_CAca_total_payment: TcxGridDBColumn;
    grdDBTV_CAtotal_settlement: TcxGridDBColumn;
    grdDBTV_CAtotal_diff: TcxGridDBColumn;
    qRealisasink: TStringField;
    qRealisasifull_name: TStringField;
    qRealisasikasbon_untuk: TStringField;
    qRealisasino_kasbon: TStringField;
    qRealisasidt_purposed: TDateTimeField;
    qRealisasiid_curr: TStringField;
    qRealisasikurs: TFloatField;
    qRealisasijumlah: TFloatField;
    qRealisasica_total_payment: TFloatField;
    qRealisasitotal_diff: TFloatField;
    qDRealisasiid_payment: TLargeintField;
    qDRealisasipembayaran: TFloatField;
    qDRealisasipembayaran_idr: TFloatField;
    qDRealisasipaid_from: TStringField;
    qDRealisasinama_rekening: TStringField;
    RzSplitter2: TRzSplitter;
    grdSUM: TcxGrid;
    grddbtvSUM: TcxGridDBTableView;
    grddbtvSUMno_kasbon: TcxGridDBColumn;
    grddbtvSUMdt_purposed: TcxGridDBColumn;
    grddbtvSUMfull_name: TcxGridDBColumn;
    grddbtvSUMkasbon_untuk: TcxGridDBColumn;
    grddbtvSUMjumlah: TcxGridDBColumn;
    grddbtvSUMca_total_payment: TcxGridDBColumn;
    grddbtvSUMtotal_diff: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    grdSUMLevel1: TcxGridLevel;
    grdCashBook: TcxGrid;
    grddbtvCashBook: TcxGridDBTableView;
    grddbtvCashBookpaid_from: TcxGridDBColumn;
    grddbtvCashBookno_payment: TcxGridDBColumn;
    grddbtvCashBookdt_payment: TcxGridDBColumn;
    grddbtvCashBooknama_rekening: TcxGridDBColumn;
    grddbtvCashBookdibayar: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detail: TcxGridDBTableView;
    grddbtvBrowse_PR_Project_Detailid_item: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detaildescription: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detailqty: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detailid_unit: TcxGridDBColumn;
    grdCashBookLevel: TcxGridLevel;
    SCPanel2: TSCPanel;
    Label2: TLabel;
    RzSplitter1: TRzSplitter;
    grdANGSUR: TcxGrid;
    grdDBTV_ANGSUR: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    grdLvlANGSUR: TcxGridLevel;
    grdDetailANGSUR: TcxGrid;
    grdDBTV_DetailANGSUR: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    grdLvlDetailANGSUR: TcxGridLevel;
    SCPanel6: TSCPanel;
    Label8: TLabel;
    qAngsuran: TZReadOnlyQuery;
    qDAngsuran: TZReadOnlyQuery;
    dsqAngsuran: TDataSource;
    dsqDetailAngsuran: TDataSource;
    qAngsurannk: TStringField;
    qAngsuranfull_name: TStringField;
    qAngsurankasbon_untuk: TStringField;
    qAngsuranno_kasbon: TStringField;
    qAngsurandt_purposed: TDateTimeField;
    qAngsurankasbon_proposed: TFloatField;
    qAngsuranca_total_payment: TFloatField;
    qAngsurantotal_settlement: TFloatField;
    qAngsurantotal_diff: TFloatField;
    grdDBTV_ANGSURkasbon_proposed: TcxGridDBColumn;
    qDAngsuranno_settlement: TStringField;
    qDAngsurandt_settlement: TDateTimeField;
    qDAngsuranid_rek_gl: TStringField;
    qDAngsurannama_rekening: TStringField;
    qDAngsuranno_kasbon: TStringField;
    qDAngsuranjumlah: TFloatField;
    qDAngsurandiskripsi: TStringField;
    qryPrintKBStatusnk: TStringField;
    qryPrintKBStatusfull_name: TStringField;
    qryPrintKBStatuskasbon_untuk: TStringField;
    qryPrintKBStatusno_kasbon: TStringField;
    qryPrintKBStatusdt_purposed: TDateTimeField;
    qryPrintKBStatuskasbon_proposed: TFloatField;
    qryPrintKBStatusca_total_payment: TFloatField;
    qryPrintKBStatustotal_settlement: TFloatField;
    qryPrintKBStatustotal_diff: TFloatField;
    qryPrintPaymentpembayaran: TFloatField;
    qryPrintPaymentpembayaran_idr: TFloatField;
    qryPrintPaymentpaid_from: TStringField;
    qryPrintPaymentnama_rekening: TStringField;
    frxDBSettlement: TfrxDBDataset;
    qryPrintSettlement: TZReadOnlyQuery;
    frxRepCASettlement: TfrxReport;
    qryPrintSettlementnk: TStringField;
    qryPrintSettlementfull_name: TStringField;
    qryPrintSettlementkasbon_untuk: TStringField;
    qryPrintSettlementno_kasbon: TStringField;
    qryPrintSettlementdt_purposed: TDateTimeField;
    qryPrintSettlementkasbon_proposed: TFloatField;
    qryPrintSettlementca_total_payment: TFloatField;
    qryPrintSettlementtotal_settlement: TFloatField;
    qryPrintSettlementtotal_diff: TFloatField;
    qryPrintSettlementno_settlement: TStringField;
    qryPrintSettlementdt_settlement: TDateTimeField;
    qryPrintSettlementnama_rekening: TStringField;
    qryPrintSettlementjumlah: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnFilter2Click(Sender: TObject);
    procedure btnFilter3Click(Sender: TObject);

  private
    { Private declarations }
    namamenu : string;
    vtag : integer;
    DBMode: TDBMode;
    procedure UpdateView;
    procedure CetakStatusKasbon(opt: string; val : String);
    procedure CetakRelisasiKasbon(opt: string; val : String);
    procedure CetakAngsuranKasbon(opt: string; val : String);
    function OpenDatasetStatus:String;
    function OpenDatasetPayment(vAct:String):String;
    function OpenDatasetSettlement:String;

  public
    { Public declarations }
  end;

var
  StatusKasbonFrm: TStatusKasbonFrm;

  procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses UDataObject, U_DM, U_PrintOption;

var
  DOB: TDataObject;

{$R *.dfm}


procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  StatusKasbonFrm := TStatusKasbonFrm.Create(Application);
  StatusKasbonFrm.namamenu := pNamaMenu;
  StatusKasbonFrm.vtag:= ptag;
  StatusKasbonFrm.lblHeader.Caption := pNamaMenu;
  StatusKasbonFrm.Caption := pNamaMenu;
  StatusKasbonFrm.pgcMaster.ActivePageIndex:= 0;
  StatusKasbonFrm.DBMode:= dmNone;
  StatusKasbonFrm.UpdateView;
  StatusKasbonFrm.Show;
end;


function TStatusKasbonFrm.OpenDatasetStatus:String;
var
  SQL, Where: String;
begin
  Result:= '';

  Where := '';
  SQL :=
    'SELECT * FROM accfin.v_ca_status WHERE 1=1 ';
  if edtDateFrom.Text<>'' then
    Where := Where + ' AND date_trunc(''day'', dt_purposed)>=' + DOB.ToSQLDate(edtDateFrom.Date);
  if edtDateTo.Text<>'' then
    Where := Where + ' AND date_trunc(''day'', dt_purposed)<=' + DOB.ToSQLDate(edtDateTo.Date);
  case cboCAStatus.ItemIndex of
    1: Where := Where + ' AND total_settlement=0';  // Belum diangsur
    2: Where := Where + ' AND total_settlement>0 AND total_diff >0';  // belum lunas
    3: Where := Where + ' AND total_diff > 0'; //  saldo belum lunas
  end;

  SQL := SQL + Where;
  Result:= SQL;
end;


function TStatusKasbonFrm.OpenDatasetPayment(vAct:String):String;
var
  SQL, Where: String;
begin
  Result:= '';

      Where := '';
      SQL :=
        'SELECT * FROM accfin.v_ca_paid_status WHERE 1=1 ';
      if edtDateFrom1.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', dt_purposed)>=' + DOB.ToSQLDate(edtDateFrom1.Date);
      if edtDateTo1.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', dt_purposed)<=' + DOB.ToSQLDate(edtDateTo1.Date);
      case cboCAPayment.ItemIndex of
        1: Where:= Where+' AND ca_total_payment=0'; // kasbon belum realisasi
        2: Where := Where + ' AND ca_total_payment=0 AND total_diff>0';  // kasbon belum realisasi penuh
        3: Where := Where + ' AND total_diff>0';  // saldo kasbon belum lunas
      end;

  SQL := SQL + Where;
  Result:= SQL;
end;

function TStatusKasbonFrm.OpenDatasetSettlement:String;
var
  SQL, Where: String;
begin
  Result:= '';

      Where := '';
      SQL :=
        'SELECT * FROM accfin.v_ca_status WHERE 1=1 ';
      if edtDateFrom2.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', dt_purposed)>=' + DOB.ToSQLDate(edtDateFrom2.Date);
      if edtDateTo2.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', dt_purposed)<=' + DOB.ToSQLDate(edtDateTo2.Date);
      case cboCASettlement.ItemIndex of
        1: Where:= Where+' AND total_settlement=0'; // belum diangsur
        2: Where := Where + ' AND total_settlement=0 AND total_diff>0';  // belum lunas
        3: Where := Where + ' AND total_diff>0';  // saldo kasbon belum lunas
      end;

  SQL := SQL + Where;
  Result:= SQL;
end;


procedure TStatusKasbonFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qDAngsuran.Close;
  qAngsuran.Close;
  qDRealisasi.Close;
  qRealisasi.Close;
  qryCA.Close;
  DOB.Destroy;
  Action := caFree;
end;

procedure TStatusKasbonFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
     btnRefresh.Visible:= True;
     btnRefresh.Enabled:= False;
     btnPrint.Enabled:= False;
  end else begin
    isBrowse := DBMode=dmBrowse;
    case pgcMaster.ActivePageIndex of
      0 : isEmpty := qryCA.RecordCount=0;
      1 : isEmpty := qRealisasi.RecordCount=0;
      2 : isEmpty := qAngsuran.RecordCount=0;
    end;

    dbnBrowse.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnRefresh.Visible:= isBrowse;
    btnRefresh.Enabled:= not isEmpty;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled:= not isEmpty and accprint;
  end;
end;

procedure TStatusKasbonFrm.FormShow(Sender: TObject);
begin
  DOB := TDataObject.Create(DM.Conn);
//  DM.SetDelphiFormat;
end;

procedure TStatusKasbonFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TStatusKasbonFrm.CetakStatusKasbon(opt: string; val : String);
var vSQL : String;
begin

    vSQL:= OpenDatasetStatus;
    if opt='P' then begin
       vSQL:= vSQL+ ' AND nk='+QuotedStr(Trim(val)) ;
    end;

    vSQL:= vSQL+' ORDER BY no_kasbon';

    qryPrintKBStatus.Close;
    qryPrintKBStatus.SQL.Clear;
    qryPrintKBStatus.Params.Clear;
    qryPrintKBStatus.SQL.Text := vSQL;
    qryPrintKBStatus.Open;

    qryPrintKBStatus.First;
    frxCAStatus.ShowReport;
end;


procedure TStatusKasbonFrm.CetakRelisasiKasbon(opt: string; val : String);
var  SQL, Where : String;
begin
      Where := '';
      SQL := 'SELECT ca.*, pc.paid_from, pc.no_payment, pc.dt_payment';
      SQL := SQL+' pc.pembayaran, pc.pembayaran_idr, pc.nama_rekening';
      SQL := SQL+' FROM accfin.v_ca_paid_status ca';
      SQL := SQL+' LEFT JOIN accfin.vpembayaran_ca pc ON pc.no_reff=ca.no_kasbon';
      SQL := SQL+' WHERE 1=1 ';
      if edtDateFrom1.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', ca.dt_purposed)>=' + DOB.ToSQLDate(edtDateFrom1.Date);
      if edtDateTo1.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', ca.dt_purposed)<=' + DOB.ToSQLDate(edtDateTo1.Date);
      case cboCAPayment.ItemIndex of
        1: Where:= Where+' AND ca.ca_total_payment=0'; // kasbon belum realisasi
        2: Where := Where + ' AND ca.ca_total_payment=0 AND ca.total_diff>0';  // kasbon belum realisasi penuh
        3: Where := Where + ' AND ca.total_diff>0';  // saldo kasbon belum lunas
      end;
      if opt='P' then begin
         Where := Where+' AND ca.nk='+QuotedStr(Trim((val)));
      end;

        if qRealisasi.RecordCount=0 then
           Exit;
        try
         try
           qryPrintPayment.Close;
           qryPrintPayment.SQL.Clear;
           qryPrintPayment.Params.Clear;
           qryPrintPayment.SQL.Add(SQL+Where);
           qryPrintPayment.Open;
         except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
         end;
        finally
         frxRepCAPayment.ShowReport;
        end;

end;


procedure TStatusKasbonFrm.CetakAngsuranKasbon(opt: string; val : String);
var  SQL, Where : String;
begin
      Where := '';
      SQL := 'SELECT ca.*, cs.no_settlement, cs.dt_settlement, cs.nama_rekening, cs.jumlah';
      SQL := SQL+' FROM accfin.v_ca_status ca';
      SQL := SQL+' LEFT JOIN accfin.v_ca_settlement cs ON cs.no_kasbon=ca.no_kasbon';
      SQL := SQL+' WHERE 1=1 ';
      if edtDateFrom1.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', ca.dt_purposed)>=' + DOB.ToSQLDate(edtDateFrom2.Date);
      if edtDateTo1.Text<>'' then
        Where := Where + ' AND date_trunc(''day'', ca.dt_purposed)<=' + DOB.ToSQLDate(edtDateTo2.Date);


      case cboCASettlement.ItemIndex of
        1: Where:= Where+' AND ca.total_settlement=0'; // belum diangsur
        2: Where := Where + ' AND ca.total_settlement=0 AND ca.total_diff>0';  // belum lunas
        3: Where := Where + ' AND ca.total_diff>0';  // saldo kasbon belum lunas
      end;

      if opt='P' then begin
         Where := Where+' AND ca.nk='+QuotedStr(Trim((val)));
      end;

        if qAngsuran.RecordCount=0 then
           Exit;
        try
         try
           qryPrintSettlement.Close;
           qryPrintSettlement.SQL.Clear;
           qryPrintSettlement.Params.Clear;
           qryPrintSettlement.SQL.Add(OpenDatasetSettlement);
           qryPrintSettlement.Open;
         except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
         end;
        finally
         frxRepCASettlement.ShowReport;
        end;

end;

procedure TStatusKasbonFrm.btnPrintClick(Sender: TObject);
var vSQL : String;
    f: TPrintOptionFrm;
begin

  DM.vSysDate.Close;
  DM.vSysDate.Open;
  kmtInfo.Close;
  kmtInfo.Open;
  kmtInfo.Append;
  DM.Perusahaan.Close;
  DM.Perusahaan.Open;

  kmtInfouser_id.AsString := DM.UserConnect;
  kmtInfouser_name.AsString := DM.UserConnect;
  kmtInfoperiode.AsString := 'Periode : '+ FormatDateTime('dd mmm yyyy',edtDateFrom.Date)+' to '+FormatDateTime('dd mmm yyyy',edtDateTo.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pgcMaster.ActivePage.Caption);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.Clear;
  kmtInfo.Post;

   try
     f:= TPrintOptionFrm.Create(Application);
     f.vMode:= 2;
     if f.ShowModal=mrOK then begin
         if f.RB_KB_Semua.Checked then begin
            case pgcMaster.ActivePageIndex of
             0: CetakStatusKasbon('S','');
             1: CetakRelisasiKasbon('S','');
             2: CetakAngsuranKasbon('S','');
            end;
         end
         else
         if f.RB_KB_Pegawai.Checked then begin
            case pgcMaster.ActivePageIndex of
             0: CetakStatusKasbon('P', Trim(F.EPEGAWAI.Text));
             1: CetakRelisasiKasbon('P', Trim(F.EPEGAWAI.Text));
             2: CetakAngsuranKasbon('P', Trim(F.EPEGAWAI.Text));
            end;
            kmtInfo.Edit;
            kmtInfofilter.AsString:= 'PEGAWAI : '+DM.L_Pegawaifull_name.AsString;
            kmtInfo.Post;
         end;
     end;
   finally
     f.Free;
   end;
end;
procedure TStatusKasbonFrm.btnFilterClick(Sender: TObject);
begin
  qryCA.Close;
  qryCA.SQL.Clear;
  qryCA.Params.Clear;
  qryCA.SQL.Text := OpenDatasetStatus;
  qryCA.Open;

  if qryCA.RecordCount=0 then
    lblRowCount.Caption := 'No data to display'
  else
    lblRowCount.Caption := IntToStr(qryCA.RecordCount) + ' row(s)';

  DBMode:= dmBrowse;
  UpdateView;

end;

procedure TStatusKasbonFrm.btnRefreshClick(Sender: TObject);
begin
  case pgcMaster.ActivePageIndex of
    0 : btnFilterClick(nil);
    1 : btnFilter2Click(nil);
    2 : btnFilter3Click(nil);
  end;

end;

procedure TStatusKasbonFrm.btnFilter2Click(Sender: TObject);
begin
  try
    qDRealisasi.Close;
    qRealisasi.Close;
    qRealisasi.SQL.Clear;
    qRealisasi.Params.Clear;
    qRealisasi.SQL.Text := OpenDatasetPayment('view');
    qRealisasi.Open;
    qDRealisasi.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TStatusKasbonFrm.btnFilter3Click(Sender: TObject);
begin
  try
    qDAngsuran.Close;
    qAngsuran.Close;
    qAngsuran.SQL.Clear;
    qAngsuran.Params.Clear;
    qAngsuran.SQL.Text := OpenDatasetSettlement;
    qAngsuran.Open;
    qDAngsuran.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;

end.

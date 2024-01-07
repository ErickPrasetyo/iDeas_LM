unit U_Verifikasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, Menus,
  cxLookAndFeelPainters, cxSpinEdit, wwdbdatetimepicker, StdCtrls,
  cxButtons, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Wwkeycb, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, SCControl, AdvReflectionImage,
  AdvAppStyler, AdvToolBar, AdvToolBarStylers, AdvPanel,
  cxGridBandedTableView, kbmMemTable, frxClass, frxDBSet, ZSequence,
  ZDataset, ZAbstractRODataset, ZAbstractDataset, DateUtils, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, wwDialog, wwidlg, cxButtonEdit,
  cxDBLabel, cxGroupBox, cxDBEdit, frxExportRTF, frxExportPDF, frxExportXLS,
  RzPanel, RzSplit, cxLookAndFeels, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TVerifikasiFrm = class(TForm)
    pnlBottom: TSCPanel;
    dbnItem: TRzDBNavigator;
    btnRefresh: TSCButton;
    btnClose: TSCButton;
    btnSearch: TSCButton;
    btnPrint: TSCButton;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    AFS: TAdvFormStyler;
    pnlTop: TSCPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    dsDetail: TDataSource;
    Detail: TZQuery;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    frxRepMaster: TfrxReport;
    MemMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    frxDBInfo: TfrxDBDataset;
    MemRepInfo: TkbmMemTable;
    MemRepInfojudul: TStringField;
    MemRepInfousr_print: TStringField;
    MemRepInfodt_print: TStringField;
    MemRepInfotgl1: TStringField;
    MemRepInfotgl2: TStringField;
    dsMaster: TDataSource;
    Master: TZQuery;
    pnlSearch: TSCPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    MemMasterno_pemb: TStringField;
    MemMasterno_bukti: TStringField;
    MemMastertgl: TStringField;
    MemMasterdiskripsi: TStringField;
    MemMasterdebet: TFloatField;
    MemMasterkredit: TFloatField;
    MemRepInfokode_rek: TStringField;
    MemRepInfosal_awal: TStringField;
    MemRepInfosal_akir: TStringField;
    MemRepInfomutasi: TStringField;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    cxLabel1: TcxLabel;
    frxRTFExport1: TfrxRTFExport;
    rsMaster: TRzSplitter;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    description: TcxGridDBColumn;
    qty_ot: TcxGridDBColumn;
    satuan: TcxGridDBColumn;
    harga: TcxGridDBColumn;
    disc_psn: TcxGridDBColumn;
    sub_total: TcxGridDBColumn;
    grdDetailLevel1: TcxGridLevel;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    grdMasterLevel1: TcxGridLevel;
    btnOK: TSCButton;
    Masterid_mutasi: TLargeintField;
    Mastermutasi_no: TStringField;
    Masterdt_mutasi: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masterremarks: TStringField;
    Masternama_rekanan: TStringField;
    grddbtvMastermutasi_no: TcxGridDBColumn;
    grddbtvMasterdt_mutasi: TcxGridDBColumn;
    grddbtvMasterremarks: TcxGridDBColumn;
    grddbtvMasternama_rekanan: TcxGridDBColumn;
    Masterjenis_bon: TStringField;
    grddbtvMasterjenis_bon: TcxGridDBColumn;
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
    Detailunit_price: TFloatField;
    Detailistambahan: TStringField;
    Detailid_mutasi_detail: TLargeintField;
    Detailppn_rp: TFloatField;
    grddbtvDetailid_item: TcxGridDBColumn;
    grddbtvDetaildescription: TcxGridDBColumn;
    grddbtvDetailqty_in: TcxGridDBColumn;
    grddbtvDetailqty_ot: TcxGridDBColumn;
    grddbtvDetailsatuan: TcxGridDBColumn;
    grddbtvDetailnomor: TcxGridDBColumn;
    grddbtvDetailistambahan: TcxGridDBColumn;
    edtNoMutasi: TcxTextEdit;
    btnVerifikasi: TSCButton;
    qryExec: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure DetailBeforeOpen(DataSet: TDataSet);
    procedure MasterAfterScroll(DataSet: TDataSet);
    procedure btnVerifikasiClick(Sender: TObject);
    procedure grddbtvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
    procedure OpenDataset;
  public
    { Public declarations }
  end;

var
  VerifikasiFrm: TVerifikasiFrm;

  procedure ShowForm(ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(ptag : integer);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;

  VerifikasiFrm:= TVerifikasiFrm.Create(Application);
  with VerifikasiFrm do begin
      vtag:= ptag;
      UpdateView;
      ShowWindow(Handle, SW_Maximize);
  end;
end;

procedure TVerifikasiFrm.OpenDataset;
var s : String;
begin
   if Trim(edtNoMutasi.Text)='' then begin
     s:= 'select a.id_mutasi, a.mutasi_no, a.dt_mutasi, a.kd_rekanan,';
     s:= s+' a.remarks, b.nama_rekanan, c.description as jenis_bon';
     s:= s+' from inventory.mutasi a';
     s:= s+' left join master.mrekanan b on b.kd_rekanan=a.kd_rekanan';
     s:= s+' left join master.mtransaction c on c.id_trans=a.id_trans';
     s:= s+' where a.isdelete='+ QuotedStr('0');
     s:= s+' and a.iscancel='+QuotedStr('0')+' and a.ispost='+QuotedStr('0')
   end
   else begin
     s:= 'select a.id_mutasi, a.mutasi_no, a.dt_mutasi, a.kd_rekanan,';
     s:= s+' a.remarks, b.nama_rekanan, c.description as jenis_bon';
     s:= s+' from inventory.mutasi a';
     s:= s+' left join master.mrekanan b on b.kd_rekanan=a.kd_rekanan';
     s:= s+' left join master.mtransaction c on c.id_trans=a.id_trans';
     s:= s+' where a.isdelete='+ QuotedStr('0');
     s:= s+' and a.iscancel='+QuotedStr('0')+' and a.ispost='+QuotedStr('0');
     s:= s+' and a.mutasi_no='+QuotedStr(edtNoMutasi.Text);
   end;


   try
     Master.Close;
     Master.SQL.Clear;
     Master.Params.Clear;
     Master.SQL.Add(s);
     Master.Open;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TVerifikasiFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accrekening, accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
     grdMaster.Enabled:= False;
     grdDetail.Enabled:= False;
     btnSearch.Visible:= True;
     btnSearch.Enabled:= False;
     btnRefresh.Visible:= True;
     btnRefresh.Enabled:= False;
     btnPrint.Visible:= True;
     btnPrint.Enabled:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;

     dbnItem.Enabled:= isBrowse;
     grdMaster.Enabled:= isBrowse;
     grdDetail.Enabled:= isBrowse;

     DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

     btnSearch.Visible:= isBrowse;
     btnSearch.Enabled:= not isEmpty;
     btnRefresh.Visible := isBrowse;
     btnRefresh.Enabled := isBrowse;
     btnPrint.Visible:= isBrowse;
     btnPrint.Enabled:= not isEmpty and accprint;

     grddbtvMaster.OptionsData.Appending:= False;
     grddbtvMaster.OptionsData.Inserting:= False;
     grddbtvMaster.OptionsData.Editing:= False;
     grddbtvMaster.OptionsData.Deleting:= False;

  end;
end;


procedure TVerifikasiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
 VerifikasiFrm:=nil;
end;

procedure TVerifikasiFrm.btnOKClick(Sender: TObject);
begin
  OpenDataset;
  UpdateView;
end;

procedure TVerifikasiFrm.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TVerifikasiFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TVerifikasiFrm.btnPrintClick(Sender: TObject);
var i, row_count: Integer;
begin
//  if Master.RecordCount=0 then
//     Exit;
//  try
//    try
//        DM.vSysDate.Close;
//        DM.vSysDate.Open;
//        DM.L_Perusahaan.Close;
//        DM.L_Perusahaan.Open;
//
//         MemInfoPerusahaan.Close;
//         MemInfoPerusahaan.Open;
//         MemInfoPerusahaan.Append;
//         MemInfoPerusahaannama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
//         MemInfoPerusahaanalamat_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString;
//         MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.L_Perusahaanphone.AsString;
//         MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.L_Perusahaanfax.AsString;
//         MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaancity.AsString;
//         MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO.JPG');
//         MemInfoPerusahaan.Post;
//
//         MemRepInfo.Close;
//         MemRepInfo.Open;
//         MemRepInfo.Append;
//         MemRepInfotgl1.AsString:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
//         MemRepInfotgl2.AsString:= FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date);
//         MemRepInfokode_rek.AsString:=UpperCase(qryRekdescriptions.AsString)+' ('+qryRekid_rek_gl.AsString+')';
//         MemRepInfosal_awal.AsString:=FormatFloat('#,##0.00;(#,##0.00)',qrySaldosaldo_awal.AsFloat);
//         MemRepInfomutasi.AsString:=FormatFloat('#,##0.00;(#,##0.00)',qryMutasimutasi.AsFloat);
//         MemRepInfosal_akir.AsString:=FormatFloat('#,##0.00;(#,##0.00)',qrySaldosaldo_akhir.AsFloat);
//
//         Dm.qryUser.Close;
//         DM.qryUser.Params.ParamByName('pvuser').Value:= DM.UserConnect;
//         DM.qryUser.Open;
//
//         MemRepInfousr_print.AsString:= DM.qryUserfull_name.AsString;
//         MemRepInfodt_print.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm:ss',now);
//         MemRepInfo.Post;
//
//         MemMaster.Close;
//         MemMaster.Open;
//
//         Master.First;
//         Master.DisableControls;
//         while not Master.Eof do begin
//            MemMaster.Append;
//            MemMasterno_pemb.AsString:=Masterno_payment.AsString;
//            MemMasterno_bukti.AsString:=Masterno_bukti.AsString;
//            MemMastertgl.AsString:=FormatDateTime('dd/mm/yyyy',Masterdt_payment.AsDateTime);
//            MemMasterdiskripsi.AsString:=Masterdescription.AsString;
//            MemMasterdebet.AsFloat:=Masterdebet.AsFloat;
//            MemMasterkredit.AsFloat:=Masterkredit.AsFloat;
//            MemMaster.Post;
//            Master.Next;
//         end;
//         Master.EnableControls;
//         Master.First;
//
//         frxRepMaster.ShowReport;
//     except
//       on E: Exception do
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//     end;
//  finally
//     Master.EnableControls;
//     Master.First;
//  end;
end;

procedure TVerifikasiFrm.DetailBeforeOpen(DataSet: TDataSet);
begin
    Detail.Params.ParamByName('id_mutasi').Value:= Masterid_mutasi.AsLargeInt;
end;

procedure TVerifikasiFrm.MasterAfterScroll(DataSet: TDataSet);
begin
  try
    detail.Close;
    detail.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TVerifikasiFrm.btnVerifikasiClick(Sender: TObject);
var s : String;
begin
   s:= 'update inventory.mutasi set ispost='+QuotedStr('1');
   s:= s+', usr_post='+QuotedStr(DM.UserConnect)+', dt_post=now()';
   s:= s+' where id_mutasi='+IntToStr(Masterid_mutasi.AsLargeInt);
   try
     DM.PrepareQuery(qryExec);
     DM.ExecQuery(qryExec,s);
     DM.MyMsg(mmInformation,'Verifikasi Sukses !','');
     edtNoMutasi.Text:= '';
     btnOKClick(nil);
   except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
   end;
end;

procedure TVerifikasiFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnVerifikasiClick(nil);
end;

end.

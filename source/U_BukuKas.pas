unit U_BukuKas;

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
  TBukuKasFrm = class(TForm)
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
    dsMaster: TDataSource;
    Master: TZQuery;
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
    dsRek: TDataSource;
    qryRek: TZQuery;
    qryRekid_rek_gl: TStringField;
    qryRekdescriptions: TStringField;
    LookRek: TwwLookupDialog;
    qrySaldo: TZQuery;
    cxLabel4: TcxLabel;
    dsSaldo: TDataSource;
    qryMutasi: TZQuery;
    dsMutasi: TDataSource;
    pnlSearch: TSCPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    pnlFooter: TSCPanel;
    Label3: TLabel;
    Label4: TLabel;
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
    cxLabel2: TcxLabel;
    edtDatePicker1: TwwDBDateTimePicker;
    edtDatePicker2: TwwDBDateTimePicker;
    frxRTFExport1: TfrxRTFExport;
    qrySaldosaldo_awal: TFloatField;
    edtSalAwal: TcxDBTextEdit;
    edtMutasi: TcxDBTextEdit;
    qrySaldosaldo_akhir: TFloatField;
    qryMutasimutasi: TFloatField;
    edtSalAkhir: TcxDBTextEdit;
    Masterno_payment: TStringField;
    Masterno_bukti: TStringField;
    Masterkd_rekanan: TStringField;
    Masterdt_payment: TDateTimeField;
    Masterid_trans: TStringField;
    Masterid_curr: TStringField;
    Masterno_cek_bg_tt: TStringField;
    Masterid_rek_gl: TStringField;
    Masterdescription: TStringField;
    Masternama_rekanan: TStringField;
    Masternama_transaksi: TStringField;
    Masterdebet: TFloatField;
    Masterkredit: TFloatField;
    rsMaster: TRzSplitter;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grddbtvDetailno_payment: TcxGridDBColumn;
    grddbtvDetailno_bukti: TcxGridDBColumn;
    grddbtvDetaildt_payment: TcxGridDBColumn;
    grddbtvDetaildescription: TcxGridDBColumn;
    grddbtvDetaildebet: TcxGridDBColumn;
    grddbtvDetailkredit: TcxGridDBColumn;
    description: TcxGridDBColumn;
    qty_ot: TcxGridDBColumn;
    satuan: TcxGridDBColumn;
    harga: TcxGridDBColumn;
    disc_psn: TcxGridDBColumn;
    sub_total: TcxGridDBColumn;
    grdDetailLevel1: TcxGridLevel;
    qryRekawal: TFloatField;
    qryRekberjalan: TFloatField;
    qryRekakhir: TFloatField;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    grdMasterLevel1: TcxGridLevel;
    grddbtvMasterdescriptions: TcxGridDBColumn;
    grddbtvMasterid_rek_gl: TcxGridDBColumn;
    grddbtvMasterawal: TcxGridDBColumn;
    grddbtvMasterberjalan: TcxGridDBColumn;
    grddbtvMasterakhir: TcxGridDBColumn;
    btnOK: TSCButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure qrySaldoCalcFields(DataSet: TDataSet);
    procedure qryRekCalcFields(DataSet: TDataSet);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure qrySaldoBeforeOpen(DataSet: TDataSet);
    procedure qryMutasiBeforeOpen(DataSet: TDataSet);
    procedure qryRekAfterScroll(DataSet: TDataSet);
    procedure qryRekBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  BukuKasFrm: TBukuKasFrm;

  procedure ShowForm(ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(ptag : integer);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;

  BukuKasFrm:= TBukuKasFrm.Create(Application);
  with BukuKasFrm do begin
      vtag:= ptag;
      UpdateView;
      ShowWindow(Handle, SW_Maximize);
  end;
end;

procedure TBukuKasFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if qryRek.State=dsInactive then begin
     grdMaster.Enabled:= False;
     grdDetail.Enabled:= False;
     btnSearch.Visible:= True;
     btnSearch.Enabled:= False;
     btnRefresh.Visible:= True;
     btnRefresh.Enabled:= False;
     btnPrint.Visible:= True;
     btnPrint.Enabled:= False;
  end else begin
    isBrowse := qryRek.State=dsBrowse;
    isEmpty := qryRek.RecordCount=0;

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


procedure TBukuKasFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
 BukuKasFrm:=nil;
end;

procedure TBukuKasFrm.btnOKClick(Sender: TObject);
begin
  try
    qryRek.Close;
    qryRek.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  UpdateView;
end;

procedure TBukuKasFrm.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TBukuKasFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TBukuKasFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TBukuKasFrm.btnPrintClick(Sender: TObject);
var i, row_count: Integer;
begin
  if Master.RecordCount=0 then
     Exit;
  try
    try
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
         MemInfoPerusahaan.Post;

         MemRepInfo.Close;
         MemRepInfo.Open;
         MemRepInfo.Append;
         MemRepInfotgl1.AsString:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
         MemRepInfotgl2.AsString:= FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date);
         MemRepInfokode_rek.AsString:=UpperCase(qryRekdescriptions.AsString)+' ('+qryRekid_rek_gl.AsString+')';
         MemRepInfosal_awal.AsString:=FormatFloat('#,##0.00;(#,##0.00)',qrySaldosaldo_awal.AsFloat);
         MemRepInfomutasi.AsString:=FormatFloat('#,##0.00;(#,##0.00)',qryMutasimutasi.AsFloat);
         MemRepInfosal_akir.AsString:=FormatFloat('#,##0.00;(#,##0.00)',qrySaldosaldo_akhir.AsFloat);

         Dm.qryUser.Close;
         DM.qryUser.Params.ParamByName('pvuser').Value:= DM.UserConnect;
         DM.qryUser.Open;

         MemRepInfousr_print.AsString:= DM.qryUserfull_name.AsString;
         MemRepInfodt_print.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm:ss',now);
         MemRepInfo.Post;

         MemMaster.Close;
         MemMaster.Open;

         Master.First;
         Master.DisableControls;
         while not Master.Eof do begin
            MemMaster.Append;
            MemMasterno_pemb.AsString:=Masterno_payment.AsString;
            MemMasterno_bukti.AsString:=Masterno_bukti.AsString;
            MemMastertgl.AsString:=FormatDateTime('dd/mm/yyyy',Masterdt_payment.AsDateTime);
            MemMasterdiskripsi.AsString:=Masterdescription.AsString;
            MemMasterdebet.AsFloat:=Masterdebet.AsFloat;
            MemMasterkredit.AsFloat:=Masterkredit.AsFloat;
            MemMaster.Post;
            Master.Next;
         end;
         Master.EnableControls;
         Master.First;
         
         frxRepMaster.ShowReport;
     except
       on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
     end;
  finally
     Master.EnableControls;
     Master.First;
  end;
end;

procedure TBukuKasFrm.qrySaldoCalcFields(DataSet: TDataSet);
begin
   qrySaldosaldo_akhir.AsFloat:= qrySaldosaldo_awal.AsFloat+qryMutasimutasi.AsFloat;
end;

procedure TBukuKasFrm.qryRekCalcFields(DataSet: TDataSet);
begin
   qryRekakhir.AsFloat:= qryRekawal.AsFloat+qryRekberjalan.AsFloat;
end;

procedure TBukuKasFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
    Master.Params.ParamByName('pid_rek_gl').Value:=qryRekid_rek_gl.AsString;
    Master.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    Master.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

procedure TBukuKasFrm.qrySaldoBeforeOpen(DataSet: TDataSet);
begin
    qrySaldo.Params.ParamByName('pid_rek_gl').Value:=qryRekid_rek_gl.AsString;
    qrySaldo.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
end;

procedure TBukuKasFrm.qryMutasiBeforeOpen(DataSet: TDataSet);
begin
    qryMutasi.Params.ParamByName('pid_rek_gl').Value:=qryRekid_rek_gl.AsString;
    qryMutasi.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qryMutasi.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

procedure TBukuKasFrm.qryRekAfterScroll(DataSet: TDataSet);
begin
  try
    Master.Close;
    Master.Open;
    qrySaldo.Close;
    qrySaldo.Open;
    qryMutasi.Close;
    qryMutasi.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TBukuKasFrm.qryRekBeforeOpen(DataSet: TDataSet);
begin
    qryRek.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qryRek.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

end.

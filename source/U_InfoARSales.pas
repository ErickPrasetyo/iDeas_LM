unit U_InfoARSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, StdCtrls,
  wwdbdatetimepicker, SCControl, SCStdControls, frxClass,
  ZAbstractRODataset, ZDataset, frxChBox, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  kbmMemTable, frxDBSet, frxExportPDF, frxExportRTF, frxExportXML, frxRich,
  wwDialog, wwidlg, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, DBCtrls, RzDBNav,
  ExtCtrls, cxPC, cxCheckBox, ZAbstractDataset, cxRadioGroup, RzPanel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TInfoARSalesFrm = class(TForm)
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMaster: TfrxDBDataset;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtInfopnamamenu: TStringField;
    frxDBInfo: TfrxDBDataset;
    pnlHeader: TAdvPanel;
    lblHeader1: TLabel;
    ATBos: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    AdvPanel1: TAdvPanel;
    dbnBrowse: TRzDBNavigator;
    btnClose: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    kmtInfoperiode: TStringField;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    dsMaster: TDataSource;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat: TStringField;
    kmtInfofax_telp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    kmtInfoprepared_name: TStringField;
    frxARList_SLS: TfrxReport;
    frxARList_OLT: TfrxReport;
    SCPanel3: TSCPanel;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    grdOutlet: TcxGrid;
    grddbtvOutlet: TcxGridDBTableView;
    grdlvlOutlet: TcxGridLevel;
    cxLabel1: TcxLabel;
    rgStatus: TRzGroupBox;
    RB_SEMUA: TcxRadioButton;
    RB_SDH_DIBAYAR: TcxRadioButton;
    RB_BLM_DIBAYAR: TcxRadioButton;
    RB_BLM_LUNAS: TcxRadioButton;
    RB_SALDO_BLM_LUNAS: TcxRadioButton;
    edtSaleman: TcxButtonEdit;
    LblSales: TLabel;
    grddbtvOutletno_nota: TcxGridDBColumn;
    grddbtvOutletdt_nota: TcxGridDBColumn;
    grddbtvOutletnama_rekanan: TcxGridDBColumn;
    grddbtvOutletnama_sales: TcxGridDBColumn;
    grddbtvOutletno_bukti: TcxGridDBColumn;
    grddbtvOutlettotal: TcxGridDBColumn;
    grddbtvOutletpembayaran: TcxGridDBColumn;
    grddbtvOutletsisa: TcxGridDBColumn;
    Master: TZQuery;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masterid_division: TStringField;
    Masternama_sales: TStringField;
    Masterno_bukti: TStringField;
    Mastertotal: TFloatField;
    Masterpembayaran: TFloatField;
    Mastersisa: TFloatField;
    kmtMaster: TkbmMemTable;
    kmtMasterno_nota: TStringField;
    kmtMasterdt_nota: TDateTimeField;
    kmtMasterkd_rekanan: TStringField;
    kmtMasternama_rekanan: TStringField;
    kmtMasterid_division: TStringField;
    kmtMasternama_sales: TStringField;
    kmtMasterno_bukti: TStringField;
    kmtMastertotal: TFloatField;
    kmtMasterpembayaran: TFloatField;
    kmtMastersisa: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtSalemanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RB_SEMUAClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    namamenu, vFilter : string;
    vtag : integer;
    procedure UpdateView;
    procedure OpenDataset;
    procedure PrepareForPrint(pCap : String);

  public
    { Public declarations }
  end;

var
  InfoARSalesFrm: TInfoARSalesFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_CariRekanan ;

{$R *.dfm}
procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoARSalesFrm := TInfoARSalesFrm.Create(Application);
  InfoARSalesFrm.namamenu := pNamaMenu;
  InfoARSalesFrm.vtag:= ptag;
  InfoARSalesFrm.lblHeader1.Caption := pNamaMenu;
  InfoARSalesFrm.Show;
end;


procedure TInfoARSalesFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TInfoARSalesFrm.OpenDataset;
var dt, s, wherestr, ordr : String;
begin
   dt:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);


   if RB_SEMUA.Checked then begin
      wherestr:= '';
      vFilter:= 'SEMUA FAKTUR';
   end
   else
   if RB_SDH_DIBAYAR.Checked then begin
      wherestr:= ' WHERE a.pembayaran > 0 ';
      vFilter:= 'FAKTUR SUDAH DIBAYAR';
   end
   else
   if RB_BLM_DIBAYAR.Checked then begin
      wherestr:= ' WHERE a.pembayaran <= 0 ';
      vFilter:= 'FAKTUR BELUM DIBAYAR';
   end
   else
   if RB_BLM_LUNAS.Checked then begin
      wherestr:= ' WHERE a.sisa > 0  AND  a.pembayaran > 0 ';
      vFilter:= 'FAKTUR DIBAYAR TAPI BELUM LUNAS';
   end
   else
   if RB_SALDO_BLM_LUNAS.Checked then begin
      wherestr:= ' WHERE a.sisa > 0 ';
      vFilter:= 'total FAKTUR BELUM lunas';
   end;

   if Trim(edtSaleman.Text)='SEMUA' then begin
      ordr:= 'a.nama_sales, a.nama_rekanan';
   end
   else begin
      if RB_SEMUA.Checked then
         wherestr:= ' WHERE a.id_division='+QuotedStr(Trim(edtSaleman.Text))
      else wherestr:= wherestr+ ' AND a.id_division='+QuotedStr(Trim(edtSaleman.Text));
      ordr:= 'a.nama_rekanan';
   end;

   s:= 'SELECT a.* FROM transaksi.fn_rep_ar_list('+QuotedStr(dt)+') a ';
   s:= s+wherestr;
   s:= s+' ORDER BY '+ordr;

   try
     DM.PrepareQuery(Master);
     DM.OpenQuery(Master,s);
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TInfoARSalesFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnPrint.Visible:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    dbnBrowse.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    grddbtvOutlet.OptionsData.Inserting:= False;
    grddbtvOutlet.OptionsData.Editing:= False;
    grddbtvOutlet.OptionsData.Deleting:= False;

    btnRefresh.Enabled:= not isEmpty;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
  end;
end;


procedure TInfoARSalesFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoARSalesFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TInfoARSalesFrm.btnOKClick(Sender: TObject);
begin
 if Trim(edtSaleman.Text)='' then begin
     DM.MyMsg(mmInformation,'Pilih Dahulu SALESMAN ', '');
     Exit;
 end;
  OpenDataset;
  UpdateView;
end;


procedure TInfoARSalesFrm.PrepareForPrint(pCap : String);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;
  DM.Perusahaan.Close;
  DM.Perusahaan.Open;
  kmtInfo.Close;
  kmtInfo.Open;
  kmtInfo.Append;
  kmtInfouser_id.AsString := DM.UserConnect;
  kmtInfouser_name.AsString := DM.L_Userfull_name.AsString;
  kmtInfoperiode.AsString := 'Periode :  s/d '+FormatDateTime('dd mmm yyyy',dtpEnd.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.AsString:= 'FILTER : '+UpperCase(vFilter);
  kmtInfo.Post;


end;



procedure TInfoARSalesFrm.edtSalemanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var f : TCariRekananFrm;
begin
   try
     f:= TCariRekananFrm.Create(Application);
     f.vMode:= 0;
     f.vJenis:= 'SALESMAN';
     if f.ShowModal=mrOK then begin
        edtSaleman.Text:= f.qRekanankd_rekanan.AsString;
        LblSales.Caption:= f.qRekanannama_rekanan.AsString;
     end;

   finally
     f.Free;
   end;
end;

procedure TInfoARSalesFrm.RB_SEMUAClick(Sender: TObject);
begin
  OpenDataset;
end;

procedure TInfoARSalesFrm.btnPrintClick(Sender: TObject);
begin
   if Master.RecordCount=0 then
      Exit;

   try
     Master.DisableControls;
     Master.First;

     kmtMaster.Close;
     kmtMaster.Open;
     kmtMaster.EmptyTable;
     kmtMaster.LoadFromDataSet(Master,[mtcpoAppend]);
     Master.First;
     Master.EnableControls;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

  PrepareForPrint('REKAP FAKTUR PER SALES');
  if trim(edtSaleman.Text)='SEMUA' then
     frxARList_SLS.ShowReport()
  else frxARList_OLT.ShowReport();

end;

end.

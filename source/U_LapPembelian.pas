unit U_LapPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxInplaceContainer,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, DBCtrls, RzDBNav, StdCtrls, SCControl, SCStdControls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxLabel, cxContainer,
  cxTextEdit, cxDBEdit, RzLabel, Mask, RzEdit, RzDBEdit, RzDBLbl, RzPanel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit,
  cxDropDownEdit, Wwkeycb, cxCheckBox, Menus, cxLookAndFeelPainters,
  cxButtons, cxCalendar, wwdbdatetimepicker, DateUtils, wwDialog, wwidlg,
  cxButtonEdit, RzRadGrp, kbmMemTable, frxClass, frxDBSet, frxExportPDF,
  frxExportRTF, frxExportXML, frxRich, AdvPanel, AdvAppStyler, AdvToolBar,
  AdvToolBarStylers, frxChBox, cxRadioGroup, cxLookAndFeels, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TLapPembelianFrm = class(TForm)
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMaster: TfrxDBDataset;
    frxAPList: TfrxReport;
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
    Master: TZReadOnlyQuery;
    dsMaster: TDataSource;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat: TStringField;
    kmtInfofax_telp: TStringField;
    kmtInfokota_negara: TStringField;
    frxAPListdetail: TfrxReport;
    kmtInfofilter: TStringField;
    kmtInfoprepared_name: TStringField;
    frxSUM: TfrxReport;
    frxDBSUM: TfrxDBDataset;
    Detail: TZReadOnlyQuery;
    dsDetail: TDataSource;
    Detailno_reff: TStringField;
    Detailpembayaran: TFloatField;
    Detaildt_payment: TDateTimeField;
    Detailno_payment: TStringField;
    SCPanel3: TSCPanel;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    SCButton1: TSCButton;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masterno_bukti: TStringField;
    Masterdt_jth_tempo: TDateTimeField;
    Mastercara_bayar: TStringField;
    Mastertotal: TFloatField;
    Masterpembayaran: TFloatField;
    Mastersisa: TFloatField;
    pgcMaster: TcxPageControl;
    tabAP: TcxTabSheet;
    grdAP_List: TcxGrid;
    grddbtvAP_List: TcxGridDBTableView;
    grddbtvAP_Listno_nota: TcxGridDBColumn;
    grddbtvAP_Listdt_nota: TcxGridDBColumn;
    grddbtvAP_Listno_bukti: TcxGridDBColumn;
    grddbtvAP_Listdt_jth_tempo: TcxGridDBColumn;
    grddbtvAP_Listnama_rekanan: TcxGridDBColumn;
    grddbtvAP_Listtotal_in: TcxGridDBColumn;
    grddbtvAP_Listsisa: TcxGridDBColumn;
    grddbtvAP_ListDetail: TcxGridDBTableView;
    grdAP_ListLevel: TcxGridLevel;
    qrySUM_SUP: TZReadOnlyQuery;
    qrySUM_SUPkd_rekanan: TStringField;
    qrySUM_SUPnama_rekanan: TStringField;
    qrySUM_SUPtotal: TFloatField;
    qrySUM_SUPpembayaran: TFloatField;
    qrySUM_SUPsisa: TFloatField;
    dsqrySUM_OUTLET: TDataSource;
    qryPrint: TZQuery;
    qryPrintno_nota: TStringField;
    qryPrintdt_nota: TDateTimeField;
    qryPrintkd_rekanan: TStringField;
    qryPrintnama_rekanan: TStringField;
    qryPrintno_bukti: TStringField;
    qryPrintdt_jth_tempo: TDateTimeField;
    qryPrintcara_bayar: TStringField;
    qryPrinttotal: TFloatField;
    qryPrintpembayaran: TFloatField;
    qryPrintsisa: TFloatField;
    frxDBDetail: TfrxDBDataset;
    qryPrintDetail: TZReadOnlyQuery;
    dsqryPrint: TDataSource;
    qryPrintDetailno_reff: TStringField;
    qryPrintDetailpembayaran: TFloatField;
    qryPrintDetaildt_payment: TDateTimeField;
    qryPrintDetailno_payment: TStringField;
    dtpStart: TwwDBDateTimePicker;
    Label21: TLabel;
    btnExport: TSCButton;
    qryPeriode: TZReadOnlyQuery;
    dsqryPeriode: TDataSource;
    qryPeriodeno_nota: TStringField;
    qryPeriodedt_nota: TDateTimeField;
    qryPeriodekd_rekanan: TStringField;
    qryPeriodenama_rekanan: TStringField;
    qryPeriodeno_bukti: TStringField;
    qryPeriodedt_jth_tempo: TDateTimeField;
    qryPeriodecara_bayar: TStringField;
    qryPeriodetotal: TFloatField;
    qryPeriodepembayaran: TFloatField;
    qryPeriodesisa: TFloatField;
    OpenDialog: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure qrySUM_SUPBeforeOpen(DataSet: TDataSet);
    procedure tabSupplierShow(Sender: TObject);
    procedure tabAPShow(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure qryPeriodeBeforeOpen(DataSet: TDataSet);
    procedure tabPeriodeShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    namamenu : string;
    vtag : integer;
    procedure UpdateView(ds : TDataSet);
    procedure OpenDataset(ds : TDataSet);
    procedure PrintOption(opt: string; val : String);
    procedure PrepareForPrint(pCap : String);

  public
    { Public declarations }
  end;

var
  LapPembelianFrm: TLapPembelianFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);


implementation

uses U_DM, U_PrintOption, cxGridExportLink;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  LapPembelianFrm := TLapPembelianFrm.Create(Application);
  LapPembelianFrm.namamenu := pNamaMenu;
  LapPembelianFrm.vtag:= ptag;
  LapPembelianFrm.lblHeader1.Caption := pNamaMenu;
  LapPembelianFrm.pgcMaster.ActivePageIndex:= 0;
  LapPembelianFrm.Show;
end;

procedure TLapPembelianFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TLapPembelianFrm.UpdateView(ds : TDataSet);
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnPrint.Visible:= False;
  end else begin
    isBrowse := ds.State=dsBrowse;
    isEmpty := ds.RecordCount=0;
    dbnBrowse.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    grddbtvAP_List.OptionsData.Inserting:= False;
    grddbtvAP_List.OptionsData.Editing:= False;
    grddbtvAP_List.OptionsData.Deleting:= False;

    grddbtvAP_ListDetail.OptionsData.Inserting:= False;
    grddbtvAP_ListDetail.OptionsData.Editing:= False;
    grddbtvAP_ListDetail.OptionsData.Deleting:= False;

    btnRefresh.Enabled:= not isEmpty;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
    btnExport.Visible:= isBrowse;
    btnExport.Enabled := not isEmpty and accprint;
  end;
end;

procedure TLapPembelianFrm.OpenDataset(ds : TDataSet);
begin
   try
     ds.Close;
     ds.Open;
     if ds=Master then begin
        Detail.Close;
        Detail.Open;
     end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;


procedure TLapPembelianFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TLapPembelianFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TLapPembelianFrm.btnOKClick(Sender: TObject);
begin
   case pgcMaster.ActivePageIndex of
     0: begin OpenDataset(Master); UpdateView(Master); end;
     1: begin OpenDataset(qrySUM_SUP); UpdateView(qrySUM_SUP); end;
     2: begin OpenDataset(qryPeriode); UpdateView(qryPeriode); end;
   end;
end;

procedure TLapPembelianFrm.PrepareForPrint(pCap : String);
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
  kmtInfoperiode.AsString := 'Periode : '+FormatDateTime('dd mmm yyyy',dtpStart.Date)+' s/d '+FormatDateTime('dd mmm yyyy',dtpEnd.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.AsString:= 'SUPPLIER : '+DM.L_Suppliernama_rekanan.AsString;
  kmtInfo.Post;

end;


procedure TLapPembelianFrm.btnPrintClick(Sender: TObject);
var f : TPrintOptionFrm;
    printMode : string;
begin

   if pgcMaster.ActivePageIndex=0 then begin
//       try
//         f:= TPrintOptionFrm.Create(Application);
//         f.vMode:= 1;
//         if f.ShowModal=mrOK then begin
//             if f.RB_AP_SEMUA.Checked then begin
//                PrintOption('SO','');
//             end
//             else
//             if f.RB_AP_SUPPLIER.Checked then begin
//                PrintOption('OO', Trim(F.ESUPPLIER.Text));
//             end;
//         end;
//       finally
//         f.Free;
//       end;
      PrepareForPrint('Rekap Pembelian Per Faktur');
      try
        PrintOption('SO','');
      finally
      end;
   end
   else
   if pgcMaster.ActivePageIndex=1 then begin
      PrepareForPrint('Rekap Piutang Per Supplier');
      try
        qrySUM_SUP.DisableControls;
        qrySUM_SUP.First;
        frxSUM.ShowReport();
      finally  
        qrySUM_SUP.First;
        qrySUM_SUP.EnableControls;
      end;
   end;
end;

procedure TLapPembelianFrm.PrintOption(opt: string; val : String);
var s, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);

 s:= 'SELECT a.* ';
 s:= s+' FROM transaksi.fn_rep_ap_list_2('+QuotedStr(dt1)+','+QuotedStr(dt2)+') a';

 if opt='SO' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY a.kd_rekanan';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Pembelian');
    frxAPList.ShowReport();
 end
 else
 if opt='OO' then begin   // PER SUPPLIER
    s:= s+' WHERE a.kd_rekanan='+QuotedStr(val);
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    qryPrintDetail.Close;
    qryPrintDetail.Open;
    PrepareForPrint('Rekap Pembelian');
    frxAPListdetail.ShowReport();
 end;

end;

procedure TLapPembelianFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
    Master.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    Master.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TLapPembelianFrm.qrySUM_SUPBeforeOpen(DataSet: TDataSet);
begin
   qrySUM_SUP.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TLapPembelianFrm.tabSupplierShow(Sender: TObject);
begin
  OpenDataset(qrySUM_SUP);
  UpdateView(qrySUM_SUP);
end;

procedure TLapPembelianFrm.tabAPShow(Sender: TObject);
begin
//  OpenDataset(Master);
//  UpdateView(Master);
end;

procedure TLapPembelianFrm.tabPeriodeShow(Sender: TObject);
begin
  OpenDataset(qryPeriode);
  UpdateView(qryPeriode);
end;


procedure TLapPembelianFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TLapPembelianFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end


end;

procedure TLapPembelianFrm.qryPeriodeBeforeOpen(DataSet: TDataSet);
begin
    qryPeriode.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qryPeriode.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;


procedure TLapPembelianFrm.btnExportClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin
   if pgcMaster.ActivePageIndex=0 then begin

      if Master.RecordCount=0 then
         Exit;

      if OpenDialog.Execute then begin
         appPath:= ExtractFilePath(OpenDialog.InitialDir);
         ttl:= OpenDialog.FileName;

         if (Master.Active) and (Master.RecordCount>0) then begin
           ExportGridToExcel(appPath+ttl,grdAP_List,true,true,true,'xls');

         end;

      end;
      
   end else

   if pgcMaster.ActivePageIndex=1 then begin
      DM.Export2Excel(qrySUM_SUP,'rekap_per_suplier');
   end else

   if pgcMaster.ActivePageIndex=2 then begin
      DM.Export2Excel(qryPeriode,'rekap_per_periode');
   end

end;

end.
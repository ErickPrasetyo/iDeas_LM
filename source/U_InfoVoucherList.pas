unit U_InfoVoucherList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, ZAbstractDataset, ZDataset,
  frxClass, ZAbstractRODataset, frxChBox, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  kbmMemTable, frxDBSet, frxExportPDF, frxExportRTF, frxExportXML, frxRich,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxContainer, StdCtrls,
  wwdbdatetimepicker, SCControl, SCStdControls, RzPanel, RzDBNav, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TInfoVoucherListFrm = class(TForm)
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
    Master: TZReadOnlyQuery;
    dsMaster: TDataSource;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat: TStringField;
    kmtInfofax_telp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    kmtInfoprepared_name: TStringField;
    frxARList_SLS: TfrxReport;
    frxARList_OLT: TfrxReport;
    frxSUM_OUTLET: TfrxReport;
    frxDBSUM_OUTLET: TfrxDBDataset;
    qrySUM_OUTLET: TZReadOnlyQuery;
    SCPanel3: TSCPanel;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qrySUM_OUTLETkd_rekanan: TStringField;
    qrySUM_OUTLETnama_rekanan: TStringField;
    pgcMaster: TcxPageControl;
    tabDetail: TcxTabSheet;
    tabOutlet: TcxTabSheet;
    grdAP_List: TcxGrid;
    grddbtvAP_List: TcxGridDBTableView;
    grddbtvAP_Listno_nota: TcxGridDBColumn;
    grddbtvAP_Listdt_nota: TcxGridDBColumn;
    grddbtvAP_Listnama_sales: TcxGridDBColumn;
    grddbtvAP_Listnama_rekanan: TcxGridDBColumn;
    grddbtvAP_ListDetail: TcxGridDBTableView;
    grddbtvAP_ListDetailno_payment: TcxGridDBColumn;
    grddbtvAP_ListDetaildt_payment: TcxGridDBColumn;
    grddbtvAP_ListDetailpembayaran: TcxGridDBColumn;
    grdAP_ListLevel: TcxGridLevel;
    tabSales: TcxTabSheet;
    grdOutlet: TcxGrid;
    grddbtvOutlet: TcxGridDBTableView;
    grdlvlOutlet: TcxGridLevel;
    grdSales: TcxGrid;
    grddbtvSales: TcxGridDBTableView;
    grdLvlSales: TcxGridLevel;
    dsqrySUM_OUTLET: TDataSource;
    grddbtvOutletkd_rekanan: TcxGridDBColumn;
    grddbtvOutletnama_rekanan: TcxGridDBColumn;
    grddbtvOutlettotal: TcxGridDBColumn;
    qrySUM_SALES: TZReadOnlyQuery;
    dsqrySUM_SALES: TDataSource;
    qrySUM_SALESid_division: TStringField;
    qrySUM_SALESnama_sales: TStringField;
    qrySUM_SALESlbl: TStringField;
    grddbtvSalesid_division: TcxGridDBColumn;
    grddbtvSalesnama_sales: TcxGridDBColumn;
    grddbtvSalestotal: TcxGridDBColumn;
    grddbtvSaleslbl: TcxGridDBColumn;
    frxDBSUM_SALES: TfrxDBDataset;
    frxSUM_SALES: TfrxReport;
    qryPrint: TZQuery;
    dsqryPrint: TDataSource;
    dtpStart: TwwDBDateTimePicker;
    Label21: TLabel;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masterid_division: TStringField;
    Masternama_sales: TStringField;
    Masterno_bukti: TStringField;
    grddbtvAP_Listnet_n_ppn: TcxGridDBColumn;
    grddbtvOutlettotal_barang: TcxGridDBColumn;
    grddbtvOutlettotal_uang: TcxGridDBColumn;
    grddbtvSalestotal_barang: TcxGridDBColumn;
    grddbtvSalestotal_uang: TcxGridDBColumn;
    btnExport: TSCButton;
    Masterevocer: TFloatField;
    Masterno_evocer: TStringField;
    Mastermvocer: TFloatField;
    Masterno_mvocer: TStringField;
    Masternet_n_ppn: TFloatField;
    Mastertotal_vocer: TFloatField;
    grddbtvAP_Listkd_rekanan: TcxGridDBColumn;
    grddbtvAP_Listid_division: TcxGridDBColumn;
    grddbtvAP_Listno_evocer: TcxGridDBColumn;
    grddbtvAP_Listmvocer: TcxGridDBColumn;
    grddbtvAP_Listno_mvocer: TcxGridDBColumn;
    grddbtvAP_Listtotal_vocer: TcxGridDBColumn;
    grddbtvAP_Listevocer: TcxGridDBColumn;
    qrySUM_OUTLETtotal_e: TFloatField;
    qrySUM_OUTLETtotal_m: TFloatField;
    qrySUM_OUTLETtotal: TFloatField;
    qrySUM_SALEStotal_e: TFloatField;
    qrySUM_SALEStotal_m: TFloatField;
    qrySUM_SALEStotal: TFloatField;
    qryPrintno_nota: TStringField;
    qryPrintdt_nota: TDateTimeField;
    qryPrintkd_rekanan: TStringField;
    qryPrintnama_rekanan: TStringField;
    qryPrintid_division: TStringField;
    qryPrintnama_sales: TStringField;
    qryPrintno_bukti: TStringField;
    qryPrintevocer: TFloatField;
    qryPrintno_evocer: TStringField;
    qryPrintmvocer: TFloatField;
    qryPrintno_mvocer: TStringField;
    qryPrintnet_n_ppn: TFloatField;
    qryPrinttotal_vocer: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure qrySUM_OUTLETBeforeOpen(DataSet: TDataSet);
    procedure qrySUM_SALESBeforeOpen(DataSet: TDataSet);
    procedure tabDetailShow(Sender: TObject);
    procedure tabOutletShow(Sender: TObject);
    procedure tabSalesShow(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
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
  InfoVoucherListFrm: TInfoVoucherListFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_PrintOption;

{$R *.dfm}
procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoVoucherListFrm := TInfoVoucherListFrm.Create(Application);
  InfoVoucherListFrm.namamenu := pNamaMenu;
  InfoVoucherListFrm.vtag:= ptag;
  InfoVoucherListFrm.lblHeader1.Caption := pNamaMenu;
  InfoVoucherListFrm.pgcMaster.ActivePageIndex:= 0;
  InfoVoucherListFrm.Show;
end;


procedure TInfoVoucherListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TInfoVoucherListFrm.OpenDataset(ds : TDataSet);
begin
   try
     ds.Close;
     ds.Open;
//     if ds=Master then begin
//        Detail.Close;
//        Detail.Open;
//     end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TInfoVoucherListFrm.UpdateView(ds : TDataSet);
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


procedure TInfoVoucherListFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoVoucherListFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TInfoVoucherListFrm.btnOKClick(Sender: TObject);
begin
   case pgcMaster.ActivePageIndex of
     0: begin OpenDataset(Master); UpdateView(Master); end;
     1: begin OpenDataset(qrySUM_OUTLET); UpdateView(qrySUM_OUTLET); end;
     2: begin OpenDataset(qrySUM_SALES); UpdateView(qrySUM_SALES); end;
   end;
end;

procedure TInfoVoucherListFrm.PrintOption(opt: string; val : String);
var s, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);

 s:= 'SELECT a.* ';
 s:= s+' FROM transaksi.fn_rep_voucher_list('+QuotedStr(dt1)+','+QuotedStr(dt2)+') AS a';

 if opt='SS' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY a.id_division';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Voucher');
    frxARList_SLS.ShowReport();
 end
 else
 if opt='SO' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY a.kd_rekanan';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Voucher');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='OO' then begin   // PER CUSTOMER
    s:= s+' WHERE a.kd_rekanan='+QuotedStr(val);
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Voucher');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='SL' then begin   // PER SALES
    s:= s+' WHERE a.id_division='+QuotedStr(val);
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Voucher');
    frxARList_SLS.ShowReport();
 end;
end;

procedure TInfoVoucherListFrm.PrepareForPrint(pCap : String);
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
  kmtInfoperiode.AsString := 'Periode s/d Tanggal: '+FormatDateTime('dd mmm yyyy',dtpEnd.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.AsString:= 'CUSTOMER : '+DM.L_Customernama_rekanan.AsString;
  kmtInfo.Post;
end;



procedure TInfoVoucherListFrm.btnPrintClick(Sender: TObject);
var f : TPrintOptionFrm;
    printMode : string;
begin

   if pgcMaster.ActivePageIndex=0 then begin
       try
         f:= TPrintOptionFrm.Create(Application);
         f.vMode:= 0;
         if f.ShowModal=mrOK then begin
             if f.RB_C_SEMUA.Checked then begin
                if f.RB_G_SALES.Checked then
                   PrintOption('SS','');
                if f.RB_G_CUSTOMER.Checked then
                   PrintOption('SO','');
             end
             else
             if f.RB_C_PERCUSTOMER.Checked then begin
                PrintOption('OO', Trim(F.ECUSTOMER.Text));
             end
             else
             if f.RB_C_PERSALES.Checked then begin
                PrintOption('SL', Trim(F.ESALES.Text));
             end;
         end;
       finally
         f.Free;
       end;
   end
   else
   if pgcMaster.ActivePageIndex=1 then begin
      PrepareForPrint('Rekap Voucher Per Outlet');
      try
        qrySUM_OUTLET.DisableControls;
        qrySUM_OUTLET.First;
        frxSUM_OUTLET.ShowReport();
      finally
        qrySUM_OUTLET.First;
        qrySUM_OUTLET.EnableControls;
      end;
   end
   else
   if pgcMaster.ActivePageIndex=2 then begin
      PrepareForPrint('Rekap Voucher Per Sales');
      try
        qrySUM_SALES.DisableControls;
        qrySUM_SALES.First;
        frxSUM_SALES.ShowReport();
      finally
        qrySUM_SALES.First;
        qrySUM_SALES.EnableControls;
      end;
   end;
end;

procedure TInfoVoucherListFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
    Master.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    Master.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;


procedure TInfoVoucherListFrm.qrySUM_OUTLETBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_OUTLET.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qrySUM_OUTLET.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TInfoVoucherListFrm.qrySUM_SALESBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_SALES.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qrySUM_SALES.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;


procedure TInfoVoucherListFrm.tabDetailShow(Sender: TObject);
begin
  OpenDataset(Master);
  UpdateView(Master);
end;

procedure TInfoVoucherListFrm.tabOutletShow(Sender: TObject);
begin
  OpenDataset(qrySUM_OUTLET);
  UpdateView(qrySUM_OUTLET);
end;

procedure TInfoVoucherListFrm.tabSalesShow(Sender: TObject);
begin
  OpenDataset(qrySUM_SALES);
  UpdateView(qrySUM_SALES);
end;

procedure TInfoVoucherListFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TInfoVoucherListFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TInfoVoucherListFrm.btnExportClick(Sender: TObject);
begin
   if pgcMaster.ActivePageIndex=0 then begin
      DM.Export2Excel(Master,'daftar_tpr');
   end
   else
   if pgcMaster.ActivePageIndex=1 then begin
      DM.Export2Excel(qrySUM_OUTLET,'rekap_per_outlet');
   end
   else
   if pgcMaster.ActivePageIndex=2 then begin
      DM.Export2Excel(qrySUM_SALES,'rekap_per_sales');
   end;
end;

end.

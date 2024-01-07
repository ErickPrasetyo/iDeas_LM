unit U_InfoTPRList;

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
  ExtCtrls, cxPC, cxCheckBox, ZAbstractDataset, RzPanel, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TInfoTPRListFrm = class(TForm)
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
    qrySUM_OUTLETtotal: TFloatField;
    pgcMaster: TcxPageControl;
    tabDetail: TcxTabSheet;
    tabOutlet: TcxTabSheet;
    grdAP_List: TcxGrid;
    grddbtvAP_List: TcxGridDBTableView;
    grddbtvAP_Listno_nota: TcxGridDBColumn;
    grddbtvAP_Listdt_nota: TcxGridDBColumn;
    grddbtvAP_Listno_bukti: TcxGridDBColumn;
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
    qrySUM_SALEStotal: TFloatField;
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
    Masterpromo_barang: TFloatField;
    Masterpromo_uang: TFloatField;
    Masternet_n_ppn: TFloatField;
    Mastertotal_promo: TFloatField;
    grddbtvAP_Listnet_n_ppn: TcxGridDBColumn;
    grddbtvAP_Listpromo_barang: TcxGridDBColumn;
    grddbtvAP_Listpromo_uang: TcxGridDBColumn;
    grddbtvAP_Listtotal_promo: TcxGridDBColumn;
    qrySUM_OUTLETtotal_barang: TFloatField;
    qrySUM_OUTLETtotal_uang: TFloatField;
    grddbtvOutlettotal_barang: TcxGridDBColumn;
    grddbtvOutlettotal_uang: TcxGridDBColumn;
    qrySUM_SALEStotal_barang: TFloatField;
    qrySUM_SALEStotal_uang: TFloatField;
    grddbtvSalestotal_barang: TcxGridDBColumn;
    grddbtvSalestotal_uang: TcxGridDBColumn;
    btnExport: TSCButton;
    qryPrintno_nota: TStringField;
    qryPrintdt_nota: TDateTimeField;
    qryPrintkd_rekanan: TStringField;
    qryPrintnama_rekanan: TStringField;
    qryPrintid_division: TStringField;
    qryPrintnama_sales: TStringField;
    qryPrintno_bukti: TStringField;
    qryPrintpromo_barang: TFloatField;
    qryPrintpromo_uang: TFloatField;
    qryPrintnet_n_ppn: TFloatField;
    qryPrinttotal_promo: TFloatField;
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
  InfoTPRListFrm: TInfoTPRListFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_PrintOption;

{$R *.dfm}
procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoTPRListFrm := TInfoTPRListFrm.Create(Application);
  InfoTPRListFrm.namamenu := pNamaMenu;
  InfoTPRListFrm.vtag:= ptag;
  InfoTPRListFrm.lblHeader1.Caption := pNamaMenu;
  InfoTPRListFrm.pgcMaster.ActivePageIndex:= 0;
  InfoTPRListFrm.Show;
end;


procedure TInfoTPRListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TInfoTPRListFrm.OpenDataset(ds : TDataSet);
begin
   try
     ds.Close;
     ds.Open;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TInfoTPRListFrm.UpdateView(ds : TDataSet);
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


procedure TInfoTPRListFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoTPRListFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TInfoTPRListFrm.btnOKClick(Sender: TObject);
begin
   case pgcMaster.ActivePageIndex of
     0: begin OpenDataset(Master); UpdateView(Master); end;
     1: begin OpenDataset(qrySUM_OUTLET); UpdateView(qrySUM_OUTLET); end;
     2: begin OpenDataset(qrySUM_SALES); UpdateView(qrySUM_SALES); end;
   end;
end;

procedure TInfoTPRListFrm.PrintOption(opt: string; val : String);
var s, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);

 s:= 'SELECT a.* ';
 s:= s+' FROM transaksi.fn_rep_tpr_list('+QuotedStr(dt1)+','+QuotedStr(dt2)+') AS a';

 if opt='SS' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY a.id_division';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap TPR');
    frxARList_SLS.ShowReport();
 end
 else
 if opt='SO' then begin   // SEMUA NOTA group by outlet
    s:= s+' ORDER BY a.kd_rekanan';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap TPR');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='OO' then begin   // PER CUSTOMER
    s:= s+' WHERE a.kd_rekanan='+QuotedStr(val);
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap TPR');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='SL' then begin   // PER SALES
    s:= s+' WHERE a.id_division='+QuotedStr(val);
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap TPR');
    frxARList_SLS.ShowReport();
 end;
end;

procedure TInfoTPRListFrm.PrepareForPrint(pCap : String);
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



procedure TInfoTPRListFrm.btnPrintClick(Sender: TObject);
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
      PrepareForPrint('Rekap TPR Per Outlet');
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
      PrepareForPrint('Rekap TPR Per Sales');
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

procedure TInfoTPRListFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
    Master.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    Master.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;


procedure TInfoTPRListFrm.qrySUM_OUTLETBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_OUTLET.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qrySUM_OUTLET.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TInfoTPRListFrm.qrySUM_SALESBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_SALES.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qrySUM_SALES.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;


procedure TInfoTPRListFrm.tabDetailShow(Sender: TObject);
begin
  OpenDataset(Master);
  UpdateView(Master);
end;

procedure TInfoTPRListFrm.tabOutletShow(Sender: TObject);
begin
  OpenDataset(qrySUM_OUTLET);
  UpdateView(qrySUM_OUTLET);
end;

procedure TInfoTPRListFrm.tabSalesShow(Sender: TObject);
begin
  OpenDataset(qrySUM_SALES);
  UpdateView(qrySUM_SALES);
end;

procedure TInfoTPRListFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TInfoTPRListFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TInfoTPRListFrm.btnExportClick(Sender: TObject);
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

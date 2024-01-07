unit U_InfoItemBS;

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
  ExtCtrls, cxPC, cxCheckBox, ZAbstractDataset, cxGridDBBandedTableView,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, RzPanel;

type
  TInfoItemBSFrm = class(TForm)
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
    pgcMaster: TcxPageControl;
    tabDetail: TcxTabSheet;
    tabOutlet: TcxTabSheet;
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
    grddbtvSalesid_division: TcxGridDBColumn;
    grddbtvSalesnama_sales: TcxGridDBColumn;
    grddbtvSalestotal: TcxGridDBColumn;
    grddbtvSaleslbl: TcxGridDBColumn;
    frxDBSUM_SALES: TfrxDBDataset;
    frxSUM_SALES: TfrxReport;
    qryPrint: TZQuery;
    dsqryPrint: TDataSource;
    frxARListDetail: TfrxReport;
    dtpStart: TwwDBDateTimePicker;
    Label21: TLabel;
    MemMaster: TkbmMemTable;
    frxARList_Centhang: TfrxReport;
    frxDBMemMaster: TfrxDBDataset;
    MemMasterPrint: TkbmMemTable;
    Masterispilih: TStringField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masterid_division: TStringField;
    Masternama_sales: TStringField;
    Masterdisc_rp: TFloatField;
    Masterkd_item: TStringField;
    Masternama_item: TStringField;
    Masterqty_karton: TFloatField;
    Masterqty_lusin: TFloatField;
    Masterqty_biji: TFloatField;
    Masterhrg_jual_karton: TFloatField;
    Masterhrg_jual_lusin: TFloatField;
    Mastersub_total: TFloatField;
    grdAP_List: TcxGrid;
    grdAP_ListLevel: TcxGridLevel;
    grdAP_ListDBBTV: TcxGridDBBandedTableView;
    grdAP_ListDBBTVispilih: TcxGridDBBandedColumn;
    grdAP_ListDBBTVno_nota: TcxGridDBBandedColumn;
    grdAP_ListDBBTVdt_nota: TcxGridDBBandedColumn;
    grdAP_ListDBBTVkd_rekanan: TcxGridDBBandedColumn;
    grdAP_ListDBBTVnama_rekanan: TcxGridDBBandedColumn;
    grdAP_ListDBBTVid_division: TcxGridDBBandedColumn;
    grdAP_ListDBBTVnama_sales: TcxGridDBBandedColumn;
    grdAP_ListDBBTVkd_item: TcxGridDBBandedColumn;
    grdAP_ListDBBTVnama_item: TcxGridDBBandedColumn;
    grdAP_ListDBBTVqty_karton: TcxGridDBBandedColumn;
    grdAP_ListDBBTVqty_lusin: TcxGridDBBandedColumn;
    grdAP_ListDBBTVqty_biji: TcxGridDBBandedColumn;
    grdAP_ListDBBTVhrg_jual_karton: TcxGridDBBandedColumn;
    grdAP_ListDBBTVhrg_jual_lusin: TcxGridDBBandedColumn;
    grdAP_ListDBBTVsub_total: TcxGridDBBandedColumn;
    cxLabel1: TcxLabel;
    edtJenis: TcxComboBox;
    qrySUM_OUTLETkd_rekanan: TStringField;
    qrySUM_OUTLETnama_rekanan: TStringField;
    qrySUM_OUTLETsub_total: TFloatField;
    qrySUM_SALESid_division: TStringField;
    qrySUM_SALESnama_sales: TStringField;
    qrySUM_SALESsub_total: TFloatField;
    MemMasterispilih: TStringField;
    MemMasterno_nota: TStringField;
    MemMasterdt_nota: TDateTimeField;
    MemMasterkd_rekanan: TStringField;
    MemMasternama_rekanan: TStringField;
    MemMasterid_division: TStringField;
    MemMasternama_sales: TStringField;
    MemMasterdisc_rp: TFloatField;
    MemMasterkd_item: TStringField;
    MemMasternama_item: TStringField;
    MemMasterqty_karton: TFloatField;
    MemMasterqty_lusin: TFloatField;
    MemMasterqty_biji: TFloatField;
    MemMasterhrg_jual_karton: TFloatField;
    MemMasterhrg_jual_lusin: TFloatField;
    MemMastersub_total: TFloatField;
    qrySUM_SALESlbl: TStringField;
    qryPrintno_nota: TStringField;
    qryPrintdt_nota: TDateTimeField;
    qryPrintkd_rekanan: TStringField;
    qryPrintnama_rekanan: TStringField;
    qryPrintid_division: TStringField;
    qryPrintnama_sales: TStringField;
    qryPrintdisc_rp: TFloatField;
    qryPrintkd_item: TStringField;
    qryPrintnama_item: TStringField;
    qryPrintqty_karton: TFloatField;
    qryPrintqty_lusin: TFloatField;
    qryPrintqty_biji: TFloatField;
    qryPrinthrg_jual_karton: TFloatField;
    qryPrinthrg_jual_lusin: TFloatField;
    qryPrintsub_total: TFloatField;
    MemMasterPrintispilih: TStringField;
    MemMasterPrintno_nota: TStringField;
    MemMasterPrintdt_nota: TDateTimeField;
    MemMasterPrintkd_rekanan: TStringField;
    MemMasterPrintnama_rekanan: TStringField;
    MemMasterPrintid_division: TStringField;
    MemMasterPrintnama_sales: TStringField;
    MemMasterPrintdisc_rp: TFloatField;
    MemMasterPrintkd_item: TStringField;
    MemMasterPrintnama_item: TStringField;
    MemMasterPrintqty_karton: TFloatField;
    MemMasterPrintqty_lusin: TFloatField;
    MemMasterPrintqty_biji: TFloatField;
    MemMasterPrinthrg_jual_karton: TFloatField;
    MemMasterPrinthrg_jual_lusin: TFloatField;
    MemMasterPrintsub_total: TFloatField;
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
  private
    { Private declarations }
    namamenu : string;
    vtag : integer;
    procedure UpdateView(ds : TDataSet);
    procedure OpenDataset(ds : TDataSet);
    procedure OpenDataMaster;
    procedure PrintOption(opt: string; val : String);
    procedure PrepareForPrint(pCap : String);
    procedure getList;

  public
    { Public declarations }
  end;

var
  InfoItemBSFrm: TInfoItemBSFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_PrintOption;

{$R *.dfm}
procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoItemBSFrm := TInfoItemBSFrm.Create(Application);
  InfoItemBSFrm.namamenu := pNamaMenu;
  InfoItemBSFrm.Caption := pNamaMenu;
  InfoItemBSFrm.vtag:= ptag;
  InfoItemBSFrm.lblHeader1.Caption := pNamaMenu;
  InfoItemBSFrm.pgcMaster.ActivePageIndex:= 0;
  InfoItemBSFrm.Show;
end;


procedure TInfoItemBSFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TInfoItemBSFrm.OpenDataset(ds : TDataSet);
begin
   try
     ds.Close;
     ds.Open;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TInfoItemBSFrm.OpenDataMaster;
begin
   try
     Master.Close;
     Master.Open;

     MemMaster.Close;
     MemMaster.Open;
     MemMaster.EmptyTable;
     MemMaster.LoadFromDataSet(Master, [mtcpoAppend]);

   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TInfoItemBSFrm.UpdateView(ds : TDataSet);
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

    grdAP_ListDBBTV.OptionsData.Inserting:= False;
    grdAP_ListDBBTV.OptionsData.Deleting:= False;

    btnRefresh.Enabled:= not isEmpty;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
  end;
end;


procedure TInfoItemBSFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoItemBSFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TInfoItemBSFrm.btnOKClick(Sender: TObject);
begin
   case pgcMaster.ActivePageIndex of
     0: begin OpenDataMaster; UpdateView(Master); end;
     1: begin OpenDataset(qrySUM_OUTLET); UpdateView(qrySUM_OUTLET); end;
     2: begin OpenDataset(qrySUM_SALES); UpdateView(qrySUM_SALES); end;
   end;
end;

procedure TInfoItemBSFrm.getList;
begin
//  try
//    MemMaster.DisableControls;
//    MemMaster.First;
//    try
//      while not MemMaster.Eof do begin
//         if MemMasterispilih.AsString='1' then begin
//            MemMasterPrint.Append;
//            MemMasterPrintno_nota.AsString:= MemMasterno_nota.AsString;
//            MemMasterPrintno_bukti.AsString:= MemMasterno_bukti.AsString;
//            MemMasterPrintdt_nota.AsDateTime:= MemMasterdt_nota.AsDateTime;
//            MemMasterPrintnama_rekanan.AsString:= MemMasternama_rekanan.AsString;
//            MemMasterPrintid_division.AsString:= MemMasterid_division.AsString;
//            MemMasterPrintnama_sales.AsString:= MemMasternama_sales.AsString;
//            MemMasterPrintnet_n_ppn.AsFloat:= MemMasternet_n_ppn.AsFloat;
//            MemMasterPrintnilai_retur.AsFloat:= MemMasternilai_retur.AsFloat;
//            MemMasterPrinttotal.AsFloat:= MemMastertotal.AsFloat;
//            MemMasterPrintpembayaran.AsFloat:= MemMasterpembayaran.AsFloat;
//            MemMasterPrintsisa.AsFloat:= MemMastersisa.AsFloat;
//            MemMasterPrintkd_rekanan.AsString:= MemMasterkd_rekanan.AsString;
//            MemMasterPrint.Post;
//         end;
//         MemMaster.Next;
//      end;
//    except
//      on E: Exception do
//        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//    end;
//  finally
//     MemMaster.First;
//     MemMaster.EnableControls;
//  end;
end;

procedure TInfoItemBSFrm.PrintOption(opt: string; val : String);
var s, ss, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);

 s:= 'SELECT a.* ';
 s:= s+' FROM transaksi.fn_rep_retur_list('+QuotedStr(dt1)+','+QuotedStr(dt2)+','+QuotedStr(edtJenis.Text)+') a';

 if opt='SS' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY a.id_division';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Retur '+edtJenis.Text);
    frxARList_SLS.ShowReport();
 end
 else
 if opt='SO' then begin   // SEMUA NOTA group by rekanan
    s:= s+' ORDER BY a.kd_rekanan';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Retur '+edtJenis.Text);
    frxARList_OLT.ShowReport();
 end
 else
 if opt='OO' then begin   // PER CUSTOMER
    s:= s+' WHERE a.kd_rekanan='+QuotedStr(val);
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
//    qryPrintDetail.Close;
//    qryPrintDetail.Open;
    PrepareForPrint('Rekap Retur '+edtJenis.Text);
    frxARListDetail.ShowReport();
 end
 else
 if opt='SL' then begin   // PER SALES
    s:= s+' WHERE a.id_division='+QuotedStr(val);
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Rekap Retur '+edtJenis.Text);
    frxARList_SLS.ShowReport();
 end
 else
  if opt='CE' then begin   // YANG DI CENTHANG
    if MemMaster.State<>dsBrowse then
       MemMaster.Post;
    PrepareForPrint('Rekap Retur '+edtJenis.Text);
    getList;
    frxARList_Centhang.ShowReport();
 end;
end;

procedure TInfoItemBSFrm.PrepareForPrint(pCap : String);
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
  kmtInfoperiode.AsString := 'Periode : '+FormatDateTime('dd mmm yyyy',dtpStart.Date)+' s/d '+FormatDateTime('dd mmm yyyy',dtpEnd.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.AsString:= 'CUSTOMER : '+DM.L_Customernama_rekanan.AsString;
  kmtInfo.Post;
end;



procedure TInfoItemBSFrm.btnPrintClick(Sender: TObject);
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
             end
             else
             if f.RB_C_CENTHANG.Checked then begin
                 PrintOption('CE','');
             end;
         end;
       finally
         f.Free;
       end;
   end
   else
   if pgcMaster.ActivePageIndex=1 then begin
      PrepareForPrint('Rekap Retur '+edtJenis.Text+' Per Outlet');
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
      PrepareForPrint('Rekap Retur '+edtJenis.Text+' Per Sales');
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

procedure TInfoItemBSFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
    Master.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    Master.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
    Master.Params.ParamByName('pstatus').AsString:= Trim(edtJenis.Text);
end;


procedure TInfoItemBSFrm.qrySUM_OUTLETBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_OUTLET.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qrySUM_OUTLET.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
    qrySUM_OUTLET.Params.ParamByName('pstatus').AsString:= Trim(edtJenis.Text);
end;

procedure TInfoItemBSFrm.qrySUM_SALESBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_SALES.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qrySUM_SALES.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
    qrySUM_SALES.Params.ParamByName('pstatus').AsString:= Trim(edtJenis.Text);
end;


procedure TInfoItemBSFrm.tabDetailShow(Sender: TObject);
begin
  OpenDataset(Master);
  UpdateView(Master);
end;

procedure TInfoItemBSFrm.tabOutletShow(Sender: TObject);
begin
  OpenDataset(qrySUM_OUTLET);
  UpdateView(qrySUM_OUTLET);
end;

procedure TInfoItemBSFrm.tabSalesShow(Sender: TObject);
begin
  OpenDataset(qrySUM_SALES);
  UpdateView(qrySUM_SALES);
end;

procedure TInfoItemBSFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TInfoItemBSFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

end.

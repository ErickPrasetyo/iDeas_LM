unit U_RencanaPembelian;

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
  TRencanaPembelianFrm = class(TForm)
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
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
    dsMaster: TDataSource;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat: TStringField;
    kmtInfofax_telp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    kmtInfoprepared_name: TStringField;
    SCPanel3: TSCPanel;
    cxLabel30: TcxLabel;
    SCButton1: TSCButton;
    pgcMaster: TcxPageControl;
    tsRencanaPembelian: TcxTabSheet;
    dtFilter: TwwDBDateTimePicker;
    btnExport: TSCButton;
    OpenDialog: TSaveDialog;
    grdRencanaPembelian: TcxGrid;
    grddbtvRencanaPembelian: TcxGridDBTableView;
    grddbtvAP_ListDetail: TcxGridDBTableView;
    grdlvlRencanaPembelian: TcxGridLevel;
    grddbtvRencanaPembelianColumn1: TcxGridDBColumn;
    grddbtvRencanaPembelianColumn2: TcxGridDBColumn;
    grddbtvRencanaPembelianColumn3: TcxGridDBColumn;
    grddbtvRencanaPembelianColumn4: TcxGridDBColumn;
    grddbtvRencanaPembelianColumn5: TcxGridDBColumn;
    grddbtvRencanaPembelianColumn6: TcxGridDBColumn;
    grddbtvRencanaPembelianColumn7: TcxGridDBColumn;
    btnCari: TSCButton;
    Master: TZQuery;
    Masterid_item: TStringField;
    Masteritem_name: TStringField;
    Mastersatuan: TStringField;
    Masterqty_jual: TFloatField;
    Masterstok_gdu: TFloatField;
    Masterstok_display: TFloatField;
    Mastertotal_stok: TFloatField;
    Mastersaran_order: TFloatField;
    Masterorder: TFloatField;
    grddbtvRencanaPembelianColumn8: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure dtFilterCloseUp(Sender: TObject);
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure SCButton1Click(Sender: TObject);
  private
    { Private declarations }
    namamenu, dt0, dt1 : string;
    vtag : integer;
    procedure UpdateView(ds : TDataSet);
    procedure PrintOption(opt: string; val : String);
    procedure PrepareForPrint(pCap : String);

  public
    { Public declarations }
  end;

var
  RencanaPembelianFrm: TRencanaPembelianFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);


implementation

uses U_DM, U_PrintOption, cxGridExportLink, U_CariItem;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  RencanaPembelianFrm := TRencanaPembelianFrm.Create(Application);
  RencanaPembelianFrm.namamenu := pNamaMenu;
  RencanaPembelianFrm.vtag:= ptag;
  RencanaPembelianFrm.lblHeader1.Caption := pNamaMenu;
  RencanaPembelianFrm.pgcMaster.ActivePageIndex:= 0;
  RencanaPembelianFrm.Show;
end;

procedure TRencanaPembelianFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TRencanaPembelianFrm.UpdateView(ds : TDataSet);
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

    grddbtvRencanaPembelian.OptionsData.Inserting:= False;
    grddbtvRencanaPembelian.OptionsData.Editing:= False;
    grddbtvRencanaPembelian.OptionsData.Deleting:= False;

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

procedure TRencanaPembelianFrm.btnRefreshClick(Sender: TObject);
begin
//  btnOKClick(nil);
end;

procedure TRencanaPembelianFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TRencanaPembelianFrm.PrepareForPrint(pCap : String);
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
  kmtInfoperiode.AsString := 'Periode : '+FormatDateTime('dd mmm yyyy',dtFilter.Date)+' s/d '+FormatDateTime('dd mmm yyyy',dtFilter.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.AsString:= 'SUPPLIER : '+DM.L_Suppliernama_rekanan.AsString;
  kmtInfo.Post;

end;

procedure TRencanaPembelianFrm.btnPrintClick(Sender: TObject);
var f : TPrintOptionFrm;
    printMode : string;
begin

//   if pgcMaster.ActivePageIndex=0 then begin
////       try
////         f:= TPrintOptionFrm.Create(Application);
////         f.vMode:= 1;
////         if f.ShowModal=mrOK then begin
////             if f.RB_AP_SEMUA.Checked then begin
////                PrintOption('SO','');
////             end
////             else
////             if f.RB_AP_SUPPLIER.Checked then begin
////                PrintOption('OO', Trim(F.ESUPPLIER.Text));
////             end;
////         end;
////       finally
////         f.Free;
////       end;
//      PrepareForPrint('Rekap Pembelian Per Faktur');
//      try
//        PrintOption('SO','');
//      finally
//      end;
//   end
//   else
//   if pgcMaster.ActivePageIndex=1 then begin
//      PrepareForPrint('Rekap Piutang Per Supplier');
//      try
//        qrySUM_SUP.DisableControls;
//        qrySUM_SUP.First;
//        frxSUM.ShowReport();
//      finally
//        qrySUM_SUP.First;
//        qrySUM_SUP.EnableControls;
//      end;
//   end;
end;

procedure TRencanaPembelianFrm.PrintOption(opt: string; val : String);
var s, dt1, dt2 : String;
begin
// dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
// dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
//
// s:= 'SELECT a.* ';
// s:= s+' FROM transaksi.fn_rep_ap_list_2('+QuotedStr(dt1)+','+QuotedStr(dt2)+') a';
//
// if opt='SO' then begin   // SEMUA NOTA group by sales
//    s:= s+' ORDER BY a.kd_rekanan';
//    DM.PrepareQuery(qryPrint);
//    DM.OpenQuery(qryPrint,s);
//    PrepareForPrint('Rekap Pembelian');
//    frxAPList.ShowReport();
// end
// else
// if opt='OO' then begin   // PER SUPPLIER
//    s:= s+' WHERE a.kd_rekanan='+QuotedStr(val);
//    DM.PrepareQuery(qryPrint);
//    DM.OpenQuery(qryPrint,s);
//    qryPrintDetail.Close;
//    qryPrintDetail.Open;
//    PrepareForPrint('Rekap Pembelian');
//    frxAPListdetail.ShowReport();
// end;

end;

procedure TRencanaPembelianFrm.btnExportClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin
//   if pgcMaster.ActivePageIndex=0 then begin
//
//      if Master.RecordCount=0 then
//         Exit;
//
//      if OpenDialog.Execute then begin
//         appPath:= ExtractFilePath(OpenDialog.InitialDir);
//         ttl:= OpenDialog.FileName;
//
//         if (Master.Active) and (Master.RecordCount>0) then begin
//           ExportGridToExcel(appPath+ttl,grdAP_List,true,true,true,'xls');
//
//         end;
//
//      end;
//
//   end else
//
//   if pgcMaster.ActivePageIndex=1 then begin
//      DM.Export2Excel(qrySUM_SUP,'rekap_per_suplier');
//   end else
//
//   if pgcMaster.ActivePageIndex=2 then begin
//      DM.Export2Excel(qryPeriode,'rekap_per_periode');
//   end

end;

procedure TRencanaPembelianFrm.btnCariClick(Sender: TObject);
var
  f: TCariItemFrm;
begin

  try
    f:= TCariItemFrm.Create(Application);
    if f.ShowModal=mrOK then begin

    end;

  finally
    f.Free;
  end;

end;

procedure TRencanaPembelianFrm.dtFilterCloseUp(Sender: TObject);
var
  Tgl1, Tgl0: TDateTime;
begin
  Tgl1 := dtFilter.Date;
  Tgl0 := IncMonth(Tgl1, -2);

  dt0 := FormatDateTime('dd/mm/yyyy', Tgl0);
  dt1 := FormatDateTime('dd/mm/yyyy', Tgl1);

end;

procedure TRencanaPembelianFrm.MasterCalcFields(DataSet: TDataSet);
begin
  Mastersaran_order.AsFloat:= Round(Masterqty_jual.AsFloat/2);
  Masterorder.AsFloat:= 0;
end;

procedure TRencanaPembelianFrm.SCButton1Click(Sender: TObject);
var
  s: String;
begin

  DM.PrepareQuery(Master);
  s:= 'select * from inventory.fn_get_plan_order('+QuotedStr(dt0)+','+QuotedStr(dt1)+') order by item_name asc';
  DM.OpenQuery(Master, s);

end;

end.

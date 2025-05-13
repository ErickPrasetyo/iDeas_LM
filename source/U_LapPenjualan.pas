unit U_LapPenjualan;

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
  TLapPenjualanFrm = class(TForm)
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
    dsDetail: TDataSource;
    SCPanel3: TSCPanel;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    SCButton1: TSCButton;
    pgcMaster: TcxPageControl;
    tabAP: TcxTabSheet;
    grdAP_List: TcxGrid;
    grddbtvAP_List: TcxGridDBTableView;
    grddbtvAP_Listno_nota: TcxGridDBColumn;
    grddbtvAP_Listdt_nota: TcxGridDBColumn;
    grddbtvAP_Listno_bukti: TcxGridDBColumn;
    grddbtvAP_Listnama_rekanan: TcxGridDBColumn;
    grddbtvAP_Listtotal_in: TcxGridDBColumn;
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
    Masterid_nota: TLargeintField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterno_bukti: TStringField;
    Masterdt_ins: TDateTimeField;
    Masterdt_upd: TDateTimeField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Mastertotal: TFloatField;
    Masterkd_rekanan: TStringField;
    Masterid_trans: TStringField;
    Masterid_rek_gl: TStringField;
    Masterid_division: TStringField;
    Mastercara_bayar: TStringField;
    Masterdt_jth_tempo: TDateTimeField;
    Masterdiskripsi: TStringField;
    Mastersub_total: TFloatField;
    Masterclaim: TFloatField;
    Masterdisc_rp: TFloatField;
    Masterpromo_uang: TFloatField;
    Masterpromo_barang: TFloatField;
    Masternet_n_ppn: TFloatField;
    Masteriskirim: TStringField;
    Masterislunas: TStringField;
    Masterretur: TFloatField;
    Masterishpp: TStringField;
    Masterdt_lunas: TDateTimeField;
    Masterdt_kirim: TDateTimeField;
    Masterisok: TStringField;
    Masterdt_posting: TDateTimeField;
    Masternota_diretur: TStringField;
    Masterid_curr: TStringField;
    Masterkurs: TFloatField;
    Mastervat_str: TStringField;
    Mastervat_num: TFloatField;
    Masterkd_del_place: TStringField;
    Masterno_rekap: TStringField;
    Mastern_hari: TIntegerField;
    Masterevocer: TFloatField;
    Masterno_faktur_pajak: TStringField;
    Masterno_evocer: TStringField;
    Masterid_import: TLargeintField;
    Masterpromo_id: TStringField;
    Mastermvocer: TFloatField;
    Masterno_mvocer: TStringField;
    Masterdisc_psn: TFloatField;
    Masterisget: TStringField;
    Masterjns_transaksi: TStringField;
    Masterdisc_total: TFloatField;
    Masterdisc_member: TFloatField;
    Masternama_rekanan: TStringField;
    grddbtvAP_ListColumn1: TcxGridDBColumn;
    grddbtvAP_ListColumn2: TcxGridDBColumn;
    tsRepLaba: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    qRepLaba: TZReadOnlyQuery;
    dsRepLaba: TDataSource;
    qRepLabano_nota: TStringField;
    qRepLabadt_nota: TDateTimeField;
    qRepLabadisc_total: TFloatField;
    qRepLabatotal: TFloatField;
    qRepLabashift: TIntegerField;
    qRepLabausr_upd: TStringField;
    qRepLabakd_item: TStringField;
    qRepLabanama_item: TStringField;
    qRepLabahrg: TFloatField;
    qRepLabaqty_biji: TFloatField;
    qRepLabasatuan_jual: TStringField;
    qRepLabasub_total: TFloatField;
    qRepLabahrg_beli: TFloatField;
    qRepLabamargin_penjualan: TFloatField;
    RepPerNota: TfrxReport;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    RepPerItem: TfrxReport;
    cxLabel1: TcxLabel;
    edtItem: TcxButtonEdit;
    LookItem: TwwLookupDialog;
    qItem: TZReadOnlyQuery;
    qItemnama_item: TStringField;
    qItemkd_item: TStringField;
    Detail: TZQuery;
    Detailno_nota: TStringField;
    Detaildt_nota: TDateTimeField;
    Detaildisc_total: TFloatField;
    Detailtotal: TFloatField;
    Detailshift: TIntegerField;
    Detailusr_upd: TStringField;
    Detailkd_item: TStringField;
    Detailnama_item: TStringField;
    Detailhrg: TFloatField;
    Detailqty_biji: TFloatField;
    Detailsatuan_jual: TStringField;
    Detailsub_total: TFloatField;
    Detailhrg_beli: TFloatField;
    Detailmargin_penjualan: TFloatField;
    grddbtvAP_ListColumn3: TcxGridDBColumn;
    tsItemPromo: TcxTabSheet;
    grdItemPromo: TcxGrid;
    grddbtvItemPromo: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBTableView6: TcxGridDBTableView;
    grdlvlItemPromo: TcxGridLevel;
    DetailPromo: TZQuery;
    dsDetailPromo: TDataSource;
    DetailPromono_nota: TStringField;
    DetailPromodt_nota: TDateTimeField;
    DetailPromodisc_total: TFloatField;
    DetailPromototal: TFloatField;
    DetailPromoshift: TIntegerField;
    DetailPromousr_upd: TStringField;
    DetailPromokd_item: TStringField;
    DetailPromonama_item: TStringField;
    DetailPromohrg: TFloatField;
    DetailPromoqty_biji: TFloatField;
    DetailPromosatuan_jual: TStringField;
    DetailPromosub_total: TFloatField;
    DetailPromohrg_beli: TFloatField;
    DetailPromomargin_penjualan: TFloatField;
    frxDBDetailPromo: TfrxDBDataset;
    frxReport1: TfrxReport;
    OpenDialog: TSaveDialog;
    grddbtvAP_ListColumn4: TcxGridDBColumn;
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
    procedure qRepLabaBeforeOpen(DataSet: TDataSet);
    procedure edtItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tsRepLabaShow(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure tsItemPromoShow(Sender: TObject);
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
  LapPenjualanFrm: TLapPenjualanFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);


implementation

uses U_DM, U_PrintOption, cxGridExportLink;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  LapPenjualanFrm := TLapPenjualanFrm.Create(Application);
  LapPenjualanFrm.namamenu := pNamaMenu;
  LapPenjualanFrm.vtag:= ptag;
  LapPenjualanFrm.lblHeader1.Caption := pNamaMenu;
  LapPenjualanFrm.pgcMaster.ActivePageIndex:= 0;
  LapPenjualanFrm.Show;
  LapPenjualanFrm.cxLabel1.Visible:= False;
  LapPenjualanFrm.edtItem.Visible:= False;
  LapPenjualanFrm.edtItem.Text:= '';
end;

procedure TLapPenjualanFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TLapPenjualanFrm.UpdateView(ds : TDataSet);
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

procedure TLapPenjualanFrm.OpenDataset(ds : TDataSet);
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


procedure TLapPenjualanFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TLapPenjualanFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TLapPenjualanFrm.btnOKClick(Sender: TObject);
var
s, dt0, dt1 : String;
begin
   case pgcMaster.ActivePageIndex of
     0: begin OpenDataset(Master);
               UpdateView(Master);
     end;
     1: begin
        dt0:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
        dt1:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
        edtItem.Text:= '';

        Detail.Close;
        Detail.SQL.Clear;
        Detail.Params.Clear;
        s:= 'select a.no_nota, a.dt_nota, a.disc_total, a.total, a.shift, a.usr_upd, nd.kd_item, c.nama_item, nd.hrg, nd.qty_biji, c.satuan_jual, '+
        'nd.hrg*nd.qty_biji as sub_total, c.hrg_beli, (nd.hrg-c.hrg_beli)*nd.qty_biji as margin_penjualan '+
        'from transaksi.nota_detail nd '+
        'left join transaksi.nota a on a.id_nota=nd.id_nota '+
        'left join master.item c on c.kd_item=nd.kd_item '+
        'where id_trans='+QuotedStr('201')+' and a.ispost='+QuotedStr('1')+' and a.iscancel='+QuotedStr('0')+' and a.isdelete='+QuotedStr('0')+' '+
        'and nd.ispromo='+QuotedStr('0')+' '+
        'and a.dt_nota between to_timestamp('+QuotedStr(dt0)+','+QuotedStr('dd/mm/yyyy')+') and to_timestamp('+QuotedStr(dt1)+','+QuotedStr('dd/mm/yyyy')+') '+
        'order by a.id_nota asc';
        Detail.SQL.Add(s);
        Detail.Open;
        UpdateView(Detail);
     end;
     2: begin OpenDataset(qRepLaba);
                UpdateView(qRepLaba);
     end;
     3: begin
        dt0:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
        dt1:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
        edtItem.Text:= '';

        DetailPromo.Close;
        DetailPromo.SQL.Clear;
        DetailPromo.Params.Clear;
        s:= 'select a.no_nota, a.dt_nota, a.disc_total, a.total, a.shift, a.usr_upd, nd.kd_item, c.nama_item, nd.hrg, nd.qty_biji, c.satuan_jual, '+
        'nd.hrg*nd.qty_biji as sub_total, c.hrg_beli, (nd.hrg-c.hrg_beli)*nd.qty_biji as margin_penjualan '+
        'from transaksi.nota_detail nd '+
        'left join transaksi.nota a on a.id_nota=nd.id_nota '+
        'left join master.item c on c.kd_item=nd.kd_item '+
        'where id_trans='+QuotedStr('201')+' and a.ispost='+QuotedStr('1')+' and a.iscancel='+QuotedStr('0')+' and a.isdelete='+QuotedStr('0')+' '+
        'and nd.ispromo='+QuotedStr('1')+' '+
        'and a.dt_nota between to_timestamp('+QuotedStr(dt0)+','+QuotedStr('dd/mm/yyyy')+') and to_timestamp('+QuotedStr(dt1)+','+QuotedStr('dd/mm/yyyy')+') '+
        'order by a.id_nota asc';
        DetailPromo.SQL.Add(s);
        DetailPromo.Open;
        UpdateView(DetailPromo);
     end;
   end;
end;

procedure TLapPenjualanFrm.PrepareForPrint(pCap : String);
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


procedure TLapPenjualanFrm.btnPrintClick(Sender: TObject);
var f : TPrintOptionFrm;
    printMode : string;
begin

   if pgcMaster.ActivePageIndex=0 then begin
      PrepareForPrint('Rekap Penjualan Per Faktur');
      RepPerNota.ShowReport;
   end
   else
   if pgcMaster.ActivePageIndex=1 then begin
      PrepareForPrint('Rekap Penjualan Per Item');
      RepPerItem.ShowReport;
   end;
end;

procedure TLapPenjualanFrm.PrintOption(opt: string; val : String);
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

procedure TLapPenjualanFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
    Master.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    Master.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TLapPenjualanFrm.qrySUM_SUPBeforeOpen(DataSet: TDataSet);
begin
   qrySUM_SUP.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TLapPenjualanFrm.tabSupplierShow(Sender: TObject);
begin
  OpenDataset(qrySUM_SUP);
  UpdateView(qrySUM_SUP);
end;

procedure TLapPenjualanFrm.tabAPShow(Sender: TObject);
begin
  OpenDataset(Master);
  UpdateView(Master);
  cxLabel1.Visible:= False;
  edtItem.Visible:= False;
end;

procedure TLapPenjualanFrm.tabPeriodeShow(Sender: TObject);
begin
  OpenDataset(qryPeriode);
  UpdateView(qryPeriode);
end;


procedure TLapPenjualanFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TLapPenjualanFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end


end;

procedure TLapPenjualanFrm.qryPeriodeBeforeOpen(DataSet: TDataSet);
begin
    qryPeriode.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qryPeriode.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;


procedure TLapPenjualanFrm.btnExportClick(Sender: TObject);
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
      if Detail.RecordCount=0 then
         Exit;

      if OpenDialog.Execute then begin
         appPath:= ExtractFilePath(OpenDialog.InitialDir);
         ttl:= OpenDialog.FileName;

         if (Detail.Active) and (Detail.RecordCount>0) then begin
           ExportGridToExcel(appPath+ttl,cxGrid1,true,true,true,'xls');

         end;

      end;

   end else

   if pgcMaster.ActivePageIndex=2 then begin
      if qRepLaba.RecordCount=0 then
         Exit;

      if OpenDialog.Execute then begin
         appPath:= ExtractFilePath(OpenDialog.InitialDir);
         ttl:= OpenDialog.FileName;

         if (qRepLaba.Active) and (qRepLaba.RecordCount>0) then begin
           ExportGridToExcel(appPath+ttl,cxGrid2,true,true,true,'xls');

         end;

      end;

   end else

   if pgcMaster.ActivePageIndex=3 then begin
      if DetailPromo.RecordCount=0 then
         Exit;

      if OpenDialog.Execute then begin
         appPath:= ExtractFilePath(OpenDialog.InitialDir);
         ttl:= OpenDialog.FileName;

         if (DetailPromo.Active) and (DetailPromo.RecordCount>0) then begin
           ExportGridToExcel(appPath+ttl,grdItemPromo,true,true,true,'xls');

         end;

      end;

   end;

end;

procedure TLapPenjualanFrm.qRepLabaBeforeOpen(DataSet: TDataSet);
begin
    qRepLaba.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qRepLaba.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TLapPenjualanFrm.edtItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  s, dt0, dt1 : String;
begin
  dt0:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
  dt1:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
   try
     qItem.Close;
     qItem.Open;
     if LookItem.Execute then begin
      edtItem.Text:= qItemkd_item.AsString;

      Detail.Close;
      Detail.SQL.Clear;
      Detail.Params.Clear;
      s:= 'select a.no_nota, a.dt_nota, a.disc_total, a.total, a.shift, a.usr_upd, nd.kd_item, c.nama_item, nd.hrg, nd.qty_biji, c.satuan_jual, '+
      'nd.hrg*nd.qty_biji as sub_total, c.hrg_beli, (nd.hrg-c.hrg_beli)*nd.qty_biji as margin_penjualan '+
      'from transaksi.nota_detail nd '+
      'left join transaksi.nota a on a.id_nota=nd.id_nota '+
      'left join master.item c on c.kd_item=nd.kd_item '+
      'where id_trans='+QuotedStr('201')+' and a.ispost='+QuotedStr('1')+' and a.iscancel='+QuotedStr('0')+' and a.isdelete='+QuotedStr('0')+' '+
      'and a.dt_nota between to_timestamp('+QuotedStr(dt0)+','+QuotedStr('dd/mm/yyyy')+') and to_timestamp('+QuotedStr(dt1)+','+QuotedStr('dd/mm/yyyy')+') '+
      'and nd.kd_item='+QuotedStr(edtItem.Text)+
      ' order by a.id_nota asc';
      Detail.SQL.Add(s);
      Detail.Open;

//        OpenDataset(Detail);
//        UpdateView(Detail);
     end;
   except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TLapPenjualanFrm.tsRepLabaShow(Sender: TObject);
begin
  cxLabel1.Visible:= True;
  edtItem.Visible:= True;
end;

procedure TLapPenjualanFrm.cxTabSheet1Show(Sender: TObject);
begin
  cxLabel1.Visible:= False;
  edtItem.Visible:= False;
end;

procedure TLapPenjualanFrm.tsItemPromoShow(Sender: TObject);
begin
  cxLabel1.Visible:= True;
  edtItem.Visible:= True;
end;

end.

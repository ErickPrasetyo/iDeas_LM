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
    frxReport: TfrxReport;
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
    memMaster: TkbmMemTable;
    frxdbMaster: TfrxDBDataset;
    memMasterid_item: TStringField;
    memMasteritem_name: TStringField;
    memMastersatuan: TStringField;
    memMasterqty_jual: TStringField;
    memMasterstok_gdu: TStringField;
    memMasterstok_display: TStringField;
    memMastertotal_stok: TStringField;
    memMastersaran_order: TStringField;
    memMasterorder: TStringField;
    kmtInfologo: TBlobField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure PrepareForPrint(pCap : String);
    procedure OpenDataSet(kdItem :String);

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
  kmtInfoperiode.AsString := 'Pada Periode : '+FormatDateTime('dd mmm yyyy',dtFilter.Date)+' s/d '+FormatDateTime('dd mmm yyyy', IncMonth(dtFilter.Date, 1));
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfologo.LoadFromFile('IMAGES/LOGO.JPG');
  kmtInfo.Post;

end;

procedure TRencanaPembelianFrm.btnPrintClick(Sender: TObject);
begin

  if Master.RecordCount=0 then
     Exit;

  PrepareForPrint('RENCANA PEMBELIAN BARANG');

  Master.DisableControls;

  try

    memMaster.Close;
    memMaster.EmptyTable;
    memMaster.Open;

    Master.First;
    while not Master.Eof do
    begin

      memMaster.Append;
      memMasterid_item.AsString:= Masterid_item.AsString;
      memMasteritem_name.AsString:= Masteritem_name.AsString;
      memMastersatuan.AsString:= Mastersatuan.AsString;
      memMasterqty_jual.AsString:= FloatToStr(Masterqty_jual.AsFloat);
      memMasterstok_gdu.AsString:= FloatToStr(Masterstok_gdu.AsFloat);
      memMasterstok_display.AsString:= FloatToStr(Masterstok_display.AsFloat);
      memMastertotal_stok.AsString:= FloatToStr(Mastertotal_stok.AsFloat);
      memMastersaran_order.AsString:= FloatToStr(Mastersaran_order.AsFloat);
      memMasterorder.AsString:= FloatToStr(Masterorder.AsFloat);
      memMaster.Post;
      Master.Next;

    end;

  except
    on E:Exception do
    DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;

  Master.EnableControls;

  frxReport.ShowReport;

end;

procedure TRencanaPembelianFrm.btnExportClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin

  if Master.RecordCount=0 then
     Exit;

  if OpenDialog.Execute then begin
     appPath:= ExtractFilePath(OpenDialog.InitialDir);
     ttl:= OpenDialog.FileName;

     if (Master.Active) and (Master.RecordCount>0) then begin
       ExportGridToExcel(appPath+ttl,grdRencanaPembelian,true,true,true,'xls');

     end;

  end;

end;

procedure TRencanaPembelianFrm.btnCariClick(Sender: TObject);
var
  f: TCariItemFrm;
begin

  try
    f:= TCariItemFrm.Create(Application);
    f.vMode:= 0;
    if f.ShowModal=mrOK then begin
       OpenDataSet(f.qItemkd_item.AsString);
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
begin
  OpenDataSet('');
end;

procedure TRencanaPembelianFrm.OpenDataSet(kdItem: String);
var
  s: String;
begin
  try
  
    if kdItem <> '' then begin
       s:= 'select * from inventory.fn_get_plan_order('+QuotedStr(dt0)+','+QuotedStr(dt1)+') where id_item = '+QuotedStr(kdItem)+
           ' order by item_name asc';
    end else begin
       s:= 'select * from inventory.fn_get_plan_order('+QuotedStr(dt0)+','+QuotedStr(dt1)+')'+
           ' order by item_name asc';
    end;

    DM.PrepareQuery(Master);
    DM.OpenQuery(Master, s);
  except
    on E:Exception do
    DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end
end;

end.

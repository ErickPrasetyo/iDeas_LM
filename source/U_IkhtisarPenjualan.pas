unit U_IkhtisarPenjualan;

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
  cxTextEdit, cxMaskEdit, cxButtonEdit, RzSplit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TIkhtisarPenjualanFrm = class(TForm)
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
    Master: TZQuery;
    kmtMaster: TkbmMemTable;
    btnOK: TSCButton;
    grdSales: TcxGrid;
    grdDBTVSales: TcxGridDBTableView;
    grdLvlSales: TcxGridLevel;
    Masterkd_sales: TStringField;
    Masterid_trans: TStringField;
    Masterjenis: TStringField;
    Masterid_division: TStringField;
    Masternama_sales: TStringField;
    Mastergross_sales: TFloatField;
    Masterpromo_barang: TFloatField;
    Masterpromo_uang: TFloatField;
    Masterdisc_rp: TFloatField;
    Masterppn: TFloatField;
    Masternet_n_ppn: TFloatField;
    grdDBTVSaleskd_sales: TcxGridDBColumn;
    grdDBTVSalesjenis: TcxGridDBColumn;
    grdDBTVSalesid_division: TcxGridDBColumn;
    grdDBTVSalesnama_sales: TcxGridDBColumn;
    grdDBTVSalesgross_sales: TcxGridDBColumn;
    grdDBTVSalespromo_barang: TcxGridDBColumn;
    grdDBTVSalespromo_uang: TcxGridDBColumn;
    grdDBTVSalesdisc_rp: TcxGridDBColumn;
    grdDBTVSalesppn: TcxGridDBColumn;
    grdDBTVSalesnet_n_ppn: TcxGridDBColumn;
    kmtMasterkd_sales: TStringField;
    kmtMasterid_trans: TStringField;
    kmtMasterjenis: TStringField;
    kmtMasterid_division: TStringField;
    kmtMasternama_sales: TStringField;
    kmtMastergross_sales: TFloatField;
    kmtMasterpromo_barang: TFloatField;
    kmtMasterpromo_uang: TFloatField;
    kmtMasterdisc_rp: TFloatField;
    kmtMasterppn: TFloatField;
    kmtMasternet_n_ppn: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    namamenu, vFilter, vSales: string;
    vtag : integer;
    procedure UpdateView;
    procedure OpenDataset;
    procedure PrepareForPrint(pCap : String);

  public
    { Public declarations }
  end;

var
  IkhtisarPenjualanFrm: TIkhtisarPenjualanFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM;

{$R *.dfm}
procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  IkhtisarPenjualanFrm := TIkhtisarPenjualanFrm.Create(Application);
  IkhtisarPenjualanFrm.namamenu := pNamaMenu;
  IkhtisarPenjualanFrm.vtag:= ptag;
  IkhtisarPenjualanFrm.lblHeader1.Caption := pNamaMenu;
  IkhtisarPenjualanFrm.Show;
end;


procedure TIkhtisarPenjualanFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TIkhtisarPenjualanFrm.OpenDataset;
begin
   try
     Master.Close;
     Master.Params.ParamByName('ptgl').AsString:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);
     Master.Open;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TIkhtisarPenjualanFrm.UpdateView;
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

//    grddbtvOutlet.OptionsData.Inserting:= False;
//    grddbtvOutlet.OptionsData.Editing:= False;
//    grddbtvOutlet.OptionsData.Deleting:= False;

    btnRefresh.Enabled:= not isEmpty;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
  end;
end;


procedure TIkhtisarPenjualanFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TIkhtisarPenjualanFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TIkhtisarPenjualanFrm.btnOKClick(Sender: TObject);
begin
  OpenDataset;
  UpdateView;
end;


procedure TIkhtisarPenjualanFrm.PrepareForPrint(pCap : String);
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



procedure TIkhtisarPenjualanFrm.btnPrintClick(Sender: TObject);
begin
   if Master.RecordCount=0 then
      Exit;

//   try
//     Master.DisableControls;
//     Master.First;
//
//     kmtMaster.Close;
//     kmtMaster.Open;
//     kmtMaster.EmptyTable;
//     kmtMaster.LoadFromDataSet(Master,[mtcpoAppend]);
//     Master.First;
//     Master.EnableControls;
//   except
//    on E: Exception do
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//   end;
//
//  PrepareForPrint('REKAP FAKTUR PER SALES');
//  if trim(edtSaleman.Text)='SEMUA' then
     frxARList_SLS.ShowReport()
//  else frxARList_OLT.ShowReport();

end;

end.

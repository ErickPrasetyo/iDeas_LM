unit U_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxCheckBox, DB, frxClass, frxDBSet, kbmMemTable, wwDialog, wwidlg,
  ActnList, AdvPanel, AdvAppStyler, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxButtonEdit, cxDBEdit, RzLabel, RzDBLbl, RzPanel, cxContainer,
  cxEdit, cxTextEdit, cxDropDownEdit, StdCtrls, Wwkeycb, SCControl,
  SCStdControls, cxInplaceContainer, cxDBTL, cxTLData, cxPC, cxControls,
  AdvGlowButton, AdvReflectionImage, ExtCtrls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxTLdxBarBuiltInMenu, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  AdvToolBar, frxBarcode, pBarCode, pDBBarcode;

type
 TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TItemFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    SR: TcxStyleRepository;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actSave: TAction;
    actCancel: TAction;
    actRefresh: TAction;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Label6: TLabel;
    Label7: TLabel;
    qryClvl: TZQuery;
    pgMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    dbtlMaster: TcxDBTreeList;
    dbtlMasterid_item: TcxDBTreeListColumn;
    dbtlMasteritem_name: TcxDBTreeListColumn;
    dbtlMasterisdetail: TcxDBTreeListColumn;
    L_Parent: TZQuery;
    LookUpParent: TwwLookupDialog;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    frxRepMaster: TfrxReport;
    frxDBmaster: TfrxDBDataset;
    dbtlMasterHRG_BELI_KARTON: TcxDBTreeListColumn;
    dbtlMasterBIJI_PER_KARTON: TcxDBTreeListColumn;
    L_ParentKD_ITEM: TStringField;
    L_ParentNAMA_ITEM: TStringField;
    btnSearch: TSCButton;
    actSearch: TAction;
    pnlSearch: TSCPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    dbtlMasterisinventory: TcxDBTreeListColumn;
    dbtlMasterkd_satuan: TcxDBTreeListColumn;
    qryITEM_BOM: TZQuery;
    LookITEM_BOM: TwwLookupDialog;
    qryITEM_BOMkd_item: TStringField;
    qryITEM_BOMnama_item: TStringField;
    pnlDetailSupplier: TRzPanel;
    lblDBItemName: TRzDBLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel9: TRzLabel;
    edtKode: TcxDBTextEdit;
    ckbDetail: TcxDBCheckBox;
    edtName: TcxDBTextEdit;
    edtMin_Stock: TcxDBTextEdit;
    cb_inventory: TcxDBCheckBox;
    cb_barang_jadi: TcxDBCheckBox;
    edtSatuan: TcxDBButtonEdit;
    edtSatuanBeli: TcxDBButtonEdit;
    edtRasio: TcxDBTextEdit;
    edtHPP: TcxDBTextEdit;
    edtRekPersediaan: TcxDBButtonEdit;
    edtRekCOGS: TcxDBButtonEdit;
    RzLabel7: TRzLabel;
    RzLabel10: TRzLabel;
    qryRekGL: TZQuery;
    LookRekGL: TwwLookupDialog;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    dbtlMasterhrg_jual_karton: TcxDBTreeListColumn;
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    Masterkd_item: TStringField;
    Masterkd_parent: TStringField;
    Masterlvl: TIntegerField;
    Masterisdetail: TStringField;
    Masternama_item: TStringField;
    Masterhrg_jual_karton: TFloatField;
    Masterhrg_jual_lusin: TFloatField;
    Masterhrg_beli_karton: TFloatField;
    Masterbiji_per_karton: TFloatField;
    Masterhpp: TFloatField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterisinventory: TStringField;
    Masterisbarang_jadi: TStringField;
    Masterrasio: TFloatField;
    Masterid_rek_persediaan: TStringField;
    Masterid_rek_hpp: TStringField;
    Masterid_cat_item: TStringField;
    Masterrasio_lusin: TFloatField;
    Masterhrg_jual: TFloatField;
    Masterhrg_beli: TFloatField;
    Mastersatuan_jual: TStringField;
    Mastersatuan_beli: TStringField;
    Masterbrand: TStringField;
    RzLabel6: TRzLabel;
    edtBrand: TcxDBTextEdit;
    RzPanel1: TRzPanel;
    pnlBottom: TSCPanel;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvMasterid_item: TcxGridDBColumn;
    grddbtvMasterdt_receive: TcxGridDBColumn;
    grddbtvMasterid_rekanan: TcxGridDBColumn;
    grddbtvMasternama_rekanan: TcxGridDBColumn;
    grddbtvMasterunit_price: TcxGridDBColumn;
    grdMasterDBTableView2: TcxGridDBTableView;
    grdMasterDBTableView2Column1: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    qryHrgBeli: TZReadOnlyQuery;
    dsqryHrgBeli: TDataSource;
    qryHrgBelikd_item: TStringField;
    qryHrgBelidiskripsi: TStringField;
    qryHrgBelihrg: TFloatField;
    qryHrgBelidt_nota: TDateTimeField;
    qryHrgBelinama_rekanan: TStringField;
    cxStyle5: TcxStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    Masterhrg_jual_sm_grosir: TFloatField;
    Masterhrg_jual_grosir: TFloatField;
    Masterhrg_jual_grosir_besar: TFloatField;
    RzLabel11: TRzLabel;
    edtHrgSmGrosir: TcxDBTextEdit;
    RzLabel12: TRzLabel;
    edtHrgGrosir: TcxDBTextEdit;
    RzLabel13: TRzLabel;
    edtHrgGrosirBesar: TcxDBTextEdit;
    dbtlMastercxDBTreeListColumn1: TcxDBTreeListColumn;
    dbtlMastercxDBTreeListColumn2: TcxDBTreeListColumn;
    dbtlMastercxDBTreeListColumn3: TcxDBTreeListColumn;
    RzLabel14: TRzLabel;
    edtqtymin_retail: TcxDBTextEdit;
    RzLabel15: TRzLabel;
    edtqtymax_retail: TcxDBTextEdit;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    edtqtymin_sm_grosir: TcxDBTextEdit;
    edtqtymax_sm_grosir: TcxDBTextEdit;
    RzLabel18: TRzLabel;
    edtqtymin_grosir: TcxDBTextEdit;
    edtqtymax_grosir: TcxDBTextEdit;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    edtqtymin_grosir_besar: TcxDBTextEdit;
    RzLabel21: TRzLabel;
    edtqtymax_grosir_besar: TcxDBTextEdit;
    Masterqty_min_retail: TFloatField;
    Masterqty_max_retail: TFloatField;
    Masterqty_min_sm_grosir: TFloatField;
    Masterqty_max_sm_grosir: TFloatField;
    Masterqty_min_grosir: TFloatField;
    Masterqty_max_grosir: TFloatField;
    Masterqty_min_grosir_besar: TFloatField;
    Masterqty_max_grosir_besar: TFloatField;
    btnPrintBC: TSCButton;
    frBarcode: TfrxReport;
    SCButton1: TSCButton;
    OpenDialog1: TSaveDialog;
    BtnAmbilFormatExcel: TSCButton;
    qExportExcel: TZQuery;
    dsqExportExcel: TDataSource;
    cxTabSheet1: TcxTabSheet;
    cxDBTreeList1DBTableView1: TcxGridDBTableView;
    cxDBTreeList1Level1: TcxGridLevel;
    cxDBTreeList1: TcxGrid;
    cxDBTreeList1DBTableView1Column1: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column2: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column3: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column4: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column5: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column6: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column7: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column8: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column9: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column10: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column11: TcxGridDBColumn;
    cxDBTreeList1DBTableView1Column12: TcxGridDBColumn;
    qExportExcelkd_item: TStringField;
    qExportExcelnama_item: TStringField;
    qExportExcelsatuan: TStringField;
    qExportExcelhrg_beli: TFloatField;
    qExportExcelhrg_retail: TFloatField;
    qExportExcelqty_retail: TStringField;
    qExportExcelhrg_sm_grosir: TFloatField;
    qExportExcelqty_sm_grosir: TStringField;
    qExportExcelhrg_grosir: TFloatField;
    qExportExcelqty_grosir: TStringField;
    qExportExcelhrg_grosir_bsr: TFloatField;
    qExportExcelqty_grosir_bsr: TStringField;
    qExportExcelstok_gdu: TFloatField;
    qExportExcelstok_rak: TFloatField;
    RzPanel2: TRzPanel;
    SCPanel2: TSCPanel;
    ItemPromo: TZQuery;
    dsItemPromo: TDataSource;
    ItemPromokd_item: TStringField;
    ItemPromonama_item: TStringField;
    ItemPromojenis: TStringField;
    ItemPromoqty_promo: TFloatField;
    ItemPromonilai_promo: TFloatField;
    ItemPromokd_item_promo: TStringField;
    ItemPromonama_item_promo: TStringField;
    ItemPromoqty_item_promo: TFloatField;
    SCPanel1: TSCPanel;
    AdvToolBar1: TAdvToolBar;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    DBAdvGlowButton5: TDBAdvGlowButton;
    DBAdvGlowButton6: TDBAdvGlowButton;
    grdDetail: TcxGrid;
    grdDetailDBTableView1: TcxGridDBTableView;
    grdDetailDBBTV: TcxGridDBTableView;
    grdDetailDBBTVid_warehouse: TcxGridDBColumn;
    grdDetailDBBTVid_rak: TcxGridDBColumn;
    grdlvlDetail: TcxGridLevel;
    grdDetailDBBTVColumn1: TcxGridDBColumn;
    grdDetailDBBTVColumn2: TcxGridDBColumn;
    grdDetailDBBTVColumn3: TcxGridDBColumn;
    grdDetailDBBTVColumn4: TcxGridDBColumn;
    frxBarCodeObject1: TfrxBarCodeObject;
    frBarcode2: TfrxReport;
    grdDetailDBBTVColumn5: TcxGridDBColumn;
    ItemPromoqty_max: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure pgMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure edtKode_ParentPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnPrintClick(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFieldNamePropertiesChange(Sender: TObject);
    procedure dbtlMasterDblClick(Sender: TObject);
    procedure edtSatuanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtSatuanBeliPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtRekPersediaanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtRekCOGSPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure btnDataClick(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure tsBrowseShow(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure btnPrintBCClick(Sender: TObject);
    procedure SCButton1Click(Sender: TObject);
    procedure BtnAmbilFormatExcelClick(Sender: TObject);
    procedure grdDetailDBBTVColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ItemPromoNewRecord(DataSet: TDataSet);
    procedure ItemPromoBeforePost(DataSet: TDataSet);
    procedure grdDetailDBBTVid_rakPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
    DBMode: TDBMode;
    vjudul : string;
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  ItemFrm: TItemFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, U_Unit, U_RepairItem, cxGridExportLink, U_Status_Dialog, StrUtils;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  ItemFrm:= TItemFrm.Create(Application);
  try
    ItemFrm.Master.Close;
    ItemFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  ItemFrm.DBMode:= dmBrowse;
  ItemFrm.lblHeader1.Caption:= pNamaMenu;
  ItemFrm.vtag:= ptag;
  ItemFrm.UpdateView;
  ItemFrm.Show;
end;


procedure TItemFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TItemFrm.MasterNewRecord(DataSet: TDataSet);
begin
  MasterHRG_JUAL_KARTON.AsFloat:= 0;
  MasterHRG_JUAL_LUSIN.AsFloat:= 0;
  MasterHRG_BELI_KARTON.AsFloat:= 0;
  Masterlvl.AsInteger:= 0;
  MasterBIJI_PER_KARTON.AsInteger:= 0;
  MasterHPP.AsFloat:= 0;
  Masterisdetail.AsString:= '1';
  Masterisinventory.AsString:= '1';
//  Masterisbarang_jadi.AsString:= '0';
  Masterrasio.AsFloat:= 1;
  Masterid_cat_item.AsString:= '-';
  Masterhrg_jual.AsFloat:= 0;
  Masterhrg_beli.AsFloat:= 0;

  
end;

procedure TItemFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TItemFrm.MasterBeforePost(DataSet: TDataSet);
var s : string;
begin

  if MasterKD_ITEM.IsNull or (Trim(MasterKD_ITEM.AsString)='') then
    raise Exception.Create('KODE ITEM harus diisi !')
  else
  if MasterNAMA_ITEM.IsNull or (Trim(MasterNAMA_ITEM.AsString)='') then
    raise Exception.Create('NAMA ITEM harus diisi !')
  else
  if Masterrasio.IsNull or (Trim(Masterrasio.AsString)='') then
    raise Exception.Create('BIJI/KARTON harus diisi !')
  else
  if Masterhrg_jual.IsNull or (Trim(Masterhrg_jual.AsString)='') then
    raise Exception.Create('HARGA JUAL KARTON harus diisi !')
  else
  if Masterhrg_beli.IsNull or (Trim(Masterhrg_beli.AsString)='') then
    raise Exception.Create('HARGA JUAL LUSIN harus diisi !');

  if Masterid_rek_persediaan.IsNull or (Trim(Masterid_rek_persediaan.AsString)='') then
     Masterid_rek_persediaan.Clear;
  if Masterid_rek_hpp.IsNull or (Trim(Masterid_rek_hpp.AsString)='') then
     Masterid_rek_hpp.Clear;

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;

end;

procedure TItemFrm.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TItemFrm.actAddExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Append;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView;
  edtKode.SetFocus;
end;

procedure TItemFrm.actEditExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Edit;
    DBMode:= dmEdit;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TItemFrm.actDeleteExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TItemFrm.actRefreshExecute(Sender: TObject);
begin
  DBMode:= dmNone;
  try
    Master.Close;
    Master.Open;
    DBMode:= dmBrowse;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TItemFrm.actSaveExecute(Sender: TObject);
begin
  try
    if (Master.State=dsInsert) or (Master.State=dsEdit) then
        Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TItemFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TItemFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    dbtlMaster.Enabled:= False;
    pgMaster.ActivePageIndex := 0;
    btnFirst.Enabled:= False;
    btnPrior.Enabled:= False;
    btnNext.Enabled:= False;
    btnLast.Enabled:= False;
    btnAdd.Visible:= True;
    btnAdd.Enabled:= False;
    btnEdit.Visible:= True;
    btnEdit.Enabled:= False;
    btnDelete.Visible:= True;
    btnDelete.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnSave.Visible:= False;
    btnCancel.Visible:= False;
    btnSearch.Visible:= False;
//    btnData.Visible:= True;
//    btnData.Enabled:= True;
  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := Master.RecordCount=0;
    dbtlMaster.Enabled := isBrowse;
    if isBrowse then
      pgMaster.ActivePageIndex := 0
    else
      pgMaster.ActivePageIndex := 1;
    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

   edtKode.Properties.ReadOnly:= isBrowse;
   edtName.Properties.ReadOnly:= isBrowse;
   edtMin_Stock.Properties.ReadOnly:= isBrowse;
   edtHPP.Properties.ReadOnly:= isBrowse;
   ckbDetail.Properties.ReadOnly:= isBrowse;
   cb_inventory.Properties.ReadOnly:= isBrowse;
   cb_barang_jadi.Properties.ReadOnly:= isBrowse;
   edtHrgSmGrosir.Properties.ReadOnly:= isBrowse;
   edtHrgGrosir.Properties.ReadOnly:= isBrowse;
   edtHrgGrosirBesar.Properties.ReadOnly:= isBrowse;

//   edtKode_Parent.Properties.ReadOnly:= isBrowse;
//   edtKode_Parent.Properties.Buttons[0].Visible:= NOT isBrowse;
   edtSatuan.Properties.ReadOnly:= isBrowse;
   edtSatuan.Properties.Buttons[0].Visible:= Not isBrowse;
   edtSatuanBeli.Properties.ReadOnly:= isBrowse;
   edtSatuanBeli.Properties.Buttons[0].Visible:= Not isBrowse;

   edtRekPersediaan.Properties.ReadOnly:= isBrowse;
   edtRekPersediaan.Properties.Buttons[0].Visible:= Not isBrowse;
   edtRekCOGS.Properties.ReadOnly:= isBrowse;
   edtRekCOGS.Properties.Buttons[0].Visible:= Not isBrowse;

   edtRasio.Properties.ReadOnly:= isBrowse;

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;
    SCPanel2.Visible:= not isBrowse;
//    btnPrint.Visible:= isBrowse;
//    btnPrint.Enabled:= not isEmpty and accprint;
    btnSearch.Visible:= isBrowse;
    btnSearch.Enabled:= not isEmpty;

//    btnData.Visible:= isBrowse;
//    btnData.Enabled:= not isEmpty and accedit;
  end;
end;

procedure TItemFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TItemFrm.edtKode_ParentPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    L_Parent.Close;
    L_Parent.Open;
    if LookUpParent.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       MasterKD_PARENT.AsString:= L_ParentKD_ITEM.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TItemFrm.btnPrintClick(Sender: TObject);
var i: integer;
begin
if Master.RecordCount=0 then
      Exit;
try
   try
       DM.Perusahaan.Close;
       DM.Perusahaan.Open;

       MemInfoPerusahaan.Close;
       MemInfoPerusahaan.Open;
       MemInfoPerusahaan.Append;
       MemInfoPerusahaannama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
       MemInfoPerusahaanalamat_perusahaan.AsString:= DM.Perusahaanalamat.AsString;
       MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.Perusahaantelepon.AsString;
       MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.Perusahaanfax.AsString;
       MemInfoPerusahaankota_perusahaan.AsString:= DM.Perusahaankota.AsString;
       MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
       MemInfoPerusahaan.Post;


       Master.DisableControls;
       Master.First;
       frxRepMaster.ShowReport;
   except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
finally
  Master.EnableControls;
end;
end;

procedure TItemFrm.actSearchExecute(Sender: TObject);
begin
   pnlSearch.Visible:= not pnlSearch.Visible;
end;

procedure TItemFrm.FormCreate(Sender: TObject);
begin
  cbFieldName.Clear;
  cbFieldName.Properties.Items.Add('Kode');
  cbFieldName.Properties.Items.Add('Nama Item');
end;

procedure TItemFrm.cbFieldNamePropertiesChange(Sender: TObject);
begin
  case cbFieldName.ItemIndex of
    0: edtSearch.SearchField:= 'KD_ITEM';
    1: edtSearch.SearchField:= 'NAMA_ITEM';
  end;
end;

procedure TItemFrm.dbtlMasterDblClick(Sender: TObject);
begin
  pgMaster.ActivePageIndex := 1;
end;

procedure TItemFrm.edtSatuanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var f: TUnitFrm;
begin
  f:= TUnitFrm.Create(Application);
  try
    if f.ShowModal=MrOK then
      try
        if Master.State=dsBrowse then
         Master.Edit;
        Mastersatuan_beli.AsString:= f.Masterkd_satuan.AsString;
      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
  finally
    f.Free
  end;

end;

procedure TItemFrm.edtSatuanBeliPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var f: TUnitFrm;
begin
  f:= TUnitFrm.Create(Application);
  try
    if f.ShowModal=MrOK then
      try
        if Master.State=dsBrowse then
         Master.Edit;
        Mastersatuan_jual.AsString:= f.Masterkd_satuan.AsString;
      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
  finally
    f.Free
  end;

end;

procedure TItemFrm.edtRekPersediaanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    qryRekGL.Close;
    qryRekGL.Open;
    if LookRekGL.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       Masterid_rek_persediaan.AsString:= qryRekGLid_rek_gl.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TItemFrm.edtRekCOGSPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    qryRekGL.Close;
    qryRekGL.Open;
    if LookRekGL.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       Masterid_rek_hpp.AsString:= qryRekGLid_rek_gl.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TItemFrm.EditKeyPress(Sender: TObject; var Key: Char);
begin
   if DBMode=dmBrowse then
      Exit;

    if Key=#13 then
      SelectNext(ActiveControl, True, True);
end;

procedure TItemFrm.btnDataClick(Sender: TObject);
var f: TRepairItemFrm;
begin
  f:= TRepairItemFrm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;

procedure TItemFrm.MasterBeforeOpen(DataSet: TDataSet);
var s: String;
begin

end;

procedure TItemFrm.tsBrowseShow(Sender: TObject);
begin
  btnPrintBC.Visible:= False;
end;

procedure TItemFrm.tsDetailShow(Sender: TObject);
begin
  btnPrintBC.Visible:= True;
  try
    qryHrgBeli.Close;
    qryHrgBeli.Params.ParamByName('pid_item').AsString:= Masterkd_item.AsString;
    qryHrgBeli.Open;

    ItemPromo.Close;
    ItemPromo.Params.ParamByName('kd_item').Value:= Masterkd_item.AsString;
    ItemPromo.Open;

  except

  end;
end;

procedure TItemFrm.btnPrintBCClick(Sender: TObject);
begin
  frBarcode.ShowReport;
end;

procedure TItemFrm.SCButton1Click(Sender: TObject);
begin
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
  MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO.JPG');
  MemInfoPerusahaan.Post;

  if Master.RecordCount=0 then
  Exit;

  frxRepMaster.ShowReport;

end;

procedure TItemFrm.BtnAmbilFormatExcelClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin
  qExportExcel.Close;
  qExportExcel.Open;

  if qExportExcel.RecordCount=0 then
     Exit;

  if OpenDialog1.Execute then begin
     appPath:= ExtractFilePath(OpenDialog1.InitialDir);
     ttl:= OpenDialog1.FileName;

     if (qExportExcel.Active) and (qExportExcel.RecordCount>0) then begin
       ExportGridToExcel(appPath+ttl,cxDBTreeList1,true,true,true,'xls');
     end;

  end;
end;

procedure TItemFrm.grdDetailDBBTVColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  qryITEM_BOM.Close;
  qryITEM_BOM.Open;
  if LookITEM_BOM.Execute then begin
     ItemPromokd_item_promo.AsString:= qryITEM_BOMkd_item.AsString;
     ItemPromonama_item_promo.AsString:= qryITEM_BOMnama_item.AsString;
  end

end;

procedure TItemFrm.ItemPromoNewRecord(DataSet: TDataSet);
begin
  ItemPromokd_item.AsString:= Masterkd_item.AsString;
  ItemPromonama_item.AsString:= Masternama_item.AsString;
  ItemPromoqty_promo.AsFloat:= 0;
  ItemPromonilai_promo.AsFloat:= 0;
end;

procedure TItemFrm.ItemPromoBeforePost(DataSet: TDataSet);
begin
    if ItemPromojenis.IsNull or (Trim(ItemPromojenis.AsString)='') then
    raise Exception.Create('JENIS PROMO Harus diisi !')
    else
    if ItemPromoqty_promo.AsFloat=0 then
    raise Exception.Create('QTY ITEM PROMO harus diisi !')
end;

procedure TItemFrm.grdDetailDBBTVid_rakPropertiesEditValueChanged(
  Sender: TObject);
begin
//  if ItemPromojenis.IsNull or (Trim(ItemPromojenis.AsString)='') then begin
//     grdDetailDBBTVColumn1.Properties.Buttons[0].Enabled:= False;
//     grdDetailDBBTVColumn2.Properties.Buttons[0].Enabled:= False;
//  end
//  else
//  if ItemPromojenis.AsString='BARANG' then begin
//     grdDetailDBBTVColumn1.Properties.Buttons[0].Enabled:= True;
//     grdDetailDBBTVColumn2.Properties.Buttons[0].Enabled:= True;
//  end
//  else
//  if ItemPromojenis.AsString='UANG' then begin
//     grdDetailDBBTVColumn1.Properties.Buttons[0].Enabled:= False;
//     grdDetailDBBTVColumn2.Properties.Buttons[0].Enabled:= False;
//  end;

end;

end.


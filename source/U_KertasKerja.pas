unit U_KertasKerja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, ZSequence, cxCalendar, wwDialog, wwidlg,
  cxButtonEdit, cxDropDownEdit, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, wwdbdatetimepicker,
  cxButtons, cxPC, cxLabel, kbmMemTable, ADODB, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TKertasKerjaFrm = class(TForm)
    pnlMiddle: TSCPanel;
    btnClose: TSCButton;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    pnlHeader: TAdvPanel;
    lblHeader1: TLabel;
    SCPanel1: TSCPanel;
    RzGroupBox1: TRzGroupBox;
    edtDatePicker: TwwDBDateTimePicker;
    Warehouse: TZReadOnlyQuery;
    LookWarehouse: TwwLookupDialog;
    Warehouseid_warehouse: TStringField;
    Warehousedescription: TStringField;
    pgTransaction: TcxPageControl;
    tsItem: TcxTabSheet;
    grdItem: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    grddbtvItem: TcxGridDBTableView;
    grddbtvItemno_nota: TcxGridDBColumn;
    grddbtvItemdt_nota: TcxGridDBColumn;
    grddbtvItemno_bukti: TcxGridDBColumn;
    grddbtvItemnama_rekanan: TcxGridDBColumn;
    grddbtvItemColumn1: TcxGridDBColumn;
    grdItemLevel1: TcxGridLevel;
    dsGetItem: TDataSource;
    qGetItem: TZQuery;
    btnExport: TSCButton;
    OpenDialog1: TSaveDialog;
    edtWarehouse: TcxButtonEdit;
    btnOK: TcxButton;
    qGetItemdt_so: TDateTimeField;
    qGetItemid_warehouse: TMemoField;
    qGetItemid_item: TStringField;
    qGetItemitem_name: TStringField;
    qGetItemid_cat_item: TStringField;
    qGetItemrasio: TFloatField;
    qGetItemstok: TFloatField;
    grddbtvItemColumn2: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure qGetItemBeforeOpen(DataSet: TDataSet);
    procedure edtWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    principal, vNamaFile : String;
  public
    { Public declarations }
  end;

var
  KertasKerjaFrm: TKertasKerjaFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, U_Status_Dialog, StrUtils;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  KertasKerjaFrm:= TKertasKerjaFrm.Create(Application);
  KertasKerjaFrm.lblHeader1.Caption:= pNamaMenu;
  KertasKerjaFrm.vtag:= ptag;
  KertasKerjaFrm.edtDatePicker.DateTime:= Now;
  KertasKerjaFrm.pgTransaction.HideTabs:= True;
  KertasKerjaFrm.Show;
end;


procedure TKertasKerjaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TKertasKerjaFrm.FormShow(Sender: TObject);
begin
  ShowWindow(Handle, SW_Maximize)
end;

procedure TKertasKerjaFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TKertasKerjaFrm.qGetItemBeforeOpen(DataSet: TDataSet);
begin
  qGetItem.Params.ParamByName('pgudang').Value:= edtWarehouse.Text;
  qGetItem.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker.DateTime);
end;

procedure TKertasKerjaFrm.edtWarehousePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    Warehouse.Close;
    Warehouse.Open;
    if LookWarehouse.Execute then begin
       edtWarehouse.Text:= Warehouseid_warehouse.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TKertasKerjaFrm.btnOKClick(Sender: TObject);
begin
  if edtWarehouse.Text='' then
  raise Exception.Create('Lokasi Gudang Belum di Pilih !!!');
  try
    qGetItem.Close;
    qGetItem.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TKertasKerjaFrm.btnExportClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin
  if qGetItem.RecordCount=0 then
     Exit;

  if OpenDialog1.Execute then begin
     appPath:= ExtractFilePath(OpenDialog1.InitialDir);
     ttl:= OpenDialog1.FileName;

     if (qGetItem.Active) and (qGetItem.RecordCount>0) then begin
       ExportGridToExcel(appPath+ttl,grdItem,true,true,true,'xls');
     end;

  end;
end;

end.
unit U_NotaRetailTouch;

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
  RzSplit, RzButton, Mask, RzEdit, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
 TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TNotaRetailTouchFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    SR: TcxStyleRepository;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
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
    actSearch: TAction;
    cxStyle5: TcxStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    Masterid_item: TStringField;
    Masteritem_name: TStringField;
    Mastersatuan: TStringField;
    Masterhrg_jual: TFloatField;
    Masterhrg_jual_sm_grosir: TFloatField;
    Masterhrg_jual_grosir: TFloatField;
    Masterhrg_jual_grosir_besar: TFloatField;
    Masterqty_min_retail: TFloatField;
    Masterqty_max_retail: TFloatField;
    Masterqty_min_sm_grosir: TFloatField;
    Masterqty_max_sm_grosir: TFloatField;
    Masterqty_min_grosir: TFloatField;
    Masterqty_max_grosir: TFloatField;
    Masterqty_min_grosir_besar: TFloatField;
    Masterqty_max_grosir_besar: TFloatField;
    Masterstok_gdu: TFloatField;
    Masterstok_rak: TFloatField;
    TimerRT: TTimer;
    RzSplitter1: TRzSplitter;
    RzSplitter2: TRzSplitter;
    RzPanel3: TRzPanel;
    btnClose: TRzShapeButton;
    RzSplitter3: TRzSplitter;
    RzPanel2: TRzPanel;
    RzPanel1: TRzPanel;
    btnCariItem: TRzShapeButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblNamaItem: TLabel;
    Label5: TLabel;
    lblHargaRetail: TLabel;
    Label4: TLabel;
    lblHargaSemiGrosir: TLabel;
    Label6: TLabel;
    lblHargaGrosir: TLabel;
    Label8: TLabel;
    lblHargaGrosirBesar: TLabel;
    edtBarcode: TRzEdit;
    edtQTY: TRzEdit;
    grdFP_Detail: TcxGrid;
    grddbtvFP_Detail: TcxGridDBBandedTableView;
    grddbtvFP_Detailnomor: TcxGridDBBandedColumn;
    grddbtvFP_Detailkd_item: TcxGridDBBandedColumn;
    grddbtvFP_Detailnama_item: TcxGridDBBandedColumn;
    grddbtvFP_Detailqty_ot_biji: TcxGridDBBandedColumn;
    grddbtvFP_Detailhrg_jual_lusin: TcxGridDBBandedColumn;
    grddbtvFP_Detailsub_total: TcxGridDBBandedColumn;
    grddbtvFP_DetailColumn2: TcxGridDBBandedColumn;
    grddbtvFP_DetailColumn1: TcxGridDBBandedColumn;
    grddbtvFP_DetailColumn3: TcxGridDBBandedColumn;
    grddbtvFP_DetailColumn4: TcxGridDBBandedColumn;
    grdlvlFP_Detail: TcxGridLevel;
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtBarcodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    DBMode: TDBMode;
    vjudul, vjns_transaksi : string;
    vtag : integer;
  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu:String; ptransaksi : String; pitem : String; plook: String; ptag : integer);

var
  NotaRetailTouchFrm: TNotaRetailTouchFrm;

implementation

uses U_DM, StrUtils;

{$R *.dfm}

procedure TNotaRetailTouchFrm.MasterBeforeOpen(DataSet: TDataSet);
var
dt : String;
begin
  dt := FormatDateTime('dd/mm/yyyy', Now);
  Master.Params.ParamByName('pid_item').Value:= edtBarcode.Text;
  Master.Params.ParamByName('ptgl0').Value:= dt;
end;

procedure TNotaRetailTouchFrm.btnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure ShowForm(pNamaMenu:String; ptransaksi : String; pitem : String; plook: String; ptag : integer);
begin

  try
    NotaRetailTouchFrm := TNotaRetailTouchFrm.Create(Application);
    with NotaRetailTouchFrm do begin
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      try
        DM.L_Perusahaan.Close;
        DM.L_Perusahaan.Open;

        edtBarcode.SetFocus;

        lblNamaItem.Caption:= '';
        lblHargaRetail.Caption:= FormatFloat(',0', 0);
        lblHargaSemiGrosir.Caption:= FormatFloat(',0', 0);
        lblHargaGrosir.Caption:= FormatFloat(',0', 0);
        lblHargaGrosirBesar.Caption:= FormatFloat(',0', 0);
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;

      vjudul:= pNamaMenu;
      Show;
    end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;

end;

procedure TNotaRetailTouchFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNotaRetailTouchFrm.edtBarcodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  try
    Master.Close;
    Master.Open;

    if Master.RecordCount=1 then begin
       edtBarcode.Text:= '';
       edtQTY.SetFocus;

       lblNamaItem.Caption:= Masteritem_name.AsString;
       lblHargaRetail.Caption:= FormatFloat(',0', Masterhrg_jual.AsFloat);
       lblHargaSemiGrosir.Caption:= FormatFloat(',0', Masterhrg_jual_sm_grosir.AsFloat);
       lblHargaGrosir.Caption:= FormatFloat(',0', Masterhrg_jual_grosir.AsFloat);
       lblHargaGrosirBesar.Caption:= FormatFloat(',0', Masterhrg_jual_grosir_besar.AsFloat);

    end

  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
end;

end.


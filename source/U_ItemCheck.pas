unit U_ItemCheck;

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
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
 TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TItemCheckFrm = class(TForm)
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
    pgMaster: TcxPageControl;
    btnClose: TSCButton;
    actSearch: TAction;
    cxStyle5: TcxStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    pnlDetailSupplier: TRzPanel;
    RzLabel7: TRzLabel;
    RzLabel10: TRzLabel;
    edtRekPersediaan: TcxDBButtonEdit;
    edtRekCOGS: TcxDBButtonEdit;
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
    Panel1: TPanel;
    RzLabel1: TRzLabel;
    edtKode: TcxTextEdit;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    lblDBItemName: TRzDBLabel;
    RzLabel2: TRzLabel;
    RzLabel8: TRzLabel;
    RzDBLabel6: TRzDBLabel;
    RzLabel13: TRzLabel;
    RzDBLabel7: TRzDBLabel;
    RzLabel3: TRzLabel;
    RzLabel9: TRzLabel;
    RzDBLabel8: TRzDBLabel;
    RzLabel14: TRzLabel;
    RzDBLabel9: TRzDBLabel;
    RzLabel4: TRzLabel;
    RzLabel11: TRzLabel;
    RzDBLabel10: TRzDBLabel;
    RzLabel15: TRzLabel;
    RzDBLabel11: TRzDBLabel;
    RzDBLabel13: TRzDBLabel;
    RzLabel16: TRzLabel;
    RzDBLabel12: TRzDBLabel;
    RzLabel12: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    RzDBLabel4: TRzDBLabel;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    RzLabel25: TRzLabel;
    GroupBox2: TGroupBox;
    RzLabel20: TRzLabel;
    RzDBLabel5: TRzDBLabel;
    RzLabel21: TRzLabel;
    RzDBLabel14: TRzDBLabel;
    Panel2: TPanel;
    lblRunnungText: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtKodeKeyPress(Sender: TObject; var Key: Char);
    procedure TimerRTTimer(Sender: TObject);
  private
    { Private declarations }
    DBMode: TDBMode;
    vjudul : string;
    vtag : integer;
  public
    { Public declarations }
  end;

var
  ItemCheckFrm: TItemCheckFrm;

implementation

uses U_DM, StrUtils;

{$R *.dfm}


procedure TItemCheckFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TItemCheckFrm.EditKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key=#13 then
//       try
//        Master.Close;
//        Master.Open;
//       finally
//        lblDBItemName.Blinking:= True;
//       end;
//
//    Sleep(5000);
//    edtKode.Text:='';
end;

procedure TItemCheckFrm.MasterBeforeOpen(DataSet: TDataSet);
var
dt : String;
begin
  dt := FormatDateTime('dd/mm/yyyy', Now);
  Master.Params.ParamByName('pid_item').Value:= edtKode.Text;
  Master.Params.ParamByName('ptgl0').Value:= dt;
end;

procedure TItemCheckFrm.btnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TItemCheckFrm.FormShow(Sender: TObject);
begin

  DM.L_Perusahaan.Close;
  DM.L_Perusahaan.Open;

  lblRunnungText.Caption:= Trim(UpperCase('   '+DM.L_Perusahaannama_perusahaan.AsString+'          '+DM.L_Perusahaanaddress.AsString+' - '+
                                DM.L_Perusahaancity.AsString+' - MADURA.          '+
                                'TERIMAKASIH  ATAS  KUNJUNGAN  ANDA  &&  SELAMAT  BERBELANJA..'));
  lblRunnungText.Left:= 2000;

  RzDBLabel1.Blinking:= False;
  RzDBLabel2.Blinking:= False;
  RzDBLabel3.Blinking:= False;
  RzDBLabel4.Blinking:= False;
  edtKode.SetFocus;
end;

procedure TItemCheckFrm.edtKodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  try
    Master.Close;
    Master.Open;

    if Master.RecordCount=1 then
       edtKode.Text:= '';

  Finally
    RzDBLabel1.Blinking:= True;
    RzDBLabel2.Blinking:= True;
    RzDBLabel3.Blinking:= True;
    RzDBLabel4.Blinking:= True;
  end;

end;

procedure TItemCheckFrm.TimerRTTimer(Sender: TObject);
begin
  if lblRunnungText.Left=-4500 then
     lblRunnungText.Left:=2000;
     lblRunnungText.Left:= lblRunnungText.Left-4;
end;

end.


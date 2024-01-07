unit U_LookPromo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SCControl, SCStdControls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset, wwDialog, wwidlg, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxmdaset,
  ZAbstractDataset, cxLabel, cxPC, cxGridBandedTableView, AdvToolBar,
  AdvToolBarStylers, AdvPanel, AdvAppStyler, kbmMemTable;

type
  TLookPromoFrm = class(TForm)
    pnlTop: TSCPanel;
    lblHeader: TLabel;
    dsLPR_Item_Status: TDataSource;
    LPR_Item_Status: TZQuery;
    pnlBottom: TPanel;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    gridItemPR: TcxGrid;
    grdDBTV_ItemPR: TcxGridDBTableView;
    grdDBTV_ItemPRischoosen: TcxGridDBColumn;
    grdLVL_ItemPR: TcxGridLevel;
    dsPR: TDataSource;
    kmtPR: TkbmMemTable;
    qExec: TZQuery;
    LPR_Item_Statusselected: TStringField;
    LPR_Item_Statusid_dtpr: TLargeintField;
    LPR_Item_Statuskd_item: TStringField;
    LPR_Item_Statusdiskripsi: TStringField;
    LPR_Item_Statusqty: TStringField;
    LPR_Item_Statusclaim: TFloatField;
    LPR_Item_Statusjns_promo: TStringField;
    LPR_Item_Statusno_invoice: TStringField;
    LPR_Item_Statusno_nota: TStringField;
    LPR_Item_Statusid_division: TStringField;
    LPR_Item_Statuskd_rekanan: TStringField;
    LPR_Item_Statusistagih: TStringField;
    LPR_Item_Statusoutlet: TStringField;
    LPR_Item_Statusnama_sales: TStringField;
    grdDBTV_ItemPRdiskripsi: TcxGridDBColumn;
    grdDBTV_ItemPRclaim: TcxGridDBColumn;
    grdDBTV_ItemPRno_invoice: TcxGridDBColumn;
    grdDBTV_ItemPRno_nota: TcxGridDBColumn;
    grdDBTV_ItemPRoutlet: TcxGridDBColumn;
    grdDBTV_ItemPRnama_sales: TcxGridDBColumn;
    grdDBTV_ItemPRkd_item: TcxGridDBColumn;
    LPR_Item_Statusdt_tpr: TDateTimeField;
    kmtPRselected: TStringField;
    kmtPRid_dtpr: TLargeintField;
    kmtPRkd_item: TStringField;
    kmtPRdiskripsi: TStringField;
    kmtPRqty: TStringField;
    kmtPRclaim: TFloatField;
    kmtPRjns_promo: TStringField;
    kmtPRno_invoice: TStringField;
    kmtPRno_nota: TStringField;
    kmtPRid_division: TStringField;
    kmtPRkd_rekanan: TStringField;
    kmtPRistagih: TStringField;
    kmtPRdt_tpr: TDateTimeField;
    kmtPRoutlet: TStringField;
    kmtPRnama_sales: TStringField;
    grdDBTV_ItemPRdt_tpr: TcxGridDBColumn;
    grdDBTV_ItemPRColumn1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    vJenis : String;
    { Public declarations }
  end;

var
  LookPromoFrm: TLookPromoFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TLookPromoFrm.FormShow(Sender: TObject);
begin
  try
    LPR_Item_Status.Close;
//    LPR_Item_Status.Params.ParamByName('pjenis').AsString:= vJenis;
    LPR_Item_Status.Open;

    kmtPR.Close;
    kmtPR.Open;
    kmtPR.EmptyTable;
    kmtPR.LoadFromDataSet(LPR_Item_Status, [mtcpoAppend]);

  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TLookPromoFrm.btnAddClick(Sender: TObject);
begin
   if kmtPR.State<>dsBrowse then
      kmtPR.Post;
  ModalResult:= mrOK;
end;

end.

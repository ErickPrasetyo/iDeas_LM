unit U_SettingFaktur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, RzDBNav, StdCtrls, SCControl,
  SCStdControls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, cxVGrid, cxDBVGrid, cxInplaceContainer, cxLabel,
  AdvToolBar, AdvToolBarStylers, AdvAppStyler, AdvPanel,
  cxGridBandedTableView, cxContainer, cxTextEdit, cxDBEdit;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TSettingFakturFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    pnlTop: TSCPanel;
    lblHeader: TLabel;
    pnlMiddle: TSCPanel;
    btnRefresh: TSCButton;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    Label5: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape5: TShape;
    Label4: TLabel;
    Shape6: TShape;
    Label6: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Shape15: TShape;
    Shape16: TShape;
    btnClose: TSCButton;
    qryExec: TZQuery;
    Masterjns_faktur: TStringField;
    Masterno_faktur_sales: TStringField;
    Masterno_order_faktur: TStringField;
    Masterno_order_retur: TStringField;
    Masterno_faktur_retur: TStringField;
    Masterno_order_canvas: TStringField;
    Masterno_faktur_canvas: TStringField;
    edtPPN_IN: TcxDBTextEdit;
    edtPPN_OT: TcxDBTextEdit;
    edtRL_DITAHAN: TcxDBTextEdit;
    edtRL_THN_JALAN: TcxDBTextEdit;
    edtRL_PERIODE_JALAN: TcxDBTextEdit;
    edtCEKBG: TcxDBTextEdit;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    btnEdit: TSCButton;
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vtag : integer;
    DBMode: TDBMode;
    procedure OpenDataset;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  SettingFakturFrm: TSettingFakturFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  SettingFakturFrm:= TSettingFakturFrm.Create(Application);
  SettingFakturFrm.opendataset;
  SettingFakturFrm.DBMode:= dmBrowse;
  SettingFakturFrm.vtag:= ptag;
  SettingFakturFrm.UpdateView;
  SettingFakturFrm.Show;
end;

procedure TSettingFakturFrm.OpenDataset;
begin
  try
    Master.Close;
    Master.Params.ParamByName('pjenis').Value:= 'ULI';
    Master.Open;

  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;

procedure TSettingFakturFrm.UpdateView;
var isBrowse, isEdit: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnEdit.Visible:= True;
    btnEdit.Enabled:= False;

  end else begin
    isBrowse := DBMode=dmBrowse;


    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnEdit.Visible:= isBrowse;
    btnRefresh.Visible:= isBrowse;
    btnSave.Visible:= not isBrowse;
    btnCancel.Visible:= not isBrowse;

    edtPPN_IN.Properties.ReadOnly := isBrowse;
    edtPPN_OT.Properties.ReadOnly:= isBrowse;
    edtRL_DITAHAN.Properties.ReadOnly:= isBrowse;
    edtRL_THN_JALAN.Properties.ReadOnly:= isBrowse;
    edtRL_PERIODE_JALAN.Properties.ReadOnly:= isBrowse;
    edtCEKBG.Properties.ReadOnly:= isBrowse;
 end;
end;



procedure TSettingFakturFrm.btnRefreshClick(Sender: TObject);
begin
  opendataset;
end;

procedure TSettingFakturFrm.FormShow(Sender: TObject);
begin
  opendataset;
end;

procedure TSettingFakturFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TSettingFakturFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;


end.



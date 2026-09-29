unit U_Principle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, cxLookAndFeels, cxLookAndFeelPainters,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxDBData, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  RzSplit, cxButtonEdit, AdvGlowButton, cxTimeEdit, cxCurrencyEdit,
  dxGDIPlusClasses, cxImage, cxDBEditRepository, cxEditRepositoryItems,
  CnsJpgGr;

type
  TPrincipleFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
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
    RzSplitter1: TRzSplitter;
    cxImage1: TcxImage;
    lblHeader2: TLabel;
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    DBAdvGlowButton5: TDBAdvGlowButton;
    DBAdvGlowButton6: TDBAdvGlowButton;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvMasterid_jns_anggota: TcxGridDBColumn;
    grddbtvMasterid_jns_kendaraan: TcxGridDBColumn;
    grddbtvMastertarif: TcxGridDBColumn;
    grddbtvMasterisactive: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    Masterkd_principle: TStringField;
    Masternama_principle: TStringField;
    Masterispromo: TStringField;
    Masterjns_promo: TStringField;
    Masternama_promo: TStringField;
    Masternilai_belanja: TFloatField;
    grddbtvMasterColumn1: TcxGridDBColumn;
    grddbtvMasterColumn2: TcxGridDBColumn;
    grddbtvMasterColumn3: TcxGridDBColumn;
    Masterqty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure edtKodeKeyPress(Sender: TObject; var Key: Char);
    procedure MasterNewRecord(DataSet: TDataSet);

  private
    { Private declarations }
    vtag : integer;
  public
    { Public declarations }
  end;

var
  PrincipleFrm: TPrincipleFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, Math;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  PrincipleFrm:= TPrincipleFrm.Create(Application);
  with PrincipleFrm do begin
      try
        Master.Close;
        Master.Open;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;
      lblHeader1.Caption:= pNamaMenu;
      vtag:= ptag;
      Show;
  end;
end;


procedure TPrincipleFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TPrincipleFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/ batal sebelum keluar .')
end;

procedure TPrincipleFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterkd_principle.IsNull or (Trim(Masterkd_principle.AsString)='') then
    raise Exception.Create('Kode Principle Harus di Isi !')
  else
  if Masternama_principle.IsNull or (Trim(Masternama_principle.AsString)='') then
    raise Exception.Create('Nama Principle Harus di Isi !')
  else
  if Masterjns_promo.IsNull or (Trim(Masterjns_promo.AsString)='') then
    raise Exception.Create('Nama Principle Harus di Isi !')
  else
  if Masternama_promo.IsNull or (Trim(Masternama_promo.AsString)='') then
    raise Exception.Create('Nama Promo Harus di Isi !');

//  if Master.State=dsInsert then begin
//    Masterusr_ins.AsString:= DM.UserConnect;
//    Masterusr_upd.AsString:= DM.UserConnect;
//  end else if Master.State=dsEdit then
//    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TPrincipleFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TPrincipleFrm.edtKodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true);
end;

procedure TPrincipleFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterkd_principle.AsString:= '';
  Masternama_principle.AsString:= '';
  Masterispromo.AsString:= '1';
  Masterjns_promo.AsString:= '';
  Masternama_promo.AsString:= '';
  Masternilai_belanja.AsFloat:= 0;
end;

end.

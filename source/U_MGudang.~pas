unit U_MGudang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvReflectionImage, ExtCtrls, AdvPanel, ActnList, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridBandedTableView,
  cxClasses, cxStyles, cxGridTableView, AdvAppStyler, AdvGlowButton,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxContainer, cxTextEdit,
  cxDBEdit, SCControl, SCStdControls, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, DBCtrls, RzDBEdit, Mask, RzEdit, RzLabel, RzDBLbl,
  RzPanel, SCGraphicButton, SCDbNavButton, Wwkeycb, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  TMGudangFrm = class(TForm)
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    dsMaster: TDataSource;
    Master: TZQuery;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actSave: TAction;
    actCancel: TAction;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    pgMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdMasterDBTableView2: TcxGridDBTableView;
    grdMasterDBTableView2Column1: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    pnlDetailSupplier: TRzPanel;
    lblDBNamaRekanan: TRzDBLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Label2: TLabel;
    EdtFirstName: TRzDBEdit;
    edtid_Supplier: TRzDBEdit;
    qryGen_ID_Supplier: TZReadOnlyQuery;
    grddbtvMasterid_rekanan: TcxGridDBColumn;
    grddbtvMasternama_rekanan: TcxGridDBColumn;
    grddbtvMasteralamat: TcxGridDBColumn;
    grddbtvMasterkota: TcxGridDBColumn;
    qryGen_ID_Supplierfn_gen_id_supplier: TStringField;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnFirst: TSCNavButton;
    btnPrior: TSCNavButton;
    btnNext: TSCNavButton;
    btnLast: TSCNavButton;
    pnlSearch: TSCPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    btnSearch: TSCButton;
    actSearch: TAction;
    grddbtvMasterkd_gol: TcxGridDBColumn;
    btnData: TSCButton;
    Masterid_warehouse: TStringField;
    Masterdescription: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterdt_ins: TDateTimeField;
    Masterdt_upd: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
    procedure grddbtvMasterDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFieldNamePropertiesChange(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure btnDataClick(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  MGudangFrm: TMGudangFrm;

    procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_RepairCustomer, U_RepairData;

{$R *.dfm}


procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  MGudangFrm:= TMGudangFrm.Create(Application);
  try
    DM.vSysDate.Close;
    DM.vSysDate.Open;
    MGudangFrm.Master.Close;
    MGudangFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
 // KaryawanFrm.pnlBottom.Visible:= False;
    MGudangFrm.lblHeader1.Caption:= pNamaMenu;
    MGudangFrm.vtag:= ptag;
  MGudangFrm.UpdateView;
  MGudangFrm.Show;
end;

procedure TMGudangFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TMGudangFrm.FormShow(Sender: TObject);
begin
    ShowWindow(Handle, SW_Maximize)
end;

procedure TMGudangFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterid_warehouse.AsString:= '';
  Masterdescription.AsString:= '';
  Masterusr_ins.AsString:= DM.UserConnect;
  Masterusr_upd.AsString:= DM.UserConnect;
  Masterdt_ins.AsDateTime:= Now;
  Masterdt_upd.AsDateTime:= Now;
end;

procedure TMGudangFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TMGudangFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_warehouse.IsNull or (Trim(Masterid_warehouse.AsString)='') then
    raise Exception.Create('Kode Gudang harus Diisi !')
  else
  if Masterdescription.IsNull or (Trim(Masterdescription.AsString)='') then
    raise Exception.Create('Nama Gudang harus Diisi !');

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TMGudangFrm.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TMGudangFrm.actAddExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Append;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TMGudangFrm.actEditExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Edit;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TMGudangFrm.actDeleteExecute(Sender: TObject);
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

procedure TMGudangFrm.actRefreshExecute(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TMGudangFrm.actSaveExecute(Sender: TObject);
begin
  try
    Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TMGudangFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView;
  pgMaster.ActivePageIndex := 0;
end;

procedure TMGudangFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    grdMaster.Enabled:= False;
    //pnlDataBackground.Visible:= False;
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
    btnSearch.Visible:= True;
    btnSearch.Enabled:= False;
//    btnData.Visible:= True;
//    btnData.Enabled:= False;


  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    grdMaster.Enabled := isBrowse;
    //pnlDataBackground.Visible := not isBrowse;
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

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;
    btnSearch.Visible:= isBrowse;
    btnSearch.Enabled:= not isEmpty;

//    btnData.Visible := isBrowse;
//    btnData.Enabled := not isEmpty and accedit;


    EdtFirstName.ReadOnly := isBrowse;


  end;
end;

procedure TMGudangFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= Master.State=dsBrowse
end;

procedure TMGudangFrm.grddbtvMasterDblClick(Sender: TObject);
begin
  pgMaster.ActivePageIndex := 1;
end;

procedure TMGudangFrm.FormCreate(Sender: TObject);
begin
  cbFieldName.Clear;
  cbFieldName.Properties.Items.Add('Kode');
  cbFieldName.Properties.Items.Add('Nama Gudang');
end;

procedure TMGudangFrm.cbFieldNamePropertiesChange(Sender: TObject);
begin
  case cbFieldName.ItemIndex of
    0: edtSearch.SearchField:= 'id_warehouse';
    1: edtSearch.SearchField:= 'description';
  end;
end;

procedure TMGudangFrm.actSearchExecute(Sender: TObject);
begin
   pnlSearch.Visible:= not pnlSearch.Visible;
end;

procedure TMGudangFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TMGudangFrm.btnDataClick(Sender: TObject);
var f : TfrmRepairData;
begin

   f := TfrmRepairData.Create(Application);
   f.Caption := 'Perbaikan Data Master Outlet';
//   f.Tag := 0;

   try
    f.ShowModal();
    Master.Refresh;
   except

   end;
end;

end.

unit U_Salesman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, wwDialog, wwidlg, ZDataset,
  ActnList, ZAbstractRODataset, ZAbstractDataset, cxGridBandedTableView,
  cxGridTableView, AdvPanel, AdvAppStyler, cxButtonEdit, cxDBEdit, Mask,
  RzEdit, RzDBEdit, RzLabel, RzDBLbl, RzPanel, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, StdCtrls, Wwkeycb, ExtCtrls, SCControl,
  SCStdControls, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, SCGraphicButton,
  SCDbNavButton, AdvReflectionImage, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TSalesmanFrm = class(TForm)
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
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    Label2: TLabel;
    EdtFirstName: TRzDBEdit;
    edtid_Supplier: TRzDBEdit;
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
    grddbtvMasterSALESM: TcxGridDBColumn;
    grddbtvMasterNAMA: TcxGridDBColumn;
    grddbtvMasterLBL: TcxGridDBColumn;
    grddbtvMasterid_rek_gl: TcxGridDBColumn;
    edtKodeRekGL: TcxDBButtonEdit;
    qRekGL: TZReadOnlyQuery;
    qRekGLid_rek_gl: TStringField;
    qRekGLdescriptions: TStringField;
    LookRekening: TwwLookupDialog;
    qGolongan: TZReadOnlyQuery;
    edtKdSales: TRzDBEdit;
    RzLabel3: TRzLabel;
    grddbtvMasterkd_sales: TcxGridDBColumn;
    qGolongandescription: TStringField;
    edtGolongan: TcxDBButtonEdit;
    LookLbl: TwwLookupDialog;
    Masterid_division: TStringField;
    Masterdescription: TStringField;
    Masterid_parent: TStringField;
    Masterisdetail: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterlbl: TStringField;
    Masterid_rek_gl: TStringField;
    Masterkd_sales: TStringField;
    btnData: TSCButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure edtKodeRekGLPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure edtGolonganPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure btnDataClick(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  SalesmanFrm: TSalesmanFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, U_RepairSales;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  SalesmanFrm:= TSalesmanFrm.Create(Application);
  try
    SalesmanFrm.Master.Close;
    SalesmanFrm.Master.Open;
    SalesmanFrm.qGolongan.Close;
    SalesmanFrm.qGolongan.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  SalesmanFrm.lblHeader1.Caption:= pNamaMenu;
  SalesmanFrm.vtag:= ptag;
  SalesmanFrm.UpdateView;
  SalesmanFrm.Show;
end;

procedure TSalesmanFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TSalesmanFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TSalesmanFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then
     Masterid_rek_gl.Clear;
  if Masterlbl.IsNull or (Trim(Masterlbl.AsString)='') then
     Masterlbl.Clear;
  if Masterkd_sales.IsNull or (Trim(Masterkd_sales.AsString)='') then
     Masterkd_sales.Clear;
   if Masterid_parent.IsNull or (Trim(Masterid_parent.AsString)='') then
      Masterid_parent.Clear;


  if Masterid_division.IsNull or (Trim(Masterid_division.AsString)='') then
    raise Exception.Create('KODE SALESMAN harus Diisi !')
  else
  if Masterdescription.IsNull or (Trim(Masterdescription.AsString)='') then
    raise Exception.Create('NAMA SALESMAN harus Diisi !');


  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;

end;

procedure TSalesmanFrm.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TSalesmanFrm.actAddExecute(Sender: TObject);
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

procedure TSalesmanFrm.actEditExecute(Sender: TObject);
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

procedure TSalesmanFrm.actDeleteExecute(Sender: TObject);
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

procedure TSalesmanFrm.actRefreshExecute(Sender: TObject);
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

procedure TSalesmanFrm.actSaveExecute(Sender: TObject);
begin
  try
    Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TSalesmanFrm.actCancelExecute(Sender: TObject);
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

procedure TSalesmanFrm.UpdateView;
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
    btnSearch.Visible := isBrowse;
    btnSearch.Enabled := not isEmpty;

//    btnData.Visible := isBrowse;
//    btnData.Enabled := not isEmpty and accedit;

    EdtFirstName.ReadOnly := isBrowse;
    edtid_Supplier.ReadOnly := isBrowse;
    edtKdSales.ReadOnly:= isBrowse;
    edtKodeRekGL.Properties.ReadOnly := isBrowse;
    edtKodeRekGL.Properties.Buttons[0].Visible:= not isBrowse;
    edtGolongan.Properties.ReadOnly := isBrowse;
    edtGolongan.Properties.Buttons[0].Visible:= not isBrowse;;
  end;
end;

procedure TSalesmanFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= Master.State=dsBrowse
end;

procedure TSalesmanFrm.grddbtvMasterDblClick(Sender: TObject);
begin
  pgMaster.ActivePageIndex := 1;
end;

procedure TSalesmanFrm.FormCreate(Sender: TObject);
begin
  cbFieldName.Clear;
  cbFieldName.Properties.Items.Add('Kode');
  cbFieldName.Properties.Items.Add('Nama Salesman');
end;

procedure TSalesmanFrm.cbFieldNamePropertiesChange(Sender: TObject);
begin
  case cbFieldName.ItemIndex of
    0: edtSearch.SearchField:= 'id_division';
    1: edtSearch.SearchField:= 'description';
  end;
end;

procedure TSalesmanFrm.actSearchExecute(Sender: TObject);
begin
   pnlSearch.Visible:= not pnlSearch.Visible;
end;

procedure TSalesmanFrm.edtKodeRekGLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if Master.State=dsBrowse then
     Exit;
  try
    qRekGL.Close;
    qRekGL.Open;
    if LookRekening.Execute then
       Masterid_rek_gl.AsString:= qRekGLid_rek_gl.AsString;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TSalesmanFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TSalesmanFrm.edtGolonganPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if Master.State=dsBrowse then
     Exit;
  try
    qGolongan.Close;
    qGolongan.Open;
    if LookLbl.Execute then
       Masterlbl.AsString:= qGolongandescription.AsString;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TSalesmanFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterisdetail.AsString:= '1';
end;

procedure TSalesmanFrm.btnDataClick(Sender: TObject);
var f: TRepairSalesFrm;
begin
  f:= TRepairSalesFrm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;

end;

end.
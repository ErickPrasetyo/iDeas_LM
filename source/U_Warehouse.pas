unit U_Warehouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, AdvToolBar, AdvToolBarStylers,
  AdvPanel, cxGridBandedTableView, cxGridTableView, AdvAppStyler,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, RzDBNav,
  SCControl, SCStdControls, StdCtrls, ExtCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC;

type
  TWarehouseFrm = class(TForm)
    Master: TZQuery;
    dsDimension: TDataSource;
    pgcWarehouse: TcxPageControl;
    tsBowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    grdWarehouse: TcxGrid;
    grddbtv_Warehouse: TcxGridDBTableView;
    grdlvlWarehouse: TcxGridLevel;
    grdDBV_Dimension: TcxDBVerticalGrid;
    Masterid_warehouse: TStringField;
    Masterdescription: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    grdDBV_Dimensionid_warehouse: TcxDBEditorRow;
    grdDBV_Dimensiondescription: TcxDBEditorRow;
    grddbtv_Warehouseid_warehouse: TcxGridDBColumn;
    grddbtv_Warehousedescription: TcxGridDBColumn;
    pnlHeader: TAdvPanel;
    lblHeader: TLabel;
    AdvPanel1: TAdvPanel;
    dbnKelompok: TRzDBNavigator;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    procedure pgcWarehousePageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure grddbtv_WarehouseCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure SetDisplays;
  public
    { Public declarations }
    vtag : integer;
    isLookup: Boolean;
    procedure OpenDataset;
  end;

var
  WarehouseFrm: TWarehouseFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TWarehouseFrm.OpenDataset;
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK or MB_TASKMODAL or MB_NOFOCUS);
    end
  end;
  SetDisplays
end;

procedure TWarehouseFrm.pgcWarehousePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (Master.State=dsInactive) or (Master.State=dsBrowse)
end;


procedure TWarehouseFrm.SetDisplays;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    dbnKelompok.Enabled:= False;
    btnAdd.Enabled:= False;
    btnEdit.Enabled:= False;
    btnDelete.Enabled:= False;
    btnRefresh.Enabled:= False;
    btnSave.Visible:= False;
    btnCancel.Visible:= False;
    btnClose.Enabled:= True;
    grdDBV_Dimension.OptionsData.Inserting:= False;
    grdDBV_Dimension.OptionsData.Editing:= False;
    grdDBV_Dimension.OptionsData.Deleting:= False;
  end else begin
    isBrowse:= Master.State=dsBrowse;

     DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    dbnKelompok.Enabled:= isBrowse;
    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;

  end
end;

procedure TWarehouseFrm.btnAddClick(Sender: TObject);
begin
  if Master.State=dsInactive then
    Exit;
  try
    pgcWarehouse.ActivePageIndex:= 1;
    Master.Append;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK or MB_TASKMODAL or MB_NOFOCUS);
    end
  end;
  SetDisplays
end;

procedure TWarehouseFrm.btnEditClick(Sender: TObject);
begin
  if Master.State=dsInactive then
    Exit;
  try
    pgcWarehouse.ActivePageIndex:= 1;
    Master.Edit;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK or MB_TASKMODAL or MB_NOFOCUS);
    end
  end;
  SetDisplays
end;

procedure TWarehouseFrm.btnDeleteClick(Sender: TObject);
begin
  if Master.State=dsInactive then
    Exit;
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK or MB_TASKMODAL or MB_NOFOCUS);
    end
  end;
end;

procedure TWarehouseFrm.btnRefreshClick(Sender: TObject);
begin
  OpenDataset;
end;

procedure TWarehouseFrm.btnSaveClick(Sender: TObject);
begin
  if Master.State=dsInactive then
    Exit;
  try
    Master.CheckBrowseMode;
    pgcWarehouse.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK or MB_TASKMODAL or MB_NOFOCUS);
    end
  end;
  SetDisplays
end;

procedure TWarehouseFrm.btnCancelClick(Sender: TObject);
begin
  if Master.State=dsInactive then
    Exit;
  try
    Master.Cancel;
    pgcWarehouse.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK or MB_TASKMODAL or MB_NOFOCUS);
    end
  end;
  SetDisplays
end;

procedure TWarehouseFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TWarehouseFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_warehouse.IsNull or (Trim(Masterid_warehouse.AsString)='') then
    raise Exception.Create('KODE Harus diisi!')
  else
  if Masterdescription.IsNull or (Trim(Masterdescription.AsString)='') then
    raise Exception.Create('DISKRIPSI Harus diisi !');


  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TWarehouseFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterid_warehouse.AsString:= '-';
  Masterdescription.AsString:= '-';
end;

procedure TWarehouseFrm.FormShow(Sender: TObject);
begin
  OpenDataset;
  pgcWarehouse.ActivePageIndex:= 0;
end;

procedure TWarehouseFrm.grddbtv_WarehouseCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if isLookup then
    ModalResult:= mrOK;
end;

procedure TWarehouseFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TWarehouseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

end.

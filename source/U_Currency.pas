unit U_Currency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, cxPC, DBCtrls,
  RzDBNav, SCControl, SCStdControls, ExtCtrls, AdvPanel, cxClasses,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvAppStyler, AdvToolBar,
  AdvToolBarStylers, cxGridBandedTableView;

type
  TCurrencyFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    AdvPanel1: TAdvPanel;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    dbnKelompok: TRzDBNavigator;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    pgMaster: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdLvlMaster: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    grdDBV_Kelompok: TcxDBVerticalGrid;
    pnlHeader: TAdvPanel;
    lblHeader1: TLabel;
    Masterid_curr: TStringField;
    Masterdescription: TStringField;
    grddbtvMasterid_curr: TcxGridDBColumn;
    grddbtvMasterdescription: TcxGridDBColumn;
    grdDBV_Kelompokid_curr: TcxDBEditorRow;
    grdDBV_Kelompokdescription: TcxDBEditorRow;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    btnClose: TSCButton;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    ATBOS: TAdvToolBarOfficeStyler;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pgMasterPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure dsMasterStateChange(Sender: TObject);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure grddbtvMasterDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  CurrencyFrm: TCurrencyFrm;

implementation

uses U_DM;

{$R *.dfm}
procedure TCurrencyFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    grdMaster.Enabled:= False;
    pgMaster.ActivePageIndex := 0;
    dbnKelompok.Enabled:= False;
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
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    if isBrowse then
      pgMaster.ActivePageIndex := 0
    else
      pgMaster.ActivePageIndex := 1;
    grdMaster.Enabled := isBrowse;
    dbnKelompok.Enabled:= isBrowse;

    DM.GetAccessRights(406, accbrowse, accinsert, accedit, accdelete, accprint,
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
  end;
end;

procedure TCurrencyFrm.FormShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
    pgMaster.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TCurrencyFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Changes has not saved yet !','Please save/cancel any changes first before exit.')
end;

procedure TCurrencyFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= Master.State=dsBrowse
end;

procedure TCurrencyFrm.dsMasterStateChange(Sender: TObject);
var isBrowse: Boolean;
begin
  isBrowse:= TDataSource(Sender).State=dsBrowse;
  dbnKelompok.Enabled:= isBrowse;
  btnAdd.Visible:= isBrowse;
  btnEdit.Visible:= isBrowse;
  btnDelete.Visible:= isBrowse;
  btnRefresh.Visible:= isBrowse;
  btnSave.Visible:= not isBrowse;
  btnCancel.Visible:= not isBrowse;
  grdDBV_Kelompok.OptionsData.Inserting:= not isBrowse;
  grdDBV_Kelompok.OptionsData.Editing:= not isBrowse;
  grdDBV_Kelompok.OptionsData.Deleting:= false;
end;

procedure TCurrencyFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_curr.IsNull or (Trim(Masterid_curr.AsString)='') then begin
    raise Exception.Create('Field Code must have value !');
    Abort
  end else
  if Masterdescription.IsNull or (Trim(Masterdescription.AsString)='') then begin
    raise Exception.Create('Field Description must have value !');
    Abort
  end;
  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TCurrencyFrm.grddbtvMasterDblClick(Sender: TObject);
begin
  ModalResult:= mrOK
end;

procedure TCurrencyFrm.btnAddClick(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Append;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  UpdateView;
end;

procedure TCurrencyFrm.btnCancelClick(Sender: TObject);
begin
  try
    Master.Cancel;
    pgMaster.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  UpdateView;
end;

procedure TCurrencyFrm.btnDeleteClick(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Do you want to delete this data ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  UpdateView;
end;

procedure TCurrencyFrm.btnEditClick(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Edit;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  UpdateView;
end;

procedure TCurrencyFrm.btnRefreshClick(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  UpdateView;
end;

procedure TCurrencyFrm.btnSaveClick(Sender: TObject);
begin
  try
    Master.CheckBrowseMode;
    pgMaster.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  UpdateView;
end;

procedure TCurrencyFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.

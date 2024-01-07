unit U_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, cxPC, DBCtrls,
  RzDBNav, SCControl, SCStdControls, ExtCtrls, AdvPanel, cxClasses,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvAppStyler;

type
  TUnitFrm = class(TForm)
    AFS: TAdvFormStyler;
    Master: TZQuery;
    dsMaster: TDataSource;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    AdvPanel1: TAdvPanel;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    dbnKelompok: TRzDBNavigator;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    pgcKelompok: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    grddbtv_Kelompok: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    grdDBV_Kelompok: TcxDBVerticalGrid;
    pnlHeader: TAdvPanel;
    lblHeader1: TLabel;
    grddbtv_Kelompokid_unit: TcxGridDBColumn;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    grdDBV_Kelompoksatuan: TcxDBEditorRow;
    Masterkd_satuan: TStringField;
    Masterdeskripsi: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pgcKelompokPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure dsMasterStateChange(Sender: TObject);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure grddbtv_KelompokDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitFrm: TUnitFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TUnitFrm.FormShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
    pgcKelompok.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
end;

procedure TUnitFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TUnitFrm.pgcKelompokPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= Master.State=dsBrowse
end;

procedure TUnitFrm.dsMasterStateChange(Sender: TObject);
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

procedure TUnitFrm.MasterBeforePost(DataSet: TDataSet);
begin
  Masterdeskripsi.AsString:= Masterkd_satuan.AsString;
  
  if Masterkd_satuan.IsNull or (Trim(Masterkd_satuan.AsString)='') then begin
    raise Exception.Create('Satuan Harus Diisi !');
    Abort
  end;
  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TUnitFrm.grddbtv_KelompokDblClick(Sender: TObject);
begin
  ModalResult:= mrOK
end;

procedure TUnitFrm.btnAddClick(Sender: TObject);
begin
  try
    pgcKelompok.ActivePageIndex:= 1;
    Master.Append;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TUnitFrm.btnCancelClick(Sender: TObject);
begin
  try
    Master.Cancel;
    pgcKelompok.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TUnitFrm.btnDeleteClick(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TUnitFrm.btnEditClick(Sender: TObject);
begin
  try
    pgcKelompok.ActivePageIndex:= 1;
    Master.Edit;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TUnitFrm.btnRefreshClick(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TUnitFrm.btnSaveClick(Sender: TObject);
begin
  try
    Master.CheckBrowseMode;
    pgcKelompok.ActivePageIndex:= 0;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

end.

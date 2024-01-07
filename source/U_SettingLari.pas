unit U_SettingLari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, wwDialog, wwidlg,
  cxMaskEdit, cxButtonEdit, cxDBEdit, cxContainer, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ExtCtrls,
  cxGridLevel, cxControls, cxGridCustomView, cxGrid, cxPC, AdvPanel,
  ActnList, cxGridBandedTableView, cxClasses, AdvAppStyler,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton, StdCtrls,
  AdvReflectionImage, cxCheckBox, SCControl, SCStdControls,
  SCGraphicButton, SCDbNavButton, cxDropDownEdit;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TSettingLariFrm = class(TForm)
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    Master: TZQuery;
    Detail: TZQuery;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actSave: TAction;
    actCancel: TAction;
    actCreateMenu: TAction;
    apsPanel: TAdvPanelStyler;
    pnlHeader: TAdvPanel;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    pgcMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdlvlMaster: TcxGridLevel;
    tsDetail: TcxTabSheet;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grdlvlDetail: TcxGridLevel;
    pnlDetailNav: TPanel;
    btnCreateMenu: TAdvGlowButton;
    grddbtvMastervuser: TcxGridDBColumn;
    grddbtvMasterfull_name: TcxGridDBColumn;
    pnlDetailData: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    edtUserName: TcxDBTextEdit;
    edtFullName: TcxDBTextEdit;
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
    grddbtvMasterjenis: TcxGridDBColumn;
    Detailid_rek_gl: TStringField;
    Detaildescriptions: TStringField;
    Detailgolongan: TStringField;
    Detailisdetail: TStringField;
    grddbtvDetailid_rek_gl: TcxGridDBColumn;
    grddbtvDetaildescriptions: TcxGridDBColumn;
    grddbtvDetailgolongan: TcxGridDBColumn;
    grddbtvDetailisdetail: TcxGridDBColumn;
    Label2: TLabel;
    ariHeader: TAdvReflectionImage;
    edtJenis: TcxDBTextEdit;
    Masterid_rek_rl: TStringField;
    Masterdiskripsi: TStringField;
    Masterjenis: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pgcMasterChange(Sender: TObject);
    procedure pgcMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actCreateMenuExecute(Sender: TObject);
    procedure grddbtvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure MasterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    DBMode: TDBMode;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  SettingLariFrm: TSettingLariFrm;

implementation

uses U_DM, U_LookRekeningRL;

{$R *.dfm}



procedure TSettingLariFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
begin
  if DBMode=dmNone then begin
    //pgcMaster.ActivePageIndex := 0;
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

    edtUserName.Properties.ReadOnly:= True;
    edtJenis.Properties.ReadOnly:= isBrowse;
    edtFullName.Properties.ReadOnly:= True;

    grddbtvDetail.OptionsData.Editing:= False;
    btnCreateMenu.Enabled:= False;
  end else begin
    isBrowse:= DBMode=dmBrowse;
    isEmpty:= Master.RecordCount=0;

    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := True;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;

    edtUserName.Properties.ReadOnly:= isBrowse;
    edtJenis.Properties.ReadOnly:= isBrowse;
    edtFullName.Properties.ReadOnly:= isBrowse;

    grddbtvDetail.OptionsData.Editing:= not isBrowse;
    btnCreateMenu.Enabled:= not isBrowse;
  end;
end;

procedure TSettingLariFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TSettingLariFrm.FormShow(Sender: TObject);
begin
  DBMode:= dmNone;
  pgcMaster.ActivePageIndex:= 0;
  ShowWindow(Handle, SW_Maximize);
  try
    Master.Close;
    Master.Open;
    Detail.Close;
    DBMode:= dmBrowse;
  except
    on E: Exception do begin
      DM.MyMsg(mmError, 'Error has been encountered !',E.Message)
    end
  end;
  UpdateView
end;

procedure TSettingLariFrm.pgcMasterChange(Sender: TObject);
begin
  if (Master.State<>dsInactive) and (Master.RecordCount>0) and (pgcMaster.ActivePageIndex=1) then begin
    try
      Detail.Close;
      Detail.Params.ParamByName('id_rek_rl').Value:= Masterid_rek_rl.AsString;
      Detail.Open;
    except
      on E: Exception do begin
        DM.MyMsg(mmError, 'Error has been encountered !',E.Message)
      end
    end
  end;
end;

procedure TSettingLariFrm.pgcMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TSettingLariFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TSettingLariFrm.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TSettingLariFrm.actAddExecute(Sender: TObject);
begin
  try
    pgcMaster.ActivePageIndex:= 1;
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('id_rek_rl').Value:= '';
    Detail.Open;
    edtUserName.SetFocus;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TSettingLariFrm.actEditExecute(Sender: TObject);
begin
  try
    pgcMaster.ActivePageIndex:= 1;
    Master.Edit;
    edtUserName.SetFocus;
    DBMode:= dmEdit;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TSettingLariFrm.actDeleteExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Do you want to delete this data ?','')=101 then
    Exit;
  DM.StartTransaction;
  try
    DM.conn.StartTransaction;
    Master.Delete;
    Master.ApplyUpdates;
    Master.CommitUpdates;
    DM.CommitTransaction;
    Master.Refresh;
    pgcMasterChange(nil);
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TSettingLariFrm.actRefreshExecute(Sender: TObject);
begin
  DBMode:= dmNone;
  try
    Master.Close;
    Master.Open;
    pgcMasterChange(nil);
    DBMode:= dmBrowse;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TSettingLariFrm.actSaveExecute(Sender: TObject);
begin
  DM.StartTransaction;
  try
    if (Master.State=dsInsert) or (Master.State=dsEdit) then
      Master.Post;
    Master.ApplyUpdates;
    Master.CommitUpdates;
    DM.CommitTransaction;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      Exit;
    end
  end;
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TSettingLariFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
    Master.CancelUpdates;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  DBMode:= dmBrowse;
  UpdateView;
  pgcMaster.ActivePageIndex := 0;
end;

procedure TSettingLariFrm.actCreateMenuExecute(Sender: TObject);
var f : TLookRekeningRLFrm;
begin

   try
     f:= TLookRekeningRLFrm.Create(Application);
     f.vid_rek:= Masterid_rek_rl.AsString;
     if f.ShowModal=mrOK then begin
        Detail.Close;
        Detail.Params.ParamByName('id_rek_rl').Value:= Masterid_rek_rl.AsString;
        Detail.Open;
     end;
   finally
     f.Free;
   end;

end;

procedure TSettingLariFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgcMaster.ActivePageIndex:= 1
end;

procedure TSettingLariFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterid_rek_rl.Clear;
  Masterdiskripsi.Clear;
  Masterjenis.Clear;
end;

procedure TSettingLariFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_rek_rl.IsNull or (Trim(Masterid_rek_rl.AsString)='') then
    raise Exception.Create('KODE REKENING harus diisi !')
  else
  if Masterdiskripsi.IsNull or (Trim(Masterdiskripsi.AsString)='') then
    raise Exception.Create('DISKRIPSI harus diisi !')
  else
  if Masterjenis.IsNull or (Trim(Masterjenis.AsString)='') then
    raise Exception.Create('JENIS harus diisi !');
end;

end.

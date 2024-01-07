unit U_CashFlow;

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
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters;

type
  TCashFlowFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    pnlMiddle: TSCPanel;
    btnCancel: TSCButton;
    btnEdit: TSCButton;
    btnSave: TSCButton;
    dbnWBS: TRzDBNavigator;
    btnAdd: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    dbtlDivisi: TcxDBTreeList;
    pnlBottom: TRzPanel;
    pnlData: TSCPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtKode: TcxDBTextEdit;
    edtKode_Parent: TcxDBTextEdit;
    edtDeskripsi: TcxDBTextEdit;
    ckbDetail: TcxDBCheckBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    dbtlDivisikd_divisi: TcxDBTreeListColumn;
    dbtlDivisideskripsi: TcxDBTreeListColumn;
    dbtlDivisiisdetail: TcxDBTreeListColumn;
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
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    Masterid_arus: TStringField;
    Masterid_parent: TStringField;
    Masterdeskripsi: TStringField;
    Masterisdetail: TStringField;
    Masterbudget: TFloatField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterketerangan: TStringField;
    dbtlDivisiketerangan: TcxDBTreeListColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlBottomPaint(Sender: TObject);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  CashFlowFrm: TCashFlowFrm;
  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  CashFlowFrm:= TCashFlowFrm.Create(Application);
  try
    CashFlowFrm.Master.Close;
    CashFlowFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  CashFlowFrm.pnlBottom.Visible:= False;

  CashFlowFrm.lblHeader1.Caption:= pNamaMenu;
  CashFlowFrm.vtag:= ptag;
  CashFlowFrm.UpdateView;
  CashFlowFrm.Show;
end;

procedure TCashFlowFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TCashFlowFrm.FormShow(Sender: TObject);
begin
 ShowWindow(Handle, SW_Maximize)
end;

procedure TCashFlowFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    dbnWBS.Enabled:= False;
    btnAdd.Enabled:= False;
    btnEdit.Enabled:= False;
    btnDelete.Enabled:= False;
    btnRefresh.Enabled:= True;
    btnSave.Enabled:= False;
    btnCancel.Enabled:= False;
    btnClose.Enabled:= True;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);


    edtKode.Properties.ReadOnly:= isBrowse;
    edtKode_Parent.Properties.ReadOnly:= isBrowse;
    edtDeskripsi.Properties.ReadOnly:= isBrowse;
    ckbDetail.Properties.ReadOnly:= isBrowse;

    dbnWBS.Enabled:= isBrowse;
    btnAdd.Visible:= isBrowse;
    btnEdit.Visible:= isBrowse;
    btnDelete.Visible:= isBrowse;

    btnRefresh.Visible:= isBrowse;
    btnSave.Visible:= not isBrowse;
    btnCancel.Visible:= not isBrowse;
    btnClose.Enabled:= isBrowse;

    dbtlDivisi.Enabled:= isBrowse;
    pnlBottom.Visible:= not isBrowse
  end;
end;

procedure TCashFlowFrm.btnAddClick(Sender: TObject);
begin
  try
    Master.Append;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TCashFlowFrm.btnEditClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
  exit;
  try
    Master.Edit;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TCashFlowFrm.btnDeleteClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
  exit;
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
end;

procedure TCashFlowFrm.btnRefreshClick(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
end;

procedure TCashFlowFrm.btnSaveClick(Sender: TObject);
begin
  try
    Master.CheckBrowseMode;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TCashFlowFrm.btnCancelClick(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TCashFlowFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterbudget.AsFloat:= 0;
  Masterisdetail.AsString:= '0';
end;

procedure TCashFlowFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Perubahan data belum disimpan !','Tekan simpan/batal sebelum keluar.');
end;

procedure TCashFlowFrm.pnlBottomPaint(Sender: TObject);
begin
  DrawDropShadow(pnlBottom.Canvas, pnlData.BoundsRect, 6);
end;

procedure TCashFlowFrm.MasterBeforePost(DataSet: TDataSet);
begin

  if Masterid_arus.IsNull or (Trim(Masterid_arus.AsString)='') then begin
    MessageBox(0, 'KODE harus diisi !', 'Peringatan', MB_ICONWARNING or MB_OK);
    Abort
  end else
  if Masterid_parent.IsNull or (Trim(Masterid_parent.AsString)='') then begin
    Masterid_parent.Clear;
  end else
  if Masterdeskripsi.IsNull or (Trim(Masterdeskripsi.AsString)='') then begin
    MessageBox(0, 'DISKRIPSI harus diisi !', 'Peringatan', MB_ICONWARNING or MB_OK);
    Abort
  end;
  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TCashFlowFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

end.

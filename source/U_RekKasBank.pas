unit U_RekKasBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, cxButtonEdit, wwDialog, wwidlg, cxDropDownEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TRekKasBankFrm = class(TForm)
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
    edtDeskripsi: TcxDBTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
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
    Masterid_rek_gl: TStringField;
    Masterdescriptions: TStringField;
    Masterjenis: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterisdetail: TStringField;
    qryRekGL: TZReadOnlyQuery;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    LookRekening: TwwLookupDialog;
    edtKode: TcxDBButtonEdit;
    edtKode_Parent: TcxDBComboBox;
    Masterid_parent: TStringField;
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
    procedure edtKodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  RekKasBankFrm: TRekKasBankFrm;
  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  RekKasBankFrm:= TRekKasBankFrm.Create(Application);
  try
    RekKasBankFrm.Master.Close;
    RekKasBankFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  RekKasBankFrm.pnlBottom.Visible:= False;
  RekKasBankFrm.lblHeader1.Caption:= pNamaMenu;
  RekKasBankFrm.vtag:= ptag;
  RekKasBankFrm.UpdateView;
  RekKasBankFrm.Show;
end;

procedure TRekKasBankFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TRekKasBankFrm.FormShow(Sender: TObject);
begin
 ShowWindow(Handle, SW_Maximize)
end;

procedure TRekKasBankFrm.UpdateView;
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
    edtKode.Properties.Buttons[0].Visible:= not isBrowse;
    edtKode_Parent.Properties.ReadOnly:= isBrowse;
    edtDeskripsi.Properties.ReadOnly:= isBrowse;

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

procedure TRekKasBankFrm.btnAddClick(Sender: TObject);
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

procedure TRekKasBankFrm.btnEditClick(Sender: TObject);
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

procedure TRekKasBankFrm.btnDeleteClick(Sender: TObject);
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

procedure TRekKasBankFrm.btnRefreshClick(Sender: TObject);
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

procedure TRekKasBankFrm.btnSaveClick(Sender: TObject);
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

procedure TRekKasBankFrm.btnCancelClick(Sender: TObject);
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

procedure TRekKasBankFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterisdetail.AsString:= '1';
end;

procedure TRekKasBankFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Perubahan data belum disimpan !','Tekan simpan/batal sebelum keluar.');
end;

procedure TRekKasBankFrm.pnlBottomPaint(Sender: TObject);
begin
  DrawDropShadow(pnlBottom.Canvas, pnlData.BoundsRect, 6);
end;

procedure TRekKasBankFrm.MasterBeforePost(DataSet: TDataSet);
begin

  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then begin
    MessageBox(0, 'KODE harus diisi !', 'Peringatan', MB_ICONWARNING or MB_OK);
    Abort
  end else
  if Masterjenis.IsNull or (Trim(Masterjenis.AsString)='') then begin
    Masterjenis.Clear;
  end else
  if Masterdescriptions.IsNull or (Trim(Masterdescriptions.AsString)='') then begin
    MessageBox(0, 'DISKRIPSI harus diisi !', 'Peringatan', MB_ICONWARNING or MB_OK);
    Abort
  end;


  if Master.State=dsInsert then begin
    Masterid_parent.AsString:= Masterjenis.AsString;
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TRekKasBankFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TRekKasBankFrm.edtKodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
     qryRekGL.Close;
     qryRekGL.Open;
     if LookRekening.Execute then begin
        if Master.State=dsBrowse then
           Master.Edit;
        Masterid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;
        Masterdescriptions.AsString:= qryRekGLdescriptions.AsString;
     end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

end.

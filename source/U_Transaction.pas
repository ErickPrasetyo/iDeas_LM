unit U_Transaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxCheckBox, ActnList, AdvPanel, AdvAppStyler, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  ExtCtrls, SCControl, SCStdControls, AdvGlowButton, StdCtrls,
  AdvReflectionImage, cxInplaceContainer, cxDBTL, cxControls, cxTLData,
  cxButtonEdit, cxMemo, RzLabel, RzDBLbl, RzPanel, cxPC, wwDialog, wwidlg,
  SCGraphicButton, SCDbNavButton, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxTLdxBarBuiltInMenu;

type
  TTransactionFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    SR: TcxStyleRepository;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    ACL: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actSave: TAction;
    actCancel: TAction;
    actRefresh: TAction;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    pgcMaster: TcxPageControl;
    TabBrowse: TcxTabSheet;
    TabDetail: TcxTabSheet;
    dbtlMaster: TcxDBTreeList;
    dbtlMasterid_trans: TcxDBTreeListColumn;
    dbtlMastertrans_type: TcxDBTreeListColumn;
    dbtlMasterdescription: TcxDBTreeListColumn;
    dbtlMasterdoc_ditribution: TcxDBTreeListColumn;
    dbtlMastervuser_review: TcxDBTreeListColumn;
    dbtlMastervuser_review2: TcxDBTreeListColumn;
    dbtlMasterisdetail: TcxDBTreeListColumn;
    pnlDetailSupplier: TRzPanel;
    lblDBItemName: TRzDBLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    edtKode: TcxDBTextEdit;
    ckbDetail: TcxDBCheckBox;
    edtTrans_Type: TcxDBTextEdit;
    edtKode_Parent: TcxDBButtonEdit;
    edtDistribution: TcxDBMemo;
    Shape21: TShape;
    RzLabel3: TRzLabel;
    Label5: TLabel;
    edtReveiwer: TcxDBButtonEdit;
    Label11: TLabel;
    edtReveiwer2: TcxDBButtonEdit;
    Shape22: TShape;
    Shape23: TShape;
    edt_Description: TcxDBTextEdit;
    RzLabel4: TRzLabel;
    L_Parent: TZQuery;
    LookUpParent: TwwLookupDialog;
    L_Parentid_trans: TStringField;
    L_Parentdescription: TStringField;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    Masterid_trans: TStringField;
    Masterdescription: TStringField;
    Mastertrans_type: TStringField;
    Masterid_parent: TStringField;
    Masterdoc_distribution: TStringField;
    Masterisdetail: TStringField;
    btnFirst: TSCNavButton;
    btnPrior: TSCNavButton;
    btnNext: TSCNavButton;
    btnLast: TSCNavButton;
    qryRekGL: TZReadOnlyQuery;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    LookRekening: TwwLookupDialog;
    Masterdid_rek_gl: TStringField;
    Masterkid_rek_gl: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure dbtlMasterDblClick(Sender: TObject);
    procedure edtKode_ParentPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure pgcMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure edtReveiwerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtReveiwer2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  TransactionFrm: TTransactionFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  TransactionFrm:= TTransactionFrm.Create(Application);
  try
    DM.vSysDate.Close;
    DM.vSysDate.Open;
    TransactionFrm.Master.Close;
    TransactionFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
 // KaryawanFrm.pnlBottom.Visible:= False;
  TransactionFrm.lblHeader1.Caption:= pNamaMenu;
  TransactionFrm.vtag:= ptag;
  TransactionFrm.UpdateView;
  TransactionFrm.Show;
end;


procedure TTransactionFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TTransactionFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterid_trans.AsString:= '-';
  Masterdescription.AsString:= '-';
  Mastertrans_type.AsString:= '-';
  Masterisdetail.AsString:= '0';
end;

procedure TTransactionFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TTransactionFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_trans.IsNull or (Trim(Masterid_trans.AsString)='') then
    raise Exception.Create('Field Code must have value !')
  else
  if Masterid_parent.IsNull or (Trim(Masterid_parent.AsString)='') then begin
    Masterid_parent.Clear;
  end else
  if Masterdescription.IsNull or (Trim(Masterdescription.AsString)='') then
    raise Exception.Create('Field Description must have value !')
  else
  if Mastertrans_type.IsNull or (Trim(Mastertrans_type.AsString)='') then
    Mastertrans_type.Clear;

end;

procedure TTransactionFrm.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TTransactionFrm.actAddExecute(Sender: TObject);
begin
  try
    pgcMaster.ActivePageIndex:= 1;
    Master.Append;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TTransactionFrm.actEditExecute(Sender: TObject);
begin
  try
    pgcMaster.ActivePageIndex:= 1;
    Master.Edit;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TTransactionFrm.actDeleteExecute(Sender: TObject);
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

procedure TTransactionFrm.actRefreshExecute(Sender: TObject);
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

procedure TTransactionFrm.actSaveExecute(Sender: TObject);
begin
  try
    Master.CheckBrowseMode;
    pgcMaster.ActivePageIndex:= 0;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TTransactionFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
    pgcMaster.ActivePageIndex:= 0;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TTransactionFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    dbtlMaster.Enabled:= False;
    pgcMaster.ActivePageIndex := 0;
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
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    if isBrowse then pgcMaster.ActivePageIndex := 0
    else pgcMaster.ActivePageIndex := 1;

    dbtlMaster.Enabled := isBrowse;
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

    edtKode.Properties.ReadOnly:= isBrowse;
    edtTrans_Type.Properties.ReadOnly:= isBrowse;
    edtKode_Parent.Properties.ReadOnly:= isBrowse;
    edtKode_Parent.Properties.Buttons[0].Visible:= not isBrowse;

    edtDistribution.Properties.ReadOnly:= isBrowse;
    edtReveiwer.Properties.ReadOnly:= isBrowse;
    edtReveiwer.Properties.Buttons[0].Visible:= not isBrowse;
    edtReveiwer2.Properties.ReadOnly:= isBrowse;
    edtReveiwer2.Properties.Buttons[0].Visible:= not isBrowse;
    edt_Description.Properties.ReadOnly:= isBrowse;
    ckbDetail.Properties.ReadOnly:= isBrowse;
  end;
end;

procedure TTransactionFrm.dbtlMasterDblClick(Sender: TObject);
begin
  ModalResult:= mrOK
end;

procedure TTransactionFrm.edtKode_ParentPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  try
    L_Parent.Close;
    L_Parent.Open;
    if LookUpParent.Execute then begin
       if Master.State=dsBrowse then
          Master.Edit;
       Masterid_parent.AsString:= L_Parentid_trans.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TTransactionFrm.pgcMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (Master.State= dsInactive)  or (Master.State= dsBrowse)
end;

procedure TTransactionFrm.edtReveiwerPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    try
      qryRekGL.Close;
      qryRekGL.Open;
      if LookRekening.Execute then
         Masterdid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

procedure TTransactionFrm.edtReveiwer2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    try
      qryRekGL.Close;
      qryRekGL.Open;
      if LookRekening.Execute then
         Masterkid_rek_gl.AsString:= qryRekGLid_rek_gl.AsString;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
end;

end.

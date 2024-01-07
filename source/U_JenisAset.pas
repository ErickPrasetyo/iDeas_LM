unit U_JenisAset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit, cxLabel,
  cxCheckBox, frxClass, frxDBSet, DB, kbmMemTable, ActnList, AdvPanel,
  AdvAppStyler, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxDropDownEdit, cxDBEdit, cxSpinEdit, cxContainer, cxEdit, cxTextEdit,
  ExtCtrls, SCControl, SCStdControls, AdvGlowButton, StdCtrls,
  AdvReflectionImage, cxInplaceContainer, cxDBTL, cxControls, cxTLData,
  wwDialog, wwidlg, cxButtonEdit;

type
  TJenisAsetFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    dbtlDivision: TcxDBTreeList;
    srDivision: TcxStyleRepository;
    afsDivision: TAdvFormStyler;
    apsDivision: TAdvPanelStyler;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    aclDivison: TActionList;
    actClose: TAction;
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actSave: TAction;
    actCancel: TAction;
    actRefresh: TAction;
    pnlDataBackground: TPanel;
    pnlData: TSCPanel;
    Shape7: TShape;
    Shape6: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape8: TShape;
    edtKode: TcxDBTextEdit;
    edtKode_Parent: TcxDBTextEdit;
    edtDescription: TcxDBTextEdit;
    ckbDetail: TcxDBCheckBox;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    dbtlDivisionid_rek_gl: TcxDBTreeListColumn;
    dbtlDivisionlvl: TcxDBTreeListColumn;
    dbtlDivisionisdetail: TcxDBTreeListColumn;
    dbtlDivisiondescriptions: TcxDBTreeListColumn;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    edtLevel: TcxDBSpinEdit;
    qryClvl: TZQuery;
    Label6: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    kmtMaster: TkbmMemTable;
    kmtMasterid_rek_gl: TStringField;
    kmtMasterid_parent: TStringField;
    kmtMasterlvl: TIntegerField;
    kmtMasterisdetail: TStringField;
    kmtMasterdescriptions: TStringField;
    kmtMasterbudget: TFloatField;
    kmtMasterdt_budget: TDateTimeField;
    kmtMasterusr_ins: TStringField;
    kmtMasterusr_upd: TStringField;
    kmtMasterdetail: TBooleanField;
    frMaster: TfrxReport;
    frxDBMaster: TfrxDBDataset;
    btnPrint: TSCButton;
    qryPrint: TZQuery;
    qryPrintvid_rek_gl: TStringField;
    qryPrintdescriptions: TStringField;
    qryPrintisdetail: TStringField;
    qryPrintid_rek_gl: TStringField;
    Masterkd_jenis: TStringField;
    Masterkd_parent: TStringField;
    Masterdiskripsi: TStringField;
    Masterlvl: TIntegerField;
    Masterisdetail: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterid_rek_aktiva: TStringField;
    Masterid_rek_akum: TStringField;
    Masterpsn_susut: TFloatField;
    Masterumur_thn: TFloatField;
    Masterid_rek_biaya: TStringField;
    dbtlDivisionid_rek_aktiva: TcxDBTreeListColumn;
    dbtlDivisionid_rek_akum: TcxDBTreeListColumn;
    dbtlDivisionpsn_susut: TcxDBTreeListColumn;
    dbtlDivisionumur_thn: TcxDBTreeListColumn;
    dbtlDivisionid_rek_biaya: TcxDBTreeListColumn;
    edtUmur: TcxDBTextEdit;
    Shape13: TShape;
    Label7: TLabel;
    edtRekPsnSusut: TcxDBTextEdit;
    Shape14: TShape;
    Label8: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    Label9: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label10: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    edtRekAkiva: TcxDBButtonEdit;
    edtRekAkumSusut: TcxDBButtonEdit;
    edtRekBebanSusut: TcxDBButtonEdit;
    qryRekGL: TZQuery;
    qryRekGLid_rek_gl: TStringField;
    qryRekGLdescriptions: TStringField;
    LookRekening: TwwLookupDialog;
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
    procedure btnPrintClick(Sender: TObject);
    procedure edtRekAkivaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtRekAkumSusutPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtRekBebanSusutPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    vtag : Integer;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  JenisAsetFrm: TJenisAsetFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  JenisAsetFrm:= TJenisAsetFrm.Create(Application);
  try
    JenisAsetFrm.Master.Close;
    JenisAsetFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  JenisAsetFrm.lblHeader1.Caption:= pNamaMenu;
  JenisAsetFrm.Caption:= pNamaMenu;
  JenisAsetFrm.vtag:= ptag;
  JenisAsetFrm.UpdateView;
  JenisAsetFrm.Show;
end;


procedure TJenisAsetFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TJenisAsetFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterisdetail.AsString:= '0';
  Masterlvl.AsInteger:= 0;
  Masterumur_thn.AsFloat:= 0;
end;

procedure TJenisAsetFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TJenisAsetFrm.MasterBeforePost(DataSet: TDataSet);
var s : String;
begin


  if Masterkd_jenis.IsNull or (Trim(Masterkd_jenis.AsString)='') then
    raise Exception.Create('KODE Harus Diisi !')
  else
  if Masterkd_parent.IsNull or (Trim(Masterkd_parent.AsString)='') then begin
    Masterkd_parent.Clear;
  end else
  if Masterdiskripsi.IsNull or (Trim(Masterdiskripsi.AsString)='') then
    raise Exception.Create('DISKRIPSI Harus Diisi !')
  else
  if Masterumur_thn.IsNull or (Trim(Masterumur_thn.AsString)='') then
    raise Exception.Create('Umur Harus Diisi !')
  else
  if Masterumur_thn.AsFloat=0 then
    raise Exception.Create('Umur Harus Diisi !')
  else
  if Masterpsn_susut.IsNull or (Trim(Masterpsn_susut.AsString)='') then
    raise Exception.Create('Nilai Susut (%) Harus Diisi !')
  else
  if Masterpsn_susut.AsFloat=0 then
    raise Exception.Create('Nilai Susut (%) Harus Diisi !')
  else
  if Masterid_rek_aktiva.IsNull or (Trim(Masterid_rek_aktiva.AsString)='') then begin
     raise Exception.Create('REK. AKTIVA TETAP Harus Diisi !')
  end
  else
  if Masterid_rek_akum.IsNull or (Trim(Masterid_rek_akum.AsString)='') then begin
     raise Exception.Create('REK. Akumulasi Penyusutan Harus Diisi !')
  end
  else
  if Masterid_rek_biaya.IsNull or (Trim(Masterid_rek_biaya.AsString)='') then begin
     raise Exception.Create('REK. Beban/Biaya Akumulasi Penyusutan Harus Diisi !')
  end;

 // SET LEVEL
  if Masterkd_parent.IsNull or (Trim(Masterkd_parent.AsString)='') then
     Masterlvl.AsInteger:= 0
  else begin
    qryClvl.Close;
    qryClvl.SQL.Clear;
    qryClvl.Params.Clear;
    s:= 'select coalesce(lvl,0) as lvl from aset.mjenis where kd_jenis='+QuotedStr(Masterkd_parent.AsString);
    qryClvl.SQL.Add(s);
    qryClvl.Open;
    Masterlvl.Value:= qryClvl.fieldByName('lvl').AsInteger+1;
  end;

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TJenisAsetFrm.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TJenisAsetFrm.actAddExecute(Sender: TObject);
begin
  try
    Master.Append;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TJenisAsetFrm.actEditExecute(Sender: TObject);
begin
  try
    Master.Edit;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TJenisAsetFrm.actDeleteExecute(Sender: TObject);
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

procedure TJenisAsetFrm.actRefreshExecute(Sender: TObject);
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

procedure TJenisAsetFrm.actSaveExecute(Sender: TObject);
begin
  try
    Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TJenisAsetFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TJenisAsetFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    dbtlDivision.Enabled:= False;
    pnlDataBackground.Visible:= False;
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
    btnPrint.Visible:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    dbtlDivision.Enabled := isBrowse;
    pnlDataBackground.Visible := not isBrowse;
    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;
    btnPrint.Visible:= isBrowse;
    btnPrior.Enabled:= not isEmpty and accprint;

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
  end;
end;

procedure TJenisAsetFrm.btnPrintClick(Sender: TObject);
begin
  kmtMaster.Close;
  kmtMaster.Open;
  qryPrint.Close;
  qryPrint.Open;
  qryPrint.First;

  while not qryPrint.Eof do begin
     kmtMaster.Append;
     kmtMasterid_rek_gl.AsString:= qryPrintvid_rek_gl.AsString;
     kmtMasterdescriptions.AsString:= qryPrintdescriptions.AsString;
     kmtMasterlvl.AsInteger:= 0;
     if qryPrintisdetail.AsString='1' then
        kmtMasterdetail.AsBoolean:= True
     else kmtMasterdetail.AsBoolean:= False;
     kmtMaster.Post;
     qryPrint.Next;
  end;

  frMaster.ShowReport;

end;

procedure TJenisAsetFrm.edtRekAkivaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
      qryRekGL.Close;
      qryRekGL.Open;
      if LookRekening.Execute then begin
          if Master.State=dsBrowse then
             Master.Edit ;
          Masterid_rek_aktiva.AsString:= qryRekGLid_rek_gl.AsString;
       end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TJenisAsetFrm.edtRekAkumSusutPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   try
      qryRekGL.Close;
      qryRekGL.Open;
      if LookRekening.Execute then begin
          if Master.State=dsBrowse then
             Master.Edit ;
          Masterid_rek_akum.AsString:= qryRekGLid_rek_gl.AsString;
       end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TJenisAsetFrm.edtRekBebanSusutPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   try
      qryRekGL.Close;
      qryRekGL.Open;
      if LookRekening.Execute then begin
          if Master.State=dsBrowse then
             Master.Edit ;
          Masterid_rek_biaya.AsString:= qryRekGLid_rek_gl.AsString;
       end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

end.

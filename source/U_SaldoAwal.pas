unit U_SaldoAwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, ZSequence, cxCalendar, wwDialog, wwidlg,
  cxButtonEdit, cxDropDownEdit, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TSaldoAwalFrm = class(TForm)
    dsMaster: TDataSource;
    pnlMiddle: TSCPanel;
    btnCancel: TSCButton;
    btnEdit: TSCButton;
    btnSave: TSCButton;
    dbnWBS: TRzDBNavigator;
    btnAdd: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    pnlBottom: TRzPanel;
    pnlData: TSCPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtKredit: TcxDBTextEdit;
    edtDeskripsi: TcxDBTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
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
    lblHeader1: TLabel;
    sq_saldo_awal: TZSequence;
    Label2: TLabel;
    edtDebet: TcxDBTextEdit;
    Shape9: TShape;
    Shape10: TShape;
    Label5: TLabel;
    edtDTMemorial: TcxDBDateEdit;
    edtAkun: TcxDBButtonEdit;
    LookRek_GL: TwwLookupDialog;
    qRekGL: TZReadOnlyQuery;
    qRekGLid_rek_gl: TStringField;
    qRekGLdescriptions: TStringField;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grdLvlDetail: TcxGridLevel;
    grddbtvDetaildt_saldo_awal: TcxGridDBColumn;
    grddbtvDetaildescriptions: TcxGridDBColumn;
    grddbtvDetailid_rek_gl: TcxGridDBColumn;
    grddbtvDetaildebet: TcxGridDBColumn;
    grddbtvDetailkredit: TcxGridDBColumn;
    Master: TZQuery;
    Masterid_saldo_awal: TLargeintField;
    Masterdt_saldo_awal: TDateTimeField;
    Masterdescriptions: TStringField;
    Masterid_rek_gl: TStringField;
    Masterdebet: TFloatField;
    Masterkredit: TFloatField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterid_trans: TStringField;
    Masternama_rekening: TStringField;
    grddbtvDetailnama_rekening: TcxGridDBColumn;
    Masterno_saldo_awal: TStringField;
    qryGET_NO_REFF: TZQuery;
    qryGET_NO_REFFreff_number: TStringField;
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
    procedure edtAkunPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    vtag : integer;
    vjns_transaksi : String;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  SaldoAwalFrm: TSaldoAwalFrm;

  procedure ShowForm(pNamaMenu:String; pTrans:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pTrans:String; ptag : integer);
begin
  SaldoAwalFrm:= TSaldoAwalFrm.Create(Application);
  SaldoAwalFrm.vjns_transaksi:= pTrans;
  try
    DM.L_Rek_GL.Close;
    DM.L_Rek_GL.Open; 
    SaldoAwalFrm.Master.Close;
    SaldoAwalFrm.Master.Open;

  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  SaldoAwalFrm.lblHeader1.Caption:= pNamaMenu;
  SaldoAwalFrm.vtag:= ptag;
  SaldoAwalFrm.UpdateView;
  SaldoAwalFrm.pnlBottom.Visible:= False;
  SaldoAwalFrm.Show;
end;


procedure TSaldoAwalFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TSaldoAwalFrm.FormShow(Sender: TObject);
begin
  ShowWindow(Handle, SW_Maximize)
end;

procedure TSaldoAwalFrm.UpdateView;
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

    dbnWBS.Enabled:= isBrowse;
    btnAdd.Visible:= isBrowse;
    btnEdit.Visible:= isBrowse;
    btnDelete.Visible:= isBrowse;

    btnRefresh.Visible:= isBrowse;
    btnSave.Visible:= not isBrowse;
    btnCancel.Visible:= not isBrowse;
    btnClose.Enabled:= isBrowse;

    pnlBottom.Visible:= not isBrowse
  end;
end;

procedure TSaldoAwalFrm.btnAddClick(Sender: TObject);
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

procedure TSaldoAwalFrm.btnEditClick(Sender: TObject);
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

procedure TSaldoAwalFrm.btnDeleteClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
  exit;
  if DM.MyMsg(mmConfirmation,'Do you want to delete this data ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
end;

procedure TSaldoAwalFrm.btnRefreshClick(Sender: TObject);
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

procedure TSaldoAwalFrm.btnSaveClick(Sender: TObject);
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

procedure TSaldoAwalFrm.btnCancelClick(Sender: TObject);
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

procedure TSaldoAwalFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterdebet.AsFloat:= 0;
  Masterkredit.AsFloat:= 0;
  Masterid_trans.AsString:= vjns_transaksi;

end;

procedure TSaldoAwalFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Ada Perubahan Data yang belum disimpan !','Tekan Simpan/Batal Sebelum Keluar.');
end;

procedure TSaldoAwalFrm.pnlBottomPaint(Sender: TObject);
begin
  DrawDropShadow(pnlBottom.Canvas, pnlData.BoundsRect, 6);
end;

procedure TSaldoAwalFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_rek_gl.IsNull or (Trim(Masterid_rek_gl.AsString)='') then begin
    MessageBox(0, 'Field Account # must have value !', 'Warning', MB_ICONWARNING or MB_OK);
    Abort
  end;

  if Masterdescriptions.IsNull or (Trim(Masterdescriptions.AsString)='') then
     Masterdescriptions.Clear;

  if Master.State=dsInsert then begin
     qryGET_NO_REFF.Close;
     qryGET_NO_REFF.Params.ParamByName('pseq').Value:= 'accfin.sq_saldo_awal';
     qryGET_NO_REFF.Open;  
     Masterid_saldo_awal.AsLargeInt:= sq_saldo_awal.GetNextValue;
     Masterno_saldo_awal.AsString:= qryGET_NO_REFFreff_number.AsString;
     Masterusr_ins.AsString:= DM.UserConnect;
     Masterusr_upd.AsString:= DM.UserConnect;
  end
  else
     Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TSaldoAwalFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TSaldoAwalFrm.edtAkunPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
     qRekGL.Close;
     qRekGL.Open;
     if LookRek_GL.Execute then begin
        Masterid_rek_gl.AsString:= qRekGLid_rek_gl.AsString;
     end;
   except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
   end;
end;

end.

unit U_Ref_NoFaktur;

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
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel;

type
  TRefNoFakturFrm = class(TForm)
    dsMaster: TDataSource;
    pnlMiddle: TSCPanel;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    dbnWBS: TRzDBNavigator;
    btnAdd: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    pnlBottom: TRzPanel;
    pnlData: TSCPanel;
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
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grdLvlDetail: TcxGridLevel;
    Master: TZQuery;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    edtAwal: TcxDBTextEdit;
    Shape3: TShape;
    Shape4: TShape;
    Label2: TLabel;
    edtAkhir: TcxDBTextEdit;
    Masterno_faktur_awal: TStringField;
    Masterno_faktur_akhir: TStringField;
    Masterno_terakhir: TStringField;
    Masterdt_ins: TDateTimeField;
    Masterdt_upd: TDateTimeField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterisclosed: TStringField;
    grddbtvDetailno_faktur_awal: TcxGridDBColumn;
    grddbtvDetailno_faktur_akhir: TcxGridDBColumn;
    grddbtvDetailno_terakhir: TcxGridDBColumn;
    grddbtvDetaildt_ins: TcxGridDBColumn;
    grddbtvDetaildt_upd: TcxGridDBColumn;
    grddbtvDetailusr_upd: TcxGridDBColumn;
    grddbtvDetailisclosed: TcxGridDBColumn;
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
  RefNoFakturFrm: TRefNoFakturFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  RefNoFakturFrm:= TRefNoFakturFrm.Create(Application);
  try
    RefNoFakturFrm.Master.Close;
    RefNoFakturFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  RefNoFakturFrm.lblHeader1.Caption:= pNamaMenu;
  RefNoFakturFrm.vtag:= ptag;
  RefNoFakturFrm.UpdateView;
  RefNoFakturFrm.pnlBottom.Visible:= False;
  RefNoFakturFrm.Show;
end;


procedure TRefNoFakturFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TRefNoFakturFrm.FormShow(Sender: TObject);
begin
  ShowWindow(Handle, SW_Maximize)
end;

procedure TRefNoFakturFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    dbnWBS.Enabled:= False;
    btnAdd.Enabled:= False;
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
    btnDelete.Visible:= isBrowse;

    btnRefresh.Visible:= isBrowse;
    btnSave.Visible:= not isBrowse;
    btnCancel.Visible:= not isBrowse;
    btnClose.Enabled:= isBrowse;

    pnlBottom.Visible:= not isBrowse
  end;
end;

procedure TRefNoFakturFrm.btnAddClick(Sender: TObject);
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

procedure TRefNoFakturFrm.btnEditClick(Sender: TObject);
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

procedure TRefNoFakturFrm.btnDeleteClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
  exit;

  if Masterno_terakhir.AsString='-' then begin

      if DM.MyMsg(mmConfirmation,'Do you want to delete this data ?','')=101 then
         Exit;
      try
        Master.Delete;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
      end;
  end else begin

  end;
end;

procedure TRefNoFakturFrm.btnRefreshClick(Sender: TObject);
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

procedure TRefNoFakturFrm.btnSaveClick(Sender: TObject);
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

procedure TRefNoFakturFrm.btnCancelClick(Sender: TObject);
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

procedure TRefNoFakturFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masterno_faktur_awal.AsString:= '';
  Masterno_faktur_akhir.AsString:= '';
end;

procedure TRefNoFakturFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Ada Perubahan Data yang belum disimpan !','Tekan Simpan/Batal Sebelum Keluar.');
end;

procedure TRefNoFakturFrm.pnlBottomPaint(Sender: TObject);
begin
  DrawDropShadow(pnlBottom.Canvas, pnlData.BoundsRect, 6);
end;

procedure TRefNoFakturFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterno_faktur_awal.IsNull or (Trim(Masterno_faktur_awal.AsString)='') then begin
     MessageBox(0, 'Nomor Faktur Awal harus diisi !', 'Warning', MB_ICONWARNING or MB_OK);
     Abort
  end;
  if Masterno_faktur_akhir.IsNull or (Trim(Masterno_faktur_akhir.AsString)='') then begin
     MessageBox(0, 'Nomor Faktur Akhir harus diisi !', 'Warning', MB_ICONWARNING or MB_OK);
     Abort
  end;


  if Master.State=dsInsert then begin
     Masterusr_ins.AsString:= DM.UserConnect;
     Masterusr_upd.AsString:= DM.UserConnect;
  end
  else
     Masterusr_upd.AsString:= DM.UserConnect;
     Masterdt_upd.AsDateTime:= Now;
end;

procedure TRefNoFakturFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

end.

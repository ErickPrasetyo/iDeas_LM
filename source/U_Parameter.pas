unit U_Parameter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, RzDBNav, StdCtrls, SCControl,
  SCStdControls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, cxVGrid, cxDBVGrid, cxInplaceContainer, cxLabel,
  AdvToolBar, AdvToolBarStylers, AdvAppStyler, AdvPanel,
  cxGridBandedTableView, cxContainer, cxTextEdit, cxDBEdit;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TParameterFrm = class(TForm)
    Master: TZQuery;
    dsKelompok: TDataSource;
    pnlTop: TSCPanel;
    lblHeader: TLabel;
    pnlMiddle: TSCPanel;
    btnRefresh: TSCButton;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    Label5: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape5: TShape;
    Label4: TLabel;
    Shape6: TShape;
    Label6: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Label7: TLabel;
    btnPPN_IN: TSCButton;
    btnPPN_OT: TSCButton;
    Shape11: TShape;
    Shape12: TShape;
    btnRL_TAHAN: TSCButton;
    btnRL_THN_JALAN: TSCButton;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    btnRL_PERIODE_JALAN: TSCButton;
    btnCEKBG: TSCButton;
    Shape17: TShape;
    Shape18: TShape;
    Masterdescription: TStringField;
    Masterparam_kind: TStringField;
    Masterid_parameter: TLargeintField;
    edtPPN_IN: TcxTextEdit;
    edtPPN_OT: TcxTextEdit;
    edtRL_DITAHAN: TcxTextEdit;
    edtRL_THN_JALAN: TcxTextEdit;
    edtRL_PERIODE_JALAN: TcxTextEdit;
    edtCEKBG: TcxTextEdit;
    btnClose: TSCButton;
    qryExec: TZQuery;
    Label8: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    btnDiscBeli: TSCButton;
    Shape21: TShape;
    edtDiscBeli: TcxTextEdit;
    Masternum_value: TFloatField;
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPPN_INClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPPN_OTClick(Sender: TObject);
    procedure btnRL_TAHANClick(Sender: TObject);
    procedure btnRL_THN_JALANClick(Sender: TObject);
    procedure btnRL_PERIODE_JALANClick(Sender: TObject);
    procedure btnCEKBGClick(Sender: TObject);
    procedure btnDiscBeliClick(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    DBMode: TDBMode;
    procedure OpenDataset;
    procedure UpdateView;
    procedure SaveDataset(pID: Integer; pValue: String);
    procedure SaveDatanum(pID: Integer; pValue: String);

  public
    { Public declarations }
  end;

var
  ParameterFrm: TParameterFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  ParameterFrm:= TParameterFrm.Create(Application);
  ParameterFrm.opendataset;
  ParameterFrm.DBMode:= dmBrowse;
  ParameterFrm.vtag:= ptag;
  ParameterFrm.UpdateView;
  ParameterFrm.Show;
end;

procedure TParameterFrm.OpenDataset;
begin
  try
    Master.Close;
    Master.Params.ParamByName('pid_parameter').Value:= 1;
    Master.Open;
    edtPPN_IN.Text:= Masterdescription.AsString;

    Master.Close;
    Master.Params.ParamByName('pid_parameter').Value:= 2;
    Master.Open;
    edtPPN_OT.Text:= Masterdescription.AsString;

    Master.Close;
    Master.Params.ParamByName('pid_parameter').Value:= 3;
    Master.Open;
    edtRL_DITAHAN.Text:= Masterdescription.AsString;

    Master.Close;
    Master.Params.ParamByName('pid_parameter').Value:= 4;
    Master.Open;
    edtRL_THN_JALAN.Text:= Masterdescription.AsString;

    Master.Close;
    Master.Params.ParamByName('pid_parameter').Value:= 5;
    Master.Open;
    edtRL_PERIODE_JALAN.Text:= Masterdescription.AsString;

    Master.Close;
    Master.Params.ParamByName('pid_parameter').Value:= 6;
    Master.Open;
    edtCEKBG.Text:= Masterdescription.AsString;

    Master.Close;
    Master.Params.ParamByName('pid_parameter').Value:= 14;
    Master.Open;
    edtDiscBeli.Text:= Masternum_value.AsString;


  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;

procedure TParameterFrm.UpdateView;
var isBrowse, isEdit: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    btnPPN_IN.Enabled:= False;
    btnPPN_OT.Enabled:= False;
    btnRL_TAHAN.Enabled:= False;
    btnRL_THN_JALAN.Enabled:= False;
    btnRL_PERIODE_JALAN.Enabled:= False;
    btnCEKBG.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;

  end else begin
    isBrowse := DBMode=dmBrowse;


    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnPPN_IN.Enabled := accedit;
    btnPPN_OT.Enabled := accedit;
    btnRL_TAHAN.Enabled := accedit;
    btnRL_THN_JALAN.Enabled := accedit;
    btnRL_PERIODE_JALAN.Enabled := accedit;
    btnCEKBG.Enabled := accedit;

    btnDiscBeli.Enabled:= accedit;

    btnRefresh.Visible := isBrowse;
    edtPPN_IN.Properties.ReadOnly := isBrowse;
    edtPPN_OT.Properties.ReadOnly:= isBrowse;
    edtRL_DITAHAN.Properties.ReadOnly:= isBrowse;
    edtRL_THN_JALAN.Properties.ReadOnly:= isBrowse;
    edtRL_PERIODE_JALAN.Properties.ReadOnly:= isBrowse;
    edtCEKBG.Properties.ReadOnly:= isBrowse;

    edtDiscBeli.Properties.ReadOnly:= isBrowse;
  end;
end;

procedure TParameterFrm.SaveDataset(pID: Integer; pValue: String);
var s : String;
begin

  s:= 'update master.mparameter set description='+QuotedStr(pValue);
  s:= s+' where id_parameter='+IntToStr(pID);
  try
    qryExec.Close;
    qryExec.SQL.Clear;
    qryExec.Params.Clear;
    qryExec.SQL.Add(s);
    qryExec.ExecSQL;
    OpenDataset;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;

procedure TParameterFrm.SaveDatanum(pID: Integer; pValue: String);
var s : String;
begin

  s:= 'update master.mparameter set num_value='+pValue;
  s:= s+' where id_parameter='+IntToStr(pID);
  try
    qryExec.Close;
    qryExec.SQL.Clear;
    qryExec.Params.Clear;
    qryExec.SQL.Add(s);
    qryExec.ExecSQL;
    OpenDataset;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;


procedure TParameterFrm.btnRefreshClick(Sender: TObject);
begin
  opendataset;
end;

procedure TParameterFrm.FormShow(Sender: TObject);
begin
  opendataset;
end;

procedure TParameterFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TParameterFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TParameterFrm.btnPPN_INClick(Sender: TObject);
begin
  if btnPPN_IN.Caption='Ubah' then begin
      DBMode:= dmEdit;
      UpdateView;
      btnPPN_IN.Caption:='Simpan';
      edtPPN_IN.Style.Color:= $00F1C8B8;
  end
  else begin
      SaveDataset(1, Trim(edtPPN_IN.Text));
      DBMode:= dmBrowse;
      UpdateView;
      btnPPN_IN.Caption:= 'Ubah';
      edtPPN_IN.Style.Color:= clWindow;
  end;
end;

procedure TParameterFrm.btnPPN_OTClick(Sender: TObject);
begin
  if btnPPN_OT.Caption='Ubah' then begin
      DBMode:= dmEdit;
      UpdateView;
      btnPPN_OT.Caption:='Simpan';
      edtPPN_OT.Style.Color:= $00F1C8B8;
  end
  else begin
      SaveDataset(2, Trim(edtPPN_OT.Text));
      DBMode:= dmBrowse;
      UpdateView;
      btnPPN_OT.Caption:= 'Ubah';
      edtPPN_OT.Style.Color:= clWindow;
  end;

end;

procedure TParameterFrm.btnRL_TAHANClick(Sender: TObject);
begin
  if btnRL_TAHAN.Caption='Ubah' then begin
      DBMode:= dmEdit;
      UpdateView;
      btnRL_TAHAN.Caption:='Simpan';
      edtRL_DITAHAN.Style.Color:= $00F1C8B8;
  end
  else begin
      SaveDataset(3, Trim(edtRL_DITAHAN.Text));
      DBMode:= dmBrowse;
      UpdateView;
      btnRL_TAHAN.Caption:= 'Ubah';
      edtRL_DITAHAN.Style.Color:= clWindow;
  end;
end;

procedure TParameterFrm.btnRL_THN_JALANClick(Sender: TObject);
begin
  if btnRL_THN_JALAN.Caption='Ubah' then begin
      DBMode:= dmEdit;
      UpdateView;
      btnRL_THN_JALAN.Caption:='Simpan';
      edtRL_THN_JALAN.Style.Color:= $00F1C8B8;
  end
  else begin
      SaveDataset(4, Trim(edtRL_THN_JALAN.Text));
      DBMode:= dmBrowse;
      UpdateView;
      btnRL_THN_JALAN.Caption:= 'Ubah';
      edtRL_THN_JALAN.Style.Color:= clWindow;
  end;
end;

procedure TParameterFrm.btnRL_PERIODE_JALANClick(Sender: TObject);
begin
  if btnRL_PERIODE_JALAN.Caption='Ubah' then begin
      DBMode:= dmEdit;
      UpdateView;
      btnRL_PERIODE_JALAN.Caption:='Simpan';
      edtRL_PERIODE_JALAN.Style.Color:= $00F1C8B8;
  end
  else begin
      SaveDataset(5, Trim(edtRL_PERIODE_JALAN.Text));
      DBMode:= dmBrowse;
      UpdateView;
      btnRL_PERIODE_JALAN.Caption:= 'Ubah';
      edtRL_PERIODE_JALAN.Style.Color:= clWindow;
  end;
end;

procedure TParameterFrm.btnCEKBGClick(Sender: TObject);
begin
  if btnCEKBG.Caption='Ubah' then begin
      DBMode:= dmEdit;
      UpdateView;
      btnCEKBG.Caption:='Simpan';
      edtCEKBG.Style.Color:= $00F1C8B8;
  end
  else begin
      SaveDataset(6, Trim(edtCEKBG.Text));
      DBMode:= dmBrowse;
      UpdateView;
      btnCEKBG.Caption:= 'Ubah';
      edtCEKBG.Style.Color:= clWindow;
  end;
end;

procedure TParameterFrm.btnDiscBeliClick(Sender: TObject);
begin
  if btnDiscBeli.Caption='Ubah' then begin
      DBMode:= dmEdit;
      UpdateView;
      btnDiscBeli.Caption:='Simpan';
      edtDiscBeli.Style.Color:= $00F1C8B8;
  end
  else begin
      SaveDatanum(14, Trim(edtDiscBeli.Text));
      DBMode:= dmBrowse;
      UpdateView;
      btnDiscBeli.Caption:= 'Ubah';
      edtDiscBeli.Style.Color:= clWindow;
  end;
end;

end.



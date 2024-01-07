unit U_CariRekening;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZDataset, cxGridTableView,
  ZAbstractRODataset, ZAbstractDataset, AdvAppStyler, cxLabel, cxContainer,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, SCControl,
  SCStdControls, ExtCtrls, AdvPanel, cxGridBandedTableView;

type
  TCariRekeningFrm = class(TForm)
    AFS: TAdvFormStyler;
    qRekGL: TZQuery;
    dsqRekanan: TDataSource;
    AdvPanel1: TAdvPanel;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    qRekGLid_rek_gl: TStringField;
    qRekGLdescriptions: TStringField;
    pnlHeader: TAdvPanel;
    edtRekening: TcxTextEdit;
    lblNama: TcxLabel;
    btnCariRekanan: TSCButton;
    edtKode: TcxTextEdit;
    cxLabel1: TcxLabel;
    grdDokter: TcxGrid;
    grddbtvDokter: TcxGridDBTableView;
    grddbtvDokternama_dokter: TcxGridDBColumn;
    grddbtvDokterkd_rekanan: TcxGridDBColumn;
    grdDokterLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtRekeningKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariRekananClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDataSet(vKode,vNama :String);
  public
    { Public declarations }
  end;

var
  CariRekeningFrm: TCariRekeningFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TCariRekeningFrm.FormShow(Sender: TObject);
begin
  OpenDataSet('','');
  edtKode.SetFocus;
end;

procedure TCariRekeningFrm.OpenDataSet(vKode,vNama :String);
var dtNow, s, ws : String;
begin

        s:= 'SELECT id_rek_gl, descriptions';
        s:= s+' FROM master.mrek_gl';
        s:= s+' WHERE isdetail='+QuotedStr('1');

        if Trim(vKode)<>'' then
           s:= s+' AND id_rek_gl LIKE '+QuotedStr(vKode+'%');
        if Trim(vNama)<>'' then
           s:= s+' OR UPPER(descriptions) LIKE '+QuotedStr('%'+UpperCase(vNama)+'%');
        s:= s+' ORDER BY id_rek_gl';

        try
          qRekGL.Close;
          qRekGL.SQL.Clear;
          qRekGL.Params.Clear;
          qRekGL.SQL.Add(s);
          qRekGL.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;


end;


procedure TCariRekeningFrm.btnSaveClick(Sender: TObject);
begin
   ModalResult:= mrOk;
end;

procedure TCariRekeningFrm.edtRekeningKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then btnSaveClick(nil)
   else btnCariRekananClick(nil);
end;

procedure TCariRekeningFrm.btnCariRekananClick(Sender: TObject);
begin
  OpenDataSet(edtKode.Text, edtRekening.Text);
end;

end.

unit U_CariRekanan;

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
  TCariRekananFrm = class(TForm)
    AFS: TAdvFormStyler;
    qRekanan: TZQuery;
    dsqRekanan: TDataSource;
    AdvPanel1: TAdvPanel;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    pgcKelompok: TcxPageControl;
    tabRekanan: TcxTabSheet;
    grdDokter: TcxGrid;
    grddbtvDokter: TcxGridDBTableView;
    grdDokterLevel1: TcxGridLevel;
    pnlHeader: TAdvPanel;
    grddbtvDokternama_dokter: TcxGridDBColumn;
    edtRekanan: TcxTextEdit;
    lblNama: TcxLabel;
    btnCariRekanan: TSCButton;
    qRekanankd_rekanan: TStringField;
    qRekanannama_rekanan: TStringField;
    grddbtvDokterkd_rekanan: TcxGridDBColumn;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    edtKode: TcxTextEdit;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtRekananKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariRekananClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDataSet(vJenis,vKode,vNama :String);
  public
    { Public declarations }
    vMode : integer;
    vJenis : String;
  end;

var
  CariRekananFrm: TCariRekananFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TCariRekananFrm.FormShow(Sender: TObject);
begin
  pgcKelompok.HideTabs:= True;
  pgcKelompok.ActivePageIndex:= vMode;
  OpenDataSet(vJenis,'','');
  edtKode.SetFocus;
end;

procedure TCariRekananFrm.OpenDataSet(vJenis,vKode,vNama :String);
var dtNow, s, ws : String;
begin
    if vMode=0 then begin   // rekanan
        s:= 'SELECT kd_rekanan, nama_rekanan';
        s:= s+' FROM master.mrekanan';
        s:= s+' WHERE jenis='+QuotedStr(vJenis);
        if Trim(vKode)<>'' then
           s:= s+' AND kd_rekanan LIKE '+QuotedStr(vKode+'%');
        if Trim(vNama)<>'' then
           s:= s+' OR UPPER(nama_rekanan) LIKE '+QuotedStr('%'+UpperCase(vNama)+'%');
        s:= s+' ORDER BY kd_rekanan';

        try
          qRekanan.Close;
          qRekanan.SQL.Clear;
          qRekanan.Params.Clear;
          qRekanan.SQL.Add(s);
          qRekanan.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;
    end  // END OF VMODE=0

end;


procedure TCariRekananFrm.btnSaveClick(Sender: TObject);
begin
   ModalResult:= mrOk;
end;

procedure TCariRekananFrm.edtRekananKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then btnSaveClick(nil)
   else btnCariRekananClick(nil);
end;

procedure TCariRekananFrm.btnCariRekananClick(Sender: TObject);
begin
  OpenDataSet(vJenis,edtKode.Text,edtRekanan.Text);
end;

end.

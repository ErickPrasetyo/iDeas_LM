unit U_InfoCashFlow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler, DateUtils,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, Menus, cxLookAndFeelPainters, wwdbdatetimepicker,
  cxButtons, frxClass, frxDBSet, kbmMemTable, cxLookAndFeels,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters;

type
  TInfoCashFlowFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    pnlMiddle: TSCPanel;
    dbnWBS: TRzDBNavigator;
    btnRefresh: TSCButton;
    dbtlDivisi: TcxDBTreeList;
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
    Masterbulan_ini: TFloatField;
    Mastertahun_berjalan: TFloatField;
    dbtlDivisiid_arus: TcxDBTreeListColumn;
    dbtlDivisideskripsi: TcxDBTreeListColumn;
    dbtlDivisiisdetail: TcxDBTreeListColumn;
    dbtlDivisibulan_ini: TcxDBTreeListColumn;
    dbtlDivisitahun_berjalan: TcxDBTreeListColumn;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    btnOK: TcxButton;
    RzGroupBox1: TRzGroupBox;
    edtDatePicker1: TwwDBDateTimePicker;
    btnPrint: TSCButton;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtInfopnamamenu: TStringField;
    kmtInfoperiode: TStringField;
    kmtInfoconsignment: TStringField;
    kmtInfodt_prepared: TStringField;
    kmtInfoprepared_name: TStringField;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat_perusahaan: TStringField;
    kmtInfotelp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    frxDBInfo: TfrxDBDataset;
    frxCF: TfrxReport;
    qMprint: TZReadOnlyQuery;
    qMprintid_arus: TStringField;
    qMprintdeskripsi: TStringField;
    qDPrint: TZQuery;
    qDPrintid_arus: TStringField;
    qDPrintid_parent: TStringField;
    qDPrintdeskripsi: TStringField;
    qDPrintisdetail: TStringField;
    qDPrintbulan_ini: TFloatField;
    qDPrinttahun_berjalan: TFloatField;
    dsqMprint: TDataSource;
    frxDBMasterPrint: TfrxDBDataset;
    frxDBDetailPrint: TfrxDBDataset;
    qSUM_BLN_INI: TZReadOnlyQuery;
    qSUM_BLN_INIbulan_ini: TFloatField;
    qSUM_THN_INI: TZReadOnlyQuery;
    qSUM_THN_INItahun_ini: TFloatField;
    frxDB_BLN_INI: TfrxDBDataset;
    frxDB_THN_INI: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    vdate_awal_tahun, vdate_awal_bulan, vdate_akhir_tahun, vdate_end_last_month, vdate_end_last_year : TDate;
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  InfoCashFlowFrm: TInfoCashFlowFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoCashFlowFrm := TInfoCashFlowFrm.Create(Application);
  InfoCashFlowFrm.vtag:= ptag;
  InfoCashFlowFrm.lblHeader1.Caption := pNamaMenu;
  InfoCashFlowFrm.Show;
end;


procedure TInfoCashFlowFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoCashFlowFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    dbnWBS.Enabled:= False;
    btnRefresh.Enabled:= True;
    btnClose.Enabled:= True;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    dbnWBS.Enabled:= isBrowse;
    btnRefresh.Visible:= isBrowse;
    btnClose.Enabled:= isBrowse;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled:= not isEmpty and accprint;

    dbtlDivisi.Enabled:= isBrowse;
  end;
end;

procedure TInfoCashFlowFrm.btnRefreshClick(Sender: TObject);
begin
 btnOKClick(nil);
end;

procedure TInfoCashFlowFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TInfoCashFlowFrm.btnOKClick(Sender: TObject);
var vyy, vmm, vdd : word;

begin
  DecodeDate(edtDatePicker1.Date,vyy,vmm,vdd);
  vdate_awal_tahun:=EncodeDate(vyy,1,1);
  vdate_awal_bulan:=EncodeDate(vyy,vmm,1);
  vdate_akhir_tahun:=EncodeDate(vyy,12,31);
  if (vmm-1)=0 then vdate_end_last_month:= EncodeDate(vyy-1,12,31)
  else vdate_end_last_month:=  EndOfTheMonth(EncodeDate(vyy,(vmm-1),1));
  vdate_end_last_year:= EncodeDate((vyy-1),12,31);

  try
    Master.Close;
    Master.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', vdate_awal_bulan);
    Master.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
    Master.Params.ParamByName('ptgl2').Value:= FormatDateTime('dd/mm/yyyy', vdate_awal_tahun);
    Master.Params.ParamByName('ptgl3').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
    Master.Open
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TInfoCashFlowFrm.btnPrintClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
     Exit;

  DM.vSysDate.Close;
  DM.vSysDate.Open;
  DM.Perusahaan.Close;
  DM.Perusahaan.Open;


  kmtInfo.Close;
  kmtInfo.Open;
  kmtInfo.Append;
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat_perusahaan.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfotelp.AsString:= 'Telp : '+DM.Perusahaantelepon.AsString+', Fax : '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= DM.Perusahaankota.AsString;
  kmtInfouser_id.AsString := DM.UserConnect;
  kmtInfouser_name.AsString := DM.UserConnect;
  kmtInfoperiode.AsString := 'Akhir Periode : '+FormatDateTime('dd-mmm-yyyy',edtDatePicker1.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfodt_prepared.AsString := 'TGL : '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(lblHeader1.Caption);
  kmtInfo.Post;

  try
    qDPrint.Close;
    qMprint.Close;
    qMprint.Open;
    qDPrint.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', vdate_awal_bulan);
    qDPrint.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
    qDPrint.Params.ParamByName('ptgl2').Value:= FormatDateTime('dd/mm/yyyy', vdate_awal_tahun);
    qDPrint.Params.ParamByName('ptgl3').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date);
    qDPrint.Open;

    qSUM_BLN_INI.Close;
    qSUM_BLN_INI.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', vdate_end_last_month);
    qSUM_BLN_INI.Open;

    qSUM_THN_INI.Close;
    qSUM_THN_INI.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', vdate_end_last_year);
    qSUM_THN_INI.Open;
//    ShowMessage('bulan'+ FormatDateTime('dd/mm/yyyy', vdate_end_last_month)+' tahun'+FormatDateTime('dd/mm/yyyy', vdate_end_last_year));

  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  frxCF.ShowReport;
end;

end.

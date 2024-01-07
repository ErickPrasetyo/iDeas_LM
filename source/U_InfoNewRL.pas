unit U_InfoNewRL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, frxClass, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, frxExportPDF, frxExportRTF, frxExportXLS,
  frxDBSet, kbmMemTable, AdvPanel, AdvAppStyler, cxGridBandedTableView,
  cxClasses, AdvToolBar, AdvToolBarStylers, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, wwdbdatetimepicker, RzPanel,
  AdvReflectionImage, SCStdControls, ExtCtrls, DBCtrls, RzDBNav, SCControl,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TInfoNewRLFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    pnlMiddle: TSCPanel;
    dbnWBS: TRzDBNavigator;
    btnRefresh: TSCButton;
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
    SCPanel1: TSCPanel;
    Label2: TLabel;
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
    frxDB_PENDAPATAN: TfrxDBDataset;
    kmtInfoawal: TStringField;
    kmtInfoakhir: TStringField;
    qPENDAPATAN: TZQuery;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    Masterid_rek_rl: TStringField;
    Masterdiskripsi: TStringField;
    Masterjenis: TStringField;
    Masterperiode_lalu: TFloatField;
    Masterperiode_ini: TFloatField;
    grdAKTIVA: TcxGrid;
    grddbtv_AKTIVA: TcxGridDBTableView;
    grddbtv_AKTIVAdiskripsi: TcxGridDBColumn;
    grddbtv_AKTIVAperiode_lalu: TcxGridDBColumn;
    grddbtv_AKTIVAperiode_ini: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    grdLvlAKTIVA: TcxGridLevel;
    qPENDAPATANid_rek_rl: TStringField;
    qPENDAPATANdiskripsi: TStringField;
    qPENDAPATANjenis: TStringField;
    qPENDAPATANperiode_lalu: TFloatField;
    qPENDAPATANperiode_ini: TFloatField;
    frxRL: TfrxReport;
    qBEBAN: TZQuery;
    qBEBANid_rek_rl: TStringField;
    qBEBANdiskripsi: TStringField;
    qBEBANjenis: TStringField;
    qBEBANperiode_lalu: TFloatField;
    qBEBANperiode_ini: TFloatField;
    frxDB_BEBAN: TfrxDBDataset;
    btnOK: TSCButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    vyy_now, vmm_now, vdd_now, vdd_last : word;
    vtgl_awal, vtgl_akhir : TDate;
    dt0, dt1 : String;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  InfoNewRLFrm: TInfoNewRLFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoNewRLFrm := TInfoNewRLFrm.Create(Application);
  InfoNewRLFrm.vtag:= ptag;
  InfoNewRLFrm.lblHeader1.Caption := pNamaMenu;
  InfoNewRLFrm.Show;
end;


procedure TInfoNewRLFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoNewRLFrm.UpdateView;
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

  end;
end;

procedure TInfoNewRLFrm.btnRefreshClick(Sender: TObject);
begin
 btnOKClick(nil);
end;

procedure TInfoNewRLFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TInfoNewRLFrm.btnOKClick(Sender: TObject);
var sts_dlg: TfrmStatus_Dialog;
begin

      DecodeDate(edtDatePicker1.Date,vyy_now,vmm_now,vdd_now);
      vtgl_awal:= EncodeDate(vyy_now-1,vmm_now,vdd_now);
      vtgl_akhir:= edtDatePicker1.Date;

      dt0:= FormatDateTime('dd/mm/yyyy', vtgl_awal);
      dt1:= FormatDateTime('dd/mm/yyyy', vtgl_akhir);

  try
    sts_dlg:= TfrmStatus_Dialog.Create(Application);
    sts_dlg.Reset_Progress;
    sts_dlg.Set_Min(1);
    sts_dlg.Set_Max(3);
    sts_dlg.Set_Status('Please wait, Execute action ...!!!');
    sts_dlg.Show;

    try
      Master.Close;
      sts_dlg.Progress_It;
      Master.Params.ParamByName('ptgl0').Value:= dt0;
      Master.Params.ParamByName('ptgl1').Value:= dt1;
      sts_dlg.Progress_It;
      Master.Open;
      sts_dlg.Progress_It;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end
    end;
  finally
    sts_dlg.Free;
  end;
  UpdateView;
end;

procedure TInfoNewRLFrm.btnPrintClick(Sender: TObject);
var sts_dlg: TfrmStatus_Dialog;
begin
  if Master.RecordCount=0 then
     Exit;

  try
    sts_dlg:= TfrmStatus_Dialog.Create(Application);
    sts_dlg.Reset_Progress;
    sts_dlg.Set_Min(1);
    sts_dlg.Set_Max(5);
    sts_dlg.Set_Status('Please wait, Execute action ...!!!');
    sts_dlg.Show;


    DM.vSysDate.Close;
    DM.vSysDate.Open;
    sts_dlg.Progress_It;

    DM.Perusahaan.Close;
    DM.Perusahaan.Open;
    sts_dlg.Progress_It;


    kmtInfo.Close;
    kmtInfo.Open;
    kmtInfo.Append;
    kmtInfonama_perusahaan.AsString:= UpperCase(DM.Perusahaanperusahaan.AsString);
    kmtInfoalamat_perusahaan.AsString:= DM.Perusahaanalamat.AsString;
    kmtInfotelp.AsString:= 'Telp : '+DM.Perusahaantelepon.AsString+', Fax : '+DM.Perusahaanfax.AsString;
    kmtInfokota_negara.AsString:= DM.Perusahaankota.AsString;
    kmtInfouser_id.AsString := DM.UserConnect;
    kmtInfouser_name.AsString := DM.UserConnect;
    kmtInfoperiode.AsString := 'Untuk Tahun yang Berakhir '+FormatDateTime('dd-mmmm-yyyy',edtDatePicker1.Date)+
                                ' dan '+IntToStr(vyy_now-1);
    kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
    kmtInfodt_prepared.AsString := 'DATED : '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
    kmtInfopnamamenu.AsString := UpperCase(lblHeader1.Caption);
    kmtInfoawal.AsString:=   FormatDateTime('dd-mm-yyyy',vtgl_awal);
    kmtInfoakhir.AsString:= FormatDateTime('dd-mm-yyyy',vtgl_akhir);
    kmtInfo.Post;
    sts_dlg.Progress_It;
    try
        qPENDAPATAN.Close;
        qPENDAPATAN.Params.ParamByName('ptgl0').Value:= dt0;
        qPENDAPATAN.Params.ParamByName('ptgl1').Value:= dt1;
        qPENDAPATAN.Open;
        sts_dlg.Progress_It;

        qBEBAN.Close;
        qBEBAN.Params.ParamByName('ptgl0').Value:= dt0;
        qBEBAN.Params.ParamByName('ptgl1').Value:= dt1;
        qBEBAN.Open;
        sts_dlg.Progress_It;

    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end
    end;
  finally
    sts_dlg.Free;
  end;

  frxRL.ShowReport;
end;

procedure TInfoNewRLFrm.edtDatePicker1CloseUp(Sender: TObject);
begin
  edtDatePicker1.Date:= EndOfTheMonth(edtDatePicker1.Date);
end;

end.

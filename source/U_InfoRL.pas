unit U_InfoRL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, Menus, cxLookAndFeelPainters, wwdbdatetimepicker,
  cxButtons, frxClass, frxDBSet, kbmMemTable, frxExportPDF, frxExportRTF,
  frxExportXLS;

type
  TInfoRLFrm = class(TForm)
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
    dbtlDivisiid_arus: TcxDBTreeListColumn;
    dbtlDivisideskripsi: TcxDBTreeListColumn;
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
    frxRL: TfrxReport;
    frxDBMaster: TfrxDBDataset;
    kmtMaster: TkbmMemTable;
    kmtMasterid_arus: TStringField;
    kmtMasterid_parent: TStringField;
    kmtMasterdeskripsi: TStringField;
    kmtMasterisdetail: TStringField;
    kmtMasterbulan_ini: TFloatField;
    kmtMastertahun_berjalan: TFloatField;
    Masterid_rek_gl: TStringField;
    Masterid_parent: TStringField;
    Masterdescriptions: TStringField;
    Mastertahun_ini: TFloatField;
    Mastertahun_lalu: TFloatField;
    kmtInfoawal: TStringField;
    kmtInfoakhir: TStringField;
    qPrintRL: TZQuery;
    qPrintRLid_rek_gl: TStringField;
    qPrintRLid_parent: TStringField;
    qPrintRLdescriptions: TStringField;
    qPrintRLtahun_ini: TFloatField;
    qPrintRLtahun_lalu: TFloatField;
    qMasterPrint: TZQuery;
    qMasterPrintid_rek_gl: TStringField;
    qMasterPrintdescriptions: TStringField;
    dsqMasterPrint: TDataSource;
    frxDBMasterPrint: TfrxDBDataset;
    frxDBDetailPrint: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure qPrintRLBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    vtag : integer;
    vyy, vmm, vdd : word;
    vtgl_now, vthn_last : TDate;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  InfoRLFrm: TInfoRLFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoRLFrm := TInfoRLFrm.Create(Application);
  InfoRLFrm.vtag:= ptag;
  InfoRLFrm.lblHeader1.Caption := pNamaMenu;
  InfoRLFrm.Show;
end;


procedure TInfoRLFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoRLFrm.UpdateView;
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

procedure TInfoRLFrm.btnRefreshClick(Sender: TObject);
begin
 btnOKClick(nil);
end;

procedure TInfoRLFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TInfoRLFrm.btnOKClick(Sender: TObject);
var sts_dlg: TfrmStatus_Dialog;
begin
  DecodeDate(edtDatePicker1.Date,vyy,vmm,vdd);
  vtgl_now:= edtDatePicker1.Date;
  vthn_last:= EncodeDate(vyy-1,12,31);
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
      Master.Params.ParamByName('ptgl_now').Value:= FormatDateTime('dd/mm/yyyy', vtgl_now);
      Master.Params.ParamByName('pthn_last').Value:= FormatDateTime('dd/mm/yyyy', vthn_last);
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

procedure TInfoRLFrm.btnPrintClick(Sender: TObject);
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
    kmtInfoperiode.AsString := 'Untuk Tahun-tahun yang Berakhir pada : '+FormatDateTime('dd-mmm-yyyy',edtDatePicker1.Date)+
                                ' dan 31 Desember '+IntToStr(vyy-1);
    kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
    kmtInfodt_prepared.AsString := 'DATED : '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
    kmtInfopnamamenu.AsString := UpperCase(lblHeader1.Caption);
    kmtInfoawal.AsString:= IntToStr(vyy-1);
    kmtInfoakhir.AsString:= 'S/D '+FormatDateTime('dd-mm-yyyy',edtDatePicker1.Date);
    kmtInfo.Post;
    sts_dlg.Progress_It;
    try
      qPrintRL.Close;
      qMasterPrint.Close;
      qMasterPrint.Open;
      sts_dlg.Progress_It;

      qPrintRL.Open;
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

procedure TInfoRLFrm.qPrintRLBeforeOpen(DataSet: TDataSet);
begin
  qPrintRL.Params.ParamByName('ptgl_now').Value:= FormatDateTime('dd/mm/yyyy', vtgl_now);
  qPrintRL.Params.ParamByName('pthn_last').Value:= FormatDateTime('dd/mm/yyyy', vthn_last);
end;

end.

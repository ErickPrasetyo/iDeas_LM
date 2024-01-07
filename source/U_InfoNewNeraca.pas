unit U_InfoNewNeraca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,DateUtils,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, Menus, cxLookAndFeelPainters, wwdbdatetimepicker,
  cxButtons, frxClass, frxDBSet, kbmMemTable, RzSplit, cxSpinEdit,
  frxExportRTF, frxExportXLS, frxExportPDF, cxRadioGroup, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxLookAndFeels, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TInfoNewNeracaFrm = class(TForm)
    qAktiva: TZQuery;
    dsqAktiva: TDataSource;
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
    btnPrint: TSCButton;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtInfodt_prepared: TStringField;
    kmtInfoprepared_name: TStringField;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat_perusahaan: TStringField;
    frxDBInfo: TfrxDBDataset;
    frxNERACA: TfrxReport;
    RzSplitter1: TRzSplitter;
    qPasiva: TZQuery;
    dsqPasiva: TDataSource;
    qProcRL: TZQuery;
    kmtInfoawal: TStringField;
    kmtInfoakhir: TStringField;
    qPrintAktiva: TZQuery;
    frxDBAktiva: TfrxDBDataset;
    frxDBPasiva: TfrxDBDataset;
    qPrintPasiva: TZQuery;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    edtDatePicker0: TwwDBDateTimePicker;
    btnOK: TSCButton;
    grdAKTIVA: TcxGrid;
    grddbtv_AKTIVA: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    grdLvlAKTIVA: TcxGridLevel;
    grddbtv_AKTIVAdiskripsi: TcxGridDBColumn;
    grddbtv_AKTIVAperiode_lalu: TcxGridDBColumn;
    grddbtv_AKTIVAperiode_ini: TcxGridDBColumn;
    qAktivaid_rek_neraca: TStringField;
    qAktivadiskripsi: TStringField;
    qAktivajenis: TStringField;
    qAktivaperiode_lalu: TFloatField;
    qAktivaperiode_ini: TFloatField;
    grdPASIVA: TcxGrid;
    grddbtv_PASIVA: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    grdLvlPASIVA: TcxGridLevel;
    qPasivaid_rek_neraca: TStringField;
    qPasivadiskripsi: TStringField;
    qPasivajenis: TStringField;
    qPasivaperiode_lalu: TFloatField;
    qPasivaperiode_ini: TFloatField;
    grddbtv_PASIVAdiskripsi: TcxGridDBColumn;
    grddbtv_PASIVAperiode_lalu: TcxGridDBColumn;
    grddbtv_PASIVAperiode_ini: TcxGridDBColumn;
    pnlBottom: TSCPanel;
    SCPanel2: TSCPanel;
    qPrintAktivaid_rek_neraca: TStringField;
    qPrintAktivadiskripsi: TStringField;
    qPrintAktivajenis: TStringField;
    qPrintAktivaperiode_lalu: TFloatField;
    qPrintAktivaperiode_ini: TFloatField;
    qPrintPasivaid_rek_neraca: TStringField;
    qPrintPasivadiskripsi: TStringField;
    qPrintPasivajenis: TStringField;
    qPrintPasivaperiode_lalu: TFloatField;
    qPrintPasivaperiode_ini: TFloatField;
    kmtInfoperiode: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure edtDatePicker0CloseUp(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    vyy_now, vmm_now, vdd_now, vdd_last : word;
    vtgl_awal, vtgl_akhir : TDate;
    dt0, dt1 : String;
    DBMode: TDBMode;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  InfoNewNeracaFrm: TInfoNewNeracaFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoNewNeracaFrm := TInfoNewNeracaFrm.Create(Application);
  InfoNewNeracaFrm.vtag:= ptag;
  InfoNewNeracaFrm.lblHeader1.Caption := pNamaMenu;
  InfoNewNeracaFrm.Show;
end;


procedure TInfoNewNeracaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoNewNeracaFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    dbnWBS.Enabled:= False;
    btnRefresh.Enabled:= True;
    btnClose.Enabled:= True;
  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := ((qAktiva.RecordCount=0) or (qPasiva.RecordCount=0)) ;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    dbnWBS.Enabled:= isBrowse;
    btnRefresh.Visible:= isBrowse;
    btnClose.Enabled:= isBrowse;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled:= not isEmpty and accprint;

  end;
end;

procedure TInfoNewNeracaFrm.btnRefreshClick(Sender: TObject);
begin
 btnOKClick(nil);
end;

procedure TInfoNewNeracaFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TInfoNewNeracaFrm.btnOKClick(Sender: TObject);
var s: String;
    sts_dlg: TfrmStatus_Dialog;
begin

      DecodeDate(edtDatePicker0.Date,vyy_now,vmm_now,vdd_now);
      vtgl_awal:= EncodeDate(vyy_now-1,vmm_now,vdd_now);
      vtgl_akhir:= edtDatePicker0.Date;

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
            qProcRL.Close;
            qProcRL.SQL.Clear;
            qProcRL.Params.Clear;
            s:= 'select accfin.fn_proc_tutup_buku('+QuotedStr(dt0)+','+QuotedStr(dt1)+')';
            qProcRL.SQL.Add(s);
            qProcRL.ExecSQL;
            sts_dlg.Progress_It;

            qAktiva.Close;
            qAktiva.Params.ParamByName('ptgl0').Value:= dt0;
            qAktiva.Params.ParamByName('ptgl1').Value:= dt1;
            qAktiva.Open;
            sts_dlg.Progress_It;

            qPasiva.Close;
            qPasiva.Params.ParamByName('ptgl0').Value:= dt0;
            qPasiva.Params.ParamByName('ptgl1').Value:= dt1;
            qPasiva.Open;
            sts_dlg.Progress_It;
          except
            on E: Exception do begin
              DBMode:= dmNone;
              DM.MyMsg(mmError,'Error has been encountered !',E.Message);
            end
          end;
      finally
        sts_dlg.Free;
        DBMode:= dmBrowse;
      end;
      UpdateView;


end;

procedure TInfoNewNeracaFrm.btnPrintClick(Sender: TObject);
var sts_dlg: TfrmStatus_Dialog;
begin
  if qAktiva.RecordCount=0 then
     Exit;


        try
            sts_dlg:= TfrmStatus_Dialog.Create(Application);
            sts_dlg.Reset_Progress;
            sts_dlg.Set_Min(1);
            sts_dlg.Set_Max(7);
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
            kmtInfouser_id.AsString := DM.UserConnect;
            kmtInfouser_name.AsString := DM.UserConnect;
            kmtInfoperiode.AsString := 'Per '+FormatDateTime('dd mmmm yyyy',edtDatePicker0.Date)+' dan '+IntToStr(vyy_now-1);
            kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
            kmtInfodt_prepared.AsString := 'TGL: '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
            kmtInfoawal.AsString:=   FormatDateTime('dd-mm-yyyy',vtgl_awal);
            kmtInfoakhir.AsString:= FormatDateTime('dd-mm-yyyy',vtgl_akhir);
            kmtInfo.Post;
            sts_dlg.Progress_It;

            try

              qPrintAktiva.Close;
              qPrintAktiva.Params.ParamByName('ptgl0').Value:= dt0;
              qPrintAktiva.Params.ParamByName('ptgl1').Value:= dt1;
              qPrintAktiva.Open;
              sts_dlg.Progress_It;

              qPrintPasiva.Close;
              qPrintPasiva.Params.ParamByName('ptgl0').Value:= dt0;
              qPrintPasiva.Params.ParamByName('ptgl1').Value:= dt1;
              qPrintPasiva.Open;
              sts_dlg.Progress_It;


            except
              on E: Exception do begin
                DM.MyMsg(mmError,'Error has been encountered !',E.Message);
              end
            end;
        finally
          sts_dlg.Free;
        end;

        frxNERACA.ShowReport;


end;

procedure TInfoNewNeracaFrm.edtDatePicker0CloseUp(Sender: TObject);
begin
  edtDatePicker0.Date:= EndOfTheMonth(edtDatePicker0.Date);
end;

end.

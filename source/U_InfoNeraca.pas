unit U_InfoNeraca;

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
  frxExportRTF, frxExportXLS, frxExportPDF, cxRadioGroup;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TInfoNeracaFrm = class(TForm)
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
    btnOK: TcxButton;
    RzGroupBox1: TRzGroupBox;
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
    frxNERACA: TfrxReport;
    frxDBMaster: TfrxDBDataset;
    kmtMaster: TkbmMemTable;
    kmtMasterid_arus: TStringField;
    kmtMasterid_parent: TStringField;
    kmtMasterdeskripsi: TStringField;
    kmtMasterisdetail: TStringField;
    kmtMasterbulan_ini: TFloatField;
    RzSplitter1: TRzSplitter;
    dbtlAktiva: TcxDBTreeList;
    dbtlPasiva: TcxDBTreeList;
    dbtlAktivaid_rek_gl: TcxDBTreeListColumn;
    dbtlAktivatahun_ini: TcxDBTreeListColumn;
    dbtlAktivadescriptions: TcxDBTreeListColumn;
    qPasiva: TZQuery;
    dsqPasiva: TDataSource;
    dbtlPasivaid_rek_gl: TcxDBTreeListColumn;
    dbtlPasivadiskripsi: TcxDBTreeListColumn;
    dbtlPasivatahun_ini: TcxDBTreeListColumn;
    qAktivaid_rek_gl: TStringField;
    qAktivaid_parent: TStringField;
    qAktivadescriptions: TStringField;
    qAktivatahun_ini: TFloatField;
    qPasivaid_rek_gl: TStringField;
    qPasivaid_parent: TStringField;
    qPasivadescriptions: TStringField;
    qPasivatahun_ini: TFloatField;
    qProcRL: TZQuery;
    kmtInfoawal: TStringField;
    kmtInfoakhir: TStringField;
    qPrintAktiva: TZQuery;
    qPrintAktivaid_rek_gl: TStringField;
    qPrintAktivaid_parent: TStringField;
    qPrintAktivadescriptions: TStringField;
    qPrintAktivatahun_ini: TFloatField;
    dsqMasterAktiva: TDataSource;
    frxDBDetailAktiva: TfrxDBDataset;
    qMasterAktiva: TZQuery;
    qMasterAktivaid_rek_gl: TStringField;
    qMasterAktivadescriptions: TStringField;
    frxDBMasterAktiva: TfrxDBDataset;
    frxDBDetailPasiva: TfrxDBDataset;
    frxDBMasterPasiva: TfrxDBDataset;
    qMasterPasiva: TZQuery;
    qPrintPasiva: TZQuery;
    dsqMasterPasiva: TDataSource;
    qMasterPasivaid_rek_gl: TStringField;
    qMasterPasivadescriptions: TStringField;
    qPrintPasivaid_rek_gl: TStringField;
    qPrintPasivaid_parent: TStringField;
    qPrintPasivadescriptions: TStringField;
    qPrintPasivatahun_ini: TFloatField;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    edtDatePicker0: TwwDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure qPrintAktivaBeforeOpen(DataSet: TDataSet);
    procedure qPrintPasivaBeforeOpen(DataSet: TDataSet);
    procedure edtDatePicker0CloseUp(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    vyy_now, vmm_now, vdd_now, vdd_last : word;
    vtgl_awal, vtgl_akhir : TDate;
    DBMode: TDBMode;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  InfoNeracaFrm: TInfoNeracaFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_Status_Dialog;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoNeracaFrm := TInfoNeracaFrm.Create(Application);
  InfoNeracaFrm.vtag:= ptag;
  InfoNeracaFrm.lblHeader1.Caption := pNamaMenu;
  InfoNeracaFrm.Show;
end;


procedure TInfoNeracaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoNeracaFrm.UpdateView;
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

    dbtlAktiva.Enabled:= isBrowse;
    dbtlPasiva.Enabled:= isBrowse;

  end;
end;

procedure TInfoNeracaFrm.btnRefreshClick(Sender: TObject);
begin
 btnOKClick(nil);
end;

procedure TInfoNeracaFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TInfoNeracaFrm.btnOKClick(Sender: TObject);
var s: String;
    sts_dlg: TfrmStatus_Dialog;
    vdate_last, vlast_month : TDate;
    vyy_last, vmm_last, vmm_count : Word;
begin

      DecodeDate(edtDatePicker0.Date,vyy_now,vmm_now,vdd_now);
//      vtgl_awal:= EncodeDate(vyy_now,vmm_now,1);
      vtgl_akhir:= edtDatePicker0.Date;

      if (vmm_now-1)=0 then vmm_count:= 12
      else vmm_count:= vmm_now-1;

//      ShowMessage(IntToStr(vyy_now)+'.'+IntToStr(vmm_count)+'.'+IntToStr(vdd_now) );
      vdate_last:= EncodeDate(vyy_now,vmm_count,01);
      vlast_month:= EndOfTheMonth(vdate_last);
      DecodeDate(vlast_month,vyy_last,vmm_last,vdd_last);


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
            s:= 'select accfin.fn_proc_tutup_buku('+IntToStr(vdd_last)+','+IntToStr(vdd_now)+','+IntToStr(vmm_now)+','+IntToStr(vyy_now)+')';
            qProcRL.SQL.Add(s);
            qProcRL.ExecSQL;
            sts_dlg.Progress_It;

            qAktiva.Close;
//            qAktiva.Params.ParamByName('ptgl_awal').Value:= FormatDateTime('dd/mm/yyyy', vtgl_awal);
            qAktiva.Params.ParamByName('ptgl_akhir').Value:= FormatDateTime('dd/mm/yyyy', vtgl_akhir);
            qAktiva.Open;
            sts_dlg.Progress_It;

            qPasiva.Close;
//            qPasiva.Params.ParamByName('ptgl_awal').Value:= FormatDateTime('dd/mm/yyyy', vtgl_awal);
            qPasiva.Params.ParamByName('ptgl_akhir').Value:= FormatDateTime('dd/mm/yyyy', vtgl_akhir);
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


//  if edtByYear.Checked then begin
//      DecodeDate(edtDatePicker1.Date,vyy,vmm,vdd);
//      vthn_now:= EncodeDate(vyy,12,31);
//      vthn_last:= EncodeDate(vyy-1,12,31);
//
//      try
//          sts_dlg:= TfrmStatus_Dialog.Create(Application);
//          sts_dlg.Reset_Progress;
//          sts_dlg.Set_Min(1);
//          sts_dlg.Set_Max(3);
//          sts_dlg.Set_Status('Please wait, Execute action ...!!!');
//          sts_dlg.Show;
//          try
//            qProcRL.Close;
//            qProcRL.SQL.Clear;
//            qProcRL.Params.Clear;
//            s:= 'select accfin.fn_proc_tutup_buku('+QuotedStr(IntToStr(vyy))+')';
//            qProcRL.SQL.Add(s);
//            qProcRL.ExecSQL;
//            sts_dlg.Progress_It;
//
//            qAktiva.Close;
//            qAktiva.Params.ParamByName('pthn_now').Value:= FormatDateTime('dd/mm/yyyy', vthn_now);
//            qAktiva.Params.ParamByName('pthn_last').Value:= FormatDateTime('dd/mm/yyyy', vthn_last);
//            qAktiva.Open;
//            sts_dlg.Progress_It;
//
//            qPasiva.Close;
//            qPasiva.Params.ParamByName('pthn_now').Value:= FormatDateTime('dd/mm/yyyy', vthn_now);
//            qPasiva.Params.ParamByName('pthn_last').Value:= FormatDateTime('dd/mm/yyyy', vthn_last);
//            qPasiva.Open;
//            sts_dlg.Progress_It;
//          except
//            on E: Exception do begin
//              DBMode:= dmNone;
//              DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//            end
//          end;
//      finally
//        sts_dlg.Free;
//        DBMode:= dmBrowse;
//      end;
//      UpdateView;
//  end;  //  END OF BY YEAR



end;

procedure TInfoNeracaFrm.btnPrintClick(Sender: TObject);
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
            kmtInfotelp.AsString:= 'Telp : '+DM.Perusahaantelepon.AsString+', Fax : '+DM.Perusahaanfax.AsString;
            kmtInfokota_negara.AsString:= DM.Perusahaankota.AsString;
            kmtInfouser_id.AsString := DM.UserConnect;
            kmtInfouser_name.AsString := DM.UserConnect;
            kmtInfoperiode.AsString := 'Periode '+FormatDateTime('dd mmmm yyyy',edtDatePicker0.Date);
            kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
            kmtInfodt_prepared.AsString := 'TGL: '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
            kmtInfopnamamenu.AsString := UpperCase(lblHeader1.Caption);
            kmtInfoawal.AsString:=   FormatDateTime('mmmm yyyy',edtDatePicker0.Date);
//            kmtInfoakhir.AsString:= IntToStr(vyy);
            kmtInfo.Post;
            sts_dlg.Progress_It;

            try

              qPrintAktiva.Close;
              qMasterAktiva.Close;
              qMasterAktiva.Open;
              sts_dlg.Progress_It;

              qPrintAktiva.Open;
              sts_dlg.Progress_It;

              qPrintPasiva.Close;
              qMasterPasiva.Close;
              qMasterPasiva.Open;
              sts_dlg.Progress_It;

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

procedure TInfoNeracaFrm.edtDatePicker1CloseUp(Sender: TObject);
begin
// edtDatePicker1.Date:= EndOfTheYear(edtDatePicker1.Date);
end;

procedure TInfoNeracaFrm.qPrintAktivaBeforeOpen(DataSet: TDataSet);
begin
//  qPrintAktiva.Params.ParamByName('ptgl_awal').Value:= FormatDateTime('dd/mm/yyyy', vtgl_awal);
  qPrintAktiva.Params.ParamByName('ptgl_akhir').Value:= FormatDateTime('dd/mm/yyyy', vtgl_akhir);
end;

procedure TInfoNeracaFrm.qPrintPasivaBeforeOpen(DataSet: TDataSet);
begin
//  qPrintPasiva.Params.ParamByName('ptgl_awal').Value:= FormatDateTime('dd/mm/yyyy', vtgl_awal);
  qPrintPasiva.Params.ParamByName('ptgl_akhir').Value:= FormatDateTime('dd/mm/yyyy', vtgl_akhir);
end;

procedure TInfoNeracaFrm.edtDatePicker0CloseUp(Sender: TObject);
begin
 edtDatePicker0.Date:= EndOfTheMonth(edtDatePicker0.Date);
end;

end.

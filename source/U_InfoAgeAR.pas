unit U_InfoAgeAR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxInplaceContainer,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, DBCtrls, RzDBNav, StdCtrls, SCControl, SCStdControls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxLabel, cxContainer,
  cxTextEdit, cxDBEdit, RzLabel, Mask, RzEdit, RzDBEdit, RzDBLbl, RzPanel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit,
  cxDropDownEdit, Wwkeycb, cxCheckBox, Menus, cxLookAndFeelPainters,
  cxButtons, cxCalendar, wwdbdatetimepicker, DateUtils, wwDialog, wwidlg,
  cxButtonEdit, RzRadGrp, kbmMemTable, frxClass, frxDBSet, frxExportPDF,
  frxExportRTF, frxExportXML, frxRich, AdvPanel, AdvToolBar,
  AdvToolBarStylers, AdvAppStyler, cxRadioGroup, cxLookAndFeels,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TInfoAgeARFrm = class(TForm)
    SCPanel1: TSCPanel;
    btnOK: TcxButton;
    RzGroupBox1: TRzGroupBox;
    edtDatePicker2: TwwDBDateTimePicker;
    Master: TZReadOnlyQuery;
    dsMaster: TDataSource;
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMaster: TfrxDBDataset;
    frxARAging: TfrxReport;
    kmtMaster: TkbmMemTable;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtInfopnamamenu: TStringField;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    ATBos: TAdvToolBarOfficeStyler;
    pnlHeader: TAdvPanel;
    lblHeader: TLabel;
    AdvPanel1: TAdvPanel;
    dbnBrowse: TRzDBNavigator;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    btnClose: TSCButton;
    PopupMenu1: TPopupMenu;
    frxDBInfo: TfrxDBDataset;
    kmtInfoperiode: TStringField;
    kmtInfoconsignment: TStringField;
    kmtMasterid_supplier: TStringField;
    kmtMastersupplier_name: TStringField;
    kmtMasterjth_tempo_bln_ini: TFloatField;
    kmtMastersdh_jth_tempo: TFloatField;
    kmtMasterminggu_1: TFloatField;
    kmtMasterminggu_2: TFloatField;
    kmtMasterminggu_3: TFloatField;
    kmtMasterminggu_4: TFloatField;
    kmtMasterno: TStringField;
    kmtInfodt_prepared: TStringField;
    kmtInfoprepared_name: TStringField;
    grdItem: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    grd_DBTV_Item: TcxGridDBTableView;
    grdItemLevel1: TcxGridLevel;
    qryPrint: TZReadOnlyQuery;
    qryPrintkd_rekanan: TStringField;
    qryPrintnama_rekanan: TStringField;
    qryPrintno_doc: TStringField;
    qryPrintno_invoice: TStringField;
    qryPrintdt_due: TDateTimeField;
    qryPrinttotal_in: TFloatField;
    qryPrintperiode: TStringField;
    qryPrintcurrent: TFloatField;
    qryPrinttiga_puluh: TFloatField;
    qryPrintenam_puluh: TFloatField;
    qryPrintsembilan_puluh: TFloatField;
    qryPrintlebih_sembilan_puluh: TFloatField;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat_perusahaan: TStringField;
    kmtInfotelp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    rgLOKASI: TRzGroupBox;
    RBSemua: TcxRadioButton;
    RBLokasi: TcxRadioButton;
    ECUSTOMER: TcxButtonEdit;
    frxRepARAging: TfrxReport;
    LookCustomer: TwwLookupDialog;
    frxSUM: TfrxReport;
    frxDBSUM: TfrxDBDataset;
    qrySUM: TZReadOnlyQuery;
    qrySUMkd_rekanan: TStringField;
    qrySUMnama_rekanan: TStringField;
    qrySUMtotal_in: TFloatField;
    qrySUMcurrent: TFloatField;
    qrySUMtiga_puluh: TFloatField;
    qrySUMenam_puluh: TFloatField;
    qrySUMsembilan_puluh: TFloatField;
    qrySUMlebih_sembilan_puluh: TFloatField;
    RBSummary: TcxRadioButton;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masterid_division: TStringField;
    Masternama_sales: TStringField;
    Masterno_bukti: TStringField;
    Masternet_n_ppn: TFloatField;
    Masternilai_retur: TFloatField;
    Mastertotal: TFloatField;
    Masterpembayaran: TFloatField;
    Mastersisa: TFloatField;
    Masterdt_jth_tempo: TDateTimeField;
    Masterperiode: TStringField;
    Mastercurrent: TFloatField;
    Mastertiga_puluh: TFloatField;
    Masterenam_puluh: TFloatField;
    Mastersembilan_puluh: TFloatField;
    Masterlebih_sembilan_puluh: TFloatField;
    grd_DBTV_Itemno_nota: TcxGridDBColumn;
    grd_DBTV_Itemdt_nota: TcxGridDBColumn;
    grd_DBTV_Itemkd_rekanan: TcxGridDBColumn;
    grd_DBTV_Itemnama_rekanan: TcxGridDBColumn;
    grd_DBTV_Itemid_division: TcxGridDBColumn;
    grd_DBTV_Itemnama_sales: TcxGridDBColumn;
    grd_DBTV_Itemno_bukti: TcxGridDBColumn;
    grd_DBTV_Itemsisa: TcxGridDBColumn;
    grd_DBTV_Itemdt_jth_tempo: TcxGridDBColumn;
    grd_DBTV_Itemperiode: TcxGridDBColumn;
    grd_DBTV_Itemcurrent: TcxGridDBColumn;
    grd_DBTV_Itemtiga_puluh: TcxGridDBColumn;
    grd_DBTV_Itemenam_puluh: TcxGridDBColumn;
    grd_DBTV_Itemsembilan_puluh: TcxGridDBColumn;
    grd_DBTV_Itemlebih_sembilan_puluh: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure RBSemuaClick(Sender: TObject);
    procedure RBLokasiClick(Sender: TObject);
    procedure ECUSTOMERPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RBSummaryClick(Sender: TObject);
  private
    { Private declarations }
    vjns_transaksi, vjns_gudang, vjns_item, namamenu : string;
    vtag : integer;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  InfoAgeARFrm: TInfoAgeARFrm;
  
procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoAgeARFrm := TInfoAgeARFrm.Create(Application);
  InfoAgeARFrm.namamenu := pNamaMenu;
  InfoAgeARFrm.vtag:= ptag;
  InfoAgeARFrm.lblHeader.Caption := pNamaMenu;
  InfoAgeARFrm.ECUSTOMER.Enabled:= False;
  InfoAgeARFrm.Show;
end;

procedure TInfoAgeARFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoAgeARFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
//    btnSearch.Visible:= True;
//    btnSearch.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnPrint.Visible:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    dbnBrowse.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    grd_DBTV_Item.OptionsData.Inserting:= False;
    grd_DBTV_Item.OptionsData.Editing:= False;
    grd_DBTV_Item.OptionsData.Deleting:= False;

//    btnSearch.Visible := isBrowse;
//    btnSearch.Enabled := not isEmpty;
    btnRefresh.Visible := isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
  end;
end;

procedure TInfoAgeARFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoAgeARFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TInfoAgeARFrm.btnOKClick(Sender: TObject);
begin
  try
    Master.Close;
    Master.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date);
    Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
 end;
end;

procedure TInfoAgeARFrm.btnPrintClick(Sender: TObject);
var i, no, row_count: Integer;
     s, dt, dt_format : String;
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
  kmtInfouser_name.AsString := 'Printed by : '+DM.UserConnect;
  kmtInfoperiode.AsString := 'End Periode : '+FormatDateTime('dd-mmm-yyyy',edtDatePicker2.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfodt_prepared.AsString := 'DATED : '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := lblHeader.Caption;
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfodt_prepared.AsString := 'DATED : '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(lblHeader.Caption);
  kmtInfofilter.AsString:= 'CUSTOMER : '+DM.L_Rekanannama_rekanan.AsString;
  kmtInfo.Post;

  dt := FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
  dt_format:= 'dd/mm/yyyy';
  if RBSemua.Checked then begin
     try
      qryPrint.Close;
      qryPrint.SQL.Clear;
      qryPrint.Params.Clear;
      s:= 'select a.kd_rekanan, b.nama_rekanan, a.no_doc, a.no_bukti as no_invoice, a.dt_due, a.total_in';
      s:= s+', ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) as periode,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))<= interval '+QuotedStr('0 days')+' then a.total_in end,0) as current,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('1 days')+' and interval '+QuotedStr('30 days')+' then a.total_in end,0) as tiga_puluh,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('31 days')+' and interval '+QuotedStr('60 days')+' then a.total_in end,0) as enam_puluh,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('61 days')+' and interval '+QuotedStr('90 days')+' then a.total_in end,0) as sembilan_puluh,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))> interval '+QuotedStr('90 days')+' then a.total_in end,0) as lebih_sembilan_puluh';
      s:= s+' from accfin.vlook_ar a, master.mrekanan b';
      s:= s+' where  a.kd_rekanan=b.kd_rekanan and b.jenis='+QuotedStr('CUSTOMER');
      qryPrint.SQL.Add(s);
      qryPrint.Open;

      frxARAging.ShowReport;
     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
  end;
  if RBLokasi.Checked then begin
     try
      qryPrint.Close;
      qryPrint.SQL.Clear;
      qryPrint.Params.Clear;
      s:= 'select a.kd_rekanan, b.nama_rekanan, a.no_doc, a.no_bukti as no_invoice, a.dt_due, a.total_in';
      s:= s+', ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) as periode,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))<= interval '+QuotedStr('0 days')+' then a.total_in end,0) as current,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('1 days')+' and interval '+QuotedStr('30 days')+' then a.total_in end,0) as tiga_puluh,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('31 days')+' and interval '+QuotedStr('60 days')+' then a.total_in end,0) as enam_puluh,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('61 days')+' and interval '+QuotedStr('90 days')+' then a.total_in end,0) as sembilan_puluh,';
      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))> interval '+QuotedStr('90 days')+' then a.total_in end,0) as lebih_sembilan_puluh';
      s:= s+' from accfin.vlook_ar a, master.mrekanan b';
      s:= s+' where  a.kd_rekanan=b.kd_rekanan and b.jenis='+QuotedStr('CUSTOMER')+' and a.kd_rekanan='+QuotedStr(ECUSTOMER.Text);
      qryPrint.SQL.Add(s);
      qryPrint.Open;
      frxRepARAging.ShowReport;
     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
  end;

  if RBSummary.Checked then begin
     try
      qrySUM.Close;
      qrySUM.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date);
      qrySUM.Open;
      frxSUM.ShowReport;
     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
  end;


//      if Master.RecordCount=0 then
//      Exit;
//
//      kmtMaster.Close;
//      kmtMaster.Open;
//      if Master.RecordCount<10 then begin
//        row_count:= 10-Master.RecordCount;
//        Master.DisableControls;
//        try
//          Master.First;
//          while not Master.Eof do begin
//            kmtMaster.Append;
//            kmtMasterid_supplier.AsString:= Masterkd_rekanan.AsString;
//            kmtMastersupplier_name.AsString:= UpperCase(Masternama_rekanan.AsString);
//            kmtMastersdh_jth_tempo.AsFloat:= Mastersdh_jth_tempo.AsFloat;
//            kmtMasterjth_tempo_bln_ini.AsFloat:= Masterjth_tempo_bln_ini.AsFloat;
//            kmtMasterminggu_1.AsFloat:= Masterminggu_1.AsFloat;
//            kmtMasterminggu_2.AsFloat:= Masterminggu_2.AsFloat;
//            kmtMasterminggu_3.AsFloat:= Masterminggu_3.AsFloat;
//            kmtMasterminggu_4.AsFloat:= Masterminggu_4.AsFloat;
//            kmtMaster.Post;
//            Master.Next;
//          end;
//          for i := 1 to row_count do begin
//            kmtMaster.Append;
//            kmtMasterid_supplier.Clear;
//            kmtMastersupplier_name.Clear;
//            kmtMastersdh_jth_tempo.Clear;
//            kmtMasterjth_tempo_bln_ini.Clear;
//            kmtMasterminggu_1.Clear;
//            kmtMasterminggu_2.Clear;
//            kmtMasterminggu_3.Clear;
//            kmtMasterminggu_4.Clear;
//            kmtMaster.Post;
//          end;
//        finally
//          Master.First;
//          Master.EnableControls
//        end
//      end else begin
//        Master.DisableControls;
//        try
//          Master.First;
//          while not Master.Eof do begin
//            kmtMaster.Append;
//            kmtMasterid_supplier.AsString:= Masterkd_rekanan.AsString;
//            kmtMastersupplier_name.AsString:= UpperCase(Masternama_rekanan.AsString);
//            kmtMastersdh_jth_tempo.AsFloat:= Mastersdh_jth_tempo.AsFloat;
//            kmtMasterjth_tempo_bln_ini.AsFloat:= Masterjth_tempo_bln_ini.AsFloat;
//            kmtMasterminggu_1.AsFloat:= Masterminggu_1.AsFloat;
//            kmtMasterminggu_2.AsFloat:= Masterminggu_2.AsFloat;
//            kmtMasterminggu_3.AsFloat:= Masterminggu_3.AsFloat;
//            kmtMasterminggu_4.AsFloat:= Masterminggu_4.AsFloat;
//            kmtMaster.Post;
//            Master.Next;
//          end;
//        finally
//          Master.First;
//          Master.EnableControls
//        end
//      end;


end;

procedure TInfoAgeARFrm.RBSemuaClick(Sender: TObject);
begin
    If RBSemua.Checked Then Begin
       ECUSTOMER.Enabled := Not RBSemua.Checked;
    End;
end;

procedure TInfoAgeARFrm.RBLokasiClick(Sender: TObject);
begin
  If RBLokasi.Checked Then Begin
     ECUSTOMER.Enabled := RBLokasi.Checked;
  End;
end;

procedure TInfoAgeARFrm.ECUSTOMERPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     try
      DM.L_Rekanan.Close;
      DM.L_Rekanan.Open;
      if LookCustomer.Execute then
         ECUSTOMER.Text:= DM.L_Rekanankd_rekanan.AsString;

     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end
     end;
end;

procedure TInfoAgeARFrm.RBSummaryClick(Sender: TObject);
begin
  If RBSummary.Checked Then Begin
     ECUSTOMER.Enabled := not RBSummary.Checked;
  End;
end;

end.

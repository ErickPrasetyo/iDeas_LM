unit U_LapUmurHutang;

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
  TLapUmurHutangFrm = class(TForm)
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
    frxDBMaster0: TfrxDBDataset;
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
    grd_DBTV_Itemno_nota: TcxGridDBColumn;
    grd_DBTV_Itemdt_nota: TcxGridDBColumn;
    grd_DBTV_Itemno_bukti: TcxGridDBColumn;
    grd_DBTV_Itemsisa: TcxGridDBColumn;
    grd_DBTV_Itemdt_jth_tempo: TcxGridDBColumn;
    grd_DBTV_Itemperiode: TcxGridDBColumn;
    grd_DBTV_Itemcurrent: TcxGridDBColumn;
    grd_DBTV_Itemtiga_puluh: TcxGridDBColumn;
    grd_DBTV_Itemenam_puluh: TcxGridDBColumn;
    grd_DBTV_Itemsembilan_puluh: TcxGridDBColumn;
    grd_DBTV_Itemlebih_sembilan_puluh: TcxGridDBColumn;
    qPrincipal: TZReadOnlyQuery;
    qPrincipalkd_principal: TLargeintField;
    qPrincipalnama_principal: TStringField;
    qPrincipalinstansi: TStringField;
    LookPrincipal: TwwLookupDialog;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterno_bukti: TStringField;
    Masternama_outlet: TStringField;
    Masternama_sales: TStringField;
    Masterdt_jth_tempo: TDateTimeField;
    Mastertotal: TFloatField;
    Masternet_n_ppn: TFloatField;
    Masterperiode: TStringField;
    Masterpembayaran: TFloatField;
    Mastersisa_pembayaran: TFloatField;
    Mastercurrent: TFloatField;
    Mastertiga_puluh: TFloatField;
    Masterenam_puluh: TFloatField;
    Mastersembilan_puluh: TFloatField;
    Masterlebih_sembilan_puluh: TFloatField;
    grd_DBTV_ItemColumn1: TcxGridDBColumn;
    grd_DBTV_ItemColumn2: TcxGridDBColumn;
    OpenDialog1: TSaveDialog;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    MemInfoPerusahaanjudul: TStringField;
    MemInfoPerusahaanperiode: TStringField;
    MemInfoPerusahaanprinted_by: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    memMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    memMasterno_nota: TStringField;
    memMasterdt_nota: TDateTimeField;
    memMasterno_bukti: TStringField;
    memMasternama_outlet: TStringField;
    memMasternama_sales: TStringField;
    memMasterdt_jth_tempo: TDateTimeField;
    memMastertotal: TFloatField;
    memMasternet_n_ppn: TFloatField;
    memMasternama_principal: TStringField;
    memMasterperiode: TStringField;
    memMasterpembayaran: TFloatField;
    memMastersisa_pembayaran: TFloatField;
    memMastercurrent: TFloatField;
    memMastertiga_puluh: TFloatField;
    memMasterenam_puluh: TFloatField;
    memMastersembilan_puluh: TFloatField;
    memMasterlebih_sembilan_puluh: TFloatField;
    frxRepMaster: TfrxReport;
    btnExport: TSCButton;
    grd_DBTV_ItemColumn3: TcxGridDBColumn;
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
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    vjns_transaksi, vjns_gudang, vjns_item, namamenu : string;
    vtag : integer;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  LapUmurHutangFrm: TLapUmurHutangFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, cxGridExportLink;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  LapUmurHutangFrm := TLapUmurHutangFrm.Create(Application);
  LapUmurHutangFrm.namamenu := pNamaMenu;
  LapUmurHutangFrm.vtag:= ptag;
  LapUmurHutangFrm.lblHeader.Caption := pNamaMenu;
  LapUmurHutangFrm.ECUSTOMER.Enabled:= False;
  LapUmurHutangFrm.Show;
end;

procedure TLapUmurHutangFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TLapUmurHutangFrm.UpdateView;
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

procedure TLapUmurHutangFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TLapUmurHutangFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TLapUmurHutangFrm.btnOKClick(Sender: TObject);
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

procedure TLapUmurHutangFrm.btnPrintClick(Sender: TObject);
var i, no, row_count: Integer;
     s, dt, dt_format : String;
begin
  if Master.RecordCount=0 then
     Exit;

 DM.L_Perusahaan.Close;
 DM.L_Perusahaan.Open;

 MemInfoPerusahaan.Close;
 MemInfoPerusahaan.Open;
 MemInfoPerusahaan.Append;
 MemInfoPerusahaannama_perusahaan.AsString:= DM.L_Perusahaannama_perusahaan.AsString;
 MemInfoPerusahaanalamat_perusahaan.AsString:= DM.L_Perusahaanaddress.AsString;
 MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.L_Perusahaanphone.AsString;
 MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.L_Perusahaanfax.AsString;
 MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaancity.AsString;
 MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
 MemInfoPerusahaanjudul.AsString:= UpperCase(lblHeader.Caption+' '+DM.UsrPrincipal);
 MemInfoPerusahaanperiode.AsString:= 'Sampai Dengan Periode '+FormatDateTime('dd mmmm yyyy', edtDatePicker2.Date);
 MemInfoPerusahaan.Post;

 memMaster.Close;
 memMaster.Open;
 memMaster.EmptyTable;
 memMaster.LoadFromDataSet(Master, [mtcpoAppend]);

 frxRepMaster.ShowReport;

//  DM.vSysDate.Close;
//  DM.vSysDate.Open;
//  DM.Perusahaan.Close;
//  DM.Perusahaan.Open;
//  kmtInfo.Close;
//  kmtInfo.Open;
//  kmtInfo.Append;
//  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
//  kmtInfoalamat_perusahaan.AsString:= DM.Perusahaanalamat.AsString;
//  kmtInfotelp.AsString:= 'Telp : '+DM.Perusahaantelepon.AsString+', Fax : '+DM.Perusahaanfax.AsString;
//  kmtInfokota_negara.AsString:= DM.Perusahaankota.AsString;
//  kmtInfouser_id.AsString := DM.UserConnect;
//  kmtInfouser_name.AsString := 'Printed by : '+DM.UserConnect;
//  kmtInfoperiode.AsString := 'End Periode : '+FormatDateTime('dd-mmm-yyyy',edtDatePicker2.Date);
//  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
//  kmtInfodt_prepared.AsString := 'DATED : '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
//  kmtInfopnamamenu.AsString := lblHeader.Caption;
//  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
//  kmtInfodt_prepared.AsString := 'DATED : '+FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
//  kmtInfopnamamenu.AsString := UpperCase(lblHeader.Caption);
//  kmtInfofilter.AsString:= 'CUSTOMER : '+DM.L_Rekanannama_rekanan.AsString;
//  kmtInfo.Post;

//  dt := FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
//  dt_format:= 'dd/mm/yyyy';
//  if RBSemua.Checked then begin
//     try
//      qryPrint.Close;
//      qryPrint.SQL.Clear;
//      qryPrint.Params.Clear;
//      s:= 'select a.kd_rekanan, b.nama_rekanan, a.no_doc, a.no_bukti as no_invoice, a.dt_due, a.total_in';
//      s:= s+', ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) as periode,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))<= interval '+QuotedStr('0 days')+' then a.total_in end,0) as current,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('1 days')+' and interval '+QuotedStr('30 days')+' then a.total_in end,0) as tiga_puluh,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('31 days')+' and interval '+QuotedStr('60 days')+' then a.total_in end,0) as enam_puluh,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('61 days')+' and interval '+QuotedStr('90 days')+' then a.total_in end,0) as sembilan_puluh,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))> interval '+QuotedStr('90 days')+' then a.total_in end,0) as lebih_sembilan_puluh';
//      s:= s+' from accfin.vlook_ar a, master.mrekanan b';
//      s:= s+' where  a.kd_rekanan=b.kd_rekanan and b.jenis='+QuotedStr('CUSTOMER');
//      qryPrint.SQL.Add(s);
//      qryPrint.Open;
//
//      frxARAging.ShowReport;
//     except
//        on E: Exception do begin
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//        end
//     end;
//  end;
//  if RBLokasi.Checked then begin
//     try
//      qryPrint.Close;
//      qryPrint.SQL.Clear;
//      qryPrint.Params.Clear;
//      s:= 'select a.kd_rekanan, b.nama_rekanan, a.no_doc, a.no_bukti as no_invoice, a.dt_due, a.total_in';
//      s:= s+', ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) as periode,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))<= interval '+QuotedStr('0 days')+' then a.total_in end,0) as current,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('1 days')+' and interval '+QuotedStr('30 days')+' then a.total_in end,0) as tiga_puluh,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('31 days')+' and interval '+QuotedStr('60 days')+' then a.total_in end,0) as enam_puluh,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due)) between interval '+QuotedStr('61 days')+' and interval '+QuotedStr('90 days')+' then a.total_in end,0) as sembilan_puluh,';
//      s:= s+' coalesce(case when ((to_timestamp('+QuotedStr(dt)+','+QuotedStr(dt_format)+')-a.dt_due))> interval '+QuotedStr('90 days')+' then a.total_in end,0) as lebih_sembilan_puluh';
//      s:= s+' from accfin.vlook_ar a, master.mrekanan b';
//      s:= s+' where  a.kd_rekanan=b.kd_rekanan and b.jenis='+QuotedStr('CUSTOMER')+' and a.kd_rekanan='+QuotedStr(ECUSTOMER.Text);
//      qryPrint.SQL.Add(s);
//      qryPrint.Open;
//      frxRepARAging.ShowReport;
//     except
//        on E: Exception do begin
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//        end
//     end;
//  end;
//
//  if RBSummary.Checked then begin
//     try
//      qrySUM.Close;
//      qrySUM.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date);
//      qrySUM.Open;
//      frxSUM.ShowReport;
//     except
//        on E: Exception do begin
//          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//        end
//     end;
//  end;


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

procedure TLapUmurHutangFrm.RBSemuaClick(Sender: TObject);
begin
    If RBSemua.Checked Then Begin
       ECUSTOMER.Enabled := Not RBSemua.Checked;
    End;
end;

procedure TLapUmurHutangFrm.RBLokasiClick(Sender: TObject);
begin
  If RBLokasi.Checked Then Begin
     ECUSTOMER.Enabled := RBLokasi.Checked;
  End;
end;

procedure TLapUmurHutangFrm.ECUSTOMERPropertiesButtonClick(Sender: TObject;
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

procedure TLapUmurHutangFrm.RBSummaryClick(Sender: TObject);
begin
  If RBSummary.Checked Then Begin
     ECUSTOMER.Enabled := not RBSummary.Checked;
  End;
end;

procedure TLapUmurHutangFrm.btnExportClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin
    if Master.RecordCount=0 then
       Exit;
    if OpenDialog1.Execute then begin
       appPath:= ExtractFilePath(OpenDialog1.InitialDir);
       ttl:= OpenDialog1.FileName;
       if (Master.Active) and (Master.RecordCount>0) then begin
         ExportGridToExcel(appPath+ttl,grdItem,true,true,true,'xls');
       end;
    end;
end;

end.

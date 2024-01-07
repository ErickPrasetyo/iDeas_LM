unit U_SettingBayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, wwfltdlg,
  wwDialog, wwidlg, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxClass, frxDBSet, frxExportRTF, frxExportPDF, frxExportXLS,
  kbmMemTable, AdvToolBar, AdvToolBarStylers, ActnList,
  cxGridBandedTableView, cxGridTableView, AdvPanel, AdvAppStyler, StdCtrls,
  wwdbdatetimepicker, SCControl, SCStdControls, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, RzPanel, AdvGlowButton,
  AdvReflectionImage, ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TSettingBayarFrm = class(TForm)
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actSave: TAction;
    actCancel: TAction;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    ATBOS: TAdvToolBarOfficeStyler;
    kmtCheckDetail: TkbmMemTable;
    kmtCheckDetailid_item: TStringField;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBMaster: TfrxDBDataset;
    frxDBDetail: TfrxDBDataset;
    MemMaster: TkbmMemTable;
    MemMasterremarks: TStringField;
    MemMasterprepared_name: TStringField;
    MemMasterreviewed_name: TStringField;
    MemMasterapproved_name: TStringField;
    MemMasterdt_prepared: TStringField;
    MemMasterproject: TStringField;
    MemMasterexpedition: TStringField;
    MemMastermodel: TStringField;
    MemMasterdistribusi_document: TStringField;
    MemMasterprinted_by: TStringField;
    MemMasterpo_number: TStringField;
    MemMastervendor_name: TStringField;
    MemMasterreviewed_name_2: TStringField;
    MemMasterapproved_name_2: TStringField;
    MemMasterdt_reviewed_1: TStringField;
    MemMasterdt_reviewed_2: TStringField;
    MemMasterdt_approved_1: TStringField;
    MemMasterdt_approved_2: TStringField;
    MemMasterposted: TStringField;
    MemDetail: TkbmMemTable;
    MemDetailid_item: TStringField;
    MemDetailid_unit: TStringField;
    MemDetaildescription: TStringField;
    MemDetailqty: TFloatField;
    MemDetailno: TStringField;
    MemDetailunit_price: TFloatField;
    MemDetaildisc: TFloatField;
    MemDetailsub_total: TFloatField;
    MemMasterdt_invoice: TStringField;
    MemMasterir_number: TStringField;
    MemMasterinvoice_no: TStringField;
    MemMasterdt_due: TStringField;
    MemMasterkurs: TStringField;
    MemMasterid_curr: TStringField;
    MemMastervat_str: TStringField;
    actPrint: TAction;
    MemMastervat_num: TStringField;
    MemMastersub_total: TStringField;
    MemMasterdiscount: TStringField;
    MemMastertotal: TStringField;
    MemMastervendor_phone: TStringField;
    MemMasterterbilang: TStringField;
    btnClose: TSCButton;
    btnRefresh: TSCButton;
    kmtMaster: TkbmMemTable;
    kmtMasterpo_number: TStringField;
    kmtMasterrev_number: TStringField;
    kmtMasterpo_date: TDateTimeField;
    kmtMasterbuyer: TStringField;
    kmtMasterdelivery_terms: TStringField;
    kmtMasterpr_reff: TStringField;
    kmtMasterpayment_terms: TStringField;
    kmtMastercurrency: TStringField;
    kmtMastersupplier_name: TStringField;
    kmtMastersupplier_address: TStringField;
    kmtMastersupplier_contact: TStringField;
    kmtMasterquotation_reff: TStringField;
    kmtMasterdt_quotation: TDateTimeField;
    kmtMasterdelivery_time_str: TStringField;
    kmtMasterapproved_name: TStringField;
    kmtMasterapproved_name_2: TStringField;
    kmtMasterapproved_jabatan: TStringField;
    kmtMasterdelivery_place: TStringField;
    kmtMasterremarks: TStringField;
    kmtMastersub_total: TStringField;
    kmtMastervat_str: TStringField;
    kmtMastertotal: TStringField;
    kmtMasterLdescriptions: TStringField;
    kmtMasterLpropinsi: TStringField;
    kmtMasterLalamat: TStringField;
    kmtMasterLphone: TStringField;
    kmtMasterLfax: TStringField;
    kmtMasterLattn: TStringField;
    kmtMasterdt_delivery: TStringField;
    kmtMasterprepared_name: TStringField;
    kmtMasterreviewed_name: TStringField;
    kmtMasterreviewed_name_2: TStringField;
    kmtMasterdt_prepared: TStringField;
    kmtMasterdt_reviewed_1: TStringField;
    kmtMasterdt_reviewed_2: TStringField;
    kmtMasterdt_approved_1: TStringField;
    kmtMasterdt_approved_2: TStringField;
    kmtMastersupplier_phone: TStringField;
    kmtMastersupplier_fax: TStringField;
    kmtMasterterbilang: TStringField;
    kmtMasterdt_po: TStringField;
    kmtMastersupplier_city: TStringField;
    kmtMastercap_unit_price: TStringField;
    kmtMastercap_ammount: TStringField;
    kmtMasterdelivery_date: TStringField;
    kmtMastercap_vat: TStringField;
    kmtMasterprinted_by: TStringField;
    kmtMasterdistribusi_document: TStringField;
    kmtMasterfsubtotal: TFloatField;
    kmtMasterftotal: TFloatField;
    kmtMasterfvat_num: TFloatField;
    kmtDetail: TkbmMemTable;
    kmtDetailno_urut: TStringField;
    kmtDetailqty: TFloatField;
    kmtDetailkd_satuan: TStringField;
    kmtDetaildescriptions: TStringField;
    kmtDetaildelivery_date: TDateTimeField;
    kmtDetailunit_price: TFloatField;
    kmtDetailextended: TFloatField;
    kmtDetaildisc: TFloatField;
    frxDBkmtMaster: TfrxDBDataset;
    frxDBkmtDetail: TfrxDBDataset;
    frAP_A5: TfrxReport;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaanjudul: TStringField;
    frxRepMaster: TfrxReport;
    MemInfoPerusahaanperiode: TStringField;
    frxDBRekapNota: TfrxDBDataset;
    MemInfoPerusahaanprinted_by: TStringField;
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    MemDetailqty_karton: TFloatField;
    MemDetailqty_lusin: TFloatField;
    MemDetailhrg_lusin: TFloatField;
    qBrowse: TZQuery;
    qBrowseid_nota: TLargeintField;
    qBrowseno_nota: TStringField;
    qBrowsedt_nota: TDateTimeField;
    qBrowseusr_upd: TStringField;
    qBrowseispost: TStringField;
    qBrowseiscancel: TStringField;
    qBrowsenama_rekanan: TStringField;
    qBrowsecara_bayar: TStringField;
    qBrowsedt_jth_tempo: TDateTimeField;
    qBrowseno_bukti: TStringField;
    dsqBrowse: TDataSource;
    MemMasterpromo_uang: TFloatField;
    MemMasterpromo_barang: TFloatField;
    qBrowsepromo_barang: TFloatField;
    qBrowsepromo_uang: TFloatField;
    qBrowsetotal: TFloatField;
    qBrowsedisc_rp: TFloatField;
    MemMasterevoucer: TFloatField;
    MemMasterno_evocer: TStringField;
    MemMastersisa_tagihan: TFloatField;
    frxPajak: TfrxReport;
    MemDetailid_kurs_idr: TStringField;
    MemMastervendor_city_pajak: TStringField;
    MemMastervendor_phone_pajak: TStringField;
    MemMastervendor_name_pajak: TStringField;
    MemMasterjabatan: TStringField;
    MemMasterkurs_pajak: TStringField;
    MemMasterdt_pengukuhan: TStringField;
    MemMasterv_npwp_15: TStringField;
    MemMasterv_npwp_14: TStringField;
    MemMasterv_npwp_13: TStringField;
    MemMasterv_npwp_12: TStringField;
    MemMasterv_npwp_11: TStringField;
    MemMasterv_npwp_10: TStringField;
    MemMasterv_npwp_9: TStringField;
    MemMasterv_npwp_8: TStringField;
    MemMasterv_npwp_7: TStringField;
    MemMasterv_npwp_6: TStringField;
    MemMasterv_npwp_5: TStringField;
    MemMasterv_npwp_4: TStringField;
    MemMasterv_npwp_3: TStringField;
    MemMasterv_npwp_2: TStringField;
    MemMasterv_npwp_1: TStringField;
    MemMasterp_npwp_15: TStringField;
    MemMasterp_npwp_14: TStringField;
    MemMasterp_npwp_13: TStringField;
    MemMasterp_npwp_12: TStringField;
    MemMasterp_npwp_11: TStringField;
    MemMasterp_npwp_10: TStringField;
    MemMasterp_npwp_9: TStringField;
    MemMasterp_npwp_8: TStringField;
    MemMasterp_npwp_7: TStringField;
    MemMasterp_npwp_6: TStringField;
    MemMasterp_npwp_5: TStringField;
    MemMasterp_npwp_4: TStringField;
    MemMasterp_npwp_3: TStringField;
    MemMasterp_nwpw_2: TStringField;
    MemMasterp_npwp_1: TStringField;
    MemMasteralamat_perusahaan: TStringField;
    MemMasternama_perusahaan: TStringField;
    MemMasterkota_perusahaan: TStringField;
    MemMasterdated: TStringField;
    MemMasterreq_number: TStringField;
    MemMasteralamat_pajak_perusahaan: TStringField;
    qBrowsenama_salesman: TStringField;
    qBrowseid_division: TStringField;
    qBrowsesub_total: TFloatField;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvMasterid_purchase_receive: TcxGridDBColumn;
    grddbtvMasterreq_number: TcxGridDBColumn;
    grddbtvMasterdt_req: TcxGridDBColumn;
    grddbtvMasterrequester: TcxGridDBColumn;
    grddbtvMasterid_division: TcxGridDBColumn;
    grddbtvMasternama_salesman: TcxGridDBColumn;
    grddbtvMastercara_bayar: TcxGridDBColumn;
    grddbtvMasterno_bukti: TcxGridDBColumn;
    grddbtvMasterpromo_barang: TcxGridDBColumn;
    grddbtvMasterpromo_uang: TcxGridDBColumn;
    grddbtvMasterdisc_rp: TcxGridDBColumn;
    grddbtvMastersub_total: TcxGridDBColumn;
    grddbtvMastertotal: TcxGridDBColumn;
    grddbtvMasterusr_upd: TcxGridDBColumn;
    grddbtvMasterispost: TcxGridDBColumn;
    grddbtvMasteriscancel: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    SCPanel3: TSCPanel;
    Label6: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    PopPayment: TPopupMenu;
    UNAI1: TMenuItem;
    KREDIT1: TMenuItem;
    qExec: TZQuery;
    rgAkumulasi: TRzGroupBox;
    LblTunai: TcxLabel;
    rgKredit: TRzGroupBox;
    LblKredit: TcxLabel;
    qTunai: TZQuery;
    qTunaitunai: TFloatField;
    qBrowsekd_rekanan: TStringField;
    grddbtvMasterkd_rekanan: TcxGridDBColumn;
    actCari: TAction;
    LookBrowse: TwwLookupDialog;
    cxStyle5: TcxStyle;
    FilterBrowse: TwwFilterDialog;
    btnCari: TSCButton;
    btnFilter: TSCButton;
    qBrowseretur: TFloatField;
    grddbtvMasterretur: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCloseExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure UNAI1Click(Sender: TObject);
    procedure KREDIT1Click(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
  private
    DBMode: TDBMode;
    { Private declarations }
    vjns_item, vjns_transaksi, vjudul, vlook, vrek_kredit, vrek_debet : string;
    vtag : integer;
    vSubTotal : Double;
    procedure UpdateView;
    procedure setTunai(cara: String; vID : Int64);
    procedure countTunai;
    function hitTunai(vCara:String):String;
    function SqlText(sqlstr: string): String;

  public
    { Public declarations }
  end;

  procedure ShowForm(pNamaMenu:String; ptransaksi : String; ptag : integer);

var
  SettingBayarFrm: TSettingBayarFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu: String; ptransaksi: String; ptag: integer);
begin
  try
    SettingBayarFrm := TSettingBayarFrm.Create(Application);
    with SettingBayarFrm do begin
      vjns_transaksi:= ptransaksi;
      vtag:= ptag;
      DBMode:= dmNone;
      try
        qBrowse.Close;
        qBrowse.Open;
        DBMode:= dmBrowse;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;
      UpdateView;
      vjudul:= pNamaMenu;
      lblHeader1.Caption:= UpperCase(pNamaMenu);
      Caption:= pNamaMenu;
      Show;
    end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

function TSettingBayarFrm.SqlText(sqlstr: string): String;
var s : String;
begin

  s:= 'SELECT a.id_nota, a.no_nota, a.dt_nota, a.usr_upd, a.ispost, a.iscancel, b.nama_rekanan, ';
  s:= s+' a.cara_bayar, a.dt_jth_tempo, a.no_bukti, a.promo_barang, a.promo_uang, (SELECT transaksi.fn_get_total_retur(a.no_nota)) as retur, ';
  s:= s+' a.total, a.disc_rp, c.description as nama_salesman, a.id_division, a.sub_total, a.kd_rekanan ';
  s:= s+' FROM transaksi.nota a';
  s:= s+' LEFT JOIN master.mrekanan b ON b.kd_rekanan=a.kd_rekanan';
  s:= s+' LEFT JOIN master.mdivision c ON c.id_division=a.id_division';
  s:= s+' WHERE a.isdelete='+QuotedStr('0')+' and a.id_trans='+QuotedStr(vjns_transaksi);
  s:= s+' AND a.dt_nota between to_timestamp('+QuotedStr(FormatDateTime('dd/mm/yyyy',dtpStart.date));
  s:= s+', '+ QuotedStr('dd/mm/yyyy')+') and to_timestamp('+QuotedStr(FormatDateTime('dd/mm/yyyy',dtpEnd.Date));
  s:= s+', '+QuotedStr('dd/mm/yyyy')+') +  interval '+QuotedStr('23 hours 59 min');
  s:= s+sqlstr;

  Result:= s;
end;

procedure TSettingBayarFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    btnFirst.Enabled:= False;
    btnPrior.Enabled:= False;
    btnNext.Enabled:= False;
    btnLast.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnCari.Visible:= True;
    btnCari.Enabled:= False;
    btnFilter.Visible:= True;
    btnFilter.Enabled:= False;

  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := qBrowse.RecordCount=0;

    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnRefresh.Visible := isBrowse;
    btnCari.Visible := isBrowse;
    btnCari.Enabled := NOT isEmpty;
    btnFilter.Visible := isBrowse;
    btnFilter.Enabled := NOT isEmpty;
  end;
end;

procedure TSettingBayarFrm.countTunai;
begin
   LblTunai.Caption:= hitTunai('TUNAI');
   LblKredit.Caption:= hitTunai('KREDIT');
end;

function TSettingBayarFrm.hitTunai(vCara:String):String;
begin
  Result:= '';
  try
    qTunai.Close;
    qTunai.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
    qTunai.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);
    qTunai.Params.ParamByName('pid_trans').AsString:= vjns_transaksi;
    qTunai.Params.ParamByName('pcara').AsString:= vCara;
    qTunai.Open;
    Result:=  FormatFloat('0.0,0',qTunaitunai.AsFloat);
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TSettingBayarFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TSettingBayarFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TSettingBayarFrm.actRefreshExecute(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TSettingBayarFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TSettingBayarFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TSettingBayarFrm.btnOKClick(Sender: TObject);
begin
   DBMode:= dmNone;
   try
      DM.PrepareQuery(qBrowse);
      DM.OpenQuery(qBrowse,SqlText(' order by a.id_nota'));
      countTunai;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
   end;
   DBMode:= dmBrowse;
   UpdateView;
end;

procedure TSettingBayarFrm.UNAI1Click(Sender: TObject);

begin
  if qBrowseispost.AsString='1' then begin
     DM.MyMsg(mmInformation,'Faktur sudah di-Posting !','Untuk merubah Un-Posting terlebih dahulu');
     Exit;
  end;

  if qBrowseiscancel.AsString='1' then begin
     DM.MyMsg(mmInformation,'Faktur sudah di-Batalkan !','');
     Exit;
  end;


  setTunai('TUNAI', qBrowseid_nota.AsLargeInt);
  countTunai;
end;

procedure TSettingBayarFrm.KREDIT1Click(Sender: TObject);
begin
  if qBrowseispost.AsString='1' then begin
     DM.MyMsg(mmInformation,'Faktur sudah di-Posting !','Untuk merubah Un-Posting terlebih dahulu');
     Exit;
  end;

  if qBrowseiscancel.AsString='1' then begin
     DM.MyMsg(mmInformation,'Faktur sudah di-Batalkan !','');
     Exit;
  end;

  setTunai('KREDIT', qBrowseid_nota.AsLargeInt);
  countTunai;
end;

procedure TSettingBayarFrm.setTunai(cara: String; vID: Int64);
begin
   try
     qBrowse.DisableControls;
     try
        qExec.Close;
        qExec.Params.ParamByName('pcara').AsString:= cara;
        qExec.Params.ParamByName('pid_nota').Value:= vID;
        qExec.ExecSQL;
         btnOKClick(nil);
         qBrowse.Locate('id_nota',vID,[loPartialKey]);
     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end;
     end;
   finally
       qBrowse.EnableControls;
   end;
end;

procedure TSettingBayarFrm.btnCariClick(Sender: TObject);
begin
   LookBrowse.Execute;
end;

procedure TSettingBayarFrm.btnFilterClick(Sender: TObject);
begin
  FilterBrowse.Execute;
end;

end.

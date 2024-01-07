unit U_ImportPembelianMayora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, SCStdControls, cxNavigator,
  cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  ComCtrls, SCControl, cxTextEdit, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit, LMDCustomBrowseEdit,
  LMDBrowseEdit, StdCtrls, wwdbdatetimepicker, ExtCtrls, AdvPanel,
  FileCtrl, RzFilSys, StrUtils, SdfData, kbmMemTable, Wwdatsrc,
  cxGridBandedTableView, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TTfrmImportFakturPembelianMayora = class(TForm)
    pnlTop: TAdvPanel;
    lblHeader: TLabel;
    pnlMenu: TPanel;
    lbltgl: TLabel;
    lblLokasifile: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    dtpStart: TwwDBDateTimePicker;
    edtlocation: TLMDBrowseEdit;
    edtDelimiter: TcxTextEdit;
    btnFetchData: TSCButton;
    lbl3: TLabel;
    cxpgcntrl: TcxPageControl;
    pnlBottom: TPanel;
    statbar: TStatusBar;
    cxtbshtInvoice: TcxTabSheet;
    cxtbshtProduk: TcxTabSheet;
    cxtbshtDetail: TcxTabSheet;
    cxdbnvgtr1: TcxDBNavigator;
    pnl1: TPanel;
    pgrsProses: TSCProgress;
    pgrsTotal: TSCProgress;
    btnTutup: TSCButton;
    btnInvoice: TSCButton;
    btnDetail: TSCButton;
    lblStatus: TLabel;
    lstFileImport: TRzFileListBox;
    sdfdtstOdsImport: TSdfDataSet;
    cxgrdInvoice: TcxGrid;
    cxGridDBTV_invoice: TcxGridDBTableView;
    cxgrdbclmnParamGridDBTV_invoiceParam: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoiceNo_dokumen: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoice_tgl_kirim: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoiceTipe: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_InvoiceTransaksi: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoicetgl_dokumen: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoice_no_Mobil: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoiceBaris: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoiceSuplier: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoiceNo_CMO: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoiceGudang: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_InvoiceNo_DN: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTV_invoiceNo_Faktur: TcxGridDBColumn;
    cxgrdlInvoice: TcxGridLevel;
    cxgrdbclmnParamGridDBTV_invoiceNo_srt_Jalan: TcxGridDBColumn;
    cxdbnvgtr2: TcxDBNavigator;
    cxgrdInvoiceProduk: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxgrdbclmnParamGridproduk_Param: TcxGridDBColumn;
    cxgrdbclmnParamGridDBProduk_No_Dokumen: TcxGridDBColumn;
    cxgrdbclmnParamGridDBProduk_PCode: TcxGridDBColumn;
    cxgrdbclmnParamGridDB_produk_Qty_Produk: TcxGridDBColumn;
    cxgrdbclmnParamGrid_produk_Harga: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxdbnvgtr3: TcxDBNavigator;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxgrdbclmnParamGridDBNo_Dokumen: TcxGridDBColumn;
    cxgrdbclmnParamGridDBTgl_Dokumen: TcxGridDBColumn;
    cxgrdbclmnParamGridDBNo_Srt_Jalan: TcxGridDBColumn;
    cxgrdbclmnParamTgl_kirim: TcxGridDBColumn;
    cxgrdbclmnParamGridDBNo_Mobil: TcxGridDBColumn;
    cxgrdbclmnParamGridDBSuplier: TcxGridDBColumn;
    cxgrdbclmnParamGridDBNo_CMO: TcxGridDBColumn;
    cxgrdbclmnParamGridDBUnknown1: TcxGridDBColumn;
    cxgrdbclmnParamGridDBUnknown2: TcxGridDBColumn;
    cxgrdbclmnParamGridDBPcode: TcxGridDBColumn;
    cxgrdbclmnParamGridDBNama_Produk: TcxGridDBColumn;
    cxgrdbclmnParamGridDBUnknown3: TcxGridDBColumn;
    cxgrdbclmnParamGridDBQty_Produk: TcxGridDBColumn;
    cxgrdbclmnParamGridDBUnknown4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    kbmtblInvoice: TkbmMemTable;
    kbmtblProduk: TkbmMemTable;
    kbmtblDetailInvoice: TkbmMemTable;
    strngfld1: TStringField;
    strngfld2: TStringField;
    strngfld3: TStringField;
    strngfld4: TStringField;
    strngfld5: TStringField;
    strngfld6: TStringField;
    strngfld7: TStringField;
    strngfld8: TStringField;
    strngfld9: TStringField;
    strngfld10: TStringField;
    strngfld11: TStringField;
    strngfld12: TStringField;
    strngfld13: TStringField;
    strngfld14: TStringField;
    strngfld15: TStringField;
    strngfldInvoiceParam: TStringField;
    strngfldInvoiceNo_Dokumen: TStringField;
    strngfldInvoiceTanggal_Kirim: TStringField;
    strngfldInvoiceTipe: TStringField;
    strngfldInvoiceTransaksi: TStringField;
    strngfldInvoiceTanggal_Dokumen: TStringField;
    strngfldInvoiceNo_Surat_Jalan: TStringField;
    strngfldInvoiceNo_Mobil: TStringField;
    strngfldInvoiceBaris: TStringField;
    strngfldInvoiceSuplier: TStringField;
    strngfldInvoiceNo_CMO: TStringField;
    strngfldInvoiceGudang: TStringField;
    strngfldInvoiceNo_DN: TStringField;
    strngfldInvoiceNo_Faktur: TStringField;
    strngfldProdukParam: TStringField;
    strngfldProdukNo_Dokumen: TStringField;
    strngfldProdukPCode: TStringField;
    strngfldProdukNama_Produk: TStringField;
    strngfldProdukQty_Produk: TStringField;
    strngfldProdukHarga: TStringField;
    dsInvoice: TwwDataSource;
    dsProduk: TwwDataSource;
    dsDetailInvoice: TwwDataSource;
    cxgrdbclmnParamGridDBUnknown5: TcxGridDBColumn;
    cxstylrptrSR: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxgrdtbl1: TcxGridTableViewStyleSheet;
    cxgrdbndtblvwstylsht1: TcxGridBandedTableViewStyleSheet;
    sdfdtstImportDetailInv: TSdfDataSet;
    cxgrdbclmnParamGridDBProdukNama_Produk: TcxGridDBColumn;
    zqryInvoice: TZQuery;
    zqryProduk: TZQuery;
    zqrydetail: TZQuery;
    intgrfldProdukid: TIntegerField;
    mfldProdukPARAM: TMemoField;
    lrgntfldProdukNo_Dokumen: TLargeintField;
    lrgntfldProdukPcode: TLargeintField;
    mfldProdukNama_Produk: TMemoField;
    lrgntfldProdukHarga: TLargeintField;
    lrgntfldProdukQty_Produk: TLargeintField;
    lrgntfldzqrydetailid: TLargeintField;
    lrgntfld_srt_jalan: TLargeintField;
    dtfld_srt_jalan: TDateField;
    mfldzqrydetailnopol: TMemoField;
    lrgntfld_distributor: TLargeintField;
    mfld_cmo: TMemoField;
    lrgntfldzqrydetailpcode: TLargeintField;
    mfld_produk: TMemoField;
    lrgntfld_terkecil: TLargeintField;
    lrgntfld_pmbelian_terbesar: TLargeintField;
    lrgntfld_harga: TLargeintField;
    mfldzqrydetailstatus: TMemoField;
    mfldInvoiceparam: TMemoField;
    lrgntfldInvoiceNoDokumen: TLargeintField;
    dtfldInvoiceTanggal_Kirim: TDateField;
    mfldInvoiceTransaksi: TMemoField;
    dtfldInvoiceTanggal_Dokumen: TDateField;
    lrgntfldInvoiceNo_Surat_Jalan: TLargeintField;
    mfldInvoiceNo_Mobil: TMemoField;
    lrgntfldInvoiceBaris: TLargeintField;
    lrgntfldInvoiceSuplier: TLargeintField;
    mfldInvoiceNo_CMO: TMemoField;
    lrgntfldInvoiceGudang: TLargeintField;
    mfldInvoiceNo_DN: TMemoField;
    mfldInvoiceNoFaktur: TMemoField;
    lrgntfldInvoiceTipe: TLargeintField;
    intgrfldInvoiceid: TIntegerField;
    dtfld_penerimaan: TDateField;
    zqrycheck: TZQuery;
    zqrygetponumber: TZQuery;
    zqryPO: TZQuery;
    lrgntfldPOid_po: TLargeintField;
    strngfldPOno_po: TStringField;
    dtmfldPOdt_po: TDateTimeField;
    strngfldPOno_bukti: TStringField;
    dtmfldPOdt_ins: TDateTimeField;
    dtmfldPOdt_upd: TDateTimeField;
    strngfldPOusr_ins: TStringField;
    strngfldPOusr_upd: TStringField;
    strngfldPOispost: TStringField;
    strngfldPOiscancel: TStringField;
    strngfldPOisdelete: TStringField;
    fltfldPOtotal: TFloatField;
    strngfldPOkd_rekanan: TStringField;
    strngfldPOid_trans: TStringField;
    strngfldPOcara_bayar: TStringField;
    dtmfldPOdt_jth_tempo: TDateTimeField;
    strngfldPOdiskripsi: TStringField;
    fltfldPOsub_total: TFloatField;
    fltfldPOdisc_rp: TFloatField;
    fltfldPOnet_n_ppn: TFloatField;
    strngfldPOiskirim: TStringField;
    strngfldPOislunas: TStringField;
    dtmfldPOdt_kirim: TDateTimeField;
    strngfldPOid_curr: TStringField;
    fltfldPOkurs: TFloatField;
    strngfldPOvat_str: TStringField;
    fltfldPOvat_num: TFloatField;
    intgrfldPOn_hari: TIntegerField;
    strngfldPOstatus_auth: TStringField;
    strngfldPOprepared_by: TStringField;
    dtmfldPOdt_prepared: TDateTimeField;
    strngfldPOapproved_by: TStringField;
    dtmfldPOdt_approved: TDateTimeField;
    strngfldPOissubmit: TStringField;
    strngfldPOremarks: TStringField;
    strngfldPOisclosed: TStringField;
    strngfldPOst_approved_1: TStringField;
    strngfld_gen_po_number: TStringField;
    lrgntfldProdukqty_produk_lusin: TLargeintField;
    lrgntfldProdukqty_produk_biji: TLargeintField;
    lrgntfld_produk_lusin: TLargeintField;
    lrgntfld_produk_biji: TLargeintField;
    mfld_penerimaan: TMemoField;
    zqryNota: TZQuery;
    zqryNotaDetail: TZQuery;
    lrgntfldNotaid_nota: TLargeintField;
    strngfldNotano_nota: TStringField;
    dtmfldNotadt_nota: TDateTimeField;
    strngfldNotano_bukti: TStringField;
    dtmfldNotadt_ins: TDateTimeField;
    dtmfldNotadt_upd: TDateTimeField;
    strngfldNotausr_ins: TStringField;
    strngfldNotausr_upd: TStringField;
    strngfldNotaispost: TStringField;
    strngfldNotaiscancel: TStringField;
    strngfldNotaisdelete: TStringField;
    fltfldNotatotal: TFloatField;
    strngfldNotakd_rekanan: TStringField;
    strngfldNotaid_trans: TStringField;
    strngfldNotaid_rek_gl: TStringField;
    strngfldNotaid_division: TStringField;
    strngfldNotacara_bayar: TStringField;
    dtmfldNotadt_jth_tempo: TDateTimeField;
    strngfldNotadiskripsi: TStringField;
    fltfldNotasub_total: TFloatField;
    fltfldNotaclaim: TFloatField;
    fltfldNotadisc_rp: TFloatField;
    fltfldNotapromo_uang: TFloatField;
    fltfldNotapromo_barang: TFloatField;
    fltfldNotanet_n_ppn: TFloatField;
    strngfldNotaiskirim: TStringField;
    strngfldNotaislunas: TStringField;
    fltfldNotaretur: TFloatField;
    strngfldNotaishpp: TStringField;
    dtmfldNotadt_lunas: TDateTimeField;
    dtmfldNotadt_kirim: TDateTimeField;
    strngfldNotaisok: TStringField;
    dtmfldNotadt_posting: TDateTimeField;
    strngfldNotanota_diretur: TStringField;
    strngfldNotaid_curr: TStringField;
    fltfldNotakurs: TFloatField;
    strngfldNotavat_str: TStringField;
    fltfldNotavat_num: TFloatField;
    strngfldNotakd_del_place: TStringField;
    strngfldNotano_rekap: TStringField;
    intgrfldNotan_hari: TIntegerField;
    fltfldNotaevocer: TFloatField;
    strngfldNotano_faktur_pajak: TStringField;
    strngfldNotano_evocer: TStringField;
    lrgntfldNotaid_import: TLargeintField;
    strngfldNotapromo_id: TStringField;
    fltfldNotamvocer: TFloatField;
    strngfldNotano_mvocer: TStringField;
    fltfldNotadisc_psn: TFloatField;
    lrgntfldNotaDetailid_nota_detail: TLargeintField;
    lrgntfldNotaDetailid_nota: TLargeintField;
    intgrfldNotaDetailnomor: TIntegerField;
    strngfldNotaDetailkd_item: TStringField;
    strngfldNotaDetailid_rek_gl: TStringField;
    fltfldNotaDetaildisc_rp: TFloatField;
    fltfldNotaDetaildisc_psn: TFloatField;
    fltfldNotaDetailhrg_jual_karton: TFloatField;
    fltfldNotaDetailhrg_jual_lusin: TFloatField;
    fltfldNotaDetailhrg: TFloatField;
    fltfldNotaDetailqty_karton: TFloatField;
    fltfldNotaDetailqty_lusin: TFloatField;
    fltfldNotaDetailqty_biji: TFloatField;
    fltfldNotaDetailqty_total_biji: TFloatField;
    strngfldNotaDetaildiskripsi: TStringField;
    fltfldNotaDetailhrg_beli_karton: TFloatField;
    fltfldNotaDetailbiji_per_karton: TFloatField;
    strngfldNotaDetailispromo: TStringField;
    strngfldNotaDetailstatus: TStringField;
    fltfldNotaDetaildisc_psn_non_promo: TFloatField;
    zqrygetNotaId: TZQuery;
    zqrygetNotaDetailId: TZQuery;
    lrgntfldNotaIdnextval: TLargeintField;
    lrgntfldNotaDetailIdnextval: TLargeintField;
    zqrytemp: TZQuery;
    zqryMasterItem: TZQuery;
    zqryMasterItemBku: TZQuery;
    strngfldMasterItemBkukd_item: TStringField;
    strngfldMasterItemBkunama_item: TStringField;
    fltfldMasterItemBkubiji_per_karton: TFloatField;
    fltfldMasterItemBkuhrg_beli_karton: TFloatField;
    fltfldMasterItemBkuhrg_jual_karton: TFloatField;
    fltfldMasterItemBkuhrg_jual_lusin: TFloatField;
    fltfldMasterItemBkuhrg_jual_biji: TFloatField;
    strngfldMasterItemkd_item: TStringField;
    strngfldMasterItemkd_parent: TStringField;
    intgrfldMasterItemlvl: TIntegerField;
    strngfldMasterItemisdetail: TStringField;
    strngfldMasterItemnama_item: TStringField;
    fltfldMasterItemhrg_jual_karton: TFloatField;
    fltfldMasterItemhrg_jual_lusin: TFloatField;
    fltfldMasterItemhrg_beli_karton: TFloatField;
    fltfldMasterItembiji_per_karton: TFloatField;
    fltfldMasterItemhpp: TFloatField;
    strngfldMasterItemusr_ins: TStringField;
    strngfldMasterItemusr_upd: TStringField;
    dtmfldMasterItemdt_ins: TDateTimeField;
    dtmfldMasterItemdt_upd: TDateTimeField;
    strngfldMasterItemisinventory: TStringField;
    strngfldMasterItemisbarang_jadi: TStringField;
    strngfldMasterItemkd_satuan: TStringField;
    strngfldMasterItemkd_satuan_beli: TStringField;
    fltfldMasterItemrasio: TFloatField;
    strngfldMasterItemid_rek_persediaan: TStringField;
    strngfldMasterItemid_rek_hpp: TStringField;
    strngfldMasterItemid_cat_item: TStringField;
    procedure edtlocationChange(Sender: TObject);
    procedure btnFetchDataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTutupClick(Sender: TObject);
  private
    { Private declarations }
    isProsess : boolean;
    vNo : Integer;
    procedure ImportData();
    procedure ImportDataProdukToDB();
    procedure ImportDataDetailInvoiceToDB();
    procedure ImportDataInvoiceToDb();

    procedure ImportDataInvoiceToPoDB();
    procedure ImportDataInvoiceToNotaDB();

    procedure ImportProdukToMasterItem();
  public
    { Public declarations }
  end;

var
  TfrmImportFakturPembelianMayora: TTfrmImportFakturPembelianMayora;

implementation

uses
  U_DM;

{$R *.dfm}

procedure TTfrmImportFakturPembelianMayora.edtlocationChange(
  Sender: TObject);
begin
   lstFileImport.Directory := edtlocation.Text;
  lstFileImport.Update;
end;

procedure TTfrmImportFakturPembelianMayora.btnFetchDataClick(
  Sender: TObject);
  VAR dt1, dtf : String;
begin
  if TSCButton(Sender).Tag = 0 then
  begin
    if edtDelimiter.Text='' then begin
      DM.MyMsg(mmInformation,'Kolom Delimiter masih kosong !!!','Harap isi kolom Delimiter sesuai Format File !!!');
      Exit;
    end;

    if edtLocation.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi File Extract Tidak Ditemukan !!!','Pilih Dahulu Lokasi File Extract !!!');
      Exit;
    end;

    dt1:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
    dtf:= 'dd-mm-yyyy';

    try
      ImportData;
    finally
      kbmtblInvoice.EnableControls;
      kbmtblProduk.EnableControls;
      kbmtblDetailInvoice.EnableControls;
    end;

    //rubah tag,image index, caption button btnfetcdata ke mode import data
    TSCButton(Sender).Tag := 1;
    TSCButton(Sender).ImageIndex := 1;
    TSCButton(Sender).Caption := 'Import';
  end
  else
  begin

    ImportDataInvoiceToDb();
    ImportDataProdukToDB();
    ImportDataDetailInvoiceToDB();

    //rubah tag,image index, caption button btnfetcdata kembali ke mode fetch data
    TSCButton(Sender).Tag := 0;
    TSCButton(Sender).ImageIndex := 0;
    TSCButton(Sender).Caption := 'Fetch Data';
  end;
end;

procedure TTfrmImportFakturPembelianMayora.ImportData;
var
  i : Integer;
  filename : string;
  idDetail, cnt, qw, fdcount, paramcount,pgrstotatlfile, pgrsrecordcount  : Integer;
  continue : Boolean;
begin
  idDetail := 0;     //iddetail = 0 -> invoice; iddetail = 1 -> produk
  paramcount := 0;

  pgrstotatlfile := 0;
  pgrsTotal.Min := 0;
  pgrsTotal.Max := lstFileImport.Items.Count;

  for i:= 0 to lstFileImport.Items.Count-1 do
  begin
    filename := lstFileImport.Items.Strings[i];
    lblStatus.Caption := 'Status : Fetching Data ' + filename;
    pgrsProses.Min := 0;
    pgrsProses.Position := 0;
    pgrsrecordcount := 0;

    if AnsiContainsText(filename, 'detail') then
    begin
      sdfdtstOdsImport.Close;
      sdfdtstOdsImport.Delimiter := edtDelimiter.Text[1];
      sdfdtstOdsImport.FileName := Trim(edtlocation.Text+'\'+filename);
      sdfdtstOdsImport.Open;

      kbmtblInvoice.Close;
      kbmtblInvoice.Open;
      kbmtblInvoice.EmptyTable;

      kbmtblProduk.Close;
      kbmtblProduk.Open;
      kbmtblProduk.EmptyTable;

      cnt := sdfdtstOdsImport.RecordCount;
      pgrsProses.Max := sdfdtstOdsImport.RecordCount;
      sdfdtstOdsImport.First;

      while not sdfdtstOdsImport.Eof do
      begin
        continue := False;
        if (paramcount = 2) and (idDetail = 0) then
          inc(idDetail);

        if idDetail = 0 then
        begin
          kbmtblInvoice.Append;
        end
        else
        begin
          kbmtblProduk.Append;
        end;

        fdcount := sdfdtstOdsImport.Fields.Count;

        for qw := 0 to fdcount-1 do begin
          if AnsiContainsText(sdfdtstOdsImport.Fields[qw].Value, 'param')then
          begin
            inc(paramcount);
            continue := True;
            Break;
          end;

          if idDetail = 0 then
          begin
            kbmtblInvoice.Fields[qw].AsString := Trim(sdfdtstOdsImport.Fields[qw].Value);
          end
          else begin
            if qw > 5 then
              Break;

            kbmtblProduk.Fields[qw].AsString := Trim(sdfdtstOdsImport.Fields[qw].Value);
          end;
        end;

        if (idDetail = 0) and (continue = False) then
          kbmtblInvoice.Post
        else if (idDetail = 1) and (continue = False) then
          kbmtblProduk.Post;

        Application.ProcessMessages;
        sdfdtstOdsImport.Next;

        inc(pgrsrecordcount);
        pgrsProses.Position := pgrsrecordcount;
      end;
    end
    else if AnsiContainsText(filename,'barang') then
    begin
      sdfdtstImportDetailInv.Close;
      sdfdtstImportDetailInv.Delimiter := edtDelimiter.Text[1];
      sdfdtstImportDetailInv.FileName := Trim(edtlocation.Text+'\'+filename);
      sdfdtstImportDetailInv.Open;

      kbmtblDetailInvoice.Close;
      kbmtblDetailInvoice.Open;
      kbmtblDetailInvoice.EmptyTable;

      pgrsProses.Max := sdfdtstImportDetailInv.RecordCount;

      sdfdtstImportDetailInv.First;

      while not sdfdtstImportDetailInv.Eof do
      begin
        kbmtblDetailInvoice.Append;

        for qw:=0 to sdfdtstImportDetailInv.Fields.Count - 1 do
        begin
          kbmtblDetailInvoice.Fields[qw].AsString := Trim(sdfdtstImportDetailInv.Fields[qw].Value);
        end;

        kbmtblDetailInvoice.Post;

        Application.ProcessMessages;
        sdfdtstImportDetailInv.Next;

        inc(pgrsrecordcount);
        pgrsProses.Position := pgrsrecordcount;
      end;
    end;

    inc(pgrstotatlfile);
    pgrsTotal.Position := pgrstotatlfile;
  end;

  lblStatus.Caption := 'Status : Finish Import Data ';
end;

procedure TTfrmImportFakturPembelianMayora.ImportDataInvoiceToDb;
var
  cnt,i : Integer;
  y,m,d,s : string;
begin
  if kbmtblInvoice.RecordCount > 0 then
    isProsess := True;

  pgrsProses.Min := 0;
  pgrsProses.Max := 3;
  pgrsProses.Position := 0;

  lblStatus.Caption := 'Status : Proses Import data Invoice';

  if isProsess then
  begin
    zqryInvoice.Close;
    zqryInvoice.Open;

    cnt := kbmtblInvoice.RecordCount;

    i:= 0;

    pgrsTotal.Min := 0;
    pgrsTotal.Max := cnt;
    pgrsTotal.Position := i;

    kbmtblInvoice.First;

    while not kbmtblInvoice.Eof do
    begin

      if trim(strngfldInvoiceNo_Dokumen.AsString) = '' then
      begin
        Inc(i);
        pgrsTotal.Position := i;
        Application.ProcessMessages;
        kbmtblInvoice.Next;
        continue;
      end;
      zqryInvoice.Append;

      DM.PrepareQuery(zqrycheck);
      s:= 'select * from purchasing.po_import_mayora where No_Dokumen = '+QuotedStr(Trim(strngfldInvoiceNo_Dokumen.AsString));
//      s:= s+' AND Pcode='+QuotedStr(Trim(strngfld10.AsString));

      DM.OpenQuery(zqrycheck, s);

      if zqrycheck.RecordCount = 0 then
      begin
        mfldInvoiceparam.AsString := Trim(strngfldInvoiceParam.AsString);
        lrgntfldInvoiceNoDokumen.AsLargeInt := StrToInt64(Trim(strngfldInvoiceNo_Dokumen.AsString));

        y := Copy(Trim(strngfldInvoiceTanggal_Kirim.AsString),1,4);
        m := Copy(Trim(strngfldInvoiceTanggal_Kirim.AsString),6,2);
        d := Copy(Trim(strngfldInvoiceTanggal_Kirim.AsString),9,2);

        dtfldInvoiceTanggal_Kirim.AsDateTime := EncodeDate(StrToInt(y), StrToInt(m), StrToInt(d));
        lrgntfldInvoiceTipe.AsLargeInt := StrToInt64(Trim(strngfldInvoiceTipe.AsString));
        mfldInvoiceTransaksi.AsString := Trim(strngfldInvoiceTransaksi.AsString);

        y := Copy(Trim(strngfldInvoiceTanggal_Dokumen.AsString),1,4);
        m := Copy(Trim(strngfldInvoiceTanggal_Dokumen.AsString),6,2);
        d := Copy(Trim(strngfldInvoiceTanggal_Dokumen.AsString),9,2);
        dtfldInvoiceTanggal_Dokumen.AsDateTime := EncodeDate(StrToInt(y), StrToInt(m), StrToInt(d));

        lrgntfldInvoiceNo_Surat_Jalan.AsLargeInt := StrToInt64(Trim(strngfldInvoiceNo_Surat_Jalan.AsString));
        mfldInvoiceNo_Mobil.AsString := Trim(strngfldInvoiceNo_Mobil.AsString);
        lrgntfldInvoiceBaris.AsLargeInt := StrToInt64(Trim(strngfldInvoiceBaris.AsString));
        lrgntfldInvoiceSuplier.AsLargeInt := StrToInt64(Trim(strngfldInvoiceSuplier.AsString));
        mfldInvoiceNo_CMO.AsString := Trim(strngfldInvoiceNo_CMO.AsString);
        lrgntfldInvoiceGudang.AsLargeInt := StrToInt64(Trim(strngfldInvoiceGudang.AsString));
        mfldInvoiceNo_DN.AsString := Trim(strngfldInvoiceNo_DN.AsString);
        mfldInvoiceNoFaktur.AsString := Trim(strngfldInvoiceNo_Faktur.AsString);

        zqryInvoice.Post;
      end;
      Inc(i);
      pgrsTotal.Position := i;
      Application.ProcessMessages;
      kbmtblInvoice.Next;
    end;

    pgrsProses.Position := 1;
    Application.ProcessMessages;
    lblStatus.Caption := 'Status : Proses Import data Invoice Sukses';
  end
  else begin
      DM.MyMsg(mmError,'Tabel Invoice tidak ada data/kosong !','Periksa ulang file Ekstrak Terima Barang_nomor_Detail.txt!!!');
      Exit;
  end;
end;

procedure TTfrmImportFakturPembelianMayora.ImportDataDetailInvoiceToDB;
var
  cnt,i : Integer;
  y,m,d,s,id_trans : string;
begin
  if kbmtblDetailInvoice.RecordCount > 0 then
    isProsess := True;

  lblStatus.Caption := 'Status : Proses Import data Detail Invoice';

  if isProsess then
  begin
    zqrydetail.Close;
    zqrydetail.Open;

    cnt := kbmtblDetailInvoice.RecordCount;

    i:= 0;

    pgrsTotal.Min := 0;
    pgrsTotal.Max := cnt;
    pgrsTotal.Position := i;

    kbmtblDetailInvoice.First;

    while not kbmtblDetailInvoice.Eof do
    begin
      if trim(strngfld1.AsString) = '' then
      begin
        Inc(i);
        pgrsTotal.Position := i;
        Application.ProcessMessages;
        kbmtblDetailInvoice.Next;
        continue;
      end;
      zqrydetail.Append;

      DM.PrepareQuery(zqrycheck);
      s:= 'select * from purchasing.po_import_detail_mayora where no_penerimaan = '+QuotedStr(Trim(strngfld1.AsString));
      s:= s+' AND pcode ='+QuotedStr(Trim(strngfld10.AsString));

      DM.OpenQuery(zqrycheck, s);

      if zqrycheck.RecordCount = 0 then
      begin
        mfld_penerimaan.AsString := Trim(strngfld1.AsString);

        y := Copy(Trim(strngfld2.AsString),1,4);
        m := Copy(Trim(strngfld2.AsString),6,2);
        d := Copy(Trim(strngfld2.AsString),9,2);
        dtfld_penerimaan.AsDateTime := EncodeDate(StrToInt(y), StrToInt(m), StrToInt(d));

        lrgntfld_srt_jalan.AsLargeInt := StrToInt64(Trim(strngfld3.AsString));

        y := Copy(Trim(strngfld4.AsString),1,4);
        m := Copy(Trim(strngfld4.AsString),6,2);
        d := Copy(Trim(strngfld4.AsString),9,2);
        dtfld_srt_jalan.AsDateTime := EncodeDate(StrToInt(y), StrToInt(m), StrToInt(d));

        mfldzqrydetailnopol.AsString := Trim(strngfld4.AsString);

        lrgntfld_distributor.AsLargeInt := StrToInt64(Trim(strngfld6.AsString));
        mfld_cmo.AsString := Trim(strngfld7.AsString);
        lrgntfldzqrydetailpcode.AsLargeInt := StrToInt64(Trim(strngfld10.AsString));

        mfld_produk.AsString := Trim(strngfld11.AsString);
        lrgntfld_terkecil.AsLargeInt := StrToInt64(StringReplace(Trim(strngfld12.AsString),'.','',[rfReplaceAll]));
//        lrgntfld_pmbelian_terbesar.AsLargeInt := StrToInt64(StringReplace(Trim(strngfld13.AsString),'.','',[rfReplaceAll])) div 1000000;

        lrgntfld_pmbelian_terbesar.AsLargeInt:= StrToInt64(copy(Trim(strngfld13.AsString),1,5));
        lrgntfld_produk_lusin.AsLargeInt:= StrToInt64(copy(Trim(strngfld13.AsString),7,3));
        lrgntfld_produk_biji.AsLargeInt:= StrToInt64(copy(Trim(strngfld13.AsString),11,3));

        lrgntfld_harga.AsLargeInt := StrToInt64(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll]));

        mfldzqrydetailstatus.AsString := Trim(strngfld15.AsString);

        zqrydetail.Post;
//        ImportDataInvoiceToPoDB();
        ImportProdukToMasterItem();
        ImportDataInvoiceToNotaDB();
      end;

      Inc(i);
      pgrsTotal.Position := i;
      Application.ProcessMessages;
      kbmtblDetailInvoice.Next;
    end;

    pgrsProses.Position := 3;
    Application.ProcessMessages;
    lblStatus.Caption := 'Status : Proses Import data Detail Invoice Sukses';
  end
  else begin
        DM.MyMsg(mmError,'Tabel Detail Invoice tidak ada data/kosong !','Periksa ulang file Ekstrak Terima Barang_nomor.txt!!!');
        Exit;
    end;
end;

procedure TTfrmImportFakturPembelianMayora.ImportDataProdukToDB;
var
  cnt,i: Integer;
  y,m,d,s : string;
begin
  if kbmtblProduk.RecordCount > 0 then
    isProsess := True;

  lblStatus.Caption := 'Status : Proses Import data Produk';

  if isProsess then
  begin
    zqryProduk.Close;
    zqryProduk.Open;

    cnt := kbmtblProduk.RecordCount;

    i:= 0;

    pgrsTotal.Min := 0;
    pgrsTotal.Max := cnt;
    pgrsTotal.Position := i;

    kbmtblProduk.First;

    while not kbmtblProduk.Eof do
    begin
      if (trim(strngfldProdukNo_Dokumen.AsString) = '') and (Trim(strngfldProdukPCode.AsString)='') then
      begin
        Inc(i);
        pgrsTotal.Position := i;
        Application.ProcessMessages;
        kbmtblProduk.Next;
        continue;
      end;

      zqryProduk.Append;

      DM.PrepareQuery(zqrycheck);
      s:= 'select * from purchasing.po_import_produk_mayora where No_Dokumen = '+QuotedStr(Trim(strngfldProdukNo_Dokumen.AsString));
      s:= s+' AND Pcode = ' + QuotedStr(Trim(strngfldProdukPCode.AsString));

      DM.OpenQuery(zqrycheck, s);

      if zqrycheck.RecordCount = 0 then
      begin
        mfldProdukPARAM.AsString := Trim(strngfldProdukParam.AsString);
        lrgntfldProdukNo_Dokumen.AsLargeInt := StrToInt64(Trim(strngfldProdukNo_Dokumen.AsString));

        lrgntfldProdukPcode.AsLargeInt := StrToInt64(Trim(strngfldProdukPCode.AsString));
        mfldProdukNama_Produk.AsString := Trim(strngfldProdukNama_Produk.AsString);
        lrgntfldProdukHarga.AsLargeInt := StrToInt64(Trim(strngfldProdukHarga.AsString));

        lrgntfldProdukQty_Produk.AsLargeInt:= StrToInt64(copy(Trim(strngfldProdukQty_Produk.AsString),1,5));
        lrgntfldProdukqty_produk_lusin.AsLargeInt:= StrToInt64(copy(Trim(strngfldProdukQty_Produk.AsString),7,3));
        lrgntfldProdukqty_produk_biji.AsLargeInt:= StrToInt64(copy(Trim(strngfldProdukQty_Produk.AsString),11,3));

        zqryProduk.Post;
      end;
      Inc(i);
      pgrsTotal.Position := i;
      Application.ProcessMessages;
      kbmtblProduk.Next;
    end;

    pgrsProses.Position := 2;
    Application.ProcessMessages;
    lblStatus.Caption := 'Status : Proses Import data Produk Sukses';
  end
  else begin
      DM.MyMsg(mmError,'Tabel Produk tidak ada data/kosong !','Periksa ulang file Ekstrak Terima Barang_nomor_Detail.txt!!!');
      Exit;
  end;
end;

procedure TTfrmImportFakturPembelianMayora.ImportDataInvoiceToPoDB;
var
  s,id_trans : string;
  total : Double;
begin
  //start insert data to db po

  DM.PrepareQuery(zqrycheck);
  s:= 'select * from  purchasing.po where "no_bukti"='+QuotedStr(Trim(strngfld1.AsString));
  //        s:= s+' AND "pcode"='+QuotedStr(Trim(strngfld10.AsString));

  DM.OpenQuery(zqrycheck, s);

  if zqrycheck.RecordCount = 0 then
  begin
    zqryPO.Close;
    zqryPO.Open;
    zqryPO.Append;
    try
      zqrygetponumber.Close;
      zqrygetponumber.Params.ParamByName('pid_trans').AsString:= '101';
      zqrygetponumber.Open;

      strngfldPOno_po.AsString := strngfld_gen_po_number.AsString;
      dtmfldPOdt_po.AsDateTime := Now;
      strngfldPOno_bukti.AsString := strngfld1.AsString;
      dtmfldPOdt_ins.AsDateTime := Now;
      dtmfldPOdt_upd.AsDateTime := Now;
      strngfldPOusr_ins.AsString := DM.UserConnect;
      strngfldPOusr_upd.AsString := DM.UserConnect;
      strngfldPOispost.AsString := '1';
      strngfldPOiscancel.AsString := '0';
      strngfldPOisdelete.AsString := '0';
      fltfldPOtotal.AsFloat := StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll]));
      strngfldPOkd_rekanan.AsString := '00003';

      DM.PrepareQuery(zqrycheck);
      s:= 'select * from master.mtransaction where "id_trans"='+QuotedStr(Trim('101'));
  //            s:= s+' AND "pcode"='+QuotedStr(Trim(strngfld10.AsString));

      DM.OpenQuery(zqrycheck, s);

      id_trans := '';
      if zqrycheck.RecordCount > 0 then
        id_trans := zqrycheck.Fields[2].AsString;

//      strngfldPOid_trans.AsString := id_trans;
      strngfldPOid_trans.AsString := '101';
      strngfldPOcara_bayar.AsString := 'TUNAI';
      dtmfldPOdt_jth_tempo.AsDateTime := Now;
      strngfldPOdiskripsi.AsString := '';
      fltfldPOsub_total.AsFloat := 0;
      fltfldPOdisc_rp.AsFloat := 0;
      fltfldPOnet_n_ppn.AsFloat := 0;
      strngfldPOiskirim.AsString := '0';
      strngfldPOislunas.AsString := '0';
      dtmfldPOdt_kirim.AsDateTime := Now;
      strngfldPOid_curr.AsString := 'IDR';
      fltfldPOkurs.AsFloat := 0;
      strngfldPOvat_str.AsString := '';
      fltfldPOvat_num.AsFloat := 0;
      intgrfldPOn_hari.AsInteger := 0;
      strngfldPOstatus_auth.AsString := '0';
      strngfldPOprepared_by.AsString := DM.UserConnect;
      dtmfldPOdt_prepared.AsDateTime := Now;
      strngfldPOapproved_by.AsString := DM.UserConnect;
      dtmfldPOdt_approved.AsDateTime := Now;
      strngfldPOissubmit.AsString := '0';
      strngfldPOremarks.AsString := '0';
      strngfldPOisclosed.AsString := '0';
      strngfldPOst_approved_1.AsString := '';

      zqryPO.Post;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end;
    end;
  end
  else
  begin
//    zqryPO.Append;
    try
      total := zqrycheck.FieldByName('total').AsFloat;
      total := total + + StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll]));

      DM.PrepareQuery(zqrycheck);
      s:= 'update purchasing.po set total='+FloatToStr(total);
      s:= s+' where "no_bukti"='+QuotedStr(Trim(strngfld1.AsString));

      DM.OpenQuery(zqrycheck, s);
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end;
    end;
  end;
  //end insert data to db po
end;

procedure TTfrmImportFakturPembelianMayora.FormCreate(Sender: TObject);
begin
  dtpStart.DateTime := Now;
end;

procedure TTfrmImportFakturPembelianMayora.btnTutupClick(Sender: TObject);
begin
 Close;
end;

procedure TTfrmImportFakturPembelianMayora.ImportDataInvoiceToNotaDB;
var
  y,m,d,s,id_trans : string;
  total : Double;
begin
  DM.PrepareQuery(zqrycheck);
  s:= 'select * from  transaksi.nota where "no_bukti"='+QuotedStr(Trim(strngfld1.AsString));
  //        s:= s+' AND "pcode"='+QuotedStr(Trim(strngfld10.AsString));

  DM.OpenQuery(zqrycheck, s);

  if zqrycheck.RecordCount = 0 then
  begin
    zqryNota.Close;
    zqryNota.Open;
    zqryNota.Append;

    try
      zqrygetNotaId.Close;
      zqrygetNotaId.Open;

      lrgntfldNotaid_nota.AsLargeInt := lrgntfldNotaIdnextval.AsLargeInt;
      strngfldNotano_nota.AsString := strngfld3.AsString;

      y := Copy(Trim(strngfld4.AsString),1,4);
      m := Copy(Trim(strngfld4.AsString),6,2);
      d := Copy(Trim(strngfld4.AsString),9,2);
      dtmfldNotadt_nota.AsDateTime := EncodeDate(StrToInt(y), StrToInt(m), StrToInt(d));

      strngfldNotano_bukti.AsString := strngfld1.AsString;
      dtmfldNotadt_ins.AsDateTime := Now;
      dtmfldNotadt_upd.AsDateTime := Now;
      strngfldNotausr_ins.AsString := DM.UserConnect;
      strngfldNotausr_upd.AsString := DM.UserConnect;
      strngfldNotaispost.AsString := '0';
      strngfldNotaiscancel.AsString := '0';
      strngfldNotaisdelete.AsString := '0';
      fltfldNotatotal.AsFloat := StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll]));
      strngfldNotakd_rekanan.AsString := '00003';
      strngfldNotaid_trans.AsString := '101';
      strngfldNotaid_rek_gl.AsString := '114.01.233';
      strngfldNotaid_division.AsString := '867552';
      strngfldNotacara_bayar.AsString := 'TUNAI';
      dtmfldNotadt_jth_tempo.AsDateTime := Now;
      strngfldNotadiskripsi.AsString := '-';
      fltfldNotasub_total.AsFloat := StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll]));
      fltfldNotaclaim.AsFloat := 0;
      fltfldNotadisc_rp.AsFloat := 0;
      fltfldNotapromo_uang.AsFloat :=0;
      fltfldNotapromo_barang.AsFloat :=0;
      fltfldNotanet_n_ppn.AsFloat :=StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll]));
      strngfldNotaiskirim.AsString := '0';
      strngfldNotaislunas.AsString := '1';
      fltfldNotaretur.AsFloat := 0;
      strngfldNotaishpp.AsString := '0';
      dtmfldNotadt_lunas.AsDateTime := 0;
      dtmfldNotadt_kirim.AsDateTime := 0;
      strngfldNotaisok.AsString := '0';
      dtmfldNotadt_posting.AsDateTime := 0;
      strngfldNotanota_diretur.AsString := '';
      strngfldNotaid_curr.AsString := 'IDR';
      fltfldNotakurs.AsFloat := 1;
      strngfldNotavat_str.AsString := 'INCLUDE';
      fltfldNotavat_num.AsFloat := 0;
      strngfldNotakd_del_place.AsString := '';
      strngfldNotano_rekap.AsString := '-';
      intgrfldNotan_hari.AsInteger := 1;
      fltfldNotaevocer.AsFloat := 0;
      strngfldNotano_faktur_pajak.AsString := '';
      strngfldNotano_evocer.AsString := '';
      lrgntfldNotaid_import.AsLargeInt := 0;
      strngfldNotapromo_id.AsString := '';
      fltfldNotamvocer.AsFloat := 0;
      strngfldNotano_mvocer.AsString := '';
      fltfldNotadisc_psn.AsFloat := 0;

      zqryNota.Post;
//      end Insert nota
//      Insert Nota detail
      vNo := 1;

      zqryNotaDetail.Close;
      zqryNotaDetail.Open;
      zqryNotaDetail.Append;

      zqrygetNotaDetailId.Close;
      zqrygetNotaDetailId.Open;

      lrgntfldNotaDetailid_nota_detail.AsLargeInt := lrgntfldNotaDetailIdnextval.AsLargeInt;
      lrgntfldNotaDetailid_nota.AsLargeInt := lrgntfldNotaIdnextval.AsLargeInt;
      intgrfldNotaDetailnomor.AsInteger := vNo;
      strngfldNotaDetailkd_item.AsString := strngfld10.AsString;
      strngfldNotaDetailid_rek_gl.AsString := '115.01';
      fltfldNotaDetaildisc_rp.AsFloat := 0;
      fltfldNotaDetaildisc_psn.AsFloat := 0;

      fltfldNotaDetailqty_karton.AsFloat:= StrToFloat(copy(Trim(strngfld13.AsString),1,5));
      fltfldNotaDetailqty_lusin.AsFloat:= StrToFloat(copy(Trim(strngfld13.AsString),7,3));
      fltfldNotaDetailqty_biji.AsFloat:= StrToFloat(copy(Trim(strngfld13.AsString),11,3));
      fltfldNotaDetailqty_total_biji.AsFloat := StrToFloat(copy(Trim(strngfld13.AsString),11,3));
      fltfldNotaDetailbiji_per_karton.AsFloat := StrToFloat(copy(Trim(strngfld13.AsString),11,3));

      DM.PrepareQuery(zqrytemp);

      s := 'select * from  purchasing.po_import_produk_mayora where pcode ='+QuotedStr(Trim(strngfld10.AsString));
      DM.OpenQuery(zqrytemp, s);

      fltfldNotaDetailhrg_jual_karton.AsFloat := zqrytemp.FieldByName('harga').AsFloat;
      fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;
      fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;

      strngfldNotaDetaildiskripsi.AsString := '';

      if zqrytemp.RecordCount > 0 then
      begin
        strngfldNotaDetaildiskripsi.AsString := zqrytemp.FieldByName('nama_produk').AsString;
        fltfldNotaDetailhrg_jual_karton.AsFloat := zqrytemp.FieldByName('harga').AsFloat;
        fltfldNotaDetailhrg_beli_karton.AsFloat := zqrytemp.FieldByName('harga').AsFloat;

        if zqrytemp.FieldByName('qty_produk_lusin').AsFloat > 0 then begin
          fltfldNotaDetailhrg_jual_lusin.AsFloat := zqrytemp.FieldByName('harga').AsFloat / zqrytemp.FieldByName('qty_produk_lusin').AsFloat
        end
        else begin
          fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;
        end;

        if zqrytemp.FieldByName('qty_produk_biji').AsFloat > 0 then begin
          fltfldNotaDetailhrg.AsFloat := zqrytemp.FieldByName('harga').AsFloat / zqrytemp.FieldByName('qty_produk_biji').AsFloat
        end
        else begin
          fltfldNotaDetailhrg.AsFloat := 0;
        end;

//        fltfldNotaDetailqty_karton.AsFloat := zqrytemp.FieldByName('qty_produk').AsFloat;
//        fltfldNotaDetailqty_lusin.AsFloat := zqrytemp.FieldByName('qty_produk_lusin').AsFloat;
//        fltfldNotaDetailqty_biji.AsFloat := zqrytemp.FieldByName('qty_produk_biji').AsFloat;
//        fltfldNotaDetailqty_total_biji.AsFloat := zqrytemp.FieldByName('qty_produk_biji').AsFloat;
//        fltfldNotaDetailbiji_per_karton.AsFloat := zqrytemp.FieldByName('qty_produk_biji').AsFloat;

      end
      else
      begin
        fltfldNotaDetailhrg_jual_karton.AsFloat := 0;
        fltfldNotaDetailhrg_beli_karton.AsFloat := 0;
        fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;
        fltfldNotaDetailhrg.AsFloat := 0;
        fltfldNotaDetailqty_karton.AsFloat := 0;
        fltfldNotaDetailqty_lusin.AsFloat := 0;
        fltfldNotaDetailqty_biji.AsFloat := 0;
        fltfldNotaDetailqty_total_biji.AsFloat := 0;
        fltfldNotaDetailbiji_per_karton.AsFloat := 0;
      end;

      strngfldNotaDetailispromo.AsString := '0';
      strngfldNotaDetailstatus.AsString := '1';
      fltfldNotaDetaildisc_psn_non_promo.AsFloat := 0;

      zqryNotaDetail.Post;

      Inc(vNo);
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end;
    end

  end
  else
  begin
    try
      total := zqrycheck.FieldByName('total').AsFloat;
      total := total + StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll]));

      DM.PrepareQuery(zqrytemp);
      s:= 'update transaksi.nota set total='+ FloatToStr(total) + ',sub_total=' +FloatToStr(total) + ',net_n_ppn=' +FloatToStr(total);
      s:= s+' where "no_bukti"='+QuotedStr(Trim(strngfld1.AsString));
      s:= s+' AND "id_nota"='+QuotedStr(Trim(zqrycheck.FieldByName('id_nota').AsString));

      DM.OpenQuery(zqrytemp, s);

      zqryNotaDetail.Close;
      zqryNotaDetail.Open;
      zqryNotaDetail.Append;

      zqrygetNotaDetailId.Close;
      zqrygetNotaDetailId.Open;

      lrgntfldNotaDetailid_nota_detail.AsLargeInt := lrgntfldNotaDetailIdnextval.AsLargeInt;
      lrgntfldNotaDetailid_nota.AsInteger := zqrycheck.FieldByName('id_nota').AsInteger;
      intgrfldNotaDetailnomor.AsInteger := vNo;
      strngfldNotaDetailkd_item.AsString := strngfld10.AsString;
      strngfldNotaDetailid_rek_gl.AsString := '115.01';
      fltfldNotaDetaildisc_rp.AsFloat := 0;
      fltfldNotaDetaildisc_psn.AsFloat := 0;

      fltfldNotaDetailqty_karton.AsFloat:= StrToFloat(copy(Trim(strngfld13.AsString),1,5));
      fltfldNotaDetailqty_lusin.AsFloat:= StrToFloat(copy(Trim(strngfld13.AsString),7,3));
      fltfldNotaDetailqty_biji.AsFloat:= StrToFloat(copy(Trim(strngfld13.AsString),11,3));
      fltfldNotaDetailqty_total_biji.AsFloat := StrToFloat(copy(Trim(strngfld13.AsString),11,3));
      fltfldNotaDetailbiji_per_karton.AsFloat := StrToFloat(copy(Trim(strngfld13.AsString),11,3));

      DM.PrepareQuery(zqrytemp);

      s := 'select * from  purchasing.po_import_produk_mayora where pcode ='+QuotedStr(Trim(strngfld10.AsString));
      DM.OpenQuery(zqrytemp, s);

      fltfldNotaDetailhrg_jual_karton.AsFloat := zqrytemp.FieldByName('harga').AsFloat;
      fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;
      fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;

      strngfldNotaDetaildiskripsi.AsString := '';
      if zqrytemp.RecordCount > 0 then
      begin
        strngfldNotaDetaildiskripsi.AsString := zqrytemp.FieldByName('nama_produk').AsString;
        fltfldNotaDetailhrg_jual_karton.AsFloat := zqrytemp.FieldByName('harga').AsFloat;
        fltfldNotaDetailhrg_beli_karton.AsFloat := zqrytemp.FieldByName('harga').AsFloat;

        if zqrytemp.FieldByName('qty_produk_lusin').AsFloat > 0 then begin
          fltfldNotaDetailhrg_jual_lusin.AsFloat := zqrytemp.FieldByName('harga').AsFloat / zqrytemp.FieldByName('qty_produk_lusin').AsFloat
        end
        else begin
          fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;
        end;

        if zqrytemp.FieldByName('qty_produk_biji').AsFloat > 0 then begin
          fltfldNotaDetailhrg.AsFloat := zqrytemp.FieldByName('harga').AsFloat / zqrytemp.FieldByName('qty_produk_biji').AsFloat
        end
        else begin
          fltfldNotaDetailhrg.AsFloat := 0;
        end;

//        fltfldNotaDetailqty_karton.AsFloat := zqrytemp.FieldByName('qty_produk').AsFloat;
//        fltfldNotaDetailqty_lusin.AsFloat := zqrytemp.FieldByName('qty_produk_lusin').AsFloat;
//        fltfldNotaDetailqty_biji.AsFloat := zqrytemp.FieldByName('qty_produk_biji').AsFloat;
//        fltfldNotaDetailqty_total_biji.AsFloat := zqrytemp.FieldByName('qty_produk_biji').AsFloat;
//        fltfldNotaDetailbiji_per_karton.AsFloat := zqrytemp.FieldByName('qty_produk_biji').AsFloat;

      end
      else
      begin
        fltfldNotaDetailhrg_jual_karton.AsFloat := 0;
        fltfldNotaDetailhrg_beli_karton.AsFloat := 0;
        fltfldNotaDetailhrg_jual_lusin.AsFloat := 0;
        fltfldNotaDetailhrg.AsFloat := 0;
        fltfldNotaDetailqty_karton.AsFloat := 0;
        fltfldNotaDetailqty_lusin.AsFloat := 0;
        fltfldNotaDetailqty_biji.AsFloat := 0;
        fltfldNotaDetailqty_total_biji.AsFloat := 0;
        fltfldNotaDetailbiji_per_karton.AsFloat := 0;
      end;

      strngfldNotaDetailispromo.AsString := '0';
      strngfldNotaDetailstatus.AsString := '1';
      fltfldNotaDetaildisc_psn_non_promo.AsFloat := 0;

      zqryNotaDetail.Post;

      Inc(vNo);
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end;
    end;
  end;
end;

procedure TTfrmImportFakturPembelianMayora.ImportProdukToMasterItem;
var
  y,m,d,s,id_trans : string;
  total : Double;
begin
  DM.PrepareQuery(zqrycheck);
  s:= 'select * from master.item where "kd_item"='+QuotedStr(Trim(strngfld10.AsString));

  DM.OpenQuery(zqrycheck, s);

  if zqrycheck.RecordCount = 0 then
  begin
    zqryMasterItem.Close;
    zqryMasterItem.Open;
    zqryMasterItem.Append;

    try
      //add to master.item
      strngfldMasterItemkd_item.AsString := Trim(strngfld10.AsString);
      strngfldMasterItemkd_parent.AsString := '';
//      intgrfldMasterItemlvl.AsInteger := 1;
      strngfldMasterItemisdetail.AsString := '1';
      strngfldMasterItemnama_item.AsString := Trim(strngfld11.AsString);
      fltfldMasterItemhrg_jual_karton.AsFloat := 0;
      fltfldMasterItemhrg_jual_lusin.AsFloat := 0;
      fltfldMasterItemhrg_beli_karton.AsFloat := StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll])) / StrToFloat(copy(Trim(strngfld13.AsString),1,5));
      fltfldMasterItembiji_per_karton.AsFloat := StrToFloat(StringReplace(Trim(strngfld12.AsString),'.','',[rfReplaceAll])) / StrToFloat(copy(Trim(strngfld13.AsString),1,5));
      fltfldMasterItemhpp.AsFloat := 0;
      strngfldMasterItemusr_ins.AsString := DM.UserConnect;
      strngfldMasterItemusr_upd.AsString := DM.UserConnect;
      dtmfldMasterItemdt_ins.AsDateTime := Now;
      dtmfldMasterItemdt_upd.AsDateTime := Now;
      strngfldMasterItemisinventory.AsString := '1';
      strngfldMasterItemisbarang_jadi.AsString := '1';
      strngfldMasterItemkd_satuan.AsString := 'PCS';
      strngfldMasterItemkd_satuan_beli.AsString := 'KARTON';
      fltfldMasterItemrasio.AsFloat := StrToFloat(StringReplace(Trim(strngfld12.AsString),'.','',[rfReplaceAll])) / StrToFloat(copy(Trim(strngfld13.AsString),1,5));
      strngfldMasterItemid_rek_persediaan.AsString := '115.01';
      strngfldMasterItemid_rek_hpp.AsString := '511.01';
      strngfldMasterItemid_cat_item.AsString := 'MYR';

      zqryMasterItem.Post;
      //end add to master.item

      // add to master.item_bku
      zqryMasterItemBku.Close;
      zqryMasterItemBku.Open;
      zqryMasterItemBku.Append;

      strngfldMasterItemBkukd_item.AsString := Trim(strngfld10.AsString);
      strngfldMasterItemBkunama_item.AsString := Trim(strngfld11.AsString);
      fltfldMasterItemBkubiji_per_karton.AsFloat := StrToFloat(StringReplace(Trim(strngfld12.AsString),'.','',[rfReplaceAll])) / StrToFloat(copy(Trim(strngfld13.AsString),1,5));
      fltfldMasterItemBkuhrg_beli_karton.AsFloat := StrToFloat(StringReplace(Trim(strngfld14.AsString),'.','',[rfReplaceAll])) / StrToFloat(copy(Trim(strngfld13.AsString),1,5));
      fltfldMasterItemBkuhrg_jual_karton.AsFloat := 0;
      fltfldMasterItemBkuhrg_jual_lusin.AsFloat := 0;
      fltfldMasterItemBkuhrg_jual_biji.AsFloat := 0;

      zqryMasterItemBku.Post;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end;
    end;
  end;
end;

end.

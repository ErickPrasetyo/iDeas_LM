unit U_ImportPiutangMayora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZDataset, Wwdatsrc, kbmMemTable,
  cxGridBandedTableView, cxGridTableView, ZSequence, SdfData,
  ZAbstractRODataset, ZAbstractDataset, AdvPanel, AdvAppStyler,
  cxContainer, cxLabel, StdCtrls, wwdbdatetimepicker, cxNavigator,
  cxDBNavigator, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, ComCtrls,
  SCStdControls, SCControl, ExtCtrls, FolderDialog, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit,
  LMDCustomBrowseEdit, LMDBrowseEdit, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TImportPiutangMayoraFrm = class(TForm)
    AdvFormStyler1: TAdvFormStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    pnlTop: TAdvPanel;
    lblHeader: TLabel;
    odsCheck: TZQuery;
    oqExec: TZQuery;
    odsExport: TZQuery;
    oqJHeader: TZQuery;
    oqJDetail: TZQuery;
    sq_JDETAIL: TZSequence;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    QTableError: TZQuery;
    QTableErrorid_import: TLargeintField;
    QTableErrornama_tabel: TStringField;
    QTableErrornama_field: TStringField;
    QTableErrorketerangan: TStringField;
    dsError: TDataSource;
    sq_IMPORT: TZSequence;
    pnlBottom: TPanel;
    btnClose: TSCButton;
    Panel2: TPanel;
    pgrsTotal: TSCProgress;
    pgrsProcess: TSCProgress;
    LblStatus: TLabel;
    kmtJHEADER: TkbmMemTable;
    StatusBar1: TStatusBar;
    dskmtJHEADER: TwwDataSource;
    qSettingFaktur: TZQuery;
    qSettingFakturjns_faktur: TStringField;
    qSettingFakturno_faktur_sales: TStringField;
    qSettingFakturno_order_faktur: TStringField;
    qSettingFakturno_order_retur: TStringField;
    qSettingFakturno_faktur_retur: TStringField;
    qSettingFakturno_order_canvas: TStringField;
    qSettingFakturno_faktur_canvas: TStringField;
    dskmtJDETAIL: TwwDataSource;
    kmtJDETAIL: TkbmMemTable;
    pgcImport: TcxPageControl;
    tabJHEADER: TcxTabSheet;
    grdJHEADER: TcxGrid;
    grdDBTV_JHEADER: TcxGridDBTableView;
    grdLvlJHEADER: TcxGridLevel;
    dbnJHEADER: TcxDBNavigator;
    tabJPCODE: TcxTabSheet;
    grdJDETAIL: TcxGrid;
    grdDBTV_JDETAIL: TcxGridDBTableView;
    grdLVLJDETAIL: TcxGridLevel;
    dbnJPCODE: TcxDBNavigator;
    Panel1: TPanel;
    lblLocation: TLabel;
    btnImport: TSCButton;
    btnFetch: TSCButton;
    btnInsertError: TSCButton;
    SCButton1: TSCButton;
    SCButton2: TSCButton;
    qGetNo_Faktur: TZReadOnlyQuery;
    dtpStart: TwwDBDateTimePicker;
    edtLocation: TLMDBrowseEdit;
    SdfDataSet1: TSdfDataSet;
    odsImport: TSdfDataSet;
    Label1: TLabel;
    edtDelimiter: TcxTextEdit;
    Label2: TLabel;
    kmtJHEADERKode_Distributor: TStringField;
    kmtJHEADERNo_Order: TStringField;
    kmtJHEADEROrder_Sales: TStringField;
    kmtJHEADERTipe: TStringField;
    kmtJHEADERNo_Outlet: TStringField;
    kmtJHEADERNo_Invoice: TStringField;
    kmtJHEADERNo_Rekap: TStringField;
    kmtJHEADERTgl_Order: TStringField;
    kmtJHEADERTgl_Invoice: TStringField;
    kmtJHEADERTgl_Jth_Tempo: TStringField;
    kmtJHEADERCara_Bayar: TStringField;
    kmtJHEADERNo_PO: TStringField;
    kmtJHEADERNo_Mobil: TStringField;
    kmtJHEADERSub_Total: TStringField;
    kmtJHEADERDisc_Psn: TStringField;
    kmtJHEADERTot_TPR_Barang: TStringField;
    kmtJHEADERTot_TPR_Uang: TStringField;
    kmtJHEADERTot_Disc_PC: TStringField;
    kmtJHEADERTot_Disc1: TStringField;
    kmtJHEADERTot_Disc2: TStringField;
    kmtJHEADERTotal: TStringField;
    kmtJHEADERNilai_Invoice: TStringField;
    kmtJHEADERBayar: TStringField;
    kmtJHEADERTipe_Pajak: TStringField;
    kmtJHEADERNo_pajak: TStringField;
    kmtJHEADERTgl_Pajak: TStringField;
    kmtJHEADERPpn: TStringField;
    kmtJHEADERDisc_Rp: TStringField;
    grdDBTV_JHEADERKode_Distributor: TcxGridDBColumn;
    grdDBTV_JHEADERNo_Order: TcxGridDBColumn;
    grdDBTV_JHEADEROrder_Sales: TcxGridDBColumn;
    grdDBTV_JHEADERTipe: TcxGridDBColumn;
    grdDBTV_JHEADERNo_Outlet: TcxGridDBColumn;
    grdDBTV_JHEADERNo_Invoice: TcxGridDBColumn;
    grdDBTV_JHEADERNo_Rekap: TcxGridDBColumn;
    grdDBTV_JHEADERTgl_Order: TcxGridDBColumn;
    grdDBTV_JHEADERTgl_Invoice: TcxGridDBColumn;
    grdDBTV_JHEADERTgl_Jth_Tempo: TcxGridDBColumn;
    grdDBTV_JHEADERCara_Bayar: TcxGridDBColumn;
    grdDBTV_JHEADERNo_PO: TcxGridDBColumn;
    grdDBTV_JHEADERNo_Mobil: TcxGridDBColumn;
    grdDBTV_JHEADERSub_Total: TcxGridDBColumn;
    grdDBTV_JHEADERDisc_Psn: TcxGridDBColumn;
    grdDBTV_JHEADERTot_TPR_Barang: TcxGridDBColumn;
    grdDBTV_JHEADERTot_TPR_Uang: TcxGridDBColumn;
    grdDBTV_JHEADERTot_Disc_PC: TcxGridDBColumn;
    grdDBTV_JHEADERTot_Diss1: TcxGridDBColumn;
    grdDBTV_JHEADERTot_Disc2: TcxGridDBColumn;
    grdDBTV_JHEADERTotal: TcxGridDBColumn;
    grdDBTV_JHEADERNilai_Invoice: TcxGridDBColumn;
    grdDBTV_JHEADERBayar: TcxGridDBColumn;
    grdDBTV_JHEADERTipe_Pajak: TcxGridDBColumn;
    grdDBTV_JHEADERNo_pajak: TcxGridDBColumn;
    grdDBTV_JHEADERTgl_Pajak: TcxGridDBColumn;
    grdDBTV_JHEADERPpn: TcxGridDBColumn;
    grdDBTV_JHEADERDisc_Rp: TcxGridDBColumn;
    kmtJDETAILtipe_barang: TStringField;
    kmtJDETAILid_distributor: TStringField;
    kmtJDETAILno_order: TStringField;
    kmtJDETAILorder_sales: TStringField;
    kmtJDETAILtipe: TStringField;
    kmtJDETAILid_item: TStringField;
    kmtJDETAILdisc_rp: TStringField;
    kmtJDETAILqty_karton: TStringField;
    kmtJDETAILqty_lusin: TStringField;
    kmtJDETAILqty_biji: TStringField;
    kmtJDETAILqty_jml_biji: TStringField;
    kmtJDETAILhrg_jual_karton: TStringField;
    kmtJDETAILhrg_jual_lusin: TStringField;
    kmtJDETAILhrg_jual_biji: TStringField;
    kmtJDETAILtotal_netto: TStringField;
    kmtJDETAILkd_disc_pc: TStringField;
    kmtJDETAILkd_disc_1: TStringField;
    kmtJDETAILkd_disc_2: TStringField;
    kmtJDETAILtotal_bruto: TStringField;
    kmtJDETAILppn_per_pc: TStringField;
    kmtJDETAILdisc_psn_pc: TStringField;
    kmtJDETAILdisc_rp_pc: TStringField;
    kmtJDETAILdisc_psn_pc_kondisi: TStringField;
    kmtJDETAILdisc_rp_pc_kondisi: TStringField;
    kmtJDETAILdisc_psn_1: TStringField;
    kmtJDETAILdisc_rp_1: TStringField;
    kmtJDETAILdisc_psn_1_kondisi: TStringField;
    kmtJDETAILdisc_rp_1_kondisi: TStringField;
    kmtJDETAILdisc_psn_2: TStringField;
    kmtJDETAILdisc_rp_2: TStringField;
    kmtJDETAILdisc_psn_2_kondisi: TStringField;
    kmtJDETAILdisc_rp_2_kondisi: TStringField;
    grdDBTV_JDETAILtipe_barang: TcxGridDBColumn;
    grdDBTV_JDETAILid_distributor: TcxGridDBColumn;
    grdDBTV_JDETAILno_order: TcxGridDBColumn;
    grdDBTV_JDETAILorder_sales: TcxGridDBColumn;
    grdDBTV_JDETAILtipe: TcxGridDBColumn;
    grdDBTV_JDETAILid_item: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_rp: TcxGridDBColumn;
    grdDBTV_JDETAILqty_karton: TcxGridDBColumn;
    grdDBTV_JDETAILqty_lusin: TcxGridDBColumn;
    grdDBTV_JDETAILqty_biji: TcxGridDBColumn;
    grdDBTV_JDETAILqty_jml_biji: TcxGridDBColumn;
    grdDBTV_JDETAILhrg_jual_karton: TcxGridDBColumn;
    grdDBTV_JDETAILhrg_jual_lusin: TcxGridDBColumn;
    grdDBTV_JDETAILhrg_jual_biji: TcxGridDBColumn;
    grdDBTV_JDETAILtotal_netto: TcxGridDBColumn;
    grdDBTV_JDETAILkd_disc_pc: TcxGridDBColumn;
    grdDBTV_JDETAILkd_disc_1: TcxGridDBColumn;
    grdDBTV_JDETAILkd_disc_2: TcxGridDBColumn;
    grdDBTV_JDETAILtotal_bruto: TcxGridDBColumn;
    grdDBTV_JDETAILppn_per_pc: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_psn_pc: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_rp_pc: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_psn_pc_kondisi: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_rp_pc_kondisi: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_psn_1: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_rp_1: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_psn_1_kondisi: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_rp_1_kondisi: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_psn_2: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_rp_2: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_psn_2_kondisi: TcxGridDBColumn;
    grdDBTV_JDETAILdisc_rp_2_kondisi: TcxGridDBColumn;
    oqJHeaderid_distributor: TStringField;
    oqJHeaderno_order: TStringField;
    oqJHeaderorder_sales: TStringField;
    oqJHeadertipe: TStringField;
    oqJHeaderno_outlet: TStringField;
    oqJHeaderno_invoice: TStringField;
    oqJHeaderno_rekap: TStringField;
    oqJHeadertgl_order: TDateTimeField;
    oqJHeadertgl_invoice: TDateTimeField;
    oqJHeadertgl_jth_tempo: TDateTimeField;
    oqJHeadercara_bayar: TStringField;
    oqJHeaderno_po: TStringField;
    oqJHeaderno_mobil: TStringField;
    oqJHeadersub_total: TFloatField;
    oqJHeaderdisc_psn: TFloatField;
    oqJHeadertotal_tpr_brg: TFloatField;
    oqJHeadertotal_tpr_uang: TFloatField;
    oqJHeaderdisc_tot_pc: TFloatField;
    oqJHeaderdisc_tot_1: TFloatField;
    oqJHeaderdisc_tot_2: TFloatField;
    oqJHeadertotal: TFloatField;
    oqJHeadernilai_inv: TFloatField;
    oqJHeadertot_bayar: TFloatField;
    oqJHeadertipe_pajak: TStringField;
    oqJHeaderno_pajak: TStringField;
    oqJHeadertgl_pajak: TDateTimeField;
    oqJHeaderppn: TFloatField;
    oqJHeaderdisc_rp: TFloatField;
    oqJHeaderid_import: TLargeintField;
    oqJHeaderdt_ins: TDateTimeField;
    oqJHeaderdt_upd: TDateTimeField;
    oqJHeaderusr_ins: TStringField;
    oqJHeaderusr_upd: TStringField;
    oqJHeaderid_trans: TStringField;
    oqJDetailtipe_barang: TStringField;
    oqJDetailid_distributor: TStringField;
    oqJDetailno_order: TStringField;
    oqJDetailorder_sales: TStringField;
    oqJDetailtipe: TStringField;
    oqJDetailid_item: TStringField;
    oqJDetaildisc_rp: TFloatField;
    oqJDetailqty_karton: TFloatField;
    oqJDetailqty_lusin: TFloatField;
    oqJDetailqty_biji: TFloatField;
    oqJDetailqty_jml_biji: TFloatField;
    oqJDetailhrg_jual_karton: TFloatField;
    oqJDetailhrg_jual_lusin: TFloatField;
    oqJDetailhrg_jual_biji: TFloatField;
    oqJDetailtotal_netto: TFloatField;
    oqJDetailkd_disc_pc: TStringField;
    oqJDetailkd_disc_1: TStringField;
    oqJDetailkd_disc_2: TStringField;
    oqJDetailtotal_bruto: TFloatField;
    oqJDetailppn_per_pc: TFloatField;
    oqJDetaildisc_psn_pc: TFloatField;
    oqJDetaildisc_rp_pc: TFloatField;
    oqJDetaildisc_psn_pc_kondisi: TFloatField;
    oqJDetaildisc_rp_pc_kondisi: TFloatField;
    oqJDetaildisc_psn_1: TFloatField;
    oqJDetaildisc_rp_1: TFloatField;
    oqJDetaildisc_psn_1_kondisi: TFloatField;
    oqJDetaildisc_rp_1_kondisi: TFloatField;
    oqJDetaildisc_psn_2: TFloatField;
    oqJDetaildisc_rp_2: TFloatField;
    oqJDetaildisc_psn_2_kondisi: TFloatField;
    oqJDetaildisc_rp_2_kondisi: TFloatField;
    oqJDetailno_detail: TLargeintField;
    oqJDetailid_import: TLargeintField;
    procedure btnImportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tabErrorShow(Sender: TObject);
    procedure btnInsertErrorClick(Sender: TObject);
    procedure btnFetchClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    { Private declarations }
    vSeqImport : Int64;
    tmp,dt: TDateTime;
    dd,mm,yy: Word;
    i,cnt : integer;
    isProses : boolean;
    s, opr, vretur, dt_5 : string;

    procedure importJheader;
    procedure importJdetail;
    function importAll:Boolean;

    procedure FetchJheader;
    procedure FetchJdetail;
    function isErrorData:Boolean;
    function FixedErrorData:Boolean;
  public
    { Public declarations }
  end;

var
  ImportPiutangMayoraFrm: TImportPiutangMayoraFrm;

implementation

uses U_DM;

{$R *.dfm}


procedure TImportPiutangMayoraFrm.FetchJheader;
var qw : integer;
begin
    pgrsTotal.Min:= 0;
    pgrsTotal.Max:= 6;
    pgrsTotal.Position:= 0;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Memulai proses Fetching Data JHEADER';

   try

    LblStatus.Caption:= 'Status : Fetching Data JHEADER';

    qSettingFaktur.Close;
    qSettingFaktur.Params.ParamByName('pjenis').Value:= 'ULI';
    qSettingFaktur.Open;

    odsImport.Close;
    odsImport.Delimiter:= edtDelimiter.Text[1];
    odsImport.FileName:= Trim(edtLocation.Text+'\'+'JHEADER.txt');
    odsImport.Open;

    kmtJHEADER.Close;
    kmtJHEADER.Open;
    kmtJHEADER.EmptyTable;

    pgrsProcess.Position:= 0;
    i:= 1;
    cnt:= odsImport.RecordCount;

    odsImport.First;
    while not odsImport.Eof do begin
      kmtJHEADER.Append;
      for qw:=0 to odsImport.Fields.Count-1  do  begin
          if qw=0 then begin
             kmtJHEADERKode_Distributor.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=1 then begin
             kmtJHEADERNo_Order.AsString:= Trim(odsImport.Fields[qw].Value);
          end  // END OF iq=1
          else
          if qw=2 then begin
//              kmtJHEADERTGL_FAKTUR.AsString:= FormatDateTime('ddmmyyyy',dtpStart.Date);
              kmtJHEADEROrder_Sales.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=3 then begin
             kmtJHEADERTipe.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=5 then begin
             kmtJHEADERNo_Outlet.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=6 then begin
             kmtJHEADERNo_Invoice.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=7 then begin
             kmtJHEADERNo_Rekap.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=8 then begin
             kmtJHEADERTgl_Order.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=9 then begin
             kmtJHEADERTgl_Invoice.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=10 then begin
             kmtJHEADERTgl_Jth_Tempo.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=11 then begin
             kmtJHEADERCara_Bayar.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=12 then begin
             kmtJHEADERNo_PO.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=13 then begin
             kmtJHEADERNo_Mobil.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=14 then begin
             kmtJHEADERSub_Total.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=15 then begin
               kmtJHEADERDisc_Psn.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=16 then begin
               kmtJHEADERTot_TPR_Barang.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=17 then begin
               kmtJHEADERTot_TPR_Uang.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=18 then begin
               kmtJHEADERTot_Disc_PC.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=19 then begin
              kmtJHEADERTot_Disc1.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=20 then begin
               kmtJHEADERTot_Disc2.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=21 then begin
             kmtJHEADERTotal.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=22 then begin
             kmtJHEADERNilai_Invoice.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=23 then begin
             kmtJHEADERBayar.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=24 then begin
            kmtJHEADERTipe_Pajak.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=25 then begin
             kmtJHEADERNo_pajak.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=26 then begin
             kmtJHEADERTgl_Pajak.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=27 then begin
             kmtJHEADERPpn.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=28 then begin
             kmtJHEADERDisc_Rp.AsString:= Trim(odsImport.Fields[qw].Value);
          end;
      end;  //end of for
      kmtJHEADER.Post;

      pgrsProcess.Position:= Trunc((i/cnt)*100);
      Application.ProcessMessages;
      i:= i+1;

      odsImport.Next;
    end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 50;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Proses Fetching Data JHEADER Sukses';

   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TImportPiutangMayoraFrm.FetchJdetail;
var qw : integer;
begin
   try

    LblStatus.Caption:= 'Status : Memulai Fetching Data JDETAIL';
    odsImport.Close;
    odsImport.FileName:= Trim(edtLocation.Text+'\'+'JDETAIL.txt');
    odsImport.Open;

    kmtJDETAIL.Close;
    kmtJDETAIL.Open;
    kmtJDETAIL.EmptyTable;

    pgrsProcess.Position:= 0;
    i:= 1;
    cnt:= odsImport.RecordCount;

    odsImport.First;
    while not odsImport.Eof do begin
      kmtJDETAIL.Append;
          for qw:=0 to odsImport.Fields.Count-1  do  begin
            if qw=0 then begin
               kmtJDETAILtipe_barang.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=1 then begin
               kmtJDETAILid_distributor.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=2 then begin
               kmtJDETAILno_order.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=3 then begin
               kmtJDETAILorder_sales.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=4 then begin
               kmtJDETAILtipe.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=5 then begin
               kmtJDETAILid_item.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=6 then begin
               kmtJDETAILdisc_rp.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=7 then begin
              kmtJDETAILqty_karton.AsString:= copy(odsImport.Fields[qw].Value,1,5);
              kmtJDETAILqty_lusin.AsString:= copy(odsImport.Fields[qw].Value,7,3);
              kmtJDETAILqty_biji.AsString:= copy(odsImport.Fields[qw].Value,11,3);
            end
            else
            if qw=8 then begin
               kmtJDETAILqty_jml_biji.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=9 then begin
               kmtJDETAILhrg_jual_karton.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=10 then begin
               kmtJDETAILhrg_jual_lusin.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=11 then begin
               kmtJDETAILhrg_jual_biji.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=12 then begin
               kmtJDETAILtotal_netto.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=13 then begin
               kmtJDETAILkd_disc_pc.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=14 then begin
               kmtJDETAILkd_disc_1.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=15 then begin
               kmtJDETAILkd_disc_2.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=16 then begin
               kmtJDETAILtotal_bruto.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=17 then begin
               kmtJDETAILppn_per_pc.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=18 then begin
               kmtJDETAILdisc_psn_pc.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=19 then begin
               kmtJDETAILdisc_rp_pc.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=20 then begin
               kmtJDETAILdisc_psn_pc_kondisi.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=21 then begin
               kmtJDETAILdisc_rp_pc_kondisi.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=22 then begin
               kmtJDETAILdisc_psn_1.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=23 then begin
               kmtJDETAILdisc_rp_1.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=24 then begin
               kmtJDETAILdisc_psn_1_kondisi.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=25 then begin
               kmtJDETAILdisc_rp_1_kondisi.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=26 then begin
               kmtJDETAILdisc_psn_2.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=27 then begin
               kmtJDETAILdisc_rp_2.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=28 then begin
               kmtJDETAILdisc_psn_2_kondisi.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end
            else
            if qw=29 then begin
               kmtJDETAILdisc_rp_2_kondisi.AsString:= StringReplace(Trim(odsImport.Fields[qw].Value),',','.',[rfReplaceAll]);
            end;

          end; // END OF for to
      kmtJDETAIL.Post;

      pgrsProcess.Position:= Trunc((i/cnt)*100);
      Application.ProcessMessages;
      i:= i+1;
      odsImport.Next;
    end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 100;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Proses Fetching Data JDETAIL Sukses';

   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;

function TImportPiutangMayoraFrm.isErrorData:Boolean;
begin

   Result:= False;
     try
         LblStatus.Caption:= 'Status : CEK DATA SALESMAN DAN OUTLET';
         pgrsProcess.Position:= 0;
         i:= 1;
         cnt:= kmtJHEADER.RecordCount;

         kmtJHEADER.First;
         while not kmtJHEADER.Eof do begin
      //CEK SALESMAN
            DM.PrepareQuery(odsCheck);
            s:='select * from master.mdivision where id_division='+QuotedStr(kmtJHEADEROrder_Sales.AsString);
            DM.OpenQuery(odsCheck,s);
             if odsCheck.RecordCount=0 then begin
                DM.PrepareQuery(oqExec);
                s:= 'insert into transaksi.import_error (id_import, nama_tabel, nama_field, keterangan)';
                s:= s+' values (nextval('+QuotedStr('transaksi.sq_import_error')+')';
                s:= s+', '+QuotedStr('master.mdivision');
                s:= s+', '+QuotedStr('id_division');
                s:= s+', '+QuotedStr(kmtJHEADEROrder_Sales.AsString);
                s:= s+')';
                DM.ExecQuery(oqExec,s);
             end;

      //CEK OUTLET
          DM.PrepareQuery(odsCheck);
          s:= 'select * from master.mrekanan where jenis='+QuotedStr('CUSTOMER');
          s:= s+' AND kd_rekanan='+QuotedStr(kmtJHEADERNo_Outlet.AsString);
          DM.OpenQuery(odsCheck,s);
           if odsCheck.RecordCount=0 then begin
              DM.PrepareQuery(oqExec);
              s:= 'insert into transaksi.import_error (id_import, nama_tabel, nama_field, keterangan)';
              s:= s+' values (nextval('+QuotedStr('transaksi.sq_import_error')+')';
              s:= s+', '+QuotedStr('master.mrekanan');
              s:= s+', '+QuotedStr('kd_rekanan');
              s:= s+', '+QuotedStr(kmtJHEADERNo_Outlet.AsString);
              s:= s+')';
              DM.ExecQuery(oqExec,s);
           end;

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;
          kmtJHEADER.Next;
         end;

          pgrsProcess.Position:= 100;
          pgrsTotal.Position:= 5;
          Application.ProcessMessages;

       //CEK ITEM
       kmtJDETAIL.First;

       LblStatus.Caption:= 'Status : CEK DATA JDETAIL ';
       pgrsProcess.Position:= 0;
       i:= 1;
       cnt:= kmtJDETAIL.RecordCount;

      //cek error
      DM.PrepareQuery(odsCheck);
      s:= 'select * from transaksi.import_error';
      DM.OpenQuery(odsCheck,s);

      pgrsProcess.Position:= 100;
      pgrsTotal.Position:= 6;
      Application.ProcessMessages;


      if odsCheck.RecordCount>0 then begin
        Result:= True;
        LblStatus.Caption:= 'Status : Proses Check Data Selesai, Ada Data Error Sejumlah : '+IntToStr(odsCheck.RecordCount);
      end
      else
        LblStatus.Caption:= 'Status : Proses Check Data Selesai, Tidak Ada Data Error';

     except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
     end;
end;


procedure TImportPiutangMayoraFrm.btnImportClick(Sender: TObject);
begin
    DM.vSysDate.Close;
    DM.vSysDate.Open;
    tmp:= DM.vSysDatedt_server.AsDateTime;
    DecodeDate(tmp,yy,mm,dd);
    dt:= EncodeDate(yy,mm,dd);
    opr:= DM.UserConnect;
    vSeqImport:= sq_IMPORT.GetNextValue;

    try
      kmtJHEADER.DisableControls;
      kmtJDETAIL.DisableControls;

      importJheader;
      importJdetail;
    finally
       kmtJHEADER.EnableControls;
       kmtJDETAIL.EnableControls;
       btnImport.Visible:= False;
       btnInsertError.Visible:= False;
       btnFetch.Visible:= True;
      if importAll then LblStatus.Caption:= 'Status : Proses Import Data SUKSES !!!'
      else LblStatus.Caption:= 'Status : Proses Import Data GAGAL, transaksi.fn_proc_insert_tmp_mayora() error  !!!';
    end;
end;

procedure TImportPiutangMayoraFrm.importJheader;
var d,m,y : word;
begin
    if kmtJHEADER.RecordCount>0 then
       isProses:= True;

    pgrsTotal.Min:= 0;
    pgrsTotal.Max:= 5;
    pgrsTotal.Position:= 0;
    LblStatus.Caption:= 'Status : Memulai proses Import Data JHEADER';


    if isProses then begin
        LblStatus.Caption:= 'Status : Import Data JHEADER';

        oqJHeader.Close;
        oqJHeader.Open;

        pgrsProcess.Position:= 0;
        i:= 1;
        cnt:= kmtJHEADER.RecordCount;

        kmtJHEADER.First;

        while not kmtJHEADER.Eof do begin
          oqJHeader.Append;
          oqJHeaderid_distributor.AsString:= Trim(kmtJHEADERKode_Distributor.AsString);
          oqJHeaderno_order.AsString:= Trim(kmtJHEADERNo_Order.AsString);
          oqJHeaderorder_sales.AsString:= Trim(kmtJHEADEROrder_Sales.AsString);
          oqJHeadertipe.AsString:= Trim(kmtJHEADERTipe.AsString);
          oqJHeaderno_outlet.AsString:= Trim(kmtJHEADERNo_Outlet.AsString);
          oqJHeaderno_invoice.AsString:= Trim(kmtJHEADERNo_Invoice.AsString);
          oqJHeaderno_rekap.AsString:= Trim(kmtJHEADERNo_Rekap.AsString);

          oqJHeadertgl_order.AsDateTime:= EncodeDate(StrToInt(copy(kmtJHEADERTgl_Order.AsString,5,4)),
                                                     StrToInt(copy(kmtJHEADERTgl_Order.AsString,3,2)),
                                                     StrToInt(copy(kmtJHEADERTgl_Order.AsString,1,2)));

          oqJHeadertgl_invoice.AsDateTime:= EncodeDate(StrToInt(copy(kmtJHEADERTgl_Invoice.AsString,5,4)),
                                                       StrToInt(copy(kmtJHEADERTgl_Invoice.AsString,3,2)),
                                                       StrToInt(copy(kmtJHEADERTgl_Invoice.AsString,1,2)));

          oqJHeadertgl_jth_tempo.AsDateTime:= EncodeDate(StrToInt(copy(kmtJHEADERTgl_Jth_Tempo.AsString,5,4)),
                                                         StrToInt(copy(kmtJHEADERTgl_Jth_Tempo.AsString,3,2)),
                                                         StrToInt(copy(kmtJHEADERTgl_Jth_Tempo.AsString,1,2)));

           oqJHeadercara_bayar.AsString:= Trim(kmtJHEADERCara_Bayar.AsString);
           oqJHeaderno_po.AsString:= Trim(kmtJHEADERNo_PO.AsString);
           oqJHeaderno_mobil.AsString:= Trim(kmtJHEADERNo_Mobil.AsString);

           if kmtJHEADERSub_Total.IsNull or (Trim(kmtJHEADERSub_Total.AsString)='')
              then oqJHeadersub_total.AsFloat:= 0
              else oqJHeadersub_total.AsFloat:= StrToFloat(Trim(kmtJHEADERSub_Total.AsString));

           if kmtJHEADERDisc_Psn.IsNull or (Trim(kmtJHEADERDisc_Psn.AsString)='')
              then oqJHeaderdisc_psn.AsFloat:= 0
              else oqJHeaderdisc_psn.AsFloat:= StrToFloat(Trim(kmtJHEADERDisc_Psn.AsString));

           if kmtJHEADERTot_TPR_Barang.IsNull or (Trim(kmtJHEADERTot_TPR_Barang.AsString)='')
              then oqJHeadertotal_tpr_brg.AsFloat:= 0
              else oqJHeadertotal_tpr_brg.AsFloat:= StrToFloat(Trim(kmtJHEADERTot_TPR_Barang.AsString));

           if kmtJHEADERTot_TPR_Uang.IsNull or (Trim(kmtJHEADERTot_TPR_Uang.AsString)='')
              then oqJHeadertotal_tpr_uang.AsFloat:= 0
              else oqJHeadertotal_tpr_uang.AsFloat:= StrToFloat(Trim(kmtJHEADERTot_TPR_Uang.AsString));

           if kmtJHEADERTot_Disc_PC.IsNull or (Trim(kmtJHEADERTot_Disc_PC.AsString)='')
              then oqJHeaderdisc_tot_pc.AsFloat:= 0
              else oqJHeaderdisc_tot_pc.AsFloat:= StrToFloat(Trim(kmtJHEADERTot_Disc_PC.AsString));

           if kmtJHEADERTot_Disc1.IsNull or (Trim(kmtJHEADERTot_Disc1.AsString)='')
              then oqJHeaderdisc_tot_1.AsFloat:= 0
              else oqJHeaderdisc_tot_1.AsFloat:= StrToFloat(Trim(kmtJHEADERTot_Disc1.AsString));

           if kmtJHEADERTot_Disc2.IsNull or (Trim(kmtJHEADERTot_Disc2.AsString)='')
              then oqJHeaderdisc_tot_2.AsFloat:= 0
              else oqJHeaderdisc_tot_2.AsFloat:= StrToFloat(Trim(kmtJHEADERTot_Disc2.AsString));

           if kmtJHEADERTotal.IsNull or (Trim(kmtJHEADERTotal.AsString)='')
              then oqJHeadertotal.AsFloat:= 0
              else oqJHeadertotal.AsFloat:= StrToFloat(Trim(kmtJHEADERTotal.AsString));

           if kmtJHEADERNilai_Invoice.IsNull or (Trim(kmtJHEADERNilai_Invoice.AsString)='')
              then oqJHeadernilai_inv.AsFloat:= 0
              else oqJHeadernilai_inv.AsFloat:= StrToFloat(Trim(kmtJHEADERNilai_Invoice.AsString));
                
           if kmtJHEADERBayar.IsNull or (Trim(kmtJHEADERBayar.AsString)='')
              then oqJHeadertot_bayar.AsFloat:= 0
              else oqJHeadertot_bayar.AsFloat:= StrToFloat(Trim(kmtJHEADERBayar.AsString));

           oqJHeadertipe_pajak.AsString:= Trim(kmtJHEADERTipe_Pajak.AsString);
           oqJHeaderno_pajak.AsString:= Trim(kmtJHEADERNo_pajak.AsString);

           if (Trim(kmtJHEADERTgl_Pajak.AsString)<>'') then begin
              oqJHeadertgl_pajak.AsDateTime:= EncodeDate(StrToInt(copy(kmtJHEADERTgl_Pajak.AsString,5,4)),
                                                         StrToInt(copy(kmtJHEADERTgl_Pajak.AsString,3,2)),
                                                         StrToInt(copy(kmtJHEADERTgl_Pajak.AsString,1,2)));
           end;

           if kmtJHEADERPpn.IsNull or (Trim(kmtJHEADERPpn.AsString)='')
              then oqJHeaderppn.AsFloat:= 0
              else oqJHeaderppn.AsFloat:= StrToFloat(Trim(kmtJHEADERPpn.AsString));
                
           if kmtJHEADERDisc_Rp.IsNull or (Trim(kmtJHEADERDisc_Rp.AsString)='')
              then oqJHeaderdisc_rp.AsFloat:= 0
              else oqJHeaderdisc_rp.AsFloat:= StrToFloat(Trim(kmtJHEADERDisc_Rp.AsString));

           if (TRIM(kmtJHEADERTipe.AsString)='F') then begin
              oqJHeaderid_trans.AsString:= '201';
           end else begin
              oqJHeaderid_trans.AsString:= '202';
           end;

          oqJHeaderusr_ins.AsString:= opr;
          oqJHeaderusr_upd.AsString:= opr;
          oqJHeaderdt_ins.AsDateTime:= tmp;
          oqJHeaderdt_upd.AsDateTime:= tmp;
          oqJHeaderid_import.AsLargeInt:= vSeqImport;
          oqJHeader.Post;

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;

          kmtJHEADER.Next;
        end;      // end of while not eof                                   \

          pgrsProcess.Position:= 100;
          pgrsTotal.Position:= 50;
          Application.ProcessMessages;
          LblStatus.Caption:= 'Status : Proses Import data JHEADER Sukses';
    end
    else begin
        DM.MyMsg(mmError,'File JHEADER tidak ada data/kosong !','Periksa ulang file JHEADER !!!');
        Exit;
    end;
    // end of isProses
end;

procedure TImportPiutangMayoraFrm.importJdetail;
begin
    LblStatus.Caption:= 'Status : Memulai proses import JHEADER';

    if kmtJDETAIL.RecordCount>0 then
       isProses:= True;

    if isProses then begin

            LblStatus.Caption:= 'Status : Import file JHEADER';

            oqJDetail.Close;
            oqJDetail.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= kmtJDETAIL.RecordCount;
            kmtJDETAIL.First;

            while not kmtJDETAIL.Eof do begin
              oqJDetail.Append;
              oqJDetailtipe_barang.AsString:= Trim(kmtJDETAILtipe_barang.AsString);
              oqJDetailid_distributor.AsString:= Trim(kmtJDETAILid_distributor.AsString);
              oqJDetailno_order.AsString:= Trim(kmtJDETAILno_order.AsString);
              oqJDetailorder_sales.AsString:= Trim(kmtJDETAILorder_sales.AsString);
              oqJDetailtipe.AsString:= Trim(kmtJDETAILtipe.AsString);
              oqJDetailid_item.AsString:= Trim(kmtJDETAILid_item.AsString);

              oqJDetaildisc_rp.AsFloat:= StrToFloat(kmtJDETAILdisc_rp.AsString);
              oqJDetailqty_karton.AsFloat:= StrToFloat(kmtJDETAILqty_karton.AsString);
              oqJDetailqty_lusin.AsFloat:= StrToFloat(kmtJDETAILqty_lusin.AsString);
              oqJDetailqty_biji.AsFloat:= StrToFloat(kmtJDETAILqty_biji.AsString);
              oqJDetailqty_jml_biji.AsFloat:= StrToFloat(kmtJDETAILqty_jml_biji.AsString);
              oqJDetailhrg_jual_karton.AsFloat:= StrToFloat(kmtJDETAILhrg_jual_karton.AsString);
              oqJDetailhrg_jual_lusin.AsFloat:= StrToFloat(kmtJDETAILhrg_jual_lusin.AsString);
              oqJDetailhrg_jual_biji.AsFloat:= StrToFloat(kmtJDETAILhrg_jual_biji.AsString);
              oqJDetailtotal_netto.AsFloat:= StrToFloat(kmtJDETAILtotal_netto.AsString);

              oqJDetailkd_disc_pc.AsString:= Trim(kmtJDETAILkd_disc_pc.AsString);
              oqJDetailkd_disc_1.AsString:= Trim(kmtJDETAILkd_disc_1.AsString);
              oqJDetailkd_disc_2.AsString:= Trim(kmtJDETAILkd_disc_2.AsString);

              if kmtJDETAILtotal_bruto.IsNull or (Trim(kmtJDETAILtotal_bruto.AsString)='')
                 then oqJDetailtotal_bruto.AsFloat:= 0
              else oqJDetailtotal_bruto.AsFloat:= StrToFloat(kmtJDETAILtotal_bruto.AsString);

              if kmtJDETAILppn_per_pc.IsNull or (Trim(kmtJDETAILppn_per_pc.AsString)='')
                 then oqJDetailppn_per_pc.AsFloat:= 0
              else oqJDetailppn_per_pc.AsFloat:= StrToFloat(kmtJDETAILppn_per_pc.AsString);

              if kmtJDETAILdisc_psn_pc.IsNull or (Trim(kmtJDETAILdisc_psn_pc.AsString)='')
                 then oqJDetaildisc_psn_pc.AsFloat:= 0
              else oqJDetaildisc_psn_pc.AsFloat:= StrToFloat(kmtJDETAILdisc_psn_pc.AsString);

              if kmtJDETAILdisc_rp_pc.IsNull or (Trim(kmtJDETAILdisc_rp_pc.AsString)='')
                 then oqJDetaildisc_rp_pc.AsFloat:= 0
              else oqJDetaildisc_rp_pc.AsFloat:= StrToFloat(kmtJDETAILdisc_rp_pc.AsString);

              if kmtJDETAILdisc_psn_pc_kondisi.IsNull or (Trim(kmtJDETAILdisc_psn_pc_kondisi.AsString)='')
                 then oqJDetaildisc_psn_pc_kondisi.AsFloat:= 0
              else oqJDetaildisc_psn_pc_kondisi.AsFloat:= StrToFloat(kmtJDETAILdisc_psn_pc_kondisi.AsString);

              if kmtJDETAILdisc_rp_pc_kondisi.IsNull or (Trim(kmtJDETAILdisc_rp_pc_kondisi.AsString)='')
                 then oqJDetaildisc_rp_pc_kondisi.AsFloat:= 0
              else oqJDetaildisc_rp_pc_kondisi.AsFloat:= StrToFloat(kmtJDETAILdisc_rp_pc_kondisi.AsString);

              if kmtJDETAILdisc_psn_1.IsNull or (Trim(kmtJDETAILdisc_psn_1.AsString)='')
                 then oqJDetaildisc_psn_1.AsFloat:= 0
              else oqJDetaildisc_psn_1.AsFloat:= StrToFloat(kmtJDETAILdisc_psn_1.AsString);

              if kmtJDETAILdisc_rp_1.IsNull or (Trim(kmtJDETAILdisc_rp_1.AsString)='')
                 then oqJDetaildisc_rp_1.AsFloat:= 0
              else oqJDetaildisc_rp_1.AsFloat:= StrToFloat(kmtJDETAILdisc_rp_1.AsString);

              if kmtJDETAILdisc_psn_1_kondisi.IsNull or (Trim(kmtJDETAILdisc_psn_1_kondisi.AsString)='')
                 then oqJDetaildisc_psn_1_kondisi.AsFloat:= 0
              else oqJDetaildisc_psn_1_kondisi.AsFloat:= StrToFloat(kmtJDETAILdisc_psn_1_kondisi.AsString);

              if kmtJDETAILdisc_rp_1_kondisi.IsNull or (Trim(kmtJDETAILdisc_rp_1_kondisi.AsString)='')
                 then oqJDetaildisc_rp_1_kondisi.AsFloat:= 0
              else oqJDetaildisc_rp_1_kondisi.AsFloat:= StrToFloat(kmtJDETAILdisc_rp_1_kondisi.AsString);

              if kmtJDETAILdisc_psn_2.IsNull or (Trim(kmtJDETAILdisc_psn_2.AsString)='')
                 then oqJDetaildisc_psn_2.AsFloat:= 0
              else oqJDetaildisc_psn_2.AsFloat:= StrToFloat(kmtJDETAILdisc_psn_2.AsString);

              if kmtJDETAILdisc_rp_2.IsNull or (Trim(kmtJDETAILdisc_rp_2.AsString)='')
                 then oqJDetaildisc_rp_2.AsFloat:= 0
              else oqJDetaildisc_rp_2.AsFloat:= StrToFloat(kmtJDETAILdisc_rp_2.AsString);

              if kmtJDETAILdisc_psn_2_kondisi.IsNull or (Trim(kmtJDETAILdisc_psn_2_kondisi.AsString)='')
                 then oqJDetaildisc_psn_2_kondisi.AsFloat:= 0
              else oqJDetaildisc_psn_2_kondisi.AsFloat:= StrToFloat(kmtJDETAILdisc_psn_2_kondisi.AsString);

              if kmtJDETAILdisc_rp_2_kondisi.IsNull or (Trim(kmtJDETAILdisc_rp_2_kondisi.AsString)='')
                 then oqJDetaildisc_rp_2_kondisi.AsFloat:= 0
              else oqJDetaildisc_rp_2_kondisi.AsFloat:= StrToFloat(kmtJDETAILdisc_rp_2_kondisi.AsString);

              oqJDetailno_detail.AsLargeInt:= sq_JDETAIL.GetNextValue;
              oqJDetailid_import.AsLargeInt:= vSeqImport;
              oqJDetail.Post;

              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;

              kmtJDETAIL.Next;
            end;      // end of while not eof

            pgrsProcess.Position:= 100;
            pgrsTotal.Position:= 100;
            Application.ProcessMessages;
            LblStatus.Caption:= 'Status : Proses Import data JHEADER Sukses';
    end
    else begin
        DM.MyMsg(mmError,'File JHEADER tidak ada data/kosong !','Periksa ulang file JHEADER!!!');
        Exit;
    end;
end;

function TImportPiutangMayoraFrm.importAll:Boolean;
begin
   Result:= True;
   LblStatus.Caption:= 'Status : Import ALL File';

   try
     DM.PrepareQuery(oqExec);
     s:= 'select transaksi.fn_proc_insert_tmp_mayora()';
     DM.ExecQuery(oqExec,s);
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Result:= False;
      end;
   end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 100;
    Application.ProcessMessages;
end;


procedure TImportPiutangMayoraFrm.FormShow(Sender: TObject);
begin

  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);

  LblStatus.Caption:= '';
  pgcImport.ActivePageIndex:=0;
  btnImport.Visible:= False;
  btnInsertError.Visible:= False;
  btnFetch.Visible:= True;
end;

procedure TImportPiutangMayoraFrm.tabErrorShow(Sender: TObject);
begin
   try
     QTableError.Close;
     QTableError.Open;
   except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
   lblHeader.Caption:= 'Data Import Error';
   LblStatus.Caption:= 'Jumlah Data Error : '+IntToStr(QTableError.RecordCount);
end;

function TImportPiutangMayoraFrm.FixedErrorData:Boolean;
var s : String;
   i, cnt: Integer;
begin
     Result:= False;

     pgrsTotal.Position:=0;
     pgrsTotal.Max:=1;
     pgrsProcess.Position:= 0;

     try
       DM.PrepareQuery(odsCheck);
       s:= 'select distinct(nama_tabel) as nama_tabel FROM transaksi.import_error';
       DM.OpenQuery(odsCheck,s);
       i:= 1;
       cnt:= odsCheck.RecordCount;
       LblStatus.Caption:= 'Memulai Proses Perbaikan Data ';

       odsCheck.First;
       while not odsCheck.Eof do begin
          try
               if Trim(odsCheck.FieldbyName('nama_tabel').AsString)='master.mrekanan' then begin
                  DM.PrepareQuery(oqExec);
                  s:= 'SELECT transaksi.proc_ins_new_data('+QuotedStr('master.mrekanan')+')';
                  DM.ExecQuery(oqExec,s);
               end
               else
               if Trim(odsCheck.FieldbyName('nama_tabel').AsString)='master.mdivision' then begin
                  DM.PrepareQuery(oqExec);
                  s:= 'SELECT transaksi.proc_ins_new_data('+QuotedStr('master.mdivision')+')';
                  DM.ExecQuery(oqExec,s);
               end
               else
               if Trim(odsCheck.FieldbyName('nama_tabel').AsString)='master.item' then begin
                  DM.PrepareQuery(oqExec);
                  s:= 'SELECT transaksi.proc_ins_new_data('+QuotedStr('master.item')+')';
                  DM.ExecQuery(oqExec,s);
               end;
          except
            on E: Exception do
              DM.MyMsg(mmError,'Error has been encountered !',E.Message)
          end;
       pgrsProcess.Position:= Trunc((i/cnt)*100);
       LblStatus.Caption:= 'Import ke '+IntToStr(i)+' dari '+IntToStr(cnt)+' data';
       Application.ProcessMessages;
       i:= i+1;

       odsCheck.Next;
       end;

      pgrsProcess.Position:= 100;
      pgrsTotal.Position:= 1;
      Application.ProcessMessages;
      Result:= True;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Result:= False;
      end;
    end;
end;

procedure TImportPiutangMayoraFrm.btnFetchClick(Sender: TObject);
VAR dt1, dtf : String;
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
  // cek data
  DM.PrepareQuery(oqExec);
  s:='SELECT  COUNT(*) as vcount FROM transaksi.nota';
  s:= s+' WHERE dt_nota = to_timestamp('+QuotedStr(dt1)+','+QuotedStr(dtf)+')';
  s:= s+' AND (id_trans='+QuotedStr('201')+' OR id_trans='+QuotedStr('202')+')';
  DM.OpenQuery(oqExec,s);
  if oqExec.FieldByName('vcount').Value>0 then begin
       if DM.MyMsg(mmConfirmation,'Data Penjualan Tgl : '+dt1+' Sudah ada, Proses Import data dilanjutkan ?','Bila proses dilanjutkan data yg sudah ada akan dihapus terlebih dahulu')=101 then
          Exit;
       s:= 'DELETE FROM transaksi.nota WHERE dt_nota = to_timestamp('+QuotedStr(dt1)+','+QuotedStr(dtf)+')';
       DM.PrepareQuery(oqExec);
       DM.ExecQuery(oqExec,s);
  end;

  // delete old tmp data
  DM.PrepareQuery(oqExec);
  s:='select transaksi.fn_delete_tmp_mayora()';
  DM.ExecQuery(oqExec,s);

  LblStatus.Caption:= 'Status : Hapus data temporary lama';

   try
     kmtJHEADER.DisableControls;
     kmtJDETAIL.DisableControls;

     FetchJheader;
     FetchJdetail;
//     if isErrorData then begin
//        btnImport.Visible:= False;
//        btnFetch.Visible:= False;
//        btnInsertError.Visible:= True;
//     end
//     else begin
        btnFetch.Visible:= False;
        btnInsertError.Visible:= False;
        btnImport.Visible:= True;
//     end;

   finally
     kmtJHEADER.EnableControls;
     kmtJDETAIL.EnableControls;
    end;
end;

procedure TImportPiutangMayoraFrm.btnInsertErrorClick(Sender: TObject);
begin
   if FixedErrorData then begin
      LblStatus.Caption:= 'Proses PERBAIKAN DATA ERROR sukses ...!!  Ulangi lagi proses Import data ';
      btnInsertError.Visible:= False;
      btnFetch.Visible:= False;
      btnImport.Visible:= True;
      pgcImport.ActivePageIndex:= 0;
      lblHeader.Caption:= 'Import Data Faktur Penjualan ';
   end
   else begin
      LblStatus.Caption:= 'Proses PERBAIKAN DATA ERROR Tidak sukses ...!!  Hubungi ADMINISTRATOR';
      Exit;
   end;
end;


procedure TImportPiutangMayoraFrm.btnCloseClick(Sender: TObject);
begin
Close;
end;

end.

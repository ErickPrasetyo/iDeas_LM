unit U_ImportPiutang;

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
  LMDCustomBrowseEdit, LMDBrowseEdit;

type
  TImportPiutangFrm = class(TForm)
    AdvFormStyler1: TAdvFormStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    pnlTop: TAdvPanel;
    lblHeader: TLabel;
    odsCheck: TZQuery;
    oqExec: TZQuery;
    odsExport: TZQuery;
    oqJHeader: TZQuery;
    oqJHeaderno_nota: TStringField;
    oqJHeaderdt_nota: TDateTimeField;
    oqJHeaderno_bukti: TStringField;
    oqJHeaderdt_ins: TDateTimeField;
    oqJHeaderdt_upd: TDateTimeField;
    oqJHeaderusr_ins: TStringField;
    oqJHeaderusr_upd: TStringField;
    oqJHeaderkd_rekanan: TStringField;
    oqJHeaderid_trans: TStringField;
    oqJHeaderid_division: TStringField;
    oqJHeadercara_bayar: TStringField;
    oqJHeaderno_rekap: TStringField;
    oqJHeadersub_total: TFloatField;
    oqJHeaderclaim: TFloatField;
    oqJHeaderdisc_rp: TFloatField;
    oqJHeaderpromo_uang: TFloatField;
    oqJHeaderpromo_barang: TFloatField;
    oqJHeadernet_n_ppn: TFloatField;
    oqJHeadernretur: TFloatField;
    oqJHeadernota_diretur: TStringField;
    oqJPcode: TZQuery;
    oqJPcodeno_detail: TLargeintField;
    oqJPcodeno_nota: TStringField;
    oqJPcodekd_item: TStringField;
    oqJPcodehrg_jual_karton: TFloatField;
    oqJPcodehrg_jual_lusin: TFloatField;
    oqJPcodeqty_in_karton: TFloatField;
    oqJPcodeqty_ot_karton: TFloatField;
    oqJPcodeqty_in_lusin: TFloatField;
    oqJPcodeqty_ot_lusin: TFloatField;
    oqJPcodeqty_in_biji: TFloatField;
    oqJPcodeqty_ot_biji: TFloatField;
    oqJPcodetotal: TFloatField;
    oqJPcodeqty_in_total: TFloatField;
    oqJPcodeqty_ot_total: TFloatField;
    oqJTprb: TZQuery;
    oqJTpru: TZQuery;
    oqJTpruno_detail: TLargeintField;
    oqJTpruno_nota: TStringField;
    oqJTprukd_item: TStringField;
    oqJTprudisc: TFloatField;
    sq_JPCODE: TZSequence;
    sq_JTPRB: TZSequence;
    sq_JTPRU: TZSequence;
    oqJTprbno_detail: TLargeintField;
    oqJTprbno_nota: TStringField;
    oqJTprbkd_item: TStringField;
    oqJTprbhrg_jual_karton: TFloatField;
    oqJTprbhrg_jual_lusin: TFloatField;
    oqJTprbqty_ot_karton: TFloatField;
    oqJTprbqty_ot_lusin: TFloatField;
    oqJTprbqty_ot_biji: TFloatField;
    oqJTprbtotal: TFloatField;
    oqJTprbqty_ot_total: TFloatField;
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
    oqJHeaderno_pajak: TStringField;
    oqJHeaderid_import: TLargeintField;
    oqJPcodeid_import: TLargeintField;
    oqJTprbid_import: TLargeintField;
    oqJTpruid_import: TLargeintField;
    sq_IMPORT: TZSequence;
    pnlBottom: TPanel;
    btnClose: TSCButton;
    Panel2: TPanel;
    pgrsTotal: TSCProgress;
    pgrsProcess: TSCProgress;
    LblStatus: TLabel;
    kmtJHEADER: TkbmMemTable;
    StatusBar1: TStatusBar;
    kmtJHEADERKD_SALES: TWideStringField;
    kmtJHEADERNO_ORDER: TWideStringField;
    kmtJHEADERTGL_ORDER: TWideStringField;
    kmtJHEADERKD_OUTLET: TWideStringField;
    kmtJHEADERSUB_TOTAL: TWideStringField;
    kmtJHEADERPROMO_BRG: TWideStringField;
    kmtJHEADERPROMO_UANG: TWideStringField;
    kmtJHEADERPPN: TWideStringField;
    kmtJHEADERNET_N_PPN: TWideStringField;
    kmtJHEADERNO_FAKTUR: TWideStringField;
    kmtJHEADERDISC: TWideStringField;
    kmtJHEADERTGL_FAKTUR: TWideStringField;
    kmtJHEADERNO_PAJAK: TWideStringField;
    kmtJHEADERNO_REKAP: TWideStringField;
    kmtJHEADERFAKTUR_DIRETUR: TWideStringField;
    dskmtJHEADER: TwwDataSource;
    qSettingFaktur: TZQuery;
    qSettingFakturjns_faktur: TStringField;
    qSettingFakturno_faktur_sales: TStringField;
    qSettingFakturno_order_faktur: TStringField;
    qSettingFakturno_order_retur: TStringField;
    qSettingFakturno_faktur_retur: TStringField;
    qSettingFakturno_order_canvas: TStringField;
    qSettingFakturno_faktur_canvas: TStringField;
    dskmtJPCODE: TwwDataSource;
    kmtJPCODE: TkbmMemTable;
    kmtJPCODENO_ORDER: TStringField;
    kmtJPCODEKD_ITEM: TStringField;
    kmtJPCODEQTY_KARTON: TStringField;
    kmtJPCODEQTY_LUSIN: TStringField;
    kmtJPCODEQTY_BIJI: TStringField;
    kmtJPCODEQTY_TOTAL_BIJI: TStringField;
    kmtJPCODEHRG_KARTON: TStringField;
    kmtJPCODEHRG_LUSIN: TStringField;
    kmtJPCODETOTAL: TStringField;
    kmtJPCODEJENIS: TStringField;
    kmtJTPRB: TkbmMemTable;
    dskmtJTPRB: TwwDataSource;
    kmtJTPRBNO_ORDER: TStringField;
    kmtJTPRBKD_ITEM: TStringField;
    kmtJTPRBQTY_KARTON: TStringField;
    kmtJTPRBQTY_LUSIN: TStringField;
    kmtJTPRBQTY_BIJI: TStringField;
    kmtJTPRBQTY_TOTAL_BIJI: TStringField;
    kmtJTPRBHRG_KARTON: TStringField;
    kmtJTPRBHRG_LUSIN: TStringField;
    kmtJTPRBTOTAL: TStringField;
    kmtJTPRBJENIS: TStringField;
    kmtJTPRU: TkbmMemTable;
    dskmtJTPRU: TwwDataSource;
    kmtJTPRUNO_ORDER: TStringField;
    kmtJTPRUKD_ITEM: TStringField;
    kmtJTPRUJENIS: TStringField;
    kmtJTPRUDISC: TStringField;
    pgcImport: TcxPageControl;
    tabJHEADER: TcxTabSheet;
    grdJHEADER: TcxGrid;
    grdDBTV_JHEADER: TcxGridDBTableView;
    grdDBTV_JHEADER_KD_SALES: TcxGridDBColumn;
    grdDBTV_JHEADER_NOORDER: TcxGridDBColumn;
    grdDBTV_JHEADER_TGL_ORDER: TcxGridDBColumn;
    grdDBTV_JHEADER_KD_OUTLET: TcxGridDBColumn;
    grdDBTV_JHEADER_SUB_TOTAL: TcxGridDBColumn;
    grdDBTV_JHEADER_PROMO_BRG: TcxGridDBColumn;
    grdDBTV_JHEADER_PROMO_UANG: TcxGridDBColumn;
    grdDBTV_JHEADER_PPN: TcxGridDBColumn;
    grdDBTV_JHEADER_NET_N_PPN: TcxGridDBColumn;
    grdDBTV_JHEADER_NO_FAKTUR: TcxGridDBColumn;
    grdDBTV_JHEADER_DISC: TcxGridDBColumn;
    grdDBTV_JHEADER_TGL_FAKTUR: TcxGridDBColumn;
    grdDBTV_JHEADER_NO_PAJAK: TcxGridDBColumn;
    grdDBTV_JHEADER_NO_REKAP: TcxGridDBColumn;
    grdDBTV_JHEADER_FAKTUR_DIRETUR: TcxGridDBColumn;
    grdLvlJHEADER: TcxGridLevel;
    dbnJHEADER: TcxDBNavigator;
    tabJPCODE: TcxTabSheet;
    grdJPCODE: TcxGrid;
    grdDBTV_JPCODE: TcxGridDBTableView;
    grdDBTV_JPCODENO_ORDER: TcxGridDBColumn;
    grdDBTV_JPCODEKD_ITEM: TcxGridDBColumn;
    grdDBTV_JPCODEQTY_KARTON: TcxGridDBColumn;
    grdDBTV_JPCODEQTY_LUSIN: TcxGridDBColumn;
    grdDBTV_JPCODEQTY_BIJI: TcxGridDBColumn;
    grdDBTV_JPCODEQTY_TOTAL_BIJI: TcxGridDBColumn;
    grdDBTV_JPCODEHRG_KARTON: TcxGridDBColumn;
    grdDBTV_JPCODEHRG_LUSIN: TcxGridDBColumn;
    grdDBTV_JPCODETOTAL: TcxGridDBColumn;
    grdDBTV_JPCODEJENIS: TcxGridDBColumn;
    grdLVLJPCODE: TcxGridLevel;
    dbnJPCODE: TcxDBNavigator;
    tabJTPRB: TcxTabSheet;
    grdJTPRB: TcxGrid;
    grdDBTV_JTPRB: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    grdLVLJTPRB: TcxGridLevel;
    dbnJTPRB: TcxDBNavigator;
    tabJTPRU: TcxTabSheet;
    dbnJTPRU: TcxDBNavigator;
    grdJTPRU: TcxGrid;
    grdDBTV_JTPRU: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    grdLVLJTPRU: TcxGridLevel;
    tabError: TcxTabSheet;
    grdError: TcxGrid;
    grddbtv_Error: TcxGridDBTableView;
    grddbtv_Errortable_name: TcxGridDBColumn;
    grddbtv_Errorfield_name: TcxGridDBColumn;
    grddbtv_Errordata_value: TcxGridDBColumn;
    grdLvlError: TcxGridLevel;
    Panel1: TPanel;
    lblLocation: TLabel;
    btnImport: TSCButton;
    btnFetch: TSCButton;
    btnInsertError: TSCButton;
    SCButton1: TSCButton;
    SCButton2: TSCButton;
    SCButton3: TSCButton;
    SCButton4: TSCButton;
    qGetNo_Faktur: TZReadOnlyQuery;
    dtpStart: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    kmtJPCODESTATUS: TStringField;
    oqJPcodestatus: TStringField;
    grdDBTV_JPCODESTATUS: TcxGridDBColumn;
    oqJHeaderis_kanvas: TStringField;
    edtLocation: TLMDBrowseEdit;
    SdfDataSet1: TSdfDataSet;
    odsImport: TSdfDataSet;
    procedure btnImportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tabErrorShow(Sender: TObject);
    procedure btnInsertErrorClick(Sender: TObject);
    procedure btnFetchClick(Sender: TObject);

  private
    { Private declarations }
    vSeqImport : Int64;
    tmp,dt: TDateTime;
    dd,mm,yy: Word;
    i,cnt : integer;
    isProses : boolean;
    s, opr, vretur, dt_5 : string;

    procedure importJheader;
    procedure importJpcode;
    procedure importJtprb;
    procedure importJtpru;
    function importAll:Boolean;

    procedure FetchJheader;
    procedure FetchJpcode;
    procedure FetchJtprb;
    procedure FetchJtpru;
    function isErrorData:Boolean;
    function FixedErrorData:Boolean;
    procedure isErrorItem(nilai:String);

  public
    { Public declarations }
  end;

var
  ImportPiutangFrm: TImportPiutangFrm;

implementation

uses U_DM;

{$R *.dfm}


procedure TImportPiutangFrm.FetchJheader;
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
             kmtJHEADERKD_SALES.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=1 then begin
             kmtJHEADERNO_ORDER.AsString:= Trim(odsImport.Fields[qw].Value);
          end  // END OF iq=1
          else
          if qw=2 then begin
          //   kmtJHEADERTGL_FAKTUR.AsString:= Trim(odsImport.Fields[qw].Value);
              kmtJHEADERTGL_FAKTUR.AsString:= FormatDateTime('ddmmyyyy',dtpStart.Date);
          end
          else
          if qw=3 then begin
             kmtJHEADERKD_OUTLET.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=4 then begin
             kmtJHEADERSUB_TOTAL.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=5 then begin
             kmtJHEADERPROMO_BRG.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=6 then begin
             kmtJHEADERPROMO_UANG.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=7 then begin
             kmtJHEADERPPN.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=8 then begin
             kmtJHEADERNET_N_PPN.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=13 then begin
             kmtJHEADERNO_FAKTUR.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=15 then begin
               kmtJHEADERDISC.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=19 then begin
          //   kmtJHEADERTGL_ORDER.AsString:= Trim(odsImport.Fields[qw].Value);
              kmtJHEADERTGL_ORDER.AsString:= FormatDateTime('ddmmyyyy',dtpStart.Date);
          end
          else
          if qw=21 then begin
             kmtJHEADERNO_PAJAK.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=24 then begin
            kmtJHEADERNO_REKAP.AsString:= Trim(odsImport.Fields[qw].Value);
          end
          else
          if qw=27 then begin
             kmtJHEADERFAKTUR_DIRETUR.AsString:= Trim(odsImport.Fields[qw].Value);
          end;
      end;  //end of for
      kmtJHEADER.Post;

      pgrsProcess.Position:= Trunc((i/cnt)*100);
      Application.ProcessMessages;
      i:= i+1;

      odsImport.Next;
    end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 1;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Proses Fetching Data JHEADER Sukses';

   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;


procedure TImportPiutangFrm.FetchJpcode;
var qw : integer;
begin
   try

    LblStatus.Caption:= 'Status : Memulai Fetching Data JPCODE';
    odsImport.Close;
    odsImport.FileName:= Trim(edtLocation.Text+'\'+'JPCODE.txt');
    odsImport.Open;

    kmtJPCODE.Close;
    kmtJPCODE.Open;
    kmtJPCODE.EmptyTable;

    pgrsProcess.Position:= 0;
    i:= 1;
    cnt:= odsImport.RecordCount;

    odsImport.First;
    while not odsImport.Eof do begin
      kmtJPCODE.Append;
          for qw:=0 to odsImport.Fields.Count-1  do  begin
            if qw=1 then begin
               kmtJPCODENO_ORDER.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=2 then begin
               kmtJPCODEKD_ITEM.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=3 then begin
              kmtJPCODEQTY_KARTON.AsString:= copy(odsImport.Fields[qw].Value,1,5);
              kmtJPCODEQTY_LUSIN.AsString:= copy(odsImport.Fields[qw].Value,7,3);
              kmtJPCODEQTY_BIJI.AsString:= copy(odsImport.Fields[qw].Value,11,3);
            end
            else
            if qw=4 then begin
               kmtJPCODEQTY_TOTAL_BIJI.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=5 then begin
               kmtJPCODEHRG_KARTON.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=6 then begin
               kmtJPCODEHRG_LUSIN.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=7 then begin
               kmtJPCODETOTAL.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=8 then begin
               kmtJPCODESTATUS.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=9 then begin
               kmtJPCODEJENIS.AsString:= Trim(odsImport.Fields[qw].Value);
            end;

          end; // END OF for to
      kmtJPCODE.Post;

      pgrsProcess.Position:= Trunc((i/cnt)*100);
      Application.ProcessMessages;
      i:= i+1;
      odsImport.Next;
    end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 2;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Proses Fetching Data JTPRB Sukses';

   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;

procedure TImportPiutangFrm.FetchJtprb;
var qw : integer;
begin
   try

    LblStatus.Caption:= 'Status : Memulai Fetching Data JTPRB';
    odsImport.Close;
    odsImport.FileName:= Trim(edtLocation.Text+'\'+'JTPRB.txt');
    odsImport.Open;

    kmtJTPRB.Close;
    kmtJTPRB.Open;
    kmtJTPRB.EmptyTable;

    pgrsProcess.Position:= 0;
    i:= 1;
    cnt:= odsImport.RecordCount;

    odsImport.First;
    while not odsImport.Eof do begin
      kmtJTPRB.Append;
          for qw:=0 to odsImport.Fields.Count-1  do  begin
            if qw=1 then begin
               kmtJTPRBNO_ORDER.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=2 then begin
               kmtJTPRBKD_ITEM.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=3 then begin
              kmtJTPRBQTY_KARTON.AsString:= copy(odsImport.Fields[qw].Value,1,5);
              kmtJTPRBQTY_LUSIN.AsString:= copy(odsImport.Fields[qw].Value,7,3);
              kmtJTPRBQTY_BIJI.AsString:= copy(odsImport.Fields[qw].Value,11,3);
            end
            else
            if qw=4 then begin
               kmtJTPRBQTY_TOTAL_BIJI.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=5 then begin
               kmtJTPRBHRG_KARTON.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=6 then begin
               kmtJTPRBHRG_LUSIN.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=7 then begin
               kmtJTPRBTOTAL.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=9 then begin
               kmtJTPRBJENIS.AsString:= Trim(odsImport.Fields[qw].Value);
            end;

          end; // END OF for to
      kmtJTPRB.Post;

      pgrsProcess.Position:= Trunc((i/cnt)*100);
      Application.ProcessMessages;
      i:= i+1;
      odsImport.Next;
    end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 3;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Proses Fetching Data JTPRB Sukses';
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;


procedure TImportPiutangFrm.FetchJtpru;
var qw : integer;
begin

   try
    LblStatus.Caption:= 'Status : Memulai Fetching Data JTPRU';
    odsImport.Close;
    odsImport.FileName:= Trim(edtLocation.Text+'\'+'JTPRU.txt');
    odsImport.Open;

    kmtJTPRU.Close;
    kmtJTPRU.Open;
    kmtJTPRU.EmptyTable;

    pgrsProcess.Position:= 0;
    i:= 1;
    cnt:= odsImport.RecordCount;

    odsImport.First;
    while not odsImport.Eof do begin
      kmtJTPRU.Append;
          for qw:=0 to odsImport.Fields.Count-1  do  begin
            if qw=1 then begin
               kmtJTPRUNO_ORDER.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=2 then begin
               kmtJTPRUKD_ITEM.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=3 then begin
               kmtJTPRUDISC.AsString:= Trim(odsImport.Fields[qw].Value);
            end
            else
            if qw=4 then begin
               kmtJTPRUJENIS.AsString:= Trim(odsImport.Fields[qw].Value);
            end;

          end; // END OF for to
      kmtJTPRU.Post;

      pgrsProcess.Position:= Trunc((i/cnt)*100);
      Application.ProcessMessages;
      i:= i+1;
      odsImport.Next;
    end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 4;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Proses Fetching Data JTPRU Sukses';
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;

procedure TImportPiutangFrm.isErrorItem(nilai:String);
begin
     DM.PrepareQuery(odsCheck);
     s:= 'select * from master.item where kd_item='+QuotedStr(nilai);
     DM.OpenQuery(odsCheck,s);
     if odsCheck.RecordCount=0 then begin
        DM.PrepareQuery(oqExec);
        s:= 'insert into transaksi.import_error (id_import, nama_tabel, nama_field, keterangan)';
        s:= s+' values (nextval('+QuotedStr('transaksi.sq_import_error')+')';
        s:= s+', '+QuotedStr('master.item');
        s:= s+', '+QuotedStr('kd_item');
        s:= s+', '+QuotedStr(nilai);
        s:= s+')';
        DM.ExecQuery(oqExec,s);
     end;
end;

function TImportPiutangFrm.isErrorData:Boolean;
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
            s:='select * from master.mdivision where id_division='+QuotedStr(kmtJHEADERKD_SALES.AsString);
            DM.OpenQuery(odsCheck,s);
             if odsCheck.RecordCount=0 then begin
                DM.PrepareQuery(oqExec);
                s:= 'insert into transaksi.import_error (id_import, nama_tabel, nama_field, keterangan)';
                s:= s+' values (nextval('+QuotedStr('transaksi.sq_import_error')+')';
                s:= s+', '+QuotedStr('master.mdivision');
                s:= s+', '+QuotedStr('id_division');
                s:= s+', '+QuotedStr(kmtJHEADERKD_SALES.AsString);
                s:= s+')';
                DM.ExecQuery(oqExec,s);
             end;

      //CEK OUTLET
          DM.PrepareQuery(odsCheck);
          s:= 'select * from master.mrekanan where jenis='+QuotedStr('CUSTOMER');
          s:= s+' AND kd_rekanan='+QuotedStr(kmtJHEADERKD_OUTLET.AsString);
          DM.OpenQuery(odsCheck,s);
           if odsCheck.RecordCount=0 then begin
              DM.PrepareQuery(oqExec);
              s:= 'insert into transaksi.import_error (id_import, nama_tabel, nama_field, keterangan)';
              s:= s+' values (nextval('+QuotedStr('transaksi.sq_import_error')+')';
              s:= s+', '+QuotedStr('master.mrekanan');
              s:= s+', '+QuotedStr('kd_rekanan');
              s:= s+', '+QuotedStr(kmtJHEADERKD_OUTLET.AsString);
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
       kmtJPCODE.First;
       kmtJTPRB.First;
       kmtJTPRU.First;

       LblStatus.Caption:= 'Status : CEK DATA PCCODE ';
       pgrsProcess.Position:= 0;
       i:= 1;
       cnt:= kmtJPCODE.RecordCount+kmtJTPRB.RecordCount+kmtJTPRU.RecordCount;


       while not kmtJPCODE.Eof do begin
         isErrorItem(kmtJPCODEKD_ITEM.AsString);

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;
         kmtJPCODE.Next;
       end;

       while not kmtJTPRB.Eof do begin
          isErrorItem(kmtJTPRBKD_ITEM.AsString);

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;
          kmtJTPRB.Next;
       end;

       while not kmtJTPRU.Eof do begin
          isErrorItem(kmtJTPRUKD_ITEM.AsString);

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;
         kmtJTPRU.Next;
       end;

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


procedure TImportPiutangFrm.btnImportClick(Sender: TObject);

begin
//     if isErrorData then begin
//        pgcImport.ActivePageIndex:= 4;
//        btnExport.Visible:= False;
//        btnInsertError.Visible:= True;
//        btnInsertError.Enabled:= True;
//     end
//     else begin
        DM.vSysDate.Close;
        DM.vSysDate.Open;
        tmp:= DM.vSysDatedt_server.AsDateTime;
        DecodeDate(tmp,yy,mm,dd);
        dt:= EncodeDate(yy,mm,dd);
        opr:= DM.UserConnect;
        vSeqImport:= sq_IMPORT.GetNextValue;

        try
          kmtJHEADER.DisableControls;
          kmtJPCODE.DisableControls;
          kmtJTPRB.DisableControls;
          kmtJTPRU.DisableControls;

          importJheader;
          importJpcode;
          importJtprb;
          importJtpru;
        finally
           kmtJHEADER.EnableControls;
           kmtJPCODE.EnableControls;
           kmtJTPRB.EnableControls;
           kmtJTPRU.EnableControls;
           btnImport.Visible:= False;
           btnInsertError.Visible:= False;
           btnFetch.Visible:= True;
          if importAll then LblStatus.Caption:= 'Status : Proses Import Data SUKSES !!!'
          else LblStatus.Caption:= 'Status : Proses Import Data GAGAL, transaksi.fn_proc_insert_tmp() error  !!!';
        end;
//     end;

end;



procedure TImportPiutangFrm.importJheader;
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
            oqJHeaderid_division.AsString:= Trim(kmtJHEADERKD_SALES.AsString);

            if kmtJHEADERNO_ORDER.IsNull or (TRIM(kmtJHEADERNO_ORDER.AsString)='') then begin
               oqJHeaderno_nota.AsString:= kmtJHEADERNO_FAKTUR.AsString;
            end
            else begin
               oqJHeaderno_nota.AsString:= Trim(kmtJHEADERNO_ORDER.AsString);
            end;


             if kmtJHEADERNO_FAKTUR.IsNull Or (Trim(kmtJHEADERNO_FAKTUR.AsString)='') then begin
                 oqJHeaderno_bukti.AsString:= Trim(kmtJHEADERNO_ORDER.AsString);
                 oqJHeaderis_kanvas.AsString:= '1';
             end
             else begin
                 oqJHeaderno_bukti.AsString:= Trim(kmtJHEADERNO_FAKTUR.AsString);
                 oqJHeaderis_kanvas.AsString:= '0';
             end;

            if Copy(kmtJHEADERNO_ORDER.AsString,1,2)=copy(qSettingFakturno_order_faktur.AsString,1,2) then
            begin

              oqJHeaderdt_nota.AsDateTime:= EncodeDate(StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,5,4)),
                                                       StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,3,2)),
                                                       StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,1,2)));
              oqJHeaderid_trans.AsString:= '201';
            end
            else
            if Copy(kmtJHEADERNO_ORDER.AsString,1,2)=copy(qSettingFakturno_order_retur.AsString,1,2) then
            begin
              oqJHeaderdt_nota.AsDateTime:= EncodeDate(StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,5,4)),
                                                       StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,3,2)),
                                                       StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,1,2)));
              oqJHeaderid_trans.AsString:= '202';
            end
            else begin
              if trim(copy(kmtJHEADERTGL_ORDER.AsString,5,4))<>''
                then y:= StrToInt(copy(kmtJHEADERTGL_ORDER.AsString,5,4))
                else y:= StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,5,4));

              if trim(copy(kmtJHEADERTGL_ORDER.AsString,3,2))<>''
                then m:= StrToInt(copy(kmtJHEADERTGL_ORDER.AsString,3,2))
                else m:= StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,3,2));

              if trim(copy(kmtJHEADERTGL_ORDER.AsString,1,2))<>''
                then d:= StrToInt(copy(kmtJHEADERTGL_ORDER.AsString,1,2))
                else d:= StrToInt(copy(kmtJHEADERTGL_FAKTUR.AsString,1,2));

              oqJHeaderdt_nota.AsDateTime:= EncodeDate(y,m,d);
              oqJHeaderid_trans.AsString:= '201';
            end;
            oqJHeaderkd_rekanan.AsString:= kmtJHEADERKD_OUTLET.AsString;

            if kmtJHEADERSUB_TOTAL.IsNull or (Trim(kmtJHEADERSUB_TOTAL.AsString)='')
               then oqJHeadersub_total.AsFloat:= 0
            else oqJHeadersub_total.AsFloat:= StrToFloat(Trim(kmtJHEADERSUB_TOTAL.AsString));

            if kmtJHEADERPROMO_BRG.IsNull or (Trim(kmtJHEADERPROMO_BRG.AsString)='')
              then oqJHeaderpromo_barang.AsFloat:= 0
            else oqJHeaderpromo_barang.AsFloat:= StrToFloat(Trim(kmtJHEADERPROMO_BRG.AsString));

            if kmtJHEADERPROMO_UANG.IsNull or (Trim(kmtJHEADERPROMO_UANG.AsString)='')
                then oqJHeaderpromo_uang.AsFloat:= 0
            else oqJHeaderpromo_uang.AsFloat:= StrToFloat(Trim(kmtJHEADERPROMO_UANG.AsString));

            if kmtJHEADERPPN.IsNull or (Trim(kmtJHEADERPPN.AsString)='')
              then oqJHeaderclaim.AsFloat:= 0
            else oqJHeaderclaim.AsFloat:= StrToFloat(Trim(kmtJHEADERPPN.AsString));


            if kmtJHEADERNET_N_PPN.IsNull or (Trim(kmtJHEADERNET_N_PPN.AsString)='')
              then oqJHeadernet_n_ppn.AsFloat:= 0
            else oqJHeadernet_n_ppn.AsFloat:= StrToFloat(Trim(kmtJHEADERNET_N_PPN.AsString));

            if kmtJHEADERDISC.IsNull or (Trim(kmtJHEADERDISC.AsString)='')
              then oqJHeaderdisc_rp.AsFloat:= 0
             else begin
                 if Copy(kmtJHEADERNO_FAKTUR.AsString,1,1)=copy(qSettingFakturno_faktur_retur.AsString,1,1)
                 then oqJHeaderdisc_rp.AsFloat:= StrToFloat(kmtJHEADERDISC.AsString)*(1+10/100)
                 else oqJHeaderdisc_rp.AsFloat:= StrToFloat(kmtJHEADERDISC.AsString)
             end;

            if kmtJHEADERNO_PAJAK.IsNull or (Trim(kmtJHEADERNO_PAJAK.AsString)='')
              then oqJHeaderno_pajak.Clear
            else oqJHeaderno_pajak.AsString:= kmtJHEADERNO_PAJAK.AsString;

            if kmtJHEADERNO_REKAP.IsNull or (Trim(kmtJHEADERNO_REKAP.AsString)='')
              then oqJHeaderno_rekap.Clear
            else oqJHeaderno_rekap.AsString:= kmtJHEADERNO_REKAP.AsString;

            if kmtJHEADERFAKTUR_DIRETUR.IsNull or (Trim(kmtJHEADERFAKTUR_DIRETUR.AsString)='')
              then  oqJHeadernota_diretur.Clear
            else oqJHeadernota_diretur.AsString:= kmtJHEADERFAKTUR_DIRETUR.AsString;


          oqJHeaderusr_ins.AsString:= opr;
          oqJHeaderusr_upd.AsString:= opr;
          oqJHeaderdt_ins.AsDateTime:= tmp;
          oqJHeaderdt_upd.AsDateTime:= tmp;
          oqJHeadernretur.AsFloat:= 0;
          oqJHeadercara_bayar.AsString:= 'TUNAI';
          oqJHeaderid_import.AsLargeInt:= vSeqImport;
          oqJHeader.Post;

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;

          kmtJHEADER.Next;
        end;      // end of while not eof                                   \

          pgrsProcess.Position:= 100;
          pgrsTotal.Position:= 1;
          Application.ProcessMessages;
          LblStatus.Caption:= 'Status : Proses Import data JHEADER Sukses';

    end
    else begin
        DM.MyMsg(mmError,'File JHEADER tidak ada data/kosong !','Periksa ulang file JHEADER !!!');
        Exit;
    end;
    // end of isProses


end;

procedure TImportPiutangFrm.importJpcode;
begin
    LblStatus.Caption:= 'Status : Memulai proses import JPCODE';

    if kmtJPCODE.RecordCount>0 then
       isProses:= True;

    if isProses then begin

            LblStatus.Caption:= 'Status : Import file JPCODE';

            oqJPcode.Close;
            oqJPcode.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= kmtJPCODE.RecordCount;
            kmtJPCODE.First;

            while not kmtJPCODE.Eof do begin
              oqJPcode.Append;
              oqJPcodeno_nota.AsString:= Trim(kmtJPCODENO_ORDER.AsString);
              oqJPcodekd_item.AsString:= Trim(kmtJPCODEKD_ITEM.AsString);
              if Trim(kmtJPCODEJENIS.AsString)='F' then begin
                  oqJPcodeqty_in_karton.AsFloat:= 0;
                  oqJPcodeqty_in_lusin.AsFloat:= 0;
                  oqJPcodeqty_in_biji.AsFloat:= 0;
                  oqJPcodeqty_in_total.AsFloat:= 0;
                  oqJPcodeqty_ot_karton.AsFloat:= StrToFloat(kmtJPCODEQTY_KARTON.AsString);
                  oqJPcodeqty_ot_lusin.AsFloat:= StrToFloat(kmtJPCODEQTY_LUSIN.AsString);
                  oqJPcodeqty_ot_biji.AsFloat:= StrToFloat(kmtJPCODEQTY_BIJI.AsString);
                  oqJPcodeqty_ot_total.AsFloat:= StrToFloat(kmtJPCODEQTY_TOTAL_BIJI.AsString);
                  oqJPcodehrg_jual_karton.AsFloat:= StrToFloat(kmtJPCODEHRG_KARTON.AsString);
                  oqJPcodehrg_jual_lusin.AsFloat:= StrToFloat(kmtJPCODEHRG_LUSIN.AsString)
              end
              else begin
                  oqJPcodeqty_in_karton.AsFloat:= StrToFloat(kmtJPCODEQTY_KARTON.AsString);
                  oqJPcodeqty_in_lusin.AsFloat:= StrToFloat(kmtJPCODEQTY_LUSIN.AsString);
                  oqJPcodeqty_in_biji.AsFloat:= StrToFloat(kmtJPCODEQTY_BIJI.AsString);
                  oqJPcodeqty_in_total.AsFloat:= StrToFloat(kmtJPCODEQTY_TOTAL_BIJI.AsString);
                  oqJPcodehrg_jual_karton.AsFloat:= StrToFloat(kmtJPCODEHRG_KARTON.AsString)+(1+10/100);
                  oqJPcodehrg_jual_lusin.AsFloat:= StrToFloat(kmtJPCODEHRG_LUSIN.AsString)+(1+10/100);
                  oqJPcodeqty_ot_karton.AsFloat:= 0;
                  oqJPcodeqty_ot_lusin.AsFloat:= 0;
                  oqJPcodeqty_ot_biji.AsFloat:= 0;
                  oqJPcodeqty_ot_total.AsFloat:= 0;
              end;
              if kmtJPCODETOTAL.IsNull or (Trim(kmtJPCODETOTAL.AsString)='')
                then oqJPcodetotal.AsFloat:= 0
              else oqJPcodetotal.AsFloat:= StrToFloat(kmtJPCODETOTAL.AsString);
              oqJPcodestatus.AsString:= kmtJPCODESTATUS.AsString;
              oqJPcodeno_detail.AsLargeInt:= sq_JPCODE.GetNextValue;
              oqJPcodeid_import.AsLargeInt:= vSeqImport;
              oqJPcode.Post;

              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;

              kmtJPCODE.Next;
            end;      // end of while not eof


            pgrsProcess.Position:= 100;
            pgrsTotal.Position:= 2;
            Application.ProcessMessages;
            LblStatus.Caption:= 'Status : Proses Import data JPCODE Sukses';
    end
    else begin
        DM.MyMsg(mmError,'File JPCODE tidak ada data/kosong !','Periksa ulang file JPCODE !!!');
        Exit;
    end;

end;

procedure TImportPiutangFrm.importJtprb;
begin

    LblStatus.Caption:= 'Status : Memulai proses import JTPRB';
    isProses:= False;

    if kmtJTPRB.RecordCount>0 then
       isProses:= True;

    if isProses then begin
        LblStatus.Caption:= 'Status : Import file JTPRB';

        oqJTprb.Close;
        oqJTprb.Open;

        pgrsProcess.Position:= 0;
        i:= 1;
        cnt:= kmtJTPRB.RecordCount;

        kmtJTPRB.First;

        while not kmtJTPRB.Eof do begin
          if not (Trim(kmtJTPRBKD_ITEM.AsString)='') then begin
            oqJTprb.Append;
            oqJTprbno_nota.AsString:= Trim(kmtJTPRBNO_ORDER.AsString);
            oqJTprbkd_item.AsString:=Trim(kmtJTPRBKD_ITEM.AsString);
            if kmtJTPRBQTY_KARTON.IsNull or (Trim(kmtJTPRBQTY_KARTON.AsString)='')
               then oqJTprbqty_ot_karton.AsFloat:= 0
            else oqJTprbqty_ot_karton.AsFloat:= StrToFloat(kmtJTPRBQTY_KARTON.AsString);

            if kmtJTPRBQTY_LUSIN.IsNull or (Trim(kmtJTPRBQTY_LUSIN.AsString)='')
               then oqJTprbqty_ot_lusin.AsFloat:= 0
            else oqJTprbqty_ot_lusin.AsFloat:= StrToFloat(kmtJTPRBQTY_LUSIN.AsString);

            if kmtJTPRBQTY_BIJI.IsNull or (Trim(kmtJTPRBQTY_BIJI.AsString)='')
               then oqJTprbqty_ot_biji.AsFloat:= 0
            else oqJTprbqty_ot_biji.AsFloat:= StrToFloat(kmtJTPRBQTY_BIJI.AsString);

            if kmtJTPRBQTY_TOTAL_BIJI.IsNull or (Trim(kmtJTPRBQTY_TOTAL_BIJI.AsString)='')
               then oqJTprbqty_ot_total.AsFloat:= 0
            else  oqJTprbqty_ot_total.AsFloat:= StrToFloat(kmtJTPRBQTY_TOTAL_BIJI.AsString);

            if  kmtJTPRBHRG_KARTON.IsNull or (Trim(kmtJTPRBHRG_KARTON.AsString)='')
               then oqJTprbhrg_jual_karton.AsFloat:= 0
            else oqJTprbhrg_jual_karton.AsFloat:= StrToFloat(kmtJTPRBHRG_KARTON.AsString);


            if kmtJTPRBHRG_LUSIN.IsNull or (Trim(kmtJTPRBHRG_LUSIN.AsString)='')
               then oqJTprbhrg_jual_lusin.AsFloat:= 0
            else oqJTprbhrg_jual_lusin.AsFloat:= StrToFloat(kmtJTPRBHRG_LUSIN.AsString);

            if kmtJTPRBTOTAL.IsNull or (Trim(kmtJTPRBTOTAL.AsString)='')
                then oqJTprbtotal.AsFloat:= 0
            else oqJTprbtotal.AsFloat:= StrToFloat(kmtJTPRBTOTAL.AsString);

            oqJTprbno_detail.AsLargeInt:= sq_JTPRB.GetNextValue;
            oqJTprbid_import.AsLargeInt:= vSeqImport;
            oqJTprb.Post;
          end; // end of if not empty

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;

          kmtJTPRB.Next;
        end;      // end of while not eof


        pgrsProcess.Position:= 100;
        pgrsTotal.Position:= 3;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data JTPRB Sukses';
    end
    else begin
        pgrsProcess.Position:= 100;
        pgrsTotal.Position:= 3;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data JTPRB Sukses';
    end;

end;

procedure TImportPiutangFrm.importJtpru;
begin

// ---------------------------------------------------------------------------------------------------  JTPRU
    LblStatus.Caption:= 'Status : Memulai proses import JTPRU';
    isProses:= False;


    if kmtJTPRU.RecordCount>0 then
       isProses:= True;

    if isProses then begin
        LblStatus.Caption:= 'Status : Import file JTPRU';

        oqJTpru.Close;
        oqJTpru.Open;

        pgrsProcess.Position:= 0;
        i:= 1;
        cnt:= kmtJTPRU.RecordCount;

        kmtJTPRU.First;

        while not kmtJTPRU.Eof do begin
          if not (Trim(kmtJTPRUKD_ITEM.AsString)='') then begin
              oqJTpru.Append;
              oqJTpruno_nota.AsString:= Trim(kmtJTPRUNO_ORDER.AsString);
              oqJTprukd_item.AsString:= kmtJTPRUKD_ITEM.AsString;
              if kmtJTPRUDISC.IsNull or(Trim(kmtJTPRUDISC.AsString)='')
                 then oqJTprudisc.AsFloat:= 0
              else oqJTprudisc.AsFloat:= StrToFloat(kmtJTPRUDISC.AsString);

              oqJTpruno_detail.AsLargeInt:= sq_JTPRU.GetNextValue;
              oqJTpruid_import.AsLargeInt:= vSeqImport;
              oqJTpru.Post;
          end; // end of if not empty

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;

          kmtJTPRU.Next;
        end;      // end of while not eof

        pgrsProcess.Position:= 100;
        pgrsTotal.Position:= 4;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data JTPRU Sukses';
    end
    else begin
        pgrsProcess.Position:= 100;
        pgrsTotal.Position:= 4;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data JTPRU Sukses';
    end;
end;

function TImportPiutangFrm.importAll:Boolean;
begin
   Result:= True;
   LblStatus.Caption:= 'Status : Import ALL File';

   try
     DM.PrepareQuery(oqExec);
     s:= 'select transaksi.fn_proc_insert_tmp()';
     DM.ExecQuery(oqExec,s);
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Result:= False;
      end;
   end;

    pgrsProcess.Position:= 100;
    pgrsTotal.Position:= 5;
    Application.ProcessMessages;
end;


procedure TImportPiutangFrm.FormShow(Sender: TObject);
begin

  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);

  LblStatus.Caption:= '';
  pgcImport.ActivePageIndex:=0;
  btnImport.Visible:= False;
  btnInsertError.Visible:= False;
  btnFetch.Visible:= True;
end;

procedure TImportPiutangFrm.tabErrorShow(Sender: TObject);
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

function TImportPiutangFrm.FixedErrorData:Boolean;
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



procedure TImportPiutangFrm.btnFetchClick(Sender: TObject);
VAR dt1, dtf : String;
begin

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
  s:='select transaksi.fn_delete_tmp()';
  DM.ExecQuery(oqExec,s);

  LblStatus.Caption:= 'Status : Hapus data temporary lama';


   try
     kmtJHEADER.DisableControls;
     kmtJPCODE.DisableControls;
     kmtJTPRB.DisableControls;
     kmtJTPRU.DisableControls;

     FetchJheader;
     FetchJpcode;
     FetchJtprb;
     FetchJtpru;
     if isErrorData then begin
        pgcImport.ActivePageIndex:= 4;
        btnImport.Visible:= False;
        btnFetch.Visible:= False;
        btnInsertError.Visible:= True;
     end
     else begin
        btnFetch.Visible:= False;
        btnInsertError.Visible:= False;
        btnImport.Visible:= True;
     end;

   finally
     kmtJHEADER.EnableControls;
     kmtJPCODE.EnableControls;
     kmtJTPRB.EnableControls;
     kmtJTPRU.EnableControls;
    end;
end;



procedure TImportPiutangFrm.btnInsertErrorClick(Sender: TObject);
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


end.

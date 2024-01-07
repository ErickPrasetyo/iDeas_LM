unit U_BayarNotaPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxEditRepositoryItems, cxEdit, cxDBEditRepository, ZDataset,
  cxGridBandedTableView, cxClasses, cxStyles, cxGridTableView, DB,
  ZAbstractRODataset, ZAbstractDataset, SCControl, SCStdControls, StdCtrls,
  ExtCtrls, RzPanel, cxControls, cxContainer, cxTextEdit, cxDBEdit,
  kbmMemTable, cxMaskEdit, cxButtonEdit, cxGraphics, cxLabel, cxDBLabel,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TBayarNotaPenjualanFrm = class(TForm)
    RzPanel1: TRzPanel;
    lblCap: TLabel;
    RzPanel2: TRzPanel;
    btnOK: TSCButton;
    btnCancel: TSCButton;
    dsMaster: TDataSource;
    lblNoNota: TLabel;
    lblTipe: TLabel;
    pnlBottom: TSCPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MemMaster: TkbmMemTable;
    Master: TZQuery;
    MemMastergrand_total: TFloatField;
    MemMasterdue_type: TStringField;
    MemMasterdibayar: TFloatField;
    Label11: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    SCPanel1: TSCPanel;
    Label7: TLabel;
    MemMasterbank: TStringField;
    MemMasterno_kartu: TStringField;
    edtNoKartu: TcxDBTextEdit;
    edtBank: TcxDBTextEdit;
    edtTotal: TcxDBLabel;
    edtKembali: TcxDBLabel;
    MemMasterkembali: TFloatField;
    qryDue: TZReadOnlyQuery;
    qryDuetipe_bayar: TStringField;
    qryDuejml_hari: TIntegerField;
    qryDueid_tipe_bayar: TLargeintField;
    dsDue: TDataSource;
    edtBayar: TcxTextEdit;
    edtPembayaran: TcxDBComboBox;
    MemMastercara_bayar: TStringField;
    Masterid_nota: TLargeintField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterno_bukti: TStringField;
    Masterdt_ins: TDateTimeField;
    Masterdt_upd: TDateTimeField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterispost: TStringField;
    Masteriscancel: TStringField;
    Masterisdelete: TStringField;
    Mastertotal: TFloatField;
    Masterkd_rekanan: TStringField;
    Masterid_trans: TStringField;
    Masterid_rek_gl: TStringField;
    Masterid_division: TStringField;
    Mastercara_bayar: TStringField;
    Masterdt_jth_tempo: TDateTimeField;
    Masterdiskripsi: TStringField;
    Mastersub_total: TFloatField;
    Masterclaim: TFloatField;
    Masterdisc_rp: TFloatField;
    Masterpromo_uang: TFloatField;
    Masterpromo_barang: TFloatField;
    Masternet_n_ppn: TFloatField;
    Masteriskirim: TStringField;
    Masterislunas: TStringField;
    Masterretur: TFloatField;
    Masterishpp: TStringField;
    Masterdt_lunas: TDateTimeField;
    Masterdt_kirim: TDateTimeField;
    Masterisok: TStringField;
    Masterdt_posting: TDateTimeField;
    Masternota_diretur: TStringField;
    Masterid_curr: TStringField;
    Masterkurs: TFloatField;
    Mastervat_str: TStringField;
    Mastervat_num: TFloatField;
    Masterkd_del_place: TStringField;
    Masterno_rekap: TStringField;
    Mastern_hari: TIntegerField;
    Masterevocer: TFloatField;
    Masterno_faktur_pajak: TStringField;
    Masterno_evocer: TStringField;
    Masterid_import: TLargeintField;
    Masterpromo_id: TStringField;
    Mastermvocer: TFloatField;
    Masterno_mvocer: TStringField;
    Masterdisc_psn: TFloatField;
    Masterisget: TStringField;
    Masterjns_transaksi: TStringField;
    Masterdisc_total: TFloatField;
    Masterdisc_member: TFloatField;
    Mastershift: TIntegerField;
    Masterisget_pay: TStringField;
    Masterdibayar: TFloatField;
    Masterkembali: TFloatField;
    qExec: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtBayarEnter(Sender: TObject);
    procedure MemMasterCalcFields(DataSet: TDataSet);
    procedure edtBankKeyPress(Sender: TObject; var Key: Char);
    procedure edtBayarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBayarKeyPress(Sender: TObject; var Key: Char);
    procedure edtPembayaranPropertiesCloseUp(Sender: TObject);
    procedure edtPembayaranKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function FormatBayar(sBayar:String):Real;

  public
    { Public declarations }
    vIdNota : Int64;
    vTotal : Double;
  end;

var
  BayarNotaPenjualanFrm: TBayarNotaPenjualanFrm;

implementation

uses U_DM;

{$R *.dfm}

function TBayarNotaPenjualanFrm.FormatBayar(sBayar:String):Real;
begin
  Result:= 0;

  sBayar := StringReplace(sBayar,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sBayar := StringReplace(sBayar,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR

  Result:= StrToFloat(sBayar);
end;

procedure TBayarNotaPenjualanFrm.FormShow(Sender: TObject);
begin
    try
//      qryDue.Close;
//      qryDue.Open;
      
      Master.Close;
      Master.Params.ParamByName('pid').Value:= vIdNota;
      Master.Open;

      MemMaster.Close;
      MemMaster.Open;
      MemMaster.Append;
      MemMasterdue_type.AsString:= edtPembayaran.Text;
      MemMastercara_bayar.AsString:= '';
      MemMastergrand_total.AsFloat:= vTotal;
      MemMasterdibayar.AsFloat:= 0;
      MemMasterkembali.AsFloat:= Masterkembali.AsFloat;
      MemMasterbank.AsString:= edtBank.Text;
      MemMasterno_kartu.AsString:= edtNoKartu.Text;
      MemMaster.Post;


      lblCap.Caption:= 'Pembayaran Nota';
      lblNoNota.Caption:= 'No : ' + Masterno_nota.AsString;
      //SlblTipe.Caption:= Mastertipe.AsString;

//      edtPembayaran.Properties.ReadOnly:= TRUE;
//      edtPembayaran.Properties.Buttons[0].Visible:= FALSE;

      edtPembayaran.SetFocus;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;


end;

procedure TBayarNotaPenjualanFrm.btnCancelClick(Sender: TObject);
begin
    if MemMaster.State<>dsBrowse then
       MemMaster.Post;
    ModalResult:= mrCancel;
end;

procedure TBayarNotaPenjualanFrm.btnOKClick(Sender: TObject);
var
s, vKembali, vSKembali, vSKembali1 : String;
vSKembali2 : Double;
begin
  if (MemMaster.State=dsBrowse)  then
      MemMaster.Edit;

    MemMasterdibayar.AsFloat:= FormatBayar(edtBayar.Text);

    vKembali:= StringReplace(edtKembali.Caption,'(','',[rfReplaceAll,rfIgnoreCase]);
    vSKembali:= StringReplace(vKembali,',','',[rfReplaceAll,rfIgnoreCase]);
    vSKembali1:= StringReplace(vSKembali,')','',[rfReplaceAll,rfIgnoreCase]);
    if vSKembali1='' then
       vSKembali2:= 0 else
       vSKembali2:= StrToFloat(vSKembali1);


    //MemMasterkembali.AsFloat:= FormatBayar(edtKembali.Caption);

    if MemMasterdibayar.AsFloat<=0 then begin
       DM.MyMsg(mmInformation,'Dibayar Harus Diisi','');
       edtBayar.SetFocus;
       Exit;
    end;

     if MemMasterdibayar.AsFloat<MemMastergrand_total.AsFloat then begin
       DM.MyMsg(mmInformation,'Pembayaran Lebih Kecil dari Total tagihan','Jumlah Pembayaran Tidak Boleh Lebih Kecil Dari Total Tagihan');
       edtBayar.SetFocus;
       Exit;
    end;

   if (MemMaster.State<>dsBrowse)  then
        MemMaster.Post;


    try
        DM.PrepareQuery(qExec);
        s:= 'update transaksi.nota set dibayar='+FloatToStr(MemMasterdibayar.AsFloat)+', kembali='+FloatToStr(MemMasterdibayar.AsFloat-vTotal)+' where id_nota='+IntToStr(vIdNota);
        DM.ExecQuery(qExec, s);
    except
    end;

//    try
//        DM.PrepareQuery(qExec);
//        s:= 'update transaksi.nota set dibayar='+FloatToStr(MemMasterdibayar.AsFloat)+', kembali='+FloatToStr(vSKembali2)+' where id_nota='+IntToStr(vIdNota);
//        DM.ExecQuery(qExec, s);
//    except
//    end;

    if MemMastercara_bayar.IsNull or (Trim(MemMastercara_bayar.AsString)='') then
       raise Exception.Create('CARA BAYAR harus diisi !');

    ModalResult:= mrOk;
end;

procedure TBayarNotaPenjualanFrm.edtBayarEnter(Sender: TObject);
begin
    if (MemMaster.State=dsInsert) or (MemMaster.State=dsEdit)  then
      MemMaster.Edit;
end;

procedure TBayarNotaPenjualanFrm.MemMasterCalcFields(DataSet: TDataSet);
begin
     MemMasterkembali.AsFloat:= MemMastergrand_total.AsFloat-MemMasterdibayar.AsFloat;
end;

procedure TBayarNotaPenjualanFrm.edtBankKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);

end;

procedure TBayarNotaPenjualanFrm.edtBayarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sRupiah: string;
  iRupiah: Currency;
  fKembali: real;
begin
  //ribuan --> currency ( menyesuaikan setting windows )
  sRupiah := edtBayar.Text;
  sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]);
  iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

  //currency --> format ribuan
  edtBayar.Text := FormatCurr('#,###',iRupiah);
  edtBayar.SelStart := length(edtBayar.text);

  edtKembali.Caption:= FormatCurr('#,###;(#,###)',MemMastergrand_total.AsFloat-iRupiah);

end;

procedure TBayarNotaPenjualanFrm.edtBayarKeyPress(Sender: TObject;
  var Key: Char);
begin

 //selain angka (0..9)& backspace( #8 ), input dimatikan
  if not(key in['0'..'9',#8,#13,#27]) then
    key:=#0;

  if Key=#13 then btnOKClick(nil);

//      SelectNext(ActiveControl, True, True);
  if Key=#27 then
    SelectNext(ActiveControl, False, True);
end;

procedure TBayarNotaPenjualanFrm.edtPembayaranPropertiesCloseUp(
  Sender: TObject);
begin
   if edtPembayaran.ItemIndex>1 then begin
      edtBank.Enabled:= True;
      edtNoKartu.Enabled:= True;
   end
   else begin
      edtBank.Enabled:= False;
      edtNoKartu.Enabled:= False;
   end;

end;

procedure TBayarNotaPenjualanFrm.edtPembayaranKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  edtBayar.SetFocus;

end;

end.

unit U_Pencarian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZDataset, cxGridTableView,
  ZAbstractRODataset, ZAbstractDataset, AdvAppStyler, cxLabel, cxContainer,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, SCControl,
  SCStdControls, ExtCtrls, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TPencarianFrm = class(TForm)
    AFS: TAdvFormStyler;
    qRekanan: TZQuery;
    dsqRekanan: TDataSource;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    AdvPanel1: TAdvPanel;
    btnCancel: TSCButton;
    btnSave: TSCButton;
    pgcKelompok: TcxPageControl;
    tabRekanan: TcxTabSheet;
    grdDokter: TcxGrid;
    grddbtvDokter: TcxGridDBTableView;
    grdDokterLevel1: TcxGridLevel;
    tabPasien: TcxTabSheet;
    pnlHeader: TAdvPanel;
    AdvPanel2: TAdvPanel;
    tabItem: TcxTabSheet;
    grddbtvDokternama_dokter: TcxGridDBColumn;
    edtDokter: TcxTextEdit;
    lblNama: TcxLabel;
    qRekananid_rekanan: TStringField;
    qRekanannama_rekanan: TStringField;
    qPasien: TZQuery;
    dsqPasien: TDataSource;
    qPasienno_register: TStringField;
    qPasienid_pasien: TStringField;
    qPasiennama_pasien: TStringField;
    lblPasien: TcxLabel;
    edtPasien: TcxTextEdit;
    btnCariPasien: TSCButton;
    btnCariRekanan: TSCButton;
    AdvPanel3: TAdvPanel;
    LblItem: TcxLabel;
    edtItemName: TcxTextEdit;
    btnCariItem: TSCButton;
    grdItem: TcxGrid;
    grdDBTV_Item: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    grdLvlItem: TcxGridLevel;
    qItem: TZQuery;
    dsqItem: TDataSource;
    qRekanandisc_psn: TFloatField;
    MasterItem: TZQuery;
    grdDBTV_Itemsatuan: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    qItemPaket: TZReadOnlyQuery;
    qItemPaketid_item: TStringField;
    qItemPaketitem_name: TStringField;
    qItemPaketsatuan: TStringField;
    dsqItemPaket: TDataSource;
    AdvPanel4: TAdvPanel;
    cxLabel1: TcxLabel;
    edtItemPaket: TcxTextEdit;
    btnCariItemPaket: TSCButton;
    grdItemPaket: TcxGrid;
    grdDBTVItemPaket: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    grdLvlItemPaket: TcxGridLevel;
    qItemPakethrg_jual: TFloatField;
    grdDBTVItemPakethrg_jual: TcxGridDBColumn;
    qPasienid_dokter: TStringField;
    qPasienkelas: TStringField;
    tabRekanan2: TcxTabSheet;
    gridRekanan2: TcxGrid;
    grdDBTVRekanan2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    grdLvlRekanan2: TcxGridLevel;
    AdvPanel5: TAdvPanel;
    edtRekanan2: TcxTextEdit;
    cxLabel2: TcxLabel;
    btnRekanan2: TSCButton;
    qPasiennama_dokter: TStringField;
    tabDokter: TcxTabSheet;
    qryDokter: TZQuery;
    dsqryDokter: TDataSource;
    grdDokter2: TcxGrid;
    grdDBTVgrdDokter2: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    grdLvlgrdDokter2: TcxGridLevel;
    AdvPanel6: TAdvPanel;
    edtDokter2: TcxTextEdit;
    cxLabel3: TcxLabel;
    btnCariDokter: TSCButton;
    qryDokterid_dokter: TStringField;
    qryDokternama_dokter: TStringField;
    qryDoktertmp_lahir: TStringField;
    qryDoktertgl_lahir: TDateTimeField;
    qryDokteralamat: TStringField;
    qryDokterkota: TStringField;
    qryDoktertelepon: TStringField;
    qryDokterfax: TStringField;
    qryDoktertgl_masuk: TDateTimeField;
    qryDokterid_spesialisasi: TStringField;
    qryDokterid_bagian: TStringField;
    qryDokteristamu: TStringField;
    qryDokterstatus: TStringField;
    qryDokterisbidper: TStringField;
    qryDokterdt_ins: TDateTimeField;
    qryDokterdt_upd: TDateTimeField;
    qryDokterusr_ins: TStringField;
    qryDokterusr_upd: TStringField;
    qryDokterjns_dokter: TStringField;
    qryDoktermargin_dokter: TFloatField;
    qryDokterdisc_psn: TFloatField;
    qryDokterfee_pengirim_lab: TFloatField;
    qryDokterfee_pengirim_photo: TFloatField;
    qryDokterfee_baca_photo: TFloatField;
    qryDokterfee_pengirim_usg: TFloatField;
    qryDokterfee_baca_usg: TFloatField;
    qryDokterfee_pengirim_ecg: TFloatField;
    qryDokterfee_baca_ecg: TFloatField;
    qryDokterfee_tm: TFloatField;
    qryDokterfee_visite: TFloatField;
    qryDokterfee_pengirim_lab_rujukan: TFloatField;
    qItemkd_item: TStringField;
    qItemnama_item: TStringField;
    grdPasien: TcxGrid;
    grdDBTVPasien: TcxGridDBTableView;
    grdDBTVPasiennama_pasien: TcxGridDBColumn;
    grdDBTVPasiennama_dokter: TcxGridDBColumn;
    grdDBTVPasienno_register: TcxGridDBColumn;
    grdLvlPasien: TcxGridLevel;
    MasterItemkd_item: TStringField;
    MasterItemkd_parent: TStringField;
    MasterItemlvl: TIntegerField;
    MasterItemisdetail: TStringField;
    MasterItemnama_item: TStringField;
    MasterItemhrg_jual_karton: TFloatField;
    MasterItemhrg_jual_lusin: TFloatField;
    MasterItemhrg_beli_karton: TFloatField;
    MasterItembiji_per_karton: TFloatField;
    MasterItemhpp: TFloatField;
    MasterItemusr_ins: TStringField;
    MasterItemusr_upd: TStringField;
    MasterItemdt_ins: TDateTimeField;
    MasterItemdt_upd: TDateTimeField;
    MasterItemisinventory: TStringField;
    MasterItemisbarang_jadi: TStringField;
    MasterItemrasio: TFloatField;
    MasterItemid_rek_persediaan: TStringField;
    MasterItemid_rek_hpp: TStringField;
    MasterItemid_cat_item: TStringField;
    MasterItemrasio_lusin: TFloatField;
    MasterItemhrg_jual: TFloatField;
    MasterItemhrg_beli: TFloatField;
    MasterItemsatuan_jual: TStringField;
    MasterItemsatuan_beli: TStringField;
    MasterItembrand: TStringField;
    MasterItemhrg_jual_sm_grosir: TFloatField;
    MasterItemhrg_jual_grosir: TFloatField;
    MasterItemhrg_jual_grosir_besar: TFloatField;
    MasterItemqty_min_retail: TFloatField;
    MasterItemqty_max_retail: TFloatField;
    MasterItemqty_min_sm_grosir: TFloatField;
    MasterItemqty_max_sm_grosir: TFloatField;
    MasterItemqty_min_grosir: TFloatField;
    MasterItemqty_max_grosir: TFloatField;
    MasterItemqty_min_grosir_besar: TFloatField;
    MasterItemqty_max_grosir_besar: TFloatField;
    qItemsatuan_jual: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure grddbtvDokterKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariPasienClick(Sender: TObject);
    procedure btnCariRekananClick(Sender: TObject);
    procedure btnCariItemPaketClick(Sender: TObject);
    procedure btnRekanan2Click(Sender: TObject);
    procedure edtDokterKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariDokterClick(Sender: TObject);
    procedure btnCariItemClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDataSet(Jenis,expr:String);
  public
    { Public declarations }
    vMode : integer;
    vJenis : String;
    vCat : String;
    vDtTrans : TDateTime;
  end;

var
  PencarianFrm: TPencarianFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TPencarianFrm.FormShow(Sender: TObject);
begin
  pgcKelompok.HideTabs:= True;
  pgcKelompok.ActivePageIndex:= vMode;
  OpenDataSet(vJenis,'');
end;

procedure TPencarianFrm.OpenDataSet(Jenis,expr:String);
var dtNow, s, ws : String;
begin
    if vMode=0 then begin   // rekanan
        s:= 'SELECT id_rekanan, nama_rekanan, coalesce(disc_psn,0) as disc_psn';
        s:= s+' FROM master.mrekanan';
        s:= s+' WHERE jenis= '+QuotedStr(Jenis);
        if Trim(expr)<>'' then
           s:= s+' AND UPPER(nama_rekanan) LIKE '+QuotedStr('%'+UpperCase(expr)+'%');
        s:= s+' ORDER BY nama_rekanan';

        try
          qRekanan.Close;
          qRekanan.SQL.Clear;
          qRekanan.Params.Clear;
          qRekanan.SQL.Add(s);
          qRekanan.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;
        edtDokter.SetFocus;
    end  // END OF VMODE=0
    else
    if vMode=1 then begin  //pasien
        s:= 'SELECT a.no_register, a.id_pasien, a.id_dokter, a.kelas, b.nama_pasien, d.nama_dokter';
        s:= s+' FROM transaksi.register_pasien a';
        s:= s+' LEFT JOIN master.mpasien b ON b.id_pasien=a.id_pasien';
        s:= s+' LEFT JOIN master.mdokter d ON d.id_dokter=a.id_dokter';
        s:= s+' WHERE a.id_trans='+QuotedStr(Jenis)+' AND a.iscancel='+QuotedStr('0'); ;
        if Trim(expr)<>'' then
           s:= s+' AND UPPER(b.nama_pasien) LIKE '+QuotedStr('%'+UpperCase(expr)+'%');

        if Jenis='102' then begin    // RAWAT inap
           s:= s+' AND a.dt_pulang is null';
        end
        else
        if Jenis='101' then begin   //RAWAT JALAN
           dtNow:= FormatDateTime('dd/mm/yyyy', vDtTrans);

           s:= s+' AND a.dt_register between to_timestamp('+QuotedStr(dtNow)+','+QuotedStr('dd/mm/yyyy')+')';
           s:= s+' AND to_timestamp('+QuotedStr(dtNow)+','+QuotedStr('dd/mm/yyyy')+') +  interval '+QuotedStr('23 hours 59 min');
        end;
        s:= s+' ORDER BY b.nama_pasien';

        try
          qPasien.Close;
          qPasien.SQL.Clear;
          qPasien.Params.Clear;
          qPasien.SQL.Add(s);
          qPasien.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;
        edtPasien.SetFocus;
    end  // END OF IF VMODE=1
    else
    if vMode=2 then begin    //item
        if vCat='ALL' then
            ws:= ' WHERE a.isdetail='+QuotedStr('1')+' '
        else ws:= ' WHERE a.isdetail='+QuotedStr('1')+' ';
//        else ws:= ' WHERE a.isdetail='+QuotedStr('1')+' AND a.id_cat_item IN ('+Jenis+')';

        s:= 'SELECT a.kd_item, a.nama_item, a.satuan_jual ';
        s:= s+' FROM master.item a';
        s:= s+ws;
        if Trim(expr)<>'' then
           s:= s+' AND UPPER(a.kd_item) LIKE '+QuotedStr('%'+UpperCase(expr)+'%');
        s:= s+' ORDER BY a.nama_item';

        try
          qItem.Close;
          qItem.SQL.Clear;
          qItem.Params.Clear;
          qItem.SQL.Add(s);
          qItem.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;
        edtItemName.SetFocus;
    end
    else
    if vMode=3 then begin    //item paket
        s:= 'SELECT a.id_item, a.item_name, a.satuan, a.hrg_jual ';
        s:= s+' FROM master.mitem a';
        s:= s+' WHERE a.id_cat_item='+QuotedStr('PK')+' AND a.isdetail='+QuotedStr('1');
        if Trim(expr)<>'' then
           s:= s+' AND UPPER(a.item_name) LIKE '+QuotedStr('%'+UpperCase(expr)+'%');
        s:= s+' ORDER BY a.item_name';

        try
          qItemPaket.Close;
          qItemPaket.SQL.Clear;
          qItemPaket.Params.Clear;
          qItemPaket.SQL.Add(s);
          qItemPaket.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;
        edtItemPaket.SetFocus;
    end
    else
    if vMode=4 then begin   // rekanan banyak
        s:= 'SELECT id_rekanan, nama_rekanan, coalesce(disc_psn,0) as disc_psn';
        s:= s+' FROM master.mrekanan';
        s:= s+' WHERE jenis in '+Jenis;
        if Trim(expr)<>'' then
           s:= s+' AND UPPER(nama_rekanan) LIKE '+QuotedStr('%'+UpperCase(expr)+'%');
        s:= s+' ORDER BY nama_rekanan';

        try
          qRekanan.Close;
          qRekanan.SQL.Clear;
          qRekanan.Params.Clear;
          qRekanan.SQL.Add(s);
          qRekanan.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;
        edtRekanan2.SetFocus;
    end  // END OF VMODE=4
    else
    if vMode=5 then begin   // DOKTER
        s:= 'SELECT *';
        s:= s+' FROM master.mdokter';
        s:= s+' WHERE 1=1 ';
        if Trim(expr)<>'' then
           s:= s+' AND UPPER(nama_dokter) LIKE '+QuotedStr('%'+UpperCase(expr)+'%');
        s:= s+' ORDER BY nama_dokter';

        try
          qryDokter.Close;
          qryDokter.SQL.Clear;
          qryDokter.Params.Clear;
          qryDokter.SQL.Add(s);
          qryDokter.Open;
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          end
        end;
        edtDokter2.SetFocus;
    end  // END OF VMODE=4
end;


procedure TPencarianFrm.btnSaveClick(Sender: TObject);
begin
   if vMode=2 then begin
      MasterItem.Close;
      MasterItem.Params.ParamByName('pid_item').AsString:= qItemkd_item.AsString;
      MasterItem.Open;
   end;

   ModalResult:= mrOk;
end;

procedure TPencarianFrm.grddbtvDokterKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TPencarianFrm.btnCariPasienClick(Sender: TObject);
begin
  OpenDataSet(vJenis,edtPasien.Text);
end;

procedure TPencarianFrm.btnCariRekananClick(Sender: TObject);
begin
  OpenDataSet(vJenis,edtDokter.Text);
end;

procedure TPencarianFrm.btnCariItemPaketClick(Sender: TObject);
begin
  OpenDataSet(vJenis,edtItemPaket.Text);
end;

procedure TPencarianFrm.btnRekanan2Click(Sender: TObject);
begin
  OpenDataSet(vJenis,edtRekanan2.Text);
end;

procedure TPencarianFrm.edtDokterKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TPencarianFrm.btnCariDokterClick(Sender: TObject);
begin
  OpenDataSet('',edtDokter2.Text);
end;

procedure TPencarianFrm.btnCariItemClick(Sender: TObject);
begin
  OpenDataSet(vJenis,edtItemName.Text);
end;

end.
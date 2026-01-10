unit U_LapNilaiSediaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxLabel,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvAppStyler, AdvToolBar,
  AdvToolBarStylers, AdvPanel, cxGridBandedTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  AdvReflectionImage, StdCtrls, wwdbdatetimepicker, cxButtons,
  SCStdControls, SCControl, frxClass, frxDBSet, kbmMemTable, wwDialog,
  wwidlg, cxTextEdit, cxMaskEdit, cxButtonEdit, cxRadioGroup, ExtCtrls,
  RzPanel;

type
  TLapNilaiSediaanFrm = class(TForm)
    pnlBottom: TSCPanel;
    btnRefresh: TSCButton;
    btnClose: TSCButton;
    btnExport: TSCButton;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    AFS: TAdvFormStyler;
    pnlTop: TSCPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    grdBulan: TcxGrid;
    grdDBTV_Bulan: TcxGridDBBandedTableView;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    grdLVLBulan: TcxGridLevel;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    btnOK: TcxButton;
    btnPrint: TSCButton;
    qryWareHouse: TZReadOnlyQuery;
    qryWareHouseid_warehouse: TStringField;
    qryWareHousedescription: TStringField;
    LookJenis: TwwLookupDialog;
    Master: TZReadOnlyQuery;
    Masterid_item: TStringField;
    Masteritem_name: TStringField;
    Mastersatuan: TStringField;
    Masterid_cat_item: TStringField;
    Masterid_parent: TStringField;
    Masterparent_name: TStringField;
    Masterrasio: TFloatField;
    Masterstok_awal: TFloatField;
    Mastertotal_in: TFloatField;
    Mastertotal_ot: TFloatField;
    Masterstok_akhir: TFloatField;
    dsMaster: TDataSource;
    rgLOKASI: TRzGroupBox;
    RBSemua: TcxRadioButton;
    RBJenis: TcxRadioButton;
    EJenis: TcxButtonEdit;
    rgAkhirPeriode: TRzGroupBox;
    Label1: TLabel;
    edtDatePicker2: TwwDBDateTimePicker;
    edtDatePicker1: TwwDBDateTimePicker;
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
    Masterhrg_beli: TFloatField;
    Masternilai_awal: TFloatField;
    Masternilai_akhir: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure EJenisPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RBSemuaClick(Sender: TObject);
    procedure RBJenisClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    vjns_transaksi : String;
    procedure InsertMemTabel;
  public
    { Public declarations }
  end;

var
  LapNilaiSediaanFrm: TLapNilaiSediaanFrm;

  procedure ShowForm(ptransaksi : String; ptag : integer);

implementation

uses U_DM, ComObj, OleServer, ExcelXP, cxGridExportLink;

{$R *.dfm}

procedure ShowForm(ptransaksi : String; ptag : integer);
begin
  LapNilaiSediaanFrm:= TLapNilaiSediaanFrm.Create(Application);
  with LapNilaiSediaanFrm do begin
      vtag:= ptag;
      vjns_transaksi:= ptransaksi;
      ShowWindow(Handle, SW_Maximize);
      EJenis.Enabled:= False;
//      pgcMaster.ActivePageIndex:= 0;
  end;
end;

procedure TLapNilaiSediaanFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
 LapNilaiSediaanFrm:=nil;
end;

procedure TLapNilaiSediaanFrm.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TLapNilaiSediaanFrm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, ttl :string;
begin

     appPath:= ExtractFilePath(Application.ExeName);
     ttl:='Nilai Persediaan_'+FormatDateTime('mm-yyyy',edtDatePicker1.Date)+'_SD_'+FormatDateTime('mm-yyyy',edtDatePicker2.Date);

     if (Master.Active) and (Master.RecordCount>0) then
      begin
       ExportGridToExcel(appPath+ttl,grdBulan,true,true,true,'xls');
       try
        Excel:= CreateOleObject('Excel.Application');
        Excel.Visible:=True;
        Excel.Workbooks.Open(appPath+ttl);
       except
        ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
        'Instal Aplikasi Excel terlebih dulu');
       end;
      end;

end;

procedure TLapNilaiSediaanFrm.InsertMemTabel;
begin
  try

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
   MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO.JPG');
   MemInfoPerusahaan.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;

end;

procedure TLapNilaiSediaanFrm.btnPrintClick(Sender: TObject);
begin

      if Master.RecordCount=0 then
         Exit;
      try
           InsertMemTabel;

      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end;
end;

procedure TLapNilaiSediaanFrm.EJenisPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    qryWareHouse.Close;
//    qryWareHouse.Params.ParamByName('pid_cat_warehouse').AsString:= vjns_gudang;
    qryWareHouse.Open;
    if LookJenis.Execute then BEGIN
       EJenis.Text:= qryWareHouseid_warehouse.AsString;
       //vGudang:= qryWareHousedescription.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TLapNilaiSediaanFrm.RBSemuaClick(Sender: TObject);
begin
  If RBSemua.Checked Then Begin
    EJenis.Enabled := Not RBSemua.Checked;
  End;
end;

procedure TLapNilaiSediaanFrm.RBJenisClick(Sender: TObject);
begin
  If RBJenis.Checked Then Begin
     EJenis.Enabled := RBJenis.Checked;
  End;
end;

procedure TLapNilaiSediaanFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TLapNilaiSediaanFrm.btnOKClick(Sender: TObject);
var s, dt0, dt1, kwh : String;
begin
  if Trim(edtDatePicker2.Text)='' then begin
     DM.MyMsg(mmWarning, 'Pilih TGL AKHIR PERIODE dahulu !','');
     Exit;
  end;

  try
    dt0:= QuotedStr(FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date));
    dt1:= QuotedStr(FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date));

    Master.Close;
    Master.SQL.Clear;
    Master.Params.Clear;
    if RBSemua.Checked then begin
          s:= 'SELECT a.id_item, a.item_name, a.satuan, a.id_cat_item, a.id_parent, a.parent_name, b.rasio, b.hrg_beli,';
          s:= s+' a.stok_awal, (a.stok_awal*b.hrg_beli) as nilai_awal, a.total_in, a.total_ot, a.stok_akhir, (a.stok_akhir*b.hrg_beli) as nilai_akhir';
          s:= s+' FROM inventory.fn_get_stok_jenis_warehouse('+dt0+','+dt1+') a';
          s:= s+' join master.item b on b.kd_item=a.id_item';
          s:= s+' ORDER BY a.id_item';
    end
    else begin
       kwh:= QuotedStr(EJenis.Text);
          s:= 'SELECT a.id_item, a.item_name, a.satuan, a.id_cat_item, a.id_parent, a.parent_name, b.rasio, b.hrg_beli,';
          s:= s+' a.stok_awal, (a.stok_awal*b.hrg_beli) as nilai_awal, a.total_in, a.total_ot, a.stok_akhir, (a.stok_akhir*b.hrg_beli) as nilai_akhir';
          s:= s+' FROM inventory.fn_get_stok_warehouse('+kwh+','+dt0+','+dt1+') a';
          s:= s+' join master.item b on b.kd_item=a.id_item';
          s:= s+' ORDER BY a.id_item';
    end;
    Master.SQL.Add(s);
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

end.

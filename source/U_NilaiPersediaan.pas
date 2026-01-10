unit U_NilaiPersediaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DateUtils, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, wwfltdlg, wwidlg, wwDialog, AdvToolBar, AdvToolBarStylers,
  cxGridBandedTableView, cxGridTableView, AdvAppStyler, AdvPanel,
  kbmMemTable, frxClass, frxDBSet, frxExportPDF, frxExportRTF,
  frxExportXML, frxRich, ZAbstractRODataset, ZDataset, ExtCtrls, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzRadGrp, SCStdControls, DBCtrls,
  RzDBNav, cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, StdCtrls,
  cxRadioGroup, wwdbdatetimepicker, RzPanel, cxButtons, SCControl,
  frxExportXLS, cxDropDownEdit, cxLookAndFeels, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGridDBBandedTableView,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  ZAbstractDataset;

type
  TNilaiPersediaanFrm = class(TForm)
    SCPanel1: TSCPanel;
    btnOK: TcxButton;
    rgAkhirPeriode: TRzGroupBox;
    edtDatePicker2: TwwDBDateTimePicker;
    Master: TZReadOnlyQuery;
    dsMaster: TDataSource;
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMaster: TfrxDBDataset;
    rptStock_Item: TfrxReport;
    kmtMaster: TkbmMemTable;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
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
    btnSearch: TSCButton;
    PopupMenu1: TPopupMenu;
    Transaction1: TMenuItem;
    WareHouse1: TMenuItem;
    SearchItem: TwwSearchDialog;
    frxDBInfo: TfrxDBDataset;
    kmtInfoperiode: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    qryWareHouse: TZReadOnlyQuery;
    LookJenis: TwwLookupDialog;
    kmtInfojenis: TStringField;
    edtDatePicker1: TwwDBDateTimePicker;
    Label1: TLabel;
    qryWareHouseid_warehouse: TStringField;
    qryWareHousedescription: TStringField;
    Detail: TZReadOnlyQuery;
    dsDetail: TDataSource;
    Detailid_item: TStringField;
    Detaildoc_no: TStringField;
    Detaildt_doc: TDateTimeField;
    Detailremarks: TStringField;
    Detailqty_in: TFloatField;
    Detailqty_ot: TFloatField;
    Detailid_warehouse: TStringField;
    Detailnama_doc: TStringField;
    frxStockDetail: TfrxReport;
    kmtMasteritem_name: TStringField;
    kmtMasterid_item: TStringField;
    kmtMastersatuan: TStringField;
    kmtMasterid_parent: TStringField;
    kmtMasterparent_name: TStringField;
    frxDBDetail: TfrxDBDataset;
    kmtDetail: TkbmMemTable;
    kmtDetailid_item: TStringField;
    kmtDetaildoc_no: TStringField;
    kmtDetaildt_doc: TDateTimeField;
    kmtDetailremarks: TStringField;
    kmtDetailqty_in: TFloatField;
    kmtDetailqty_ot: TFloatField;
    kmtDetailid_warehouse: TStringField;
    kmtDetailnama_doc: TStringField;
    btnFilter: TSCButton;
    FilterItem: TwwFilterDialog;
    grdItem: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    grd_DBTV_Item: TcxGridDBTableView;
    grd_DBTV_Itemkd_item: TcxGridDBColumn;
    grd_DBTV_Itemnama_item: TcxGridDBColumn;
    grd_DBTV_Itemnama_jenis: TcxGridDBColumn;
    grd_DBTV_Itemkd_satuan: TcxGridDBColumn;
    grd_DBTV_Itemstok_berjalan: TcxGridDBColumn;
    grd_DBTV_Itemstok_akhir: TcxGridDBColumn;
    grdItemLevel1: TcxGridLevel;
    Detail2: TZReadOnlyQuery;
    dsDetail2: TDataSource;
    Detail2lokasi: TMemoField;
    cxStyle5: TcxStyle;
    frxDBDataset1: TfrxDBDataset;
    kmtDetail2: TkbmMemTable;
    kmtDetail2stok: TFloatField;
    kmtDetail2lokasi: TMemoField;
    Detail2stok_awal: TFloatField;
    Detail2stok_akhir: TFloatField;
    kmtDetail2stok2: TFloatField;
    cxStyle6: TcxStyle;
    pgDetail: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnlHistory: TPanel;
    pnlHeaderMaster: TPanel;
    grdetail: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    grdDBTVDetail: TcxGridDBTableView;
    grdDBTVDetaildoc_no: TcxGridDBColumn;
    grdDBTVDetaildt_doc: TcxGridDBColumn;
    grdDBTVDetailnama_doc: TcxGridDBColumn;
    grdDBTVDetailid_warehouse: TcxGridDBColumn;
    grdDBTVDetailqty_in: TcxGridDBColumn;
    grdDBTVDetailqty_ot: TcxGridDBColumn;
    grdLvlDetail: TcxGridLevel;
    grdDBTVDetailno_invoice: TcxGridDBColumn;
    frxStockDetailPerLokasi: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    grd_DBTV_Itemtotal_in: TcxGridDBColumn;
    grd_DBTV_Itemtotal_ot: TcxGridDBColumn;
    btnExport: TSCButton;
    rgLOKASI: TRzGroupBox;
    RBSemua: TcxRadioButton;
    RBJenis: TcxRadioButton;
    EJenis: TcxButtonEdit;
    grd_DBTV_ItemColumn1: TcxGridDBColumn;
    grd_DBTV_ItemColumn2: TcxGridDBColumn;
    grd_DBTV_ItemColumn3: TcxGridDBColumn;
    grd_DBTV_ItemColumn4: TcxGridDBColumn;
    grd_DBTV_ItemColumn5: TcxGridDBColumn;
    grd_DBTV_ItemColumn6: TcxGridDBColumn;
    grdItemDBBandedTableView1: TcxGridDBBandedTableView;
    grdItemDBBandedTableView1Column1: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1Column2: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1Column12: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1Column13: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1Column14: TcxGridDBBandedColumn;
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
    grdItemDBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxStyle7: TcxStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle8: TcxStyle;
    OpenDialog1: TSaveDialog;
    qRak: TZQuery;
    qRakkd_rak: TStringField;
    qRakdeskripsi: TStringField;
    LookRak: TwwLookupDialog;
    Masterhrg_jual: TFloatField;
    Masternilai_akhir: TFloatField;
    grdItemDBBandedTableView1Column4: TcxGridDBBandedColumn;
    Masternilai_keluar: TFloatField;
    grdItemDBBandedTableView1Column5: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1Column6: TcxGridDBBandedColumn;
    kmtMasterstok_keluar: TStringField;
    kmtMasterstok_awal: TStringField;
    kmtMasterstok_akhir: TStringField;
    kmtMasterstok_masuk: TStringField;
    kmtMasterhrg_jual: TStringField;
    kmtMasternilai_akhir: TStringField;
    kmtMasternilai_keluar: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtDatePicker2CloseUp(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure RBSemuaClick(Sender: TObject);
    procedure RBJenisClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure EJenisPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnFilterClick(Sender: TObject);
    procedure grd_DBTV_ItemDblClick(Sender: TObject);
    procedure eyItemEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure DetailBeforeOpen(DataSet: TDataSet);
    procedure Detail2BeforeOpen(DataSet: TDataSet);
    procedure btnExportClick(Sender: TObject);
    procedure edtItemPropertiesCloseUp(Sender: TObject);
    procedure grdItemDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
    vjns_transaksi, vjns_gudang, vjns_item, namamenu, vGudang : string;
    vtag : integer;
    dt_awal, dt_akhir : TDateTime;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  NilaiPersediaanFrm: TNilaiPersediaanFrm;

procedure ShowForm(pNamaMenu : String; ptransaksi : String; pgudang : String; pitem : String; ptag : integer);

implementation

uses U_DM, U_Pencarian, cxGridExportLink;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String; ptransaksi : String; pgudang : String; pitem : String; ptag : integer);
begin
  NilaiPersediaanFrm:= TNilaiPersediaanFrm.Create(Application);
  with NilaiPersediaanFrm do begin
        namamenu := pNamaMenu;
        vjns_transaksi:= ptransaksi;
        vtag:= ptag;
        vjns_gudang:= pgudang;
        vjns_item:= pitem;
        lblHeader.Caption := pNamaMenu;
        Caption:= pNamaMenu;;
        EJenis.Enabled:= False;
        Show;
  end;
end;

procedure TNilaiPersediaanFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TNilaiPersediaanFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accrekening, accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    btnSearch.Visible:= True;
    btnSearch.Enabled:= False;
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

    btnSearch.Visible := isBrowse;
    btnSearch.Enabled := not isEmpty;
    btnRefresh.Visible := isBrowse;
    btnFilter.Visible := isBrowse;
    btnFilter.Enabled := not isEmpty;
    btnPrint.Visible := isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;

  end;
end;

procedure TNilaiPersediaanFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TNilaiPersediaanFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNilaiPersediaanFrm.btnOKClick(Sender: TObject);
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
          s:= 'SELECT a.id_item, a.item_name, a.satuan, a.id_cat_item, a.id_parent, a.parent_name, b.rasio,';
          s:= s+' b.hrg_jual, (b.hrg_jual*a.total_ot) as nilai_keluar, (b.hrg_jual*a.stok_akhir) as nilai_akhir,';
          s:= s+' a.stok_awal, a.total_in, a.total_ot, a.stok_akhir';
          s:= s+' FROM inventory.fn_get_stok_jenis_warehouse('+dt0+','+dt1+') a';
          s:= s+' join master.item b on b.kd_item=a.id_item';
          s:= s+' ORDER BY a.id_item';
    end
    else begin
       kwh:= QuotedStr(EJenis.Text);
          s:= 'SELECT a.id_item, a.item_name, a.satuan, a.id_cat_item, a.id_parent, a.parent_name, b.rasio,';
          s:= s+' b.hrg_jual, (b.hrg_jual*a.total_ot) as nilai_keluar, (b.hrg_jual*a.stok_akhir) as nilai_akhir,';
          s:= s+' a.stok_awal, a.total_in, a.total_ot, a.stok_akhir';
          s:= s+' FROM inventory.fn_get_stok_warehouse('+kwh+','+dt0+','+dt1+') a';
          s:= s+' join master.item b on b.kd_item=a.id_item';
          s:= s+' ORDER BY a.id_item';
    end;
    Master.SQL.Add(s);
    Master.Open;

    Detail.Close;
    Detail.Open;

    Detail2.Close;
    Detail2.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;

end;

procedure TNilaiPersediaanFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TNilaiPersediaanFrm.edtDatePicker2CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if edtDatePicker2.Date<edtDatePicker1.Date then begin
    DecodeDate(edtDatePicker2.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    edtDatePicker1.Date:=dt;
  end
end;

procedure TNilaiPersediaanFrm.btnPrintClick(Sender: TObject);
var i, row_count: Integer;
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;

  DM.L_Perusahaan.Close;
  DM.L_Perusahaan.Open;

  DM.L_User.Close;
  DM.L_User.Open;

  kmtInfo.Close;
  kmtInfo.Open;
  kmtInfo.Append;
  kmtInfouser_id.AsString := DM.UserConnect;
  DM.qryUser.Close;
  DM.qryUser.Params.ParamByName('pvuser').Value:= DM.UserConnect;
  DM.qryUser.Open;
  kmtInfouser_name.AsString := DM.qryUserfull_name.AsString;
  kmtInfoperiode.AsString := 'Periode : '+FormatDateTime('dd mmm yyyy',edtDatePicker1.Date)+ ' S/D ' +FormatDateTime('dd mmm yyyy',edtDatePicker2.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  if RBSemua.Checked then
    kmtInfojenis.AsString:= 'LOKASI : SEMUA';
  if RBJenis.Checked then
    kmtInfojenis.AsString:= 'LOKASI : '+UpperCase(vGudang);
  kmtInfo.Post;

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

  if Master.RecordCount=0 then
  Exit;

  kmtMaster.Close;
  kmtMaster.Open;
  Master.DisableControls;

  try
    Master.First;
    while not Master.Eof do begin

      if ((Masterstok_akhir.AsFloat <> 0) or (Mastertotal_ot.AsFloat > 0)) then begin
          kmtMaster.Append;
          kmtMasteritem_name.AsString:= UpperCase(Masteritem_name.AsString);
          kmtMasterid_item.AsString:= Masterid_item.AsString;
          kmtMastersatuan.AsString:= UpperCase(Mastersatuan.AsString);
          kmtMasterparent_name.AsString:= UpperCase(Masterparent_name.AsString);

          kmtMasterstok_awal.AsString:= FormatFloat(',0',Masterstok_awal.AsFloat);
          kmtMasterstok_akhir.AsString:= FormatFloat(',0',Masterstok_akhir.AsFloat);
          kmtMasterstok_masuk.AsString:= FormatFloat(',0',Mastertotal_in.AsFloat);
          kmtMasterstok_keluar.AsString:= FormatFloat(',0',Mastertotal_ot.AsFloat);
          kmtMasterhrg_jual.AsString:= FormatFloat(',0',Masterhrg_jual.AsFloat);
          kmtMasternilai_keluar.AsString:= FormatFloat(',0',Masternilai_keluar.AsFloat);
          kmtMasternilai_akhir.AsString:= FormatFloat(',0',Masternilai_akhir.AsFloat);
          kmtMaster.Post;

      end;
      Master.Next;

    end;
  finally
    Master.First;
    Master.EnableControls
  end;
  rptStock_Item.ShowReport;

end;

procedure TNilaiPersediaanFrm.btnSearchClick(Sender: TObject);
var f : TPencarianFrm;
begin
    f := TPencarianFrm.Create(Application);
    f.vMode:=2;

    try
      if f.ShowModal=mrOK then begin
          Master.DisableControls;
          Master.Locate('id_item',f.MasterItemkd_item.AsString,[loPartialKey]);
          Master.EnableControls;
      end;
    finally
      f.Free;
    end;
end;

procedure TNilaiPersediaanFrm.RBSemuaClick(Sender: TObject);
begin
  If RBSemua.Checked Then Begin
    EJenis.Enabled := Not RBSemua.Checked;
  End;
end;

procedure TNilaiPersediaanFrm.RBJenisClick(Sender: TObject);
begin
  If RBJenis.Checked Then Begin
     EJenis.Enabled := RBJenis.Checked;
  End;
end;

procedure TNilaiPersediaanFrm.EJenisPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    qryWareHouse.Close;
//    qryWareHouse.Params.ParamByName('pid_cat_warehouse').AsString:= vjns_gudang;
    qryWareHouse.Open;
    if LookJenis.Execute then BEGIN
       EJenis.Text:= qryWareHouseid_warehouse.AsString;
       vGudang:= qryWareHousedescription.AsString;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TNilaiPersediaanFrm.btnFilterClick(Sender: TObject);
begin
  FilterItem.Execute;
end;

procedure TNilaiPersediaanFrm.grd_DBTV_ItemDblClick(Sender: TObject);
begin
//    if Master.State<>dsBrowse then
//      Exit;
//
//    if RBSemua.Checked then begin
//            try
//              Detail.DisableControls;
//              Detail.Close;
//              Detail.Params.ParamByName('pid_item').Value:= Masterid_item.AsString;
//              Detail.Params.ParamByName('pid_warehouse').Value:= '%';
//              Detail.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
//              Detail.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
//              Detail.Open;
//              Detail.EnableControls;
//
//              Detail2.DisableControls;
//              Detail2.Close;
//              Detail2.Params.ParamByName('pid_item').Value:= Masterid_item.AsString;
//              Detail2.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
//              Detail2.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
//              Detail2.Open;
//              Detail2.EnableControls;
//            except
//              on E: Exception do begin
//                DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//              end
//           end;
//    end
//    else begin
//            try
//              Detail.DisableControls;
//              Detail.Close;
//              Detail.Params.ParamByName('pid_item').Value:= Masterid_item.AsString;
//              Detail.Params.ParamByName('pid_warehouse').Value:= EJenis.Text;
//              Detail.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
//              Detail.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
//              Detail.Open;
//              Detail.EnableControls;
//
//              Detail2.DisableControls;
//              Detail2.Close;
//              Detail2.Params.ParamByName('pid_item').Value:= Masterid_item.AsString;
//              Detail2.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
//              Detail2.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
//              Detail2.Open;
//              Detail2.EnableControls;
//            except
//              on E: Exception do begin
//                DM.MyMsg(mmError,'Error has been encountered !',E.Message);
//              end
//           end;
//    end;
end;

procedure TNilaiPersediaanFrm.eyItemEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
    if Key=#13 then
      grd_DBTV_ItemDblClick(nil);
end;

procedure TNilaiPersediaanFrm.DetailBeforeOpen(DataSet: TDataSet);
begin
    if Master.State<>dsBrowse then
      Exit;

    if RBSemua.Checked then begin
            try
              Detail.Params.ParamByName('pid_warehouse').Value:= '%';
              Detail.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
              Detail.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
            except
              on E: Exception do begin
                DM.MyMsg(mmError,'Error has been encountered !',E.Message);
              end
           end;
    end
    else begin
            try
              Detail.Params.ParamByName('pid_warehouse').Value:= EJenis.Text;
              Detail.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
              Detail.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
            except
              on E: Exception do begin
                DM.MyMsg(mmError,'Error has been encountered !',E.Message);
              end
           end;
    end;
end;

procedure TNilaiPersediaanFrm.Detail2BeforeOpen(DataSet: TDataSet);
begin
//    Detail2.Params.ParamByName('pid_cat_warehouse').Value:= 'WOB';
    Detail2.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    Detail2.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

procedure TNilaiPersediaanFrm.btnExportClick(Sender: TObject);
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

procedure TNilaiPersediaanFrm.edtItemPropertiesCloseUp(Sender: TObject);
begin
   btnOK.Click;
end;

procedure TNilaiPersediaanFrm.grdItemDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[grdItemDBBandedTableView1Column14.Index] < 5 then
     AStyle:= cxStyle7
     else
     AStyle:= cxStyle2;

end;

end.

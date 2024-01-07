unit U_InfoMatlStok;

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
  AdvToolBarStylers, AdvAppStyler, cxRadioGroup, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TInfoMatlStokFrm = class(TForm)
    SCPanel1: TSCPanel;
    btnOK: TcxButton;
    rgAkhirPeriode: TRzGroupBox;
    edtDatePicker2: TwwDBDateTimePicker;
    Master: TZReadOnlyQuery;
    dsMaster: TDataSource;
    pgcMaterial: TcxPageControl;
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMaster: TfrxDBDataset;
    rptStock_Item: TfrxReport;
    kmtMaster: TkbmMemTable;
    kmtMasteritem_name: TStringField;
    kmtMasterid_item: TStringField;
    kmtMasterid_unit: TStringField;
    kmtMasterstok_berjalan: TFloatField;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtMasterno: TStringField;
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
    btnSearch: TSCButton;
    PopupMenu1: TPopupMenu;
    Transaction1: TMenuItem;
    WareHouse1: TMenuItem;
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
    dsJenis: TDataSource;
    kmtMasterjenis: TStringField;
    kmtInfojenis: TStringField;
    Masternama_item: TStringField;
    Masterkd_item: TStringField;
    Masterkd_satuan: TStringField;
    Masterbiji_per_karton: TFloatField;
    Masterhpp: TFloatField;
    Masterid_rek_hpp: TStringField;
    Masterhrg_beli_karton: TFloatField;
    Masterstok_biji_total: TFloatField;
    Masterstok_karton: TFloatField;
    Masterstok_biji: TFloatField;
    grd_DBTV_Itemnama_item: TcxGridDBColumn;
    grd_DBTV_Itemkd_item: TcxGridDBColumn;
    grd_DBTV_Itemkd_satuan: TcxGridDBColumn;
    grd_DBTV_Itemstok_biji_total: TcxGridDBColumn;
    grd_DBTV_Itemstok_karton: TcxGridDBColumn;
    grd_DBTV_Itemstok_biji: TcxGridDBColumn;
    kmtMasterstok_karton: TFloatField;
    kmtMasterstok_biji: TFloatField;
    grd_DBTV_Itembiji_per_karton: TcxGridDBColumn;
    kmtMasterbiji_per_karton: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtDatePicker2CloseUp(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure kmtMasterCalcFields(DataSet: TDataSet);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
    vjns_transaksi, namamenu : string;
    vtag : integer;
    dt_awal, dt_akhir : TDateTime;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  InfoMatlStokFrm: TInfoMatlStokFrm;

procedure ShowForm(pNamaMenu : String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String; ptag : integer);
begin
  InfoMatlStokFrm:= TInfoMatlStokFrm.Create(Application);
  InfoMatlStokFrm.namamenu := pNamaMenu;
  InfoMatlStokFrm.vtag:= ptag;
  InfoMatlStokFrm.lblHeader.Caption := pNamaMenu;
  InfoMatlStokFrm.pgcMaterial.ActivePageIndex:= 0;
  InfoMatlStokFrm.Show;
end;

procedure TInfoMatlStokFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoMatlStokFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
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
    btnPrint.Enabled := not isEmpty and accprint;
  end;
end;

procedure TInfoMatlStokFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoMatlStokFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TInfoMatlStokFrm.btnOKClick(Sender: TObject);
begin
  if Trim(edtDatePicker2.Text)='' then begin
     DM.MyMsg(mmWarning, 'Please Select End of Periode First !','');
     Exit;
  end;
  try
    Master.Close;
    Master.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TInfoMatlStokFrm.edtDatePicker2CloseUp(Sender: TObject);
var
    y,m,d: Word;
begin
    edtDatePicker2.Date:= EndOfTheMonth(edtDatePicker2.Date);
    DecodeDate(edtDatePicker2.Date,y,m,d);
    dt_awal := EncodeDate(y,m,1);
    dt_akhir := edtDatePicker2.Date;
end;

procedure TInfoMatlStokFrm.btnPrintClick(Sender: TObject);
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
   kmtInfoperiode.AsString := 'End of Periode : '+FormatDateTime('dd mmm yyyy',dt_akhir);
   kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
   kmtInfopnamamenu.AsString := lblHeader.Caption;
//   if RBSemua.Checked then
//      kmtInfojenis.AsString:= 'JENIS : SEMUA';
//   if RBJenis.Checked then
//      kmtInfojenis.AsString:= 'JENIS : '+qryJenisitem_name.AsString;
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
      if Master.RecordCount<10 then begin
        row_count:= 10-Master.RecordCount;
        Master.DisableControls;
        try
          Master.First;
          while not Master.Eof do begin
            kmtMaster.Append;
            kmtMasteritem_name.AsString:= UpperCase(Masternama_item.AsString);
            kmtMasterid_item.AsString:= Masterkd_item.AsString;
            kmtMasterid_unit.AsString:= UpperCase(Masterkd_satuan.AsString);
            kmtMasterjenis.AsString:= '';
            kmtMasterstok_berjalan.AsFloat:= Masterstok_biji_total.AsFloat;
            kmtMasterstok_karton.AsFloat:= Masterstok_karton.AsFloat;
            kmtMasterstok_biji.AsFloat:= Masterstok_biji.AsFloat;
            kmtMasterbiji_per_karton.AsFloat:= Masterbiji_per_karton.AsFloat;
            kmtMaster.Post;
            Master.Next;
          end;
          for i := 1 to row_count do begin
            kmtMaster.Append;
            kmtMasteritem_name.AsString:= '';
            kmtMasterid_item.AsString:= '';
            kmtMasterid_unit.AsString:= '';
            kmtMasterjenis.AsString:= '';
            kmtMasterstok_berjalan.Clear;
            kmtMasterstok_karton.Clear;
            kmtMasterstok_biji.Clear;
            kmtMasterbiji_per_karton.Clear;
            kmtMaster.Post;
          end;
        finally
          Master.First;
          Master.EnableControls
        end
      end else begin
        Master.DisableControls;
        try
          Master.First;
          while not Master.Eof do begin
            kmtMaster.Append;
            kmtMasteritem_name.AsString:= UpperCase(Masternama_item.AsString);
            kmtMasterid_item.AsString:= Masterkd_item.AsString;
            kmtMasterid_unit.AsString:= UpperCase(Masterkd_satuan.AsString);
            kmtMasterjenis.AsString:= '';
            kmtMasterstok_berjalan.AsFloat:= Masterstok_biji_total.AsFloat;
            kmtMasterstok_karton.AsFloat:= Masterstok_karton.AsFloat;
            kmtMasterstok_biji.AsFloat:= Masterstok_biji.AsFloat;
            kmtMasterbiji_per_karton.AsFloat:= Masterbiji_per_karton.AsFloat;
            kmtMaster.Post;
            Master.Next;
          end;
        finally
          Master.First;
          Master.EnableControls
        end
      end;
      rptStock_Item.ShowReport;

end;

procedure TInfoMatlStokFrm.kmtMasterCalcFields(DataSet: TDataSet);
begin
  if kmtMaster.RecNo = -1  then  kmtMasterno.AsString := '1'
  else
   begin
     kmtMasterno.AsString := IntToStr(kmtMaster.RecNo + 1);
     if (kmtMaster.RecNo +1) > Master.RecordCount then kmtMasterno.AsString := '';
   end;
end;

procedure TInfoMatlStokFrm.btnSearchClick(Sender: TObject);
begin
  SearchItem.Execute;
end;

end.

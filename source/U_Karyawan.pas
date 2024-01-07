unit U_Karyawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvReflectionImage, ExtCtrls, AdvPanel, ActnList, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridBandedTableView,
  cxClasses, cxStyles, cxGridTableView, AdvAppStyler, AdvGlowButton,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxContainer, cxTextEdit,
  cxDBEdit, SCControl, SCStdControls, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, DBCtrls, RzDBEdit, Mask, RzEdit, RzLabel, RzDBLbl,
  RzPanel, cxCalendar, cxCheckBox, wwDialog, wwidlg, cxLabel, cxDBLabel,
  kbmMemTable, frxClass, frxDBSet, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TKaryawanFrm = class(TForm)
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    dsMaster: TDataSource;
    Master: TZQuery;
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
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    pgMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdMasterDBTableView2: TcxGridDBTableView;
    grdMasterDBTableView2Column1: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    pnlDetailSupplier: TRzPanel;
    lblDBNamaRekanan: TRzDBLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    Label2: TLabel;
    EdtFirstName: TRzDBEdit;
    EdtAddress: TRzDBEdit;
    EdtCity: TRzDBEdit;
    EdtCountry: TRzDBEdit;
    EdtPhone: TRzDBEdit;
    edtid_Supplier: TRzDBEdit;
    grddbtvMasterid_dokter: TcxGridDBColumn;
    grddbtvMasternama_dokter: TcxGridDBColumn;
    grddbtvMastertelepon: TcxGridDBColumn;
    grddbtvMasterspesialisasi: TcxGridDBColumn;
    grddbtvMasterbagian: TcxGridDBColumn;
    edtTglLahir: TcxDBDateEdit;
    edtTglMasuk: TcxDBDateEdit;
    RzLabel3: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel10: TRzLabel;
    cbxKawin: TcxDBComboBox;
    RzLabel11: TRzLabel;
    cbxJnsKel: TcxDBComboBox;
    RzLabel12: TRzLabel;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    btnPrint: TSCButton;
    frxRepMaster: TfrxReport;
    frxDBmaster: TfrxDBDataset;
    MemMaster: TkbmMemTable;
    MemMasterid_karyawan: TStringField;
    MemMasternama_karyawan: TStringField;
    MemMastertelepon: TStringField;
    MemMasterno: TIntegerField;
    MemMasterbagian: TStringField;
    MemMasterjabatan: TStringField;
    MemMasterusr_print: TStringField;
    MemMasterdt_print: TStringField;
    edtJabatan: TRzDBEdit;
    edtBagian: TRzDBEdit;
    Masternk: TStringField;
    Masterinitial: TStringField;
    Masterfull_name: TStringField;
    Masterdepartment: TStringField;
    Masterjabatan: TStringField;
    Masterisactive: TStringField;
    Masterjoin_date: TDateTimeField;
    Masteraddress: TStringField;
    Masterphone1: TStringField;
    Mastercell_phone: TStringField;
    Masterextention: TStringField;
    Masteremail: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Mastergender: TStringField;
    Masterbirth_place: TStringField;
    Masterdt_birth: TDateTimeField;
    RzLabel13: TRzLabel;
    edtNK: TRzDBEdit;
    edtAktif: TcxDBCheckBox;
    Shape2: TShape;
    Mastersts_kawin: TStringField;
    grddbtvMasterisactive: TcxGridDBColumn;
    grddbtvMasteraddress: TcxGridDBColumn;
    grddbtvMastercell_phone: TcxGridDBColumn;
    grddbtvMastergender: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure pgMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure grddbtvMasterDblClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure MasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  KaryawanFrm: TKaryawanFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  KaryawanFrm:= TKaryawanFrm.Create(Application);
  try
    KaryawanFrm.Master.Close;
    KaryawanFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
 // KaryawanFrm.pnlBottom.Visible:= False;
  KaryawanFrm.lblHeader1.Caption:= pNamaMenu;
  KaryawanFrm.vtag:= ptag;
  KaryawanFrm.UpdateView;
  KaryawanFrm.Show;
end;


procedure TKaryawanFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TKaryawanFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TKaryawanFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masternk.IsNull or (Trim(Masternk.AsString)='') then
    raise Exception.Create('ID PEGAWAI harus Diisi !')
  else
  if Masterfull_name.IsNull or (Trim(Masterfull_name.AsString)='') then
    raise Exception.Create('NAMA PEGAWAI harus Diisi !')
  else
  if Masteraddress.IsNull or (Trim(Masteraddress.AsString)='') then
    raise Exception.Create('ALAMAT PEGAWAI Harus Diisi !')
  else
  if Masterjabatan.IsNull or (Trim(Masterjabatan.AsString)='') then
    raise Exception.Create('JABATAN  PEGAWAI Harus Diisi !')
  else
  if Masterdepartment.IsNull or (Trim(Masterdepartment.AsString)='') then
    raise Exception.Create('BAGIAN  PEGAWAI Harus Diisi !');

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TKaryawanFrm.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TKaryawanFrm.actAddExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Append;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TKaryawanFrm.actEditExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Edit;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TKaryawanFrm.actDeleteExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TKaryawanFrm.actRefreshExecute(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TKaryawanFrm.actSaveExecute(Sender: TObject);
begin
  try
    Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TKaryawanFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView;
  pgMaster.ActivePageIndex := 0;
end;

procedure TKaryawanFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    grdMaster.Enabled:= False;
    //pnlDataBackground.Visible:= False;
    pgMaster.ActivePageIndex := 0;
    btnFirst.Enabled:= False;
    btnPrior.Enabled:= False;
    btnNext.Enabled:= False;
    btnLast.Enabled:= False;
    btnAdd.Visible:= True;
    btnAdd.Enabled:= False;
    btnEdit.Visible:= True;
    btnEdit.Enabled:= False;
    btnDelete.Visible:= True;
    btnDelete.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnPrint.Visible := True;
    btnPrint.Enabled := False;
    btnSave.Visible:= False;
    btnCancel.Visible:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    grdMaster.Enabled := isBrowse;
    //pnlDataBackground.Visible := not isBrowse;
    if isBrowse then
      pgMaster.ActivePageIndex := 0
    else
      pgMaster.ActivePageIndex := 1;

    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnPrint.Visible := isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;

    EdtFirstName.ReadOnly := isBrowse;
    EdtAddress.ReadOnly := isBrowse;
    EdtCity.ReadOnly := isBrowse;
    edtTglLahir.Properties.ReadOnly := isBrowse;
    edtTglMasuk.Properties.ReadOnly := isBrowse;
    cbxKawin.Properties.ReadOnly:= isBrowse;
    cbxJnsKel.Properties.ReadOnly:= isBrowse;
    edtJabatan.ReadOnly := isBrowse;
    edtBagian.ReadOnly := isBrowse;
    edtAktif.Properties.ReadOnly:= isBrowse;
    edtNK.ReadOnly:= isBrowse;

  end;
end;

procedure TKaryawanFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= Master.State=dsBrowse
end;

procedure TKaryawanFrm.grddbtvMasterDblClick(Sender: TObject);
begin
  pgMaster.ActivePageIndex := 1;
end;

procedure TKaryawanFrm.btnPrintClick(Sender: TObject);
var i: integer;
begin
   if Master.RecordCount=0 then
      Exit;
   try
       DM.Perusahaan.Close;
       DM.Perusahaan.Open;

        DM.Perusahaan.Close;
        DM.Perusahaan.Open;

       MemInfoPerusahaan.Close;
       MemInfoPerusahaan.Open;
       MemInfoPerusahaan.Append;
       MemInfoPerusahaannama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
       MemInfoPerusahaanalamat_perusahaan.AsString:= DM.Perusahaanalamat.AsString;
       MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.Perusahaantelepon.AsString;
       MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.Perusahaanfax.AsString;
       MemInfoPerusahaankota_perusahaan.AsString:= DM.Perusahaankota.AsString;
       MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\LOGO.JPG');
       MemInfoPerusahaan.Post;

       MemMaster.Close;
       MemMaster.Open;
       if Master.RecordCount<=37 then begin
          Master.DisableControls;
          Master.First;
          while not Master.Eof do begin
             MemMaster.Append;
             MemMasterusr_print.AsString:=DM.UserConnect;
             MemMasterdt_print.AsString:=FormatDateTime('dd-mmmm-yyyy',Now);
             MemMasterid_karyawan.AsString:=' '+Masternk.AsString;
             MemMasternama_karyawan.AsString:=' '+Masterfull_name.AsString;
             MemMastertelepon.AsString:=' '+Masterphone1.AsString;
             MemMasterbagian.AsString:=Masterdepartment.AsString;
             MemMasterjabatan.AsString:=Masterjabatan.AsString;
             MemMasterno.Value:=Master.RecNo;
             MemMaster.Post;
             Master.Next;
          end;
          for i := Master.RecordCount to 37 do begin
             MemMaster.Append;
             MemMasterid_karyawan.AsString:=' ';
             MemMasternama_karyawan.AsString:=' ';
             MemMastertelepon.AsString:=' ';
             MemMasterbagian.AsString:=' ';
             MemMasterjabatan.AsString:=' ';
             MemMasterbagian.AsString:=' ';
             MemMaster.Post;
          end;
       end;
       if Master.RecordCount>=37 then begin
          Master.DisableControls;
          Master.First;
          while not Master.Eof do begin
             MemMaster.Append;
             MemMasterusr_print.AsString:=DM.UserConnect;
             MemMasterdt_print.AsString:=FormatDateTime('dd-mmmm-yyyy',Now);
             MemMasterid_karyawan.AsString:=' '+Masternk.AsString;
             MemMasternama_karyawan.AsString:=' '+Masterfull_name.AsString;
             MemMastertelepon.AsString:=' '+Masterphone1.AsString;
             MemMasterbagian.AsString:=Masterdepartment.AsString;
             MemMasterjabatan.AsString:=Masterjabatan.AsString;
             MemMasterno.Value:=Master.RecNo;
             MemMaster.Post;
             Master.Next;
          end;
       end;
       
       Master.EnableControls;
       frxRepMaster.ShowReport;
   except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TKaryawanFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Masterisactive.AsString:= '1';
end;

end.

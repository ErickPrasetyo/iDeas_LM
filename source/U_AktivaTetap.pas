unit U_AktivaTetap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, frxClass, frxDBSet,
  kbmMemTable, ActnList, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridBandedTableView, cxGridTableView, AdvPanel, AdvAppStyler,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, StdCtrls, Mask, RzEdit, RzDBEdit, RzLabel, RzDBLbl, RzPanel,
  cxGridLevel, cxGridCustomTableView, cxGridDBBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, SCControl, SCStdControls,
  AdvGlowButton, ExtCtrls, cxButtonEdit, wwDialog, wwidlg;

type
  TAktivaTetapFrm = class(TForm)
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
    grdlvlMaster: TcxGridLevel;
    pnlDetailSupplier: TRzPanel;
    lblDBNamaRekanan: TRzDBLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    Label2: TLabel;
    edtDiskripsi: TRzDBEdit;
    edtUnit: TRzDBEdit;
    edtNilaiPerolehan: TRzDBEdit;
    edtTglLahir: TcxDBDateEdit;
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
    RzLabel13: TRzLabel;
    edtNK: TRzDBEdit;
    Masterkd_aset: TStringField;
    Masterdiskripsi: TStringField;
    Masterdt_perolehan: TDateField;
    Masternilai_perolehan: TFloatField;
    Masterqty: TIntegerField;
    Masterjml_perolehan: TFloatField;
    Mastertambah: TFloatField;
    Masterkurang: TFloatField;
    Masterumur_thn: TFloatField;
    Masterpsn_susut: TFloatField;
    Masterkd_jenis: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterispost: TStringField;
    Masterishapus: TStringField;
    Masterisdelete: TStringField;
    grddbtvMaster: TcxGridDBBandedTableView;
    grddbtvMasterkd_aset: TcxGridDBBandedColumn;
    grddbtvMasterdiskripsi: TcxGridDBBandedColumn;
    grddbtvMasterdt_perolehan: TcxGridDBBandedColumn;
    grddbtvMasternilai_perolehan: TcxGridDBBandedColumn;
    grddbtvMasterqty: TcxGridDBBandedColumn;
    grddbtvMasterjml_perolehan: TcxGridDBBandedColumn;
    grddbtvMasterkurang: TcxGridDBBandedColumn;
    grddbtvMasterispost: TcxGridDBBandedColumn;
    grddbtvMasterishapus: TcxGridDBBandedColumn;
    qryPerubahan: TZQuery;
    Masterjenis_aset: TStringField;
    qryPerubahankd_aset: TStringField;
    qryPerubahanperubahan: TFloatField;
    Masterperubahan: TFloatField;
    Masternilai_buku: TFloatField;
    grddbtvMasterjenis_aset: TcxGridDBBandedColumn;
    grddbtvMasternilai_buku: TcxGridDBBandedColumn;
    edtKelompok: TcxDBButtonEdit;
    qryJenisAset: TZQuery;
    qryJenisAsetkd_jenis: TStringField;
    qryJenisAsetid_rek_aktiva: TStringField;
    qryJenisAsetid_rek_akum: TStringField;
    qryJenisAsetid_rek_biaya: TStringField;
    qryJenisAsetpsn_susut: TFloatField;
    qryJenisAsetumur_thn: TFloatField;
    qryJenisAsetdiskripsi: TStringField;
    LookKelompok: TwwLookupDialog;
    qry_Get_No_Aset: TZQuery;
    qry_Get_No_Asetnew_kode: TStringField;
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
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure edtKelompokPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  AktivaTetapFrm: TAktivaTetapFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  AktivaTetapFrm:= TAktivaTetapFrm.Create(Application);
  try
    DM.L_JenisAset.Close;
    DM.L_JenisAset.Open;
    AktivaTetapFrm.qryPerubahan.Close;
    AktivaTetapFrm.qryPerubahan.Open;
    AktivaTetapFrm.Master.Close;
    AktivaTetapFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
 // KaryawanFrm.pnlBottom.Visible:= False;
  AktivaTetapFrm.lblHeader1.Caption:= pNamaMenu;
  AktivaTetapFrm.Caption:= pNamaMenu;
  AktivaTetapFrm.vtag:= ptag;
  AktivaTetapFrm.UpdateView;
  AktivaTetapFrm.Show;
end;


procedure TAktivaTetapFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TAktivaTetapFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TAktivaTetapFrm.MasterBeforePost(DataSet: TDataSet);
begin
  Masterjml_perolehan.AsFloat:= Masternilai_perolehan.AsFloat*Masterqty.AsFloat;

  if Masterkd_jenis.IsNull or (Trim(Masterkd_jenis.AsString)='') then
    raise Exception.Create('KODE JENIS harus Diisi !')
  else
  if Masterkd_aset.IsNull or (Trim(Masterkd_aset.AsString)='') then
    raise Exception.Create('Kode Aset harus Diisi !')
  else
  if Masterdiskripsi.IsNull or (Trim(Masterdiskripsi.AsString)='') then
    raise Exception.Create('DISKRIPSI Harus Diisi !')
  else
  if Masterdt_perolehan.IsNull or (Trim(Masterdt_perolehan.AsString)='') then
    raise Exception.Create('TGL PEROLEHAN Harus Diisi !')
  else
  if Masternilai_perolehan.IsNull or (Trim(Masternilai_perolehan.AsString)='') then
    raise Exception.Create('NILAI PEROLEHAN Harus Diisi !')
  ELSE
  if Masternilai_perolehan.AsFloat=0 then
    raise Exception.Create('NILAI PEROLEHAN Harus Diisi !')
  else
  if Masterqty.IsNull or (Trim(Masterqty.AsString)='') then
    raise Exception.Create('UNIT Harus Diisi !')
  ELSE
  if Masterqty.AsFloat=0 then
    raise Exception.Create('UNIT Harus Diisi !');

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TAktivaTetapFrm.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TAktivaTetapFrm.actAddExecute(Sender: TObject);
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

procedure TAktivaTetapFrm.actEditExecute(Sender: TObject);
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

procedure TAktivaTetapFrm.actDeleteExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    try
      Master.Delete;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  finally
    UpdateView ;
  end;
end;

procedure TAktivaTetapFrm.actRefreshExecute(Sender: TObject);
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

procedure TAktivaTetapFrm.actSaveExecute(Sender: TObject);
begin
  try
    try
      Master.Post;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  finally
    UpdateView;
  end;
end;

procedure TAktivaTetapFrm.actCancelExecute(Sender: TObject);
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

procedure TAktivaTetapFrm.UpdateView;
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

    edtTglLahir.Properties.ReadOnly := isBrowse;
    edtKelompok.Properties.ReadOnly := isBrowse;
    edtKelompok.Properties.Buttons[0].Visible:= not isBrowse;
    edtDiskripsi.ReadOnly := isBrowse;

    edtUnit.ReadOnly := isBrowse;
    edtNilaiPerolehan.ReadOnly := isBrowse;
    edtNK.ReadOnly:= isBrowse;

  end;
end;

procedure TAktivaTetapFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= Master.State=dsBrowse
end;

procedure TAktivaTetapFrm.grddbtvMasterDblClick(Sender: TObject);
begin
  pgMaster.ActivePageIndex := 1;
end;

procedure TAktivaTetapFrm.btnPrintClick(Sender: TObject);
var i: integer;
begin
//   if Master.RecordCount=0 then
//      Exit;
//   try
//       DM.Perusahaan.Close;
//       DM.Perusahaan.Open;
//
//        DM.Perusahaan.Close;
//        DM.Perusahaan.Open;
//
//       MemInfoPerusahaan.Close;
//       MemInfoPerusahaan.Open;
//       MemInfoPerusahaan.Append;
//       MemInfoPerusahaannama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
//       MemInfoPerusahaanalamat_perusahaan.AsString:= DM.Perusahaanalamat.AsString;
//       MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.Perusahaantelepon.AsString;
//       MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.Perusahaanfax.AsString;
//       MemInfoPerusahaankota_perusahaan.AsString:= DM.Perusahaankota.AsString;
//       MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO.JPG');;
//       MemInfoPerusahaan.Post;
//
//       MemMaster.Close;
//       MemMaster.Open;
//       if Master.RecordCount<=37 then begin
//          Master.DisableControls;
//          Master.First;
//          while not Master.Eof do begin
//             MemMaster.Append;
//             MemMasterusr_print.AsString:=DM.UserConnect;
//             MemMasterdt_print.AsString:=FormatDateTime('dd-mmmm-yyyy',Now);
//             MemMasterid_karyawan.AsString:=' '+Masternk.AsString;
//             MemMasternama_karyawan.AsString:=' '+Masterfull_name.AsString;
//             MemMastertelepon.AsString:=' '+Masterphone1.AsString;
//             MemMasterbagian.AsString:=Masterdepartment.AsString;
//             MemMasterjabatan.AsString:=Masterjabatan.AsString;
//             MemMasterno.Value:=Master.RecNo;
//             MemMaster.Post;
//             Master.Next;
//          end;
//          for i := Master.RecordCount to 37 do begin
//             MemMaster.Append;
//             MemMasterid_karyawan.AsString:=' ';
//             MemMasternama_karyawan.AsString:=' ';
//             MemMastertelepon.AsString:=' ';
//             MemMasterbagian.AsString:=' ';
//             MemMasterjabatan.AsString:=' ';
//             MemMasterbagian.AsString:=' ';
//             MemMaster.Post;
//          end;
//       end;
//       if Master.RecordCount>=37 then begin
//          Master.DisableControls;
//          Master.First;
//          while not Master.Eof do begin
//             MemMaster.Append;
//             MemMasterusr_print.AsString:=DM.UserConnect;
//             MemMasterdt_print.AsString:=FormatDateTime('dd-mmmm-yyyy',Now);
//             MemMasterid_karyawan.AsString:=' '+Masternk.AsString;
//             MemMasternama_karyawan.AsString:=' '+Masterfull_name.AsString;
//             MemMastertelepon.AsString:=' '+Masterphone1.AsString;
//             MemMasterbagian.AsString:=Masterdepartment.AsString;
//             MemMasterjabatan.AsString:=Masterjabatan.AsString;
//             MemMasterno.Value:=Master.RecNo;
//             MemMaster.Post;
//             Master.Next;
//          end;
//       end;
//
//       Master.EnableControls;
//       frxRepMaster.ShowReport;
//   except
//      on E: Exception do
//        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//   end;
end;

procedure TAktivaTetapFrm.MasterNewRecord(DataSet: TDataSet);
begin
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   Masterdt_perolehan.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
   Masternilai_perolehan.AsFloat:= 0;
   Masterqty.AsFloat:= 0;
   Masterjml_perolehan.AsFloat:= 0;
   Mastertambah.AsFloat:= 0;
   Masterkurang.AsFloat:= 0;
   Masterishapus.AsString:= '0';
   Masterisdelete.AsString:= '0';
   Masterispost.AsString:= '0';
   Masterumur_thn.AsFloat:= 0;
   Masterpsn_susut.AsFloat:= 0;
end;

procedure TAktivaTetapFrm.MasterCalcFields(DataSet: TDataSet);
begin
   Masternilai_buku.AsFloat:= Masterjml_perolehan.AsFloat-Masterperubahan.AsFloat;
end;

procedure TAktivaTetapFrm.edtKelompokPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    try
      qryJenisAset.Close;
      qryJenisAset.Open;
      if LookKelompok.Execute then begin
         if Master.State=dsBrowse then
            Master.Edit;

         Masterkd_jenis.AsString:= qryJenisAsetkd_jenis.AsString;
         Masterumur_thn.AsFloat:= qryJenisAsetumur_thn.AsFloat;
         Masterpsn_susut.AsFloat:= qryJenisAsetpsn_susut.AsFloat;
         if Masterkd_aset.IsNull or (Trim(Masterkd_aset.AsString)='') then begin
            qry_Get_No_Aset.Close;
            qry_Get_No_Aset.Params.ParamByName('pkd_jenis').AsString:= qryJenisAsetkd_jenis.AsString;
            qry_Get_No_Aset.Params.ParamByName('pdt').AsString:= FormatDateTime('dd-mm-yyyy',edtTglLahir.Date);
            qry_Get_No_Aset.Open;
            Masterkd_aset.AsString:= qry_Get_No_Asetnew_kode.AsString;
         end;

      end;
    except

    end;
end;

end.

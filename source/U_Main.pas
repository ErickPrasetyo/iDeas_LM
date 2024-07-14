unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvToolBar,
  AdvToolBarStylers, AdvAppStyler, AdvMenus, AdvMenuStylers, Menus,
  ActnList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TMainFrm = class(TForm)
    StatusBar: TAdvOfficeStatusBar;
    StatusBarOfficeStyler: TAdvOfficeStatusBarOfficeStyler;
    aclMain: TActionList;
    actDatabaseConnection: TAction;
    actDirectorySetting: TAction;
    actExit: TAction;
    actLogin: TAction;
    actChangePassword: TAction;
    actUserMessages: TAction;
    actGroups: TAction;
    actUsers: TAction;
    MainMenu: TAdvMainMenu;
    MenuOfficeStyler: TAdvMenuOfficeStyler;
    afsMain: TAdvFormStyler;
    actWindowsXPSkin: TAction;
    Skin1: TMenuItem;
    WindowsXP1: TMenuItem;
    Whidbey1: TMenuItem;
    Office20031: TMenuItem;
    Office20071: TMenuItem;
    actWhidbeySkin: TAction;
    Blue1: TMenuItem;
    Olive1: TMenuItem;
    Classic1: TMenuItem;
    Silver1: TMenuItem;
    Luna1: TMenuItem;
    Obsidian1: TMenuItem;
    Silver2: TMenuItem;
    actOffice2003ClassicSkin: TAction;
    actOffice2003BlueSkin: TAction;
    actOffice2003OliveSkin: TAction;
    actOffice2003SilverSkin: TAction;
    actOffice2007LunaSkin: TAction;
    actOffice2007ObsidianSkin: TAction;
    actOffice2007SilverSkin: TAction;
    ToolBarOfficeStyler: TAdvToolBarOfficeStyler;
    MDITabset: TAdvOfficeMDITabSet;
    TabSetOfficeStyler: TAdvOfficeTabSetOfficeStyler;
    Admin1: TMenuItem;
    Exit1: TMenuItem;
    ChangePassword1: TMenuItem;
    actAppLog: TAction;
    ApplicationLogger1: TMenuItem;
    actMSupplier: TAction;
    actMCustomer: TAction;
    actMItem: TAction;
    actMSalesman: TAction;
    actMRekGL: TAction;
    actMRekeningKas: TAction;
    Master1: TMenuItem;
    Supplier1: TMenuItem;
    Customer1: TMenuItem;
    N3: TMenuItem;
    Item1: TMenuItem;
    N4: TMenuItem;
    actPNotaHutang: TAction;
    actPNotaDebet: TAction;
    actPBukuHutang: TAction;
    actJNotaPiutang: TAction;
    actJNotaKoreksi: TAction;
    actJRepFakturSales: TAction;
    actJImportFaktur: TAction;
    actJBukuPiutang: TAction;
    actJFakturPajak: TAction;
    actKKasirTunai: TAction;
    actKKasirNonTunai: TAction;
    actKBukuKasir: TAction;
    actKeuKasKeluar: TAction;
    actKeuKasMasuk: TAction;
    actKeuBankKeluar: TAction;
    actKeuBankMasuk: TAction;
    actKeuReconsile: TAction;
    actKeuBukuKas: TAction;
    actKeuBukuBank: TAction;
    actKeuRepBayarFaktur: TAction;
    Pembelian1: TMenuItem;
    N6: TMenuItem;
    BukuHutang1: TMenuItem;
    Penjualan1: TMenuItem;
    NotaPiutang1: TMenuItem;
    Keuangan1: TMenuItem;
    BuktiKasKeluarBKK1: TMenuItem;
    BuktiKasMasukBKM1: TMenuItem;
    N11: TMenuItem;
    BukuKas1: TMenuItem;
    actKodeTransaction: TAction;
    ransaction1: TMenuItem;
    actMemorial: TAction;
    actJurnalPosting: TAction;
    actTrialBalance: TAction;
    actRugiLaba: TAction;
    actNeraca: TAction;
    actPPurchaseOrder: TAction;
    actPPenerimaanBarang: TAction;
    actKasKeluar: TAction;
    actJSalesOrder: TAction;
    actJSuratJalan: TAction;
    actMHargaJual: TAction;
    N16: TMenuItem;
    agihanPembelian1: TMenuItem;
    ReturPembelianNotaDebet1: TMenuItem;
    actMArusKas: TAction;
    actPRJobOrder: TAction;
    actArusKas: TAction;
    actPRLapProduksi: TAction;
    actAbout: TAction;
    actMParameter: TAction;
    SettingParameter1: TMenuItem;
    actSaldoAwal: TAction;
    actKeuKasbon: TAction;
    actKeuSettlement: TAction;
    actKeuReimbursement: TAction;
    actJRepFakturDistro: TAction;
    actMPegawai: TAction;
    DataPegawai1: TMenuItem;
    actSettingNeraca: TAction;
    actSettingLari: TAction;
    actKeuBukuKasbon: TAction;
    actJRepTPR: TAction;
    actPNotaTPR: TAction;
    actSetExcelString: TAction;
    KoneksiFileExcel1: TMenuItem;
    actPImportFakturUli: TAction;
    actJImportVoucher: TAction;
    ActJRepVoucher: TAction;
    actJRepFakturSalesArea: TAction;
    actKeuDanaTalangan: TAction;
    actSettingBayar: TAction;
    actJUpdteVoucher: TAction;
    actJRepBarangBS: TAction;
    actATKelompokAset: TAction;
    actATMAset: TAction;
    actATSusutTahun: TAction;
    actATDaftarSusut: TAction;
    actATPenyesuaianAset: TAction;
    actATJurnalAset: TAction;
    actATSusutKlpk: TAction;
    actMemorialPiutangUli: TAction;
    actPImportFakturBungah: TAction;
    actPImportReturUli: TAction;
    actPImportFakturPembelianBungah: TAction;
    actTutupBukuBulan: TAction;
    actTutupBukuTahun: TAction;
    actJUmurPiutang: TAction;
    actJImportFakturMayora: TAction;
    N13: TMenuItem;
    Messages1: TMenuItem;
    Gudang1: TMenuItem;
    actGPenerimaan: TAction;
    actGPengeluaran: TAction;
    actGVerifikasi: TAction;
    actGStokAwal: TAction;
    actGKoreksi: TAction;
    actGPosting: TAction;
    actGKartuStok: TAction;
    actGKartuPersediaan: TAction;
    PenerimaanBarang1: TMenuItem;
    PengeluaranBarang1: TMenuItem;
    N27: TMenuItem;
    KoreksiStok1: TMenuItem;
    N28: TMenuItem;
    StokAwal1: TMenuItem;
    KartuStokQTY1: TMenuItem;
    KartuStokPersediaan1: TMenuItem;
    actJRefNoFaktur: TAction;
    actJImportFakturKeluaran: TAction;
    N32: TMenuItem;
    actPImportFakturPembelianMayora: TAction;
    actKasMasuk: TAction;
    MutasiStok1: TMenuItem;
    Retail1: TMenuItem;
    actNotaRetail: TAction;
    actMGudang: TAction;
    DataGudang1: TMenuItem;
    actLapPembelian: TAction;
    actLapUmurHutang: TAction;
    LaporanPembelian1: TMenuItem;
    LaporanUmurHutang1: TMenuItem;
    KertasKerjaStokOpname1: TMenuItem;
    actLapPenjualan: TAction;
    LaporanPenjualan1: TMenuItem;
    actMutasiStok: TAction;
    actLapKasir: TAction;
    actLapKasir1: TMenuItem;
    actStokOpname: TAction;
    actItemCheck: TAction;
    InformasiItem1: TMenuItem;
    actLapSetoran: TAction;
    LaporanSetoran1: TMenuItem;
    actOnline: TAction;
    Online1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actDatabaseConnectionExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actLoginExecute(Sender: TObject);
    procedure actChangePasswordExecute(Sender: TObject);
    procedure actWindowsXPSkinExecute(Sender: TObject);
    procedure actWhidbeySkinExecute(Sender: TObject);
    procedure actOffice2003ClassicSkinExecute(Sender: TObject);
    procedure actOffice2003BlueSkinExecute(Sender: TObject);
    procedure actOffice2003OliveSkinExecute(Sender: TObject);
    procedure actOffice2003SilverSkinExecute(Sender: TObject);
    procedure actOffice2007LunaSkinExecute(Sender: TObject);
    procedure actOffice2007ObsidianSkinExecute(Sender: TObject);
    procedure actOffice2007SilverSkinExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAppLogExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actMSupplierExecute(Sender: TObject);
    procedure actMCustomerExecute(Sender: TObject);
    procedure actMItemExecute(Sender: TObject);
    procedure actMSalesmanExecute(Sender: TObject);
    procedure actUsersExecute(Sender: TObject);
    procedure actMRekGLExecute(Sender: TObject);
    procedure actKodeTransactionExecute(Sender: TObject);
    procedure actKeuKasKeluarExecute(Sender: TObject);
    procedure actPNotaHutangExecute(Sender: TObject);
    procedure actKeuKasMasukExecute(Sender: TObject);
    procedure actKeuBankKeluarExecute(Sender: TObject);
    procedure actKeuBankMasukExecute(Sender: TObject);
    procedure actKeuBukuBankExecute(Sender: TObject);
    procedure actKeuBukuKasExecute(Sender: TObject);
    procedure actKeuReconsileExecute(Sender: TObject);
    procedure actPBukuHutangExecute(Sender: TObject);
    procedure actJNotaPiutangExecute(Sender: TObject);
    procedure actJNotaKoreksiExecute(Sender: TObject);
    procedure actJBukuPiutangExecute(Sender: TObject);
    procedure actMemorialExecute(Sender: TObject);
    procedure actJurnalPostingExecute(Sender: TObject);
    procedure actTrialBalanceExecute(Sender: TObject);
    procedure actPNotaDebetExecute(Sender: TObject);
    procedure actRugiLabaExecute(Sender: TObject);
    procedure actNeracaExecute(Sender: TObject);
    procedure actMArusKasExecute(Sender: TObject);
    procedure actMRekeningKasExecute(Sender: TObject);
    procedure actArusKasExecute(Sender: TObject);
    procedure actJImportFakturExecute(Sender: TObject);
    procedure actMParameterExecute(Sender: TObject);
    procedure actKKasirTunaiExecute(Sender: TObject);
    procedure actJRepFakturSalesExecute(Sender: TObject);
    procedure actSaldoAwalExecute(Sender: TObject);
    procedure actKKasirNonTunaiExecute(Sender: TObject);
    procedure actKBukuKasirExecute(Sender: TObject);
    procedure actKeuKasbonExecute(Sender: TObject);
    procedure actMPegawaiExecute(Sender: TObject);
    procedure actKeuSettlementExecute(Sender: TObject);
    procedure actSettingNeracaExecute(Sender: TObject);
    procedure actSettingLariExecute(Sender: TObject);
    procedure actKeuBukuKasbonExecute(Sender: TObject);
    procedure actPNotaTPRExecute(Sender: TObject);
    procedure actSetExcelStringExecute(Sender: TObject);
    procedure actPImportFakturUliExecute(Sender: TObject);
    procedure actJImportVoucherExecute(Sender: TObject);
    procedure actJRepFakturSalesAreaExecute(Sender: TObject);
    procedure actKeuDanaTalanganExecute(Sender: TObject);
    procedure actSettingBayarExecute(Sender: TObject);
    procedure actJUpdteVoucherExecute(Sender: TObject);
    procedure actJRepBarangBSExecute(Sender: TObject);
    procedure actATKelompokAsetExecute(Sender: TObject);
    procedure actATMAsetExecute(Sender: TObject);
    procedure actMemorialPiutangUliExecute(Sender: TObject);
    procedure actJRepTPRExecute(Sender: TObject);
    procedure actPImportFakturBungahExecute(Sender: TObject);
    procedure actPImportReturUliExecute(Sender: TObject);
    procedure actPImportFakturPembelianBungahExecute(Sender: TObject);
    procedure ActJRepVoucherExecute(Sender: TObject);
    procedure actJImportFakturMayoraExecute(Sender: TObject);
    procedure actJUmurPiutangExecute(Sender: TObject);
    procedure actGPenerimaanExecute(Sender: TObject);
    procedure actGPengeluaranExecute(Sender: TObject);
    procedure actGVerifikasiExecute(Sender: TObject);
    procedure actGStokAwalExecute(Sender: TObject);
    procedure actGKoreksiExecute(Sender: TObject);
    procedure actGKartuStokExecute(Sender: TObject);
    procedure actGKartuPersediaanExecute(Sender: TObject);
    procedure actJRefNoFakturExecute(Sender: TObject);
    procedure actJImportFakturKeluaranExecute(Sender: TObject);
    procedure actPImportFakturPembelianMayoraExecute(Sender: TObject);
    procedure actKasMasukExecute(Sender: TObject);
    procedure actKasKeluarExecute(Sender: TObject);
    procedure actNotaRetailExecute(Sender: TObject);
    procedure actMGudangExecute(Sender: TObject);
    procedure actLapPembelianExecute(Sender: TObject);
    procedure actLapUmurHutangExecute(Sender: TObject);
    procedure actMutasiStokExecute(Sender: TObject);
    procedure actLapPenjualanExecute(Sender: TObject);
    procedure actLapKasirExecute(Sender: TObject);
    procedure actStokOpnameExecute(Sender: TObject);
    procedure actItemCheckExecute(Sender: TObject);
    procedure actLapSetoranExecute(Sender: TObject);
    procedure actOnlineExecute(Sender: TObject);

  private
    { Private declarations }
    function Logout(isConfirm: Boolean): Boolean;
  public
    { Public declarations }
    vjns_item, vjns_transaksi, vjns_gudang, vheader : string;
    vtag : integer;
  end;
  function isWindowsFound(ClassName: string): Boolean;

var
  MainFrm: TMainFrm;

implementation

uses AdvStyleIF, U_DM, U_AppLog, U_Supplier, U_Customer,
  U_Item, U_Salesman, UserMenu, U_RekeningGL, U_Transaction, U_KasKeluar,
  U_NotaHutang, U_KasMasuk, U_BankKeluar, U_BankMasuk,
  U_BukuBank, U_BukuKas, U_BankRekonsiliasi, U_NotaDebet, U_InfoAPList,
  U_NotaPiutang, U_NotaKredit, U_InfoARList, U_Memorial, U_JurnalPosting,
  U_TrialBalance, U_InfoNeraca, U_InfoRL, U_CashFlow,
  U_RekKasBank, U_InfoCashFlow, U_InfoMatlStok, U_Splash, U_Parameter, 
  U_KasirTunai, U_InfoARSales, U_SaldoAwal, U_KasirNonTunai, U_BukuKasir,
  U_Karyawan, U_Kasbon, U_Settlement, U_SettingNeraca, U_InfoNewNeraca,
  U_SettingLari, U_InfoNewRL, U_StatusKasbon, U_NotaPromo, U_ImportHutang,
  U_ImportPiutang, U_Talangan, U_SettingBayar, U_UpdateVoucher,
  U_InfoItemBS, U_JenisAset, U_AktivaTetap, U_MemorialUli, U_InfoTPRList,
  U_ImportReturBeli, U_ImportReturBungah, U_ImportHutang2,
  U_IkhtisarPenjualan, U_InfoVoucherList, U_ImportVoucher2,
  U_InfoAgeAR, U_ItemReceive, U_PengeluaranBarang,
  U_Verifikasi, U_StokAwal, U_LapNilaiSediaan, U_InventoryAdjusment,
  U_InfoMatlStok2, U_ImportPiutangMayora, U_Ref_NoFaktur,
  U_List_FakturPenjualan, U_ImportPembelianMayora, U_NotaRetail, U_MGudang,
  U_LapPembelian, U_LapUmurHutang, U_MutasiStok, U_LapPenjualan,
  U_LapKasirPerShift, U_KertasKerja, U_ItemCheck, U_LapSetoran,
  U_NotaOnline;

{$R *.dfm}

procedure Delay(msec: DWORD);
var start: DWORD;
begin
  start:= GetTickCount;
  while (GetTickCount-start<msec) do
    Application.ProcessMessages
end;

function isWindowsFound(ClassName: string): Boolean;
var i: Integer;
begin
  Result:= False;
  for i:= 0 to Application.ComponentCount-1 do
    if Application.Components[i].ClassNameIs(ClassName) then begin
      TForm(Application.Components[i]).BringToFront;
      Result:= True;
      Break
    end
end;



function TMainFrm.Logout(isConfirm: Boolean): Boolean;
var i: Integer;
    mi: TMenuItem;
begin
  Result:= False;
  DM.isLogin:= not Result;
  if isConfirm and (DM.MyMsg(mmConfirmation,'Anda ingin log out ?','')=101) then
    Exit;
  for i:=0 to ComponentCount-1 do
    if Components[i] is TMenuItem then begin
      mi:= Components[i] as TMenuItem;
      if ((mi.Tag>=1) and (mi.Tag<=3)) or
         ((mi.Tag>=100) and (mi.Tag<=103)) or
         (mi.Tag=200) or (mi.Tag=201) or
         ((mi.Tag>=1020) and (mi.Tag<=1023)) or
         ((mi.Tag>=10220) and (mi.Tag<=10223)) or
         ((mi.Tag>=10230) and (mi.Tag<=10232))
        then
        mi.Visible:= True
      else
        mi.Visible:= False;
    end;
  actLogin.Caption:= 'Login';
  DM.isLogin:= False;
  Result:= not DM.isLogin;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  Logout(DM.isLogin);
  Show;
  Update;
  if not DM.Authenticate_User then begin
    StatusBar.Panels[0].Text:= '';
    Logout(DM.isLogin);
  end else begin
    actLogin.Caption:= 'Logout';
    ChangePassword1.Visible:= True;
    Messages1.Visible:= True;
    StatusBar.Panels[0].Text:= 'User : ' + DM.UserConnect + '@' + DM.conn.HostName;
    StatusBar.Panels[5].Text:= 'Tgl. Tutup Buku : '+FormatDateTime('dd-mmm-yyyy',DM.vTutupBukudt_tutup_buku.AsDateTime);
    StatusBar.Panels[4].Text:= 'Modul : Modul Utama';
  end;
end;

procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= DM.MyMsg(mmConfirmation,'Anda ingin keluar dari aplikasi ?','')=100
end;

procedure TMainFrm.actDatabaseConnectionExecute(Sender: TObject);
var i: Integer;
    mi: TMenuItem;
begin
  if Logout(DM.isLogin) then begin
    for i:=0 to ComponentCount-1 do
      if Components[i] is TMenuItem then begin
        mi:= Components[i] as TMenuItem;
        if mi.Tag=200 then begin
          mi.Visible:= False;
          Break
        end
      end;
    if DM.Connect_Database_Server_from_Application then begin
      for i:=0 to ComponentCount-1 do
        if Components[i] is TMenuItem then begin
          mi:= Components[i] as TMenuItem;
          if mi.Tag=200 then begin
            mi.Visible:= True;
            Break
          end
        end;
    end;
  end
end;

procedure TMainFrm.actExitExecute(Sender: TObject);
begin
  Close
end;

procedure TMainFrm.actLoginExecute(Sender: TObject);
var i: Integer;
begin
  if Logout(DM.isLogin) then begin
    if MDIChildCount>0 then begin
      for i := 0 to MDIChildCount-1 do
        MDIChildren[i].Close;
      Delay(500);
    end;
    if MDIChildCount>0 then
      Exit;

    if not DM.Authenticate_User then begin
      actLogin.Caption:= 'Login';
      StatusBar.Panels[0].Text:= '';
      Logout(DM.isLogin);
    end else begin
      actLogin.Caption:= 'Logout';
      ChangePassword1.Visible:= True;
      Messages1.Visible:= True;
      StatusBar.Panels[0].Text:= 'User : ' + DM.UserConnect + '@' + DM.conn.HostName;
    end;
  end;
end;

procedure TMainFrm.actChangePasswordExecute(Sender: TObject);
begin
  DM.ChangePassword
end;

procedure TMainFrm.actWindowsXPSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style:= TTMSStyle(tsWindowsXP)
end;

procedure TMainFrm.actWhidbeySkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsWhidbey)
end;

procedure TMainFrm.actOffice2003ClassicSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Classic)
end;

procedure TMainFrm.actOffice2003BlueSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Blue)
end;

procedure TMainFrm.actOffice2003OliveSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Olive)
end;

procedure TMainFrm.actOffice2003SilverSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Silver)
end;

procedure TMainFrm.actOffice2007LunaSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2007Luna)
end;

procedure TMainFrm.actOffice2007ObsidianSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2007Obsidian)
end;

procedure TMainFrm.actOffice2007SilverSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2007Silver)
end;

procedure TMainFrm.FormShow(Sender: TObject);
begin
  ShowWindow(Handle, SW_SHOWMAXIMIZED)
end;

procedure TMainFrm.actAppLogExecute(Sender: TObject);
begin
  AppLogFrm.Show
end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
  AppLogFrm.isClose:= True;
  AppLogFrm.Free;
end;


procedure TMainFrm.actMSupplierExecute(Sender: TObject);
begin
  if not isWindowsFound('TSupplierFrm') then begin
    U_Supplier.ShowForm('Data Supplier',401);
    MDITabset.AddTab(SupplierFrm);
  end;
end;

procedure TMainFrm.actMCustomerExecute(Sender: TObject);
begin
  if not isWindowsFound('TCustomerFrm') then begin
    U_Customer.ShowForm('Data Outlet',402);
    MDITabset.AddTab(CustomerFrm);
  end;
end;

procedure TMainFrm.actMItemExecute(Sender: TObject);
begin
  if not isWindowsFound('TItemFrm') then begin
    U_Item.ShowForm('Master Item', 458);
    MDITabset.AddTab(ItemFrm);
  end;
end;

procedure TMainFrm.actMSalesmanExecute(Sender: TObject);
begin
  if not isWindowsFound('TSalesmanFrm') then begin
    U_Salesman.ShowForm('Data Salesman',403);
    MDITabset.AddTab(SalesmanFrm);
  end;
end;

procedure TMainFrm.actMPegawaiExecute(Sender: TObject);
begin
  if not isWindowsFound('TKaryawanFrm') then begin
    U_Karyawan.ShowForm('Data Pegawai',404);
    MDITabset.AddTab(KaryawanFrm);
  end;
end;


procedure TMainFrm.actKodeTransactionExecute(Sender: TObject);
begin
  if not isWindowsFound('TTransactionFrm') then begin
    U_Transaction.ShowForm('Tipe Transaksi', 301);
    MDITabset.AddTab(TransactionFrm);
  end;
end;


procedure TMainFrm.actUsersExecute(Sender: TObject);
begin
  if not isWindowsFound('TUserMenuFrm') then
    MDITabset.AddTab(TUserMenuFrm.Create(Application))
end;

procedure TMainFrm.actSettingNeracaExecute(Sender: TObject);
begin
  if not isWindowsFound('TSettingNeracaFrm') then
    MDITabset.AddTab(TSettingNeracaFrm.Create(Application))
end;



procedure TMainFrm.actSettingLariExecute(Sender: TObject);
begin
  if not isWindowsFound('TSettingLariFrm') then
    MDITabset.AddTab(TSettingLariFrm.Create(Application))
end;


procedure TMainFrm.actMRekGLExecute(Sender: TObject);
begin
  if not isWindowsFound('TRekeningGLFrm') then begin
    U_RekeningGL.ShowForm('Master Rekening Perkiraan', 414);
    MDITabset.AddTab(RekeningGLFrm);
  end;
end;


procedure TMainFrm.actKeuKasbonExecute(Sender: TObject);
begin
  if not isWindowsFound('TKasbonFrm') then begin
      U_Kasbon.ShowForm('Formulir Kasbon', '407', 901);
      MDITabset.AddTab(KasbonFrm);
  end;
end;

procedure TMainFrm.actKeuSettlementExecute(Sender: TObject);
begin
  if not isWindowsFound('TSettlementFrm') then begin
      U_Settlement.ShowForm('Angsuran Kasbon','408','1', 902);
      MDITabset.AddTab(SettlementFrm);
  end;
end;

procedure TMainFrm.actKeuBukuKasbonExecute(Sender: TObject);
begin
  if not isWindowsFound('TStatusKasbonFrm') then begin
      U_StatusKasbon.ShowForm('Laporan Status Kasbon', 905);
      MDITabset.AddTab(StatusKasbonFrm);
  end;
end;


procedure TMainFrm.actKeuDanaTalanganExecute(Sender: TObject);
begin
  if not isWindowsFound('TTalanganFrm') then begin
      U_Talangan.ShowForm('Piutang Lain-lain Unilever', '409', 907);
      MDITabset.AddTab(TalanganFrm);
  end;
end;

procedure TMainFrm.actKeuKasKeluarExecute(Sender: TObject);
begin
//  if not isWindowsFound('TKasKeluarFrm') then begin
//      U_KasKeluar.ShowForm('Bukti Kas Keluar', '401', 911);
//      MDITabset.AddTab(KasKeluarFrm);
//  end;
  if not isWindowsFound('TKasKeluarFrm') then begin
      U_KasKeluar.ShowForm('Bukti Kas Keluar', '401', 911);
      MDITabset.AddTab(KasKeluarFrm);
  end;
end;

procedure TMainFrm.actKeuKasMasukExecute(Sender: TObject);
begin
//  if not isWindowsFound('TKasMasukFrm') then begin
//      U_KasMasuk.ShowForm('Bukti Kas Masuk', '402', 912);
//      MDITabset.AddTab(KasMasukFrm);
//  end;

  if not isWindowsFound('TKasMasukFrm') then begin
      U_KasMasuk.ShowForm('Bukti Kas Masuk', '402', 912);
      MDITabset.AddTab(KasMasukFrm);
  end;

end;

procedure TMainFrm.actKeuBankKeluarExecute(Sender: TObject);
begin
  if not isWindowsFound('TBankKeluarFrm') then begin
      U_BankKeluar.ShowForm('Bukti Bank Keluar', '403', 913);
      MDITabset.AddTab(BankKeluarFrm);
  end;
end;

procedure TMainFrm.actKeuBankMasukExecute(Sender: TObject);
begin
  if not isWindowsFound('TBankMasukFrm') then begin
      U_BankMasuk.ShowForm('Bukti Bank Masuk', '404', 914);
      MDITabset.AddTab(BankMasukFrm);
  end;
end;

procedure TMainFrm.actKeuReconsileExecute(Sender: TObject);
begin
  if not isWindowsFound('TBankRekonsiliasiFrm') then begin
      U_BankRekonsiliasi.ShowForm(915);
      MDITabset.AddTab(BankRekonsiliasiFrm);
  end;
end;


procedure TMainFrm.actKeuBukuKasExecute(Sender: TObject);
begin
  if not isWindowsFound('TBukuKasFrm') then begin
      U_BukuKas.ShowForm(950);
      MDITabset.AddTab(BukuKasFrm);
  end;
end;


procedure TMainFrm.actKeuBukuBankExecute(Sender: TObject);
begin
  if not isWindowsFound('TBukuBankFrm') then begin
      U_BukuBank.ShowForm(951);
      MDITabset.AddTab(BukuBankFrm);
  end;
end;

procedure TMainFrm.actJNotaPiutangExecute(Sender: TObject);
begin
  if not isWindowsFound('TNotaPiutangFrm') then begin
      U_NotaPiutang.ShowForm('POSTING PENJUALAN', '201', '','', 601);
      MDITabset.AddTab(NotaPiutangFrm);
  end;
end;

procedure TMainFrm.actJNotaKoreksiExecute(Sender: TObject);
begin
  if not isWindowsFound('TNotaKreditFrm') then begin
      U_NotaKredit.ShowForm('Retur Penjualan', '202', '','', 602);
      MDITabset.AddTab(NotaKreditFrm);
  end;
end;

procedure TMainFrm.actJBukuPiutangExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoARListFrm') then begin
     U_InfoArList.ShowForm('Buku Piutang',605);
     MDITabset.AddTab(InfoARListFrm);
  end;
end;


procedure TMainFrm.actJRepFakturSalesExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoARSalesFrm') then begin
     U_InfoARSales.ShowForm('Rekap Faktur Per Sales',611);
     MDITabset.AddTab(InfoARSalesFrm);
  end;
end;

procedure TMainFrm.actJRepFakturSalesAreaExecute(Sender: TObject);
begin
  if not isWindowsFound('TIkhtisarPenjualanFrm') then begin
     U_IkhtisarPenjualan.ShowForm('Ikhtisar Penjualan Gabungan',612);
     MDITabset.AddTab(IkhtisarPenjualanFrm);
  end;
end;

procedure TMainFrm.actJRepTPRExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoTPRListFrm') then begin
     U_InfoTPRList.ShowForm('Rekap Item/Barang Retur',620);
     MDITabset.AddTab(InfoTPRListFrm);
  end;
end;

procedure TMainFrm.ActJRepVoucherExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoVoucherListFrm') then begin
     U_InfoVoucherList.ShowForm('Rekap Voucher',621);
     MDITabset.AddTab(InfoVoucherListFrm);
  end;
end;


procedure TMainFrm.actJRepBarangBSExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoItemBSFrm') then begin
     U_InfoItemBS.ShowForm('Rekap Item/Barang Retur',630);
     MDITabset.AddTab(InfoItemBSFrm);
  end;
end;


procedure TMainFrm.actSaldoAwalExecute(Sender: TObject);
begin
  if not isWindowsFound('TSaldoAwalFrm') then begin
      U_SaldoAwal.ShowForm('Saldo Awal Rekening','502',1001);
      MDITabset.AddTab(SaldoAwalFrm);
  end;
end;

procedure TMainFrm.actMemorialExecute(Sender: TObject);
begin
  if not isWindowsFound('TMemorialFrm') then begin
      U_Memorial.ShowForm('501',1002);
      MDITabset.AddTab(MemorialFrm);
  end;
end;

procedure TMainFrm.actMemorialPiutangUliExecute(Sender: TObject);
begin
  if not isWindowsFound('TMemorialUliFrm') then begin
      U_MemorialUli.ShowForm('501','Jurnal Umum Piutang Lain-lain',1003);
      MDITabset.AddTab(MemorialUliFrm);
  end;
end;

procedure TMainFrm.actJurnalPostingExecute(Sender: TObject);
begin
  if not isWindowsFound('TJurnalPostingFrm') then begin
     U_JurnalPosting.ShowForm('POSTING KEUANGAN DAN ACCOUNTING',1010);
     MDITabset.AddTab(JurnalPostingFrm);
  end;
end;

procedure TMainFrm.actTrialBalanceExecute(Sender: TObject);
begin
  if not isWindowsFound('TTrialBalanceFrm') then begin
     U_TrialBalance.ShowForm('Trial Balance && Buku Besar',1020);
     MDITabset.AddTab(TrialBalanceFrm);
  end;
end;


procedure TMainFrm.actRugiLabaExecute(Sender: TObject);
begin
//  if not isWindowsFound('TInfoRLFrm') then begin
//     U_InfoRL.ShowForm('Laporan Laba Rugi',1030);
//     MDITabset.AddTab(InfoRLFrm);
//  end;

  if not isWindowsFound('TInfoNewRLFrm') then begin
     U_InfoNewRL.ShowForm('Laporan Laba Rugi',1030);
     MDITabset.AddTab(InfoNewRLFrm);
  end;
end;

procedure TMainFrm.actNeracaExecute(Sender: TObject);
begin
//  if not isWindowsFound('TInfoNeracaFrm') then begin
//     U_InfoNeraca.ShowForm('Laporan Neraca',1031);
//     MDITabset.AddTab(InfoNeracaFrm);
//  end;

  if not isWindowsFound('TInfoNewNeracaFrm') then begin
     U_InfoNewNeraca.ShowForm('Laporan Neraca',1031);
     MDITabset.AddTab(InfoNewNeracaFrm);
  end;
end;

procedure TMainFrm.actArusKasExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoCashFlowFrm') then begin
     U_InfoCashFlow.ShowForm('Laporan Arus Kas',1040);
     MDITabset.AddTab(InfoCashFlowFrm);
  end;
end;


procedure TMainFrm.actPNotaHutangExecute(Sender: TObject);
begin
  if not isWindowsFound('TNotaHutangFrm') then begin
      U_NotaHutang.ShowForm('Faktur Pembelian', '101', 501);
      MDITabset.AddTab(NotaHutangFrm);
  end;
end;

procedure TMainFrm.actPNotaDebetExecute(Sender: TObject);
begin
  if not isWindowsFound('TNotaDebetFrm') then begin
      U_NotaDebet.ShowForm('Retur Pembelian', '102', '','', 502);
      MDITabset.AddTab(NotaDebetFrm);
  end;
end;

procedure TMainFrm.actPNotaTPRExecute(Sender: TObject);
begin
//  if not isWindowsFound('TNotaPromoFrm') then begin
//      U_NotaPromo.ShowForm('Nota Promo && Voucher', '103', 505);
//      MDITabset.AddTab(NotaPromoFrm);
//  end;
end;


procedure TMainFrm.actPBukuHutangExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoAPListFrm') then begin
     U_InfoAPList.ShowForm('Buku Hutang',510);
     MDITabset.AddTab(InfoAPListFrm);
  end;
end;


procedure TMainFrm.actMArusKasExecute(Sender: TObject);
begin
  if not isWindowsFound('TCashFlowFrm') then begin
     U_CashFlow.ShowForm('Master Rekening Arus Kas',416);
     MDITabset.AddTab(CashFlowFrm);
  end;
end;

procedure TMainFrm.actMRekeningKasExecute(Sender: TObject);
begin
  if not isWindowsFound('TRekKasBankFrm') then begin
     U_RekKasBank.ShowForm('Master Rekening Kas && Bank',415);
     MDITabset.AddTab(RekKasBankFrm);
  end;
end;

procedure TMainFrm.actJImportFakturExecute(Sender: TObject);
var f : TImportPiutangFrm;
begin
  f:= TImportPiutangFrm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;

end;


procedure TMainFrm.actJImportVoucherExecute(Sender: TObject);
var f : TImportVoucher2Frm;
begin
  f:= TImportVoucher2Frm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;

procedure TMainFrm.actMParameterExecute(Sender: TObject);
begin
  if not isWindowsFound('TParameterFrm') then begin
     U_Parameter.ShowForm('', 427);
  end;

end;

procedure TMainFrm.actKKasirTunaiExecute(Sender: TObject);
begin
  if not isWindowsFound('TKasirTunaiFrm') then begin
      U_KasirTunai.ShowForm('Kasir Tunai', '405', 801);
      MDITabset.AddTab(KasirTunaiFrm);
  end;
end;

procedure TMainFrm.actKKasirNonTunaiExecute(Sender: TObject);
begin
  if not isWindowsFound('TKasirNonTunaiFrm') then begin
      U_KasirNonTunai.ShowForm('Kasir Non Tunai', '406', 802);
      MDITabset.AddTab(KasirNonTunaiFrm);
  end;
end;

procedure TMainFrm.actKBukuKasirExecute(Sender: TObject);
begin
  if not isWindowsFound('TBukuKasirFrm') then begin
      U_BukuKasir.ShowForm('Buku Kasir', 810);
      MDITabset.AddTab(BukuKasirFrm);
  end;
end;

procedure TMainFrm.actSetExcelStringExecute(Sender: TObject);
begin
  DM.SetExcelString;
end;

procedure TMainFrm.actPImportFakturUliExecute(Sender: TObject);
var f : TImportHutangFrm;
begin
  f:= TImportHutangFrm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;


procedure TMainFrm.actPImportReturUliExecute(Sender: TObject);
var f : TImportReturBeliFrm;
begin
  f:= TImportReturBeliFrm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;

procedure TMainFrm.actPImportFakturBungahExecute(Sender: TObject);
var f : TImportReturBungahFrm;
begin
  f:= TImportReturBungahFrm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;


procedure TMainFrm.actSettingBayarExecute(Sender: TObject);
begin
  if not isWindowsFound('TSettingBayarFrm') then begin
      U_SettingBayar.ShowForm('Setting Pembayaran', '201', 603);
      MDITabset.AddTab(SettingBayarFrm);
  end;
end;

procedure TMainFrm.actJUpdteVoucherExecute(Sender: TObject);
begin
  if not isWindowsFound('TUpdateVoucherFrm') then begin
      U_UpdateVoucher.ShowForm(604);
      MDITabset.AddTab(UpdateVoucherFrm);
  end;
end;


procedure TMainFrm.actATKelompokAsetExecute(Sender: TObject);
begin
  if not isWindowsFound('TJenisAsetFrm') then begin
    U_JenisAset.ShowForm('Kelompok Aktiva Tetap', 751);
    MDITabset.AddTab(JenisAsetFrm);
  end;
end;

procedure TMainFrm.actATMAsetExecute(Sender: TObject);
begin
  if not isWindowsFound('TAktivaTetapFrm') then begin
    U_AktivaTetap.ShowForm('Data Aktiva Tetap',752);
    MDITabset.AddTab(AktivaTetapFrm);
  end;
end;







procedure TMainFrm.actPImportFakturPembelianBungahExecute(Sender: TObject);
var f : TImportHutang2Frm;
begin
  f:= TImportHutang2Frm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;



procedure TMainFrm.actJImportFakturMayoraExecute(Sender: TObject);
var f : TImportPiutangMayoraFrm;
begin
  f:= TImportPiutangMayoraFrm.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;

procedure TMainFrm.actJUmurPiutangExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoAgeARFrm') then begin
     U_InfoAgeAR.ShowForm('Umur && Analisa Piutang',641);
     MDITabset.AddTab(InfoAgeARFrm);
  end;
end;

procedure TMainFrm.actGPenerimaanExecute(Sender: TObject);
begin
  if not isWindowsFound('TItemReceiveFrm') then begin
      U_ItemReceive.ShowForm('Penerimaan Barang', '601', 601);
      MDITabset.AddTab(ItemReceiveFrm);
  end;
end;

procedure TMainFrm.actGPengeluaranExecute(Sender: TObject);
begin
  if not isWindowsFound('TPengeluaranBarangFrm') then begin
      U_PengeluaranBarang.ShowForm('Pengeluaran Barang', '605', 702);
      MDITabset.AddTab(PengeluaranBarangFrm);
  end;
end;

procedure TMainFrm.actGVerifikasiExecute(Sender: TObject);
begin
  if not isWindowsFound('TVerifikasiFrm') then begin
      U_Verifikasi.ShowForm(704);
      MDITabset.AddTab(VerifikasiFrm);
  end;
end;

procedure TMainFrm.actGStokAwalExecute(Sender: TObject);
begin
  if not isWindowsFound('TStokAwalFrm') then begin
      U_StokAwal.ShowForm('Stok awal', 707);
      MDITabset.AddTab(StokAwalFrm);
  end;
end;

procedure TMainFrm.actGKoreksiExecute(Sender: TObject);
begin
  if not isWindowsFound('TInventoryAdjusmentFrm') then begin
      U_InventoryAdjusment.ShowForm('Koreksi Stok', '602', 705);
      MDITabset.AddTab(InventoryAdjusmentFrm);
  end;
end;

procedure TMainFrm.actGKartuStokExecute(Sender: TObject);
begin
  if not isWindowsFound('TInfoMatlStok2Frm') then begin
      U_InfoMatlStok2.ShowForm('Kartu Stok', '', 'GDU','BB',660);
      MDITabset.AddTab(InfoMatlStok2frm);
  end;
end;

procedure TMainFrm.actGKartuPersediaanExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapNilaiSediaanFrm') then begin
      U_LapNilaiSediaan.ShowForm('',711);
      MDITabset.AddTab(LapNilaiSediaanFrm);
  end;
end;

procedure TMainFrm.actJRefNoFakturExecute(Sender: TObject);
begin
  if not isWindowsFound('TRefNoFakturFrm') then begin
      U_Ref_NoFaktur.ShowForm('Referensi Nomor Faktur',6501);
      MDITabset.AddTab(RefNoFakturFrm);
  end;
end;

procedure TMainFrm.actJImportFakturKeluaranExecute(Sender: TObject);
begin
  if not isWindowsFound('TListFakturPenjualanFrm') then begin
     U_List_FakturPenjualan.ShowForm('Import Faktur Keluaran',6502);
     MDITabset.AddTab(ListFakturPenjualanFrm);
  end;
end;

procedure TMainFrm.actPImportFakturPembelianMayoraExecute(Sender: TObject);
var f : TTfrmImportFakturPembelianMayora;
begin
  f:= TTfrmImportFakturPembelianMayora.Create(Application);
  try
    f.ShowModal()
  finally
    f.Free
  end;
end;

procedure TMainFrm.actKasMasukExecute(Sender: TObject);
begin
  if not isWindowsFound('TKasMasukFrm') then begin
      U_KasMasuk.ShowForm('Bukti Kas Masuk', '402', 912);
      MDITabset.AddTab(KasMasukFrm);
  end;
end;

procedure TMainFrm.actKasKeluarExecute(Sender: TObject);
begin
  if not isWindowsFound('TKasKeluarFrm') then begin
      U_KasKeluar.ShowForm('Bukti Kas Keluar', '401', 911);
      MDITabset.AddTab(KasKeluarFrm);
  end;
end;

procedure TMainFrm.actNotaRetailExecute(Sender: TObject);
begin
  if not isWindowsFound('TNotaRetailFrm') then begin
      U_NotaRetail.ShowForm('Faktur Penjualan', '201', '','', 601);
      MDITabset.AddTab(NotaRetailFrm);
  end;
end;

procedure TMainFrm.actMGudangExecute(Sender: TObject);
begin
  if not isWindowsFound('TMGudangFrm') then begin
     U_MGudang.ShowForm('DATA GUDANG STOK',0);
     MDITabset.AddTab(MGudangFrm);
  end;
end;

procedure TMainFrm.actLapPembelianExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapPembelianFrm') then begin
     U_LapPembelian.ShowForm('Laporan Pembelian',503);
     MDITabset.AddTab(LapPembelianFrm);
  end;
end;

procedure TMainFrm.actLapUmurHutangExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapUmurHutangFrm') then begin
      U_LapUmurHutang.ShowForm('Laporan Umur Hutang',504);
      MDITabset.AddTab(LapUmurHutangFrm);
  end;
end;

procedure TMainFrm.actMutasiStokExecute(Sender: TObject);
begin
  if not isWindowsFound('TMutasiStokFrm') then begin
      U_MutasiStok.ShowForm('Mutasi Stok', '604', 706);
      MDITabset.AddTab(MutasiStokFrm);
  end;
end;

procedure TMainFrm.actLapPenjualanExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapPenjualanFrm') then begin
     U_LapPenjualan.ShowForm('Laporan Penjualan',603);
     MDITabset.AddTab(LapPenjualanFrm);
  end;
end;

procedure TMainFrm.actLapKasirExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapKasirPerShiftFrm') then begin
     U_LapKasirPerShift.ShowForm('Laporan Kasir Per Shift','405',604);
     MDITabset.AddTab(LapKasirPerShiftFrm);
  end;
end;

procedure TMainFrm.actStokOpnameExecute(Sender: TObject);
begin
  if not isWindowsFound('TKertasKerjaFrm') then begin
      U_KertasKerja.ShowForm('Kertas Kerja Stok Opname', 703);
      MDITabset.AddTab(KertasKerjaFrm);
  end;
end;

procedure TMainFrm.actItemCheckExecute(Sender: TObject);
var
g : TItemCheckFrm;
begin
  if not isWindowsFound('TItemCheckFrm') then begin
     g:= TItemCheckFrm.Create(Application);
  end;
//  if not isWindowsFound('TItemCheckFrm') then begin
//    U_ItemCheck.ShowForm('Informasi Item', 460);
//    MDITabset.AddTab(ItemCheckFrm);
//  end;
end;

procedure TMainFrm.actLapSetoranExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapSetoranFrm') then begin
     U_LapSetoran.ShowForm('Laporan Setoran Harian', 913);
     MDITabset.AddTab(LapSetoranFrm);
  end;
end;

procedure TMainFrm.actOnlineExecute(Sender: TObject);
begin
  if not isWindowsFound('TNotaOnlineFrm') then begin
      U_NotaOnline.ShowForm('Penjualan Online', '206', '','', 605);
      MDITabset.AddTab(NotaOnlineFrm);
  end;
end;

end.

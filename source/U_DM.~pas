unit U_DM;

interface

uses
  SysUtils, Classes, Forms, Controls, ZConnection, AdvAppStyler,
  TaskDialog, ZAbstractRODataset, ZDataset, ZSqlMonitor,
  ZAbstractDataset, DB, kbmMemTable, kbmMemBinaryStreamFormat, MyKonversi,
  XMLDoc, XMLIntf, XMLDOM, oxmldom, msxmldom, ImgList, ZAbstractConnection,
  scExcelExport;

const ConfigFileName: string = 'config.xml';
      sKey: string = '5216903874kimdbftqosxvzaechljguywnrp)_+(^&*{<>?"}|:%]\;[`-=,@#$!./~';
type
  TMyMsgType=(mmConfirmation,mmInformation,mmWarning,mmError);
  TDM = class(TDataModule)
    conn: TZConnection;
    apsMain: TAdvAppStyler;
    atdMain: TAdvTaskDialog;
    vUserMenu: TZReadOnlyQuery;
    vUserMenuvuser: TStringField;
    vUserMenumenu_name: TStringField;
    vUserMenumenu_caption: TStringField;
    vUserMenutag: TIntegerField;
    vUserMenuisbrowse: TStringField;
    vUserMenuisinsert: TStringField;
    vUserMenuisedit: TStringField;
    vUserMenuisdelete: TStringField;
    vAdmin: TZReadOnlyQuery;
    vUser: TZReadOnlyQuery;
    qAccess: TZReadOnlyQuery;
    SqlMonitor: TZSQLMonitor;
    qTrans: TZQuery;
    kbmBinaryStreamFormat: TkbmBinaryStreamFormat;
    mtConfig: TkbmMemTable;
    vSysDate: TZReadOnlyQuery;
    vSysDatedt_server: TDateTimeField;
    L_Item: TZReadOnlyQuery;
    L_User: TZReadOnlyQuery;
    qryCheckAccess: TZReadOnlyQuery;
    L_Rekanan: TZReadOnlyQuery;
    L_Transaction: TZReadOnlyQuery;
    L_Division: TZReadOnlyQuery;
    qPasswd: TZQuery;
    LTransactionAll: TZReadOnlyQuery;
    L_Rek_GL: TZReadOnlyQuery;
    MyKonversi1: TMyKonversi;
    xml: TXMLDocument;
    qryUser: TZReadOnlyQuery;
    Perusahaan: TZReadOnlyQuery;
    Perusahaanperusahaan: TStringField;
    Perusahaanalamat: TStringField;
    Perusahaantelepon: TStringField;
    Perusahaankota: TStringField;
    Perusahaanemail: TStringField;
    Perusahaanweb: TStringField;
    Perusahaanisactive: TStringField;
    Perusahaanfax: TStringField;
    Perusahaannomor: TIntegerField;
    L_Rekanankd_rekanan: TStringField;
    L_Rekanannama_rekanan: TStringField;
    L_Rekananalamat: TStringField;
    L_Rekananjenis: TStringField;
    L_Rekanancontact: TStringField;
    L_Rekanankota: TStringField;
    L_Rekanankode_pos: TStringField;
    L_Rekanantelephone: TStringField;
    L_Rekananfaxcimile: TStringField;
    L_Rekananalamat2: TStringField;
    L_Rekananprovince: TStringField;
    L_Rekanancountry: TStringField;
    L_Rekananemail: TStringField;
    L_Rekananremarks: TStringField;
    L_Rekananusr_ins: TStringField;
    L_Rekananusr_upd: TStringField;
    L_Rekanandt_ins: TDateTimeField;
    L_Rekanandt_upd: TDateTimeField;
    L_Rekanancontact_title: TStringField;
    L_Rekananmobile_no: TStringField;
    L_Itemkd_item: TStringField;
    L_Itemkd_parent: TStringField;
    L_Itemlvl: TIntegerField;
    L_Itemisdetail: TStringField;
    L_Itemnama_item: TStringField;
    L_Itemhrg_jual_karton: TFloatField;
    L_Itemhrg_jual_lusin: TFloatField;
    L_Itemhrg_beli_karton: TFloatField;
    L_Itemhpp: TFloatField;
    L_Itemusr_ins: TStringField;
    L_Itemusr_upd: TStringField;
    qAccessisbrowse: TStringField;
    qAccessisinsert: TStringField;
    qAccessisedit: TStringField;
    qAccessisdelete: TStringField;
    qAccessisprint: TStringField;
    qAccessisexport: TStringField;
    L_Uservuser: TStringField;
    L_Userfull_name: TStringField;
    qryUservuser: TStringField;
    qryUserfull_name: TStringField;
    LTransactionAllid_trans: TStringField;
    LTransactionAlldescription: TStringField;
    LTransactionAlltrans_type: TStringField;
    LTransactionAllid_parent: TStringField;
    LTransactionAlldoc_distribution: TStringField;
    LTransactionAllisdetail: TStringField;
    L_Transactionid_trans: TStringField;
    L_Transactiondescription: TStringField;
    L_Transactiontrans_type: TStringField;
    L_Transactionid_parent: TStringField;
    L_Transactionisdetail: TStringField;
    qryCheckAccessisbrowse: TStringField;
    qryCheckAccessisinsert: TStringField;
    qryCheckAccessisedit: TStringField;
    qryCheckAccessisdelete: TStringField;
    L_Divisionid_division: TStringField;
    L_Divisiondescription: TStringField;
    L_Divisionid_parent: TStringField;
    L_Divisionisdetail: TStringField;
    L_Divisionlbl: TStringField;
    L_Divisionid_rek_gl: TStringField;
    L_Rek_GLid_rek_gl: TStringField;
    L_Rek_GLid_parent: TStringField;
    L_Rek_GLlvl: TIntegerField;
    L_Rek_GLisdetail: TStringField;
    L_Rek_GLdescriptions: TStringField;
    L_Rekananplafon: TFloatField;
    ImageList1: TImageList;
    L_Supplier: TZReadOnlyQuery;
    L_Supplierkd_rekanan: TStringField;
    L_Suppliernama_rekanan: TStringField;
    L_Supplieralamat: TStringField;
    L_Supplierjenis: TStringField;
    L_Suppliercontact: TStringField;
    L_Supplierkota: TStringField;
    L_Supplierkode_pos: TStringField;
    L_Suppliertelephone: TStringField;
    L_Supplierfaxcimile: TStringField;
    L_Supplieralamat2: TStringField;
    L_Supplierprovince: TStringField;
    L_Suppliercountry: TStringField;
    L_Supplieremail: TStringField;
    L_Supplierremarks: TStringField;
    L_Supplierusr_ins: TStringField;
    L_Supplierusr_upd: TStringField;
    L_Supplierdt_ins: TDateTimeField;
    L_Supplierdt_upd: TDateTimeField;
    L_Suppliercontact_title: TStringField;
    L_Suppliermobile_no: TStringField;
    L_Supplierplafon: TFloatField;
    L_Suppliernpwp: TStringField;
    L_Suppliernppkp: TStringField;
    L_Customer: TZReadOnlyQuery;
    L_Customerkd_rekanan: TStringField;
    L_Customernama_rekanan: TStringField;
    L_Customeralamat: TStringField;
    L_Customerjenis: TStringField;
    L_Customercontact: TStringField;
    L_Customerkota: TStringField;
    L_Customerkode_pos: TStringField;
    L_Customertelephone: TStringField;
    L_Customerfaxcimile: TStringField;
    L_Customeralamat2: TStringField;
    L_Customerprovince: TStringField;
    L_Customercountry: TStringField;
    L_Customeremail: TStringField;
    L_Customerremarks: TStringField;
    L_Customerusr_ins: TStringField;
    L_Customerusr_upd: TStringField;
    L_Customerdt_ins: TDateTimeField;
    L_Customerdt_upd: TDateTimeField;
    L_Customercontact_title: TStringField;
    L_Customermobile_no: TStringField;
    L_Customerplafon: TFloatField;
    L_Customernpwp: TStringField;
    L_Customernppkp: TStringField;
    L_Perusahaan: TZReadOnlyQuery;
    L_Perusahaannama_perusahaan: TStringField;
    L_Perusahaanaddress: TStringField;
    L_Perusahaanphone: TStringField;
    L_Perusahaancity: TStringField;
    L_Perusahaanfax: TStringField;
    L_Perusahaanweb: TStringField;
    L_Perusahaanemail: TStringField;
    LReviewer: TZReadOnlyQuery;
    LReviewervuser: TStringField;
    LReviewerfull_name: TStringField;
    LApprover: TZReadOnlyQuery;
    LApprovervuser: TStringField;
    LApproverfull_name: TStringField;
    L_Itemisinventory: TStringField;
    L_Itembiji_per_karton: TFloatField;
    L_Itemrasio: TFloatField;
    L_Itemid_rek_persediaan: TStringField;
    L_Itemid_rek_hpp: TStringField;
    L_Supplieris_pkp: TStringField;
    L_Transactiondoc_distribution: TStringField;
    L_Transactiondid_rek_gl: TStringField;
    L_Transactionkid_rek_gl: TStringField;
    LTransactionAlldid_rek_gl: TStringField;
    LTransactionAllkid_rek_gl: TStringField;
    qParameter: TZReadOnlyQuery;
    qParameterdescription: TStringField;
    qParameterparam_kind: TStringField;
    qParameterid_parameter: TLargeintField;
    qParameternum_value: TFloatField;
    IconList: TImageList;
    L_Pegawai: TZReadOnlyQuery;
    L_Pegawaink: TStringField;
    L_Pegawaiinitial: TStringField;
    L_Pegawaifull_name: TStringField;
    L_Pegawaidepartment: TStringField;
    L_Pegawaijabatan: TStringField;
    L_Pegawaiisactive: TStringField;
    L_Pegawaijoin_date: TDateTimeField;
    L_Pegawaiaddress: TStringField;
    L_Pegawaiphone1: TStringField;
    L_Pegawaicell_phone: TStringField;
    L_Pegawaiextention: TStringField;
    L_Pegawaiemail: TStringField;
    L_Pegawaiusr_ins: TStringField;
    L_Pegawaiusr_upd: TStringField;
    L_Pegawaigender: TStringField;
    L_Pegawaibirth_place: TStringField;
    L_Pegawaidt_birth: TDateTimeField;
    L_Pegawaists_kawin: TStringField;
    L_Perusahaandt_pengukuhan: TDateTimeField;
    L_Perusahaannpwp: TStringField;
    L_Perusahaannomor_distributor: TStringField;
    L_JenisRekanan: TZReadOnlyQuery;
    L_JenisRekanandescription: TStringField;
    L_JenisAset: TZReadOnlyQuery;
    L_JenisAsetkd_jenis: TStringField;
    L_JenisAsetkd_parent: TStringField;
    L_JenisAsetdiskripsi: TStringField;
    L_JenisAsetlvl: TIntegerField;
    L_JenisAsetisdetail: TStringField;
    L_JenisAsetid_rek_aktiva: TStringField;
    L_JenisAsetid_rek_akum: TStringField;
    L_JenisAsetpsn_susut: TFloatField;
    L_JenisAsetumur_thn: TFloatField;
    L_JenisAsetid_rek_biaya: TStringField;
    vTutupBuku: TZReadOnlyQuery;
    vTutupBukudt_tutup_buku: TDateField;
    scExcelExport1: TscExcelExport;
    qryCheckStok: TZQuery;
    qryCheckStokstok: TFloatField;
    qUser: TZReadOnlyQuery;
    qUservuser: TStringField;
    qUserpasswd: TStringField;
    qUserfull_name: TStringField;
    qUserusr_principal: TStringField;
    L_Itemhrg_jual: TFloatField;
    L_Itemhrg_beli: TFloatField;
    L_Itemsatuan_jual: TStringField;
    L_Itemsatuan_beli: TStringField;
    qryShift: TZReadOnlyQuery;
    qryShiftshift_server: TIntegerField;
    L_Member_Online: TZReadOnlyQuery;
    L_Member_Onlinekd_member: TStringField;
    L_Member_Onlinenama_member: TStringField;
    L_Member_Onlinealamat: TStringField;
    L_Member_Onlinejenis_member: TStringField;
    L_Member_Onlinetelephone_gsm: TStringField;
    L_Member_Onlinetelephone_wa: TStringField;
    L_Member_Onlineemail: TStringField;
    L_Member_Onlinenama_akun_bank: TStringField;
    L_Member_Onlinenama_bank: TStringField;
    L_Member_Onlineno_rek_bank: TIntegerField;
    L_Member_Onlinedisc_member_psn: TFloatField;
    L_Member_Onlinedisc_member_rp: TFloatField;
    L_Member_Onlinemin_buy: TFloatField;
    L_Member_Onlinemax_buy: TFloatField;
    L_Member_Onlineid_rek_gl: TStringField;
    L_Member_Onlineusr_ins: TStringField;
    L_Member_Onlineusr_upd: TStringField;
    L_Member_Onlinedt_ins: TDateTimeField;
    L_Member_Onlinedt_upd: TDateTimeField;
    L_Member_Onlineisaktif: TStringField;
    L_Member_Onlineno_refferal: TStringField;
    L_Member_Onlinerefferal_isclaim: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure SqlMonitorLogTrace(Sender: TObject; Event: TZLoggingEvent);
  private
    { Private declarations }
    procedure SetApplicationVariables;
  public
    { Public declarations }
    isLogin, isSuperUser: Boolean;
    UserConnect, pwdConnect, UsrPrincipal, siteOffice : string;
    function MyMsg(MsgType: TMyMsgType; Msg, Desc: string): Integer;
    //procedure CreateXDBDataset;
    function Connect_Database_Server: Boolean;
    function Connect_Database_Server_from_Application: Boolean;
    procedure UpdateMenu;
    function CheckSuperUser(usr, pwd: string): Boolean;
    function Authenticate_User: Boolean;
    function ChangePassword: Boolean;
    procedure GetAccessRights(tag: integer;
                              var isbrowse, isinsert, isedit, isdelete, isprint,
                                  isexport: Boolean);
    procedure StartTransaction;
    procedure CommitTransaction;
    procedure RollbackTransaction;
    procedure PrepareQuery(qry: TZQuery);
    procedure OpenQuery(qry: TZQuery; sqlstr: string);
    function ExecQuery(qry: TZQuery; sqlstr: string): Integer;
    function GetParamnum(id: integer): single;
    function GetParamstr(id: integer): String;

    function GetSkinInfoFromXML: string;
    procedure SaveSkinInfotoXML(SkinInfo: string);

    function EncryptString(s: string): string;
    function DecryptString(s: string): string;
    function SetExcelString:Boolean;
    procedure Export2Excel(dataset: TDataSet; nama: string);
    function CheckStock(vIdItem, vGudang, vDate: string): Real;
    function getShift: integer;

  end;

var
  DM: TDM;

implementation

uses AdvStyleIF, MD5, U_LoginDB, U_ChangePassword, U_Login_User,
     U_Main, Menus, U_AppLog, U_SetExcelString;

{$R *.dfm}

function ByteToHex(inp: Byte): string;
const hex: string = '0123456789abcdef';
begin
  Result:= hex[(inp and $f0) shr 4+1] + hex[inp and $0f+1];
end;

function HexToByte(inp: string): Byte;
var s: string;
    len: Integer;

  function h2b(dh: char): Byte;
  var val: Byte;
  begin
    val:= ord(dh);
    if (val-ord('a'))<0 then
      Result:= val-ord('0')
    else
      Result:= (val-ord('a')) + 10;
  end;

begin
  Result:= 0;
  s:= LowerCase(inp);
  len:= Length(s);
  if (len=0) or (len>2) then
    Exit;
  if len=1 then
    s:= '0'+s;
  Result:= h2b(s[1]) shl 4 + h2b(s[2]);
end;

function TDM.EncryptString(s: string): string;
var i: integer;
    inps, s1: string;
begin
  Result := '';
  inps:= Trim(s);
  s1:= '';
  for i := 1 to Length(inps) do
    s1 := s1 + ByteToHex((ord(inps[i])+ord(sKey[i mod length(sKey)])) mod 256);
  Result := s1;
end;


function TDM.DecryptString(s: string): string;
var i, i1: Integer;
    temp: Byte;
    inps, s1: string;
begin
  Result:= '';
  inps:= Trim(s);
  s1:= '';
  i:= 1;
  while i<=Length(inps) do begin
    temp:= HexToByte(inps[i]+inps[i+1]);
    i:= i+2;
    if ((i-1) mod 2) = 0 then begin
      i1 := temp - ord(sKey[((i-1) div 2) mod length(sKey)]);
      if i1 < 0 then
        i1:= i1+256;
      s1:= s1 + chr(i1)
    end;
  end;
  Result:= s1;
end;


procedure TDM.Export2Excel(dataset: TDataSet; nama: string);
var  dir:string;
begin
  dir := GetCurrentDir;
  scExcelExport1.Filename:=dir + '\rpt.xls';

  scExcelExport1.Dataset:= dataset;
  scExcelExport1.WorksheetName:= nama;
  scExcelExport1.ExportDataset;


  scExcelExport1.Disconnect;
end;

function TDM.GetParamnum(id: integer):Single;
begin
  try
   qParameter.Close;
   qParameter.Params.ParamByName('pid').AsInteger:= id;
   qParameter.Open;
   Result:= qParameternum_value.AsFloat;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      Result:= 0;
    end
  end;

end;

function TDM.SetExcelString:Boolean;
var s : String;
begin
  Result:= False;

  with TSetExcelStringFrm.Create(Application) do
    try
      Result:= False;
      edtProvider.Text:= GetParamstr(15);
      edtExtdProperties.Text:= GetParamstr(16);
      if ShowModal=mrOK then begin
        try
          PrepareQuery(qTrans);
          s:= 'UPDATE master.mparameter';
          s:= s+' SET description='+QuotedStr(edtProvider.Text);
          s:= s+' WHERE id_parameter=15';
          ExecQuery(qTrans,s);

          PrepareQuery(qTrans);
          s:= 'UPDATE master.mparameter';
          s:= s+' SET description='+QuotedStr(edtExtdProperties.Text);
          s:= s+' WHERE id_parameter=16';
          ExecQuery(qTrans,s);

          Result:= True
        except
          on E: Exception do
            MyMsg(mmError,'Error has been encountered !',E.Message)
        end;
      end
    finally
      Free
    end;

end;

function TDM.GetParamstr(id: integer):string;
begin
  try
   qParameter.Close;
   qParameter.Params.ParamByName('pid').AsInteger:= id;
   qParameter.Open;
   Result:= qParameterdescription.AsString;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      Result:= '';
    end
  end;;
end;

procedure TDM.PrepareQuery(qry: TZQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.Params.Clear;
end;

procedure TDM.OpenQuery(qry: TZQuery; sqlstr: string);
begin
  qry.SQL.Add(sqlstr);
  qry.Open;
end;

function TDM.ExecQuery(qry: TZQuery; sqlstr: string): Integer;
begin
  qry.SQL.Add(sqlstr);
  qry.ExecSQL;
  Result:= qry.RowsAffected
end;


procedure TDM.SetApplicationVariables;
begin
  CurrencyString:= 'Rp.';
  CurrencyFormat:= 2;
  ThousandSeparator:= ',';
  DecimalSeparator:= '.';
  CurrencyDecimals:= 2;
  DateSeparator:= '/';
  ShortDateFormat:= 'dd/mm/yyyy';
  LongDateFormat:= 'dd mmmm yyyy';

  ShortDayNames[1]:= 'Min';
  ShortDayNames[2]:= 'Sen';
  ShortDayNames[3]:= 'Sel';
  ShortDayNames[4]:= 'Rab';
  ShortDayNames[5]:= 'Kam';
  ShortDayNames[6]:= 'Jum';
  ShortDayNames[7]:= 'Sab';

  LongDayNames[1]:= 'Minggu';
  LongDayNames[2]:= 'Senin';
  LongDayNames[3]:= 'Selasa';
  LongDayNames[4]:= 'Rabu';
  LongDayNames[5]:= 'Kamis';
  LongDayNames[6]:= 'Jumat';
  LongDayNames[7]:= 'Sabtu';

  ShortMonthNames[1]:= 'Jan';
  ShortMonthNames[2]:= 'Feb';
  ShortMonthNames[3]:= 'Mar';
  ShortMonthNames[4]:= 'Apr';
  ShortMonthNames[5]:= 'Mei';
  ShortMonthNames[6]:= 'Jun';
  ShortMonthNames[7]:= 'Jul';
  ShortMonthNames[8]:= 'Agu';
  ShortMonthNames[9]:= 'Sep';
  ShortMonthNames[10]:= 'Okt';
  ShortMonthNames[11]:= 'Nov';
  ShortMonthNames[12]:= 'Des';

  LongMonthNames[1]:= 'Januari';
  LongMonthNames[2]:= 'Februari';
  LongMonthNames[3]:= 'Maret';
  LongMonthNames[4]:= 'April';
  LongMonthNames[5]:= 'Mei';
  LongMonthNames[6]:= 'Juni';
  LongMonthNames[7]:= 'Juli';
  LongMonthNames[8]:= 'Agustus';
  LongMonthNames[9]:= 'September';
  LongMonthNames[10]:= 'Oktober';
  LongMonthNames[11]:= 'November';
  LongMonthNames[12]:= 'Desember';
end;

function TDM.MyMsg(MsgType: TMyMsgType; Msg, Desc: string): Integer;
begin
  atdMain.Clear;
  atdMain.Instruction:= Msg;
  atdMain.Content:= Desc;
  atdMain.CustomButtons.Clear;
  atdMain.DefaultButton := 100;
  case MsgType of
    mmConfirmation: begin
         atdMain.Title := 'Konfirmasi';
         atdMain.Icon := tiQuestion;
         atdMain.CustomButtons.Add('Ya');
         atdMain.CustomButtons.Add('Tidak');
       end;
    mmInformation: begin
         atdMain.Title := 'Informasi';
         atdMain.Icon := tiInformation;
         atdMain.CustomButtons.Add('OK');
       end;
    mmWarning: begin
         atdMain.Title := 'Peringatan';
         atdMain.Icon := tiWarning;
         atdMain.CustomButtons.Add('OK');
       end;
    mmError: begin
         atdMain.Title := 'Error';
         atdMain.Icon := tiError;
         atdMain.CustomButtons.Add('OK');
       end;
  end;
  Result:= atdMain.Execute
end;

//procedure TDM.CreateXDBDataset;
//begin
//  mtConfig.FieldDefs.Clear;
//  mtConfig.FieldDefs.Add('db_svr_host',ftString,50,False);
//  mtConfig.FieldDefs.Add('db_svr_port',ftString,50,False);
//  mtConfig.FieldDefs.Add('db_name',ftString,50,False);
//  mtConfig.FieldDefs.Add('db_usr_name',ftString,50,False);
//  mtConfig.FieldDefs.Add('db_usr_passwd',ftString,50,False);
//  mtConfig.CreateTable;
//  mtConfig.Open;
//end;

function TDM.Connect_Database_Server: Boolean;
var _app, _setting, _db, _skin, _node: IXMLNode;
    fn, dbhost, dbport, db, dbuser, dbpwd: string;
begin
  Result:= False;
  fn:= ExtractFilePath(Application.ExeName)+ConfigFileName;

  // Check 1st time run
  if not FileExists(fn) then begin
//    CreateXDBDataset;
//    mtConfig.Append;
//    mtConfig.FieldByName('db_svr_host').AsString:= 'localhost';
//    mtConfig.FieldByName('db_svr_port').AsInteger:= 5432;
//    mtConfig.FieldByName('db_name').AsString:= 'metrotech_db';
//    mtConfig.FieldByName('db_usr_name').AsString:= 'metrotech_db';
//    mtConfig.FieldByName('db_usr_passwd').AsString:= '';
//    mtConfig.Post;
//    mtConfig.SaveToFile(fn);
    xml.FileName:= '';
    xml.Active:= True;
    xml.StandAlone:= 'yes';
    xml.Version:= '1.0';
    xml.DocumentElement:= xml.CreateElement('application','');
    _app:= xml.DocumentElement;
    _setting:= _app.AddChild('setting');
    _db:= _setting.AddChild('database');
    _node:= _db.AddChild('server_host');
    _node:= _db.AddChild('server_port');
    _node:= _db.AddChild('db_name');
    _node:= _db.AddChild('db_usr_name');
    _node:= _db.AddChild('db_usr_passwd');
    _skin:= _setting.AddChild('skin');
    _node:= _skin.AddChild('style');

    _db.ChildNodes['server_host'].Text:= 'localhost';
    _db.ChildNodes['server_port'].Text:= '5432';
    _db.ChildNodes['db_name'].Text:= 'db_ideas';
    _db.ChildNodes['db_usr_name'].Text:= 'ideas';
    _db.ChildNodes['db_usr_passwd'].Text:= EncryptString('ideas');
    _skin.ChildNodes['style'].Text:= 'tsOffice2007Obsidian';
    xml.SaveToFile(fn);
  end else begin
//    mtConfig.LoadFromFile(fn);
    xml.Active:= True;
    xml.LoadFromFile(fn);
    _app:= xml.DocumentElement;
    _setting:= _app.ChildNodes[0];
    _db:= _setting.ChildNodes[0];
    _skin:= _setting.ChildNodes[1];
  end;

//  dbhost:= Trim(mtConfig.FieldByName('db_svr_host').AsString);
//  dbport:= Trim(mtConfig.FieldByName('db_svr_port').AsString);
//  db:= Trim(mtConfig.FieldByName('db_name').AsString);
//  dbuser:= Trim(mtConfig.FieldByName('db_usr_name').AsString);
//  dbpwd:= Trim(mtConfig.FieldByName('db_usr_passwd').AsString);

  dbhost:= Trim(_db.ChildNodes['server_host'].Text);
  dbport:= Trim(_db.ChildNodes['server_port'].Text);
  db:= Trim(_db.ChildNodes['db_name'].Text);
  dbuser:= Trim(_db.ChildNodes['db_usr_name'].Text);
  dbpwd:= DecryptString(Trim(_db.ChildNodes['db_usr_passwd'].Text));

  conn.Disconnect;
  conn.HostName:= dbhost;
  conn.Port:= StrToInt(dbport);
  conn.Database:= db;
  conn.User:= dbuser;
  conn.Password:= dbpwd;

  // try to connect if database connection setting had been set
  if (dbhost<>'') or (dbport<>'') or (db<>'') or (dbuser<>'') or (dbpwd<>'') then begin
    try
      conn.Connect;
      Result:= True;
    except
      on E: Exception do
        MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
    // ask again if database connection failed
    if not conn.Connected then
      with TLoginDBFrm.Create(Application) do
        try
          Result:= False;
          edtDBHost.Text:= dbhost;
          edtDBPort.Text:= dbport;
          edtDBName.Text:= db;
          edtDBUser.Text:= dbuser;
          edtDBPasswd.Text:= dbpwd;
          if ShowModal=mrOK then begin
            try
              conn.Disconnect;
              conn.HostName:= Trim(edtDBHost.Text);
              conn.Database:= Trim(edtDBName.Text);
              conn.User:= Trim(edtDBUser.Text);
              conn.Password:= Trim(edtDBPasswd.Text);
              try
                conn.Port:= StrToInt(Trim(edtDBPort.Text));
              except
                conn.Port:= 5432;
              end;
              conn.Connect;
//              mtConfig.Edit;
//              mtConfig.FieldByName('db_svr_host').AsString:= conn.HostName;
//              mtConfig.FieldByName('DB_svr_port').AsInteger:= conn.Port;
//              mtConfig.FieldByName('db_name').AsString:= conn.Database;
//              mtConfig.FieldByName('db_usr_name').AsString:= conn.User;
//              mtConfig.FieldByName('db_usr_passwd').AsString:= conn.Password;
//              mtConfig.Post;
//              mtConfig.SaveToFile(fn);
              _db.ChildNodes['server_host'].Text:= conn.HostName;
              _db.ChildNodes['server_port'].Text:= IntToStr(conn.Port);
              _db.ChildNodes['db_name'].Text:= conn.Database;
              _db.ChildNodes['db_usr_name'].Text:= conn.User;
              _db.ChildNodes['db_usr_passwd'].Text:= EncryptString(conn.Password);
              xml.SaveToFile(fn);
              Result:= True
            except
              on E: Exception do
                MyMsg(mmError,'Error has been encountered !',E.Message)
            end;
          end
        finally
          Free
        end;
  end else
  // if one of database connection setting is empty
  if (dbhost='') and (dbport='') and (db='') and (dbuser='') and (dbpwd='') then begin
    with TLoginDBFrm.Create(Application) do
      try
        edtDBHost.Text:= dbhost;
        edtDBPort.Text:= dbport;
        edtDBName.Text:= db;
        edtDBUser.Text:= dbuser;
        edtDBPasswd.Text:= dbpwd;
        if ShowModal=mrOK then begin
          try
            conn.Disconnect;
            conn.HostName:= Trim(edtDBHost.Text);
            conn.Database:= Trim(edtDBName.Text);
            conn.User:= Trim(edtDBUser.Text);
            conn.Password:= Trim(edtDBPasswd.Text);
            try
              conn.Port:= StrToInt(Trim(edtDBPort.Text));
            except
              conn.Port:= 5432;
            end;
            conn.Connect;
//            mtConfig.Edit;
//            mtConfig.FieldByName('db_svr_host').AsString:= conn.HostName;
//            mtConfig.FieldByName('db_svr_port').AsInteger:= conn.Port;
//            mtConfig.FieldByName('db_name').AsString:= conn.Database;
//            mtConfig.FieldByName('db_usr_name').AsString:= conn.User;
//            mtConfig.FieldByName('db_usr_passwd').AsString:= conn.Password;
//            mtConfig.Post;
//            mtConfig.SaveToFile(fn);
            _db.ChildNodes['server_host'].Text:= conn.HostName;
            _db.ChildNodes['server_port'].Text:= IntToStr(conn.Port);
            _db.ChildNodes['db_name'].Text:= conn.Database;
            _db.ChildNodes['db_usr_name'].Text:= conn.User;
            _db.ChildNodes['db_usr_passwd'].Text:= EncryptString(conn.Password);
            xml.SaveToFile(fn);
            Result:= True;
          except
            on E: Exception do
              MyMsg(mmError,'Error has been encountered !',E.Message)
          end;
        end
      finally
        Free
      end
  end
end;

function TDM.Connect_Database_Server_from_Application: Boolean;
var _app, _setting, _db, _skin: IXMLNode;
    fn, dbhost, dbport, db, dbuser, dbpwd: string;
begin
  Result:= False;
  fn:= ExtractFilePath(Application.ExeName)+ConfigFileName;

//  mtConfig.LoadFromFile(fn);
  xml.Active:= True;
  xml.LoadFromFile(fn);
  _app:= xml.DocumentElement;
  _setting:= _app.ChildNodes[0];
  _db:= _setting.ChildNodes[0];
  _skin:= _setting.ChildNodes[1];

//  dbhost:= Trim(mtConfig.FieldByName('db_svr_host').AsString);
//  dbport:= Trim(mtConfig.FieldByName('db_svr_port').AsString);
//  db:= Trim(mtConfig.FieldByName('db_name').AsString);
//  dbuser:= Trim(mtConfig.FieldByName('db_usr_name').AsString);
//  dbpwd:= Trim(mtConfig.FieldByName('db_usr_passwd').AsString);

  dbhost:= Trim(_db.ChildNodes['server_host'].Text);
  dbport:= Trim(_db.ChildNodes['server_port'].Text);
  db:= Trim(_db.ChildNodes['db_name'].Text);
  dbuser:= Trim(_db.ChildNodes['db_usr_name'].Text);
  dbpwd:= DecryptString(Trim(_db.ChildNodes['db_usr_passwd'].Text));

  conn.Disconnect;

  with TLoginDBFrm.Create(Application) do
    try
      Result:= False;
      edtDBHost.Text:= dbhost;
      edtDBPort.Text:= dbport;
      edtDBName.Text:= db;
      edtDBUser.Text:= dbuser;
      edtDBPasswd.Text:= dbpwd;
      if ShowModal=mrOK then begin
        try
          conn.Disconnect;
          conn.HostName:= Trim(edtDBHost.Text);
          conn.Database:= Trim(edtDBName.Text);
          conn.User:= Trim(edtDBUser.Text);
          conn.Password:= Trim(edtDBPasswd.Text);
          try
            conn.Port:= StrToInt(Trim(edtDBPort.Text));
          except
            conn.Port:= 5432;
          end;
          conn.Connect;
//          mtConfig.Edit;
//          mtConfig.FieldByName('db_svr_host').AsString:= conn.HostName;
//          mtConfig.FieldByName('db_svr_port').AsInteger:= conn.Port;
//          mtConfig.FieldByName('db_name').AsString:= conn.Database;
//          mtConfig.FieldByName('db_usr_name').AsString:= conn.User;
//          mtConfig.FieldByName('db_usr_passwd').AsString:= conn.Password;
//          mtConfig.Post;
//          mtConfig.SaveToFile(fn);
          _db.ChildNodes[0].Text:= conn.HostName;
          _db.ChildNodes[1].Text:= IntToStr(conn.Port);
          _db.ChildNodes[2].Text:= conn.Database;
          _db.ChildNodes[3].Text:= conn.User;
          _db.ChildNodes[4].Text:= EncryptString(conn.Password);
          xml.SaveToFile(fn);
          Result:= True
        except
          on E: Exception do
            MyMsg(mmError,'Error has been encountered !',E.Message)
        end;
      end
    finally
      Free
    end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var SkinInfo: string;
begin
  isLogin:= False;
  isSuperUser:= False;
  UserConnect:= '';
  pwdConnect:= '';
  AppLogFrm:= nil;
  AppLogFrm:= TAppLogFrm.Create(Application);
  AppLogFrm.Visible:= False;
  AppLogFrm.isClose:= False;
  SqlMonitor.Active:= True;

  SetApplicationVariables;
  if not Connect_Database_Server then
    Application.Terminate;
  try
     vTutupBuku.Close;
     vTutupBuku.Open;
  except
    on E: Exception do
      MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  SkinInfo:= GetSkinInfoFromXML;
  if SameText(SkinInfo,'tsWindowsXP') then
    apsMain.Style := TTMSStyle(tsWindowsXP)
  else if SameText(SkinInfo,'tsWhidbey') then
    apsMain.Style := TTMSStyle(tsWhidbey)
  else if SameText(SkinInfo,'tsOffice2003Classic') then
    apsMain.Style := TTMSStyle(tsOffice2003Classic)
  else if SameText(SkinInfo,'tsOffice2003Blue') then
    apsMain.Style := TTMSStyle(tsOffice2003Blue)
  else if SameText(SkinInfo,'tsOffice2003Olive') then
    apsMain.Style := TTMSStyle(tsOffice2003Olive)
  else if SameText(SkinInfo,'tsOffice2003Silver') then
    apsMain.Style := TTMSStyle(tsOffice2003Silver)
  else if SameText(SkinInfo,'tsOffice2007Luna') then
    apsMain.Style := TTMSStyle(tsOffice2007Luna)
  else if SameText(SkinInfo,'tsOffice2007Obsidian') then
    apsMain.Style := TTMSStyle(tsOffice2007Obsidian)
  else if SameText(SkinInfo,'tsOffice2007Silver') then
    apsMain.Style := TTMSStyle(tsOffice2007Silver)
end;

procedure TDM.UpdateMenu;
var i: Integer;
    mi: TMenuItem;
begin
  if not isSuperUser then // Ordinary User get it appropriately
    while not vUserMenu.eof do begin
      with MainFrm do
        for i:=0 to ComponentCount-1 do
          if Components[i] is TMenuItem then begin
            mi:= Components[i] as TMenuItem;
            if (mi.Name=vUserMenumenu_name.AsString) and (mi.Tag=vUserMenutag.AsInteger) then
            begin
              mi.Visible:= vUserMenuisbrowse.AsString='1';
              Break
            end;
          end;
      vUserMenu.next;
    end
  else begin // Super User get it all
    with MainFrm do
      for i:=0 to ComponentCount-1 do
        if Components[i] is TMenuItem then
          (Components[i] as TMenuItem).Visible:= True;
  end
end;

function TDM.CheckSuperUser(usr, pwd: string): Boolean;
begin
  Result:= False;
  isSuperUser:= False;
  try
    vAdmin.Close;
    vAdmin.SQL.Clear;
    vAdmin.Params.Clear;
    vAdmin.SQL.Add('select vusr_admin from master.vadmin where lower(vusr_admin)=lower(:usr) and vpwd_admin=:pwd');
    vAdmin.Params.ParseSQL(vAdmin.SQL.Text, True);
    vAdmin.ParamByName('usr').Value:=usr;
    vAdmin.ParamByName('pwd').Value:=MD5Print(MD5String(pwd));
    vAdmin.Open;
    if vAdmin.RecordCount=1 then
      isSuperUser:= True;
    Result:= True;
  except
    on E: Exception do
      MyMsg(mmError,'Error has been encountered !',E.Message)
  end
end;

function TDM.Authenticate_User: Boolean;
begin
  isLogin:= False;
  Result:= isLogin;
  isSuperUser:= False;
  userConnect:='';
  pwdConnect:='';
  with TLogin_UserFrm.Create(Application) do
  try
    if ShowModal=mrOK then begin
      UserConnect:= Trim(edtUsername.Text);
      pwdConnect:= Trim(edtPassword.Text);
      qUser.Close;
      qUser.Params.ParamByName('puser').Value:= UserConnect;
      qUser.Open;
      try
        if conn.Connected then begin
          if CheckSuperUser(UserConnect, pwdConnect) then begin
            if not isSuperUser then begin
              vUserMenu.Close;
              vUser.Close;
              vuser.SQL.Clear;
              vuser.Params.Clear;
              vuser.SQL.Add('select vuser as user, full_name, passwd, usr_principal, cast(current_timestamp as timestamp without time zone) as sysdate, vuser||'+QuotedStr(', ')+'||to_char(cast(current_timestamp as timestamp without time zone),'+QuotedStr('dd Mon yyyy hh24:mi:ss')+') as user_str from master.vuser');
              vuser.SQL.Add('where lower(vuser)=lower(:usr) and passwd=:pwd');
              vuser.Params.ParseSQL(vUser.SQL.Text, True);
              vuser.ParamByName('usr').Value:=userConnect;
              vuser.ParamByName('pwd').Value:=MD5Print(MD5String(pwdConnect));
              vUser.Open;
              if vUser.RecordCount=0 then
                raise Exception.Create('User tidak ditemukan/password salah !');
              vUserMenu.Params.ParamByName('vuser1').Value:= vUser.FieldByName('user').AsString;
              vUserMenu.Open;
            end else begin
              if isSuperUser then
              else
                raise Exception.Create('User tidak ditemukan/password salah !');
            end;
            UpdateMenu;
          end
        end;
        isLogin:= True;
        Result:= isLogin;
      except
        on E: Exception do
          MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end
  finally
    Free
  end
end;

function TDM.ChangePassword: Boolean;
var _oldpwd, _newpwd, _confirmpwd: string;
begin
  Result:= False;
  with TChangePasswordFrm.Create(Application) do
  try
    lblHeaderComment.Caption:= 'Ubah Password untuk User ' + UserConnect;
    if ShowModal=mrOK then begin
      _oldpwd:= Trim(edtOldPassword.Text);
      _newpwd:= Trim(edtNewPassword.Text);
      _confirmpwd:= Trim(edtConfirmPassword.Text);
      try
        if not isSuperUser then begin
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('select passwd from master.vuser where lower(vuser)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Open;
          if qPasswd.RecordCount=0 then
            raise Exception.Create('User tidak ditemukan !');
          if MD5Print(MD5String(_oldpwd))<>qPasswd.FieldByName('passwd').AsString then
            raise Exception.Create('password lama salah !');
          if _newpwd<>_confirmpwd then
            raise Exception.Create('Password baru tidak sama dengan password konfirmasi !');
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('update master.vuser set passwd=:pwd where lower(vuser)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Params.ParamByName('pwd').AsString:= MD5Print(MD5String(_newpwd));
          qPasswd.ExecSQL
        end else begin // change superuser password
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('select vpwd_admin from master.vadmin where lower(vusr_admin)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Open;
          if qPasswd.RecordCount=0 then
            raise Exception.Create('User tidak ditemukan !');
          if MD5Print(MD5String(_oldpwd))<>qPasswd.FieldByName('vpwd_admin').AsString then
            raise Exception.Create('password lama salah !');
          if _newpwd<>_confirmpwd then
            raise Exception.Create('Password baru tidak sama dengan password konfirmasi !');
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('update master.vadmin set vpwd_admin=:pwd where lower(vusr_admin)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Params.ParamByName('pwd').AsString:= MD5Print(MD5String(_newpwd));
          qPasswd.ExecSQL
        end;
        Result:= True;
        MyMsg(mmInformation,'Password tela berhasil diubah !','Password untuk user '+UserConnect+' sudah berubah sekarang.');
      except
        on E: Exception do
          MyMsg(mmError,'Error has been encountered !',E.Message)
      end;
    end
  finally
    Free
  end
end;

procedure TDM.GetAccessRights(tag: integer;
                              var isbrowse, isinsert, isedit, isdelete, isprint,
                                  isexport: Boolean);
begin
  isbrowse:= False;
  isinsert:= False;
  isedit:= False;
  isdelete:= False;
  isprint:= False;
  isexport:= False;
  try
    qAccess.Close;
    qAccess.Params.ParamByName('usr').AsString:= DM.UserConnect;
    qAccess.Params.ParamByName('tag').AsInteger:= tag;
    qAccess.Open;
    isbrowse:= isSuperUser or (qAccessisbrowse.AsString='1');
    isinsert:= isSuperUser or (qAccessisinsert.AsString='1');
    isedit:= isSuperUser or (qAccessisedit.AsString='1');
    isdelete:= isSuperUser or (qAccessisdelete.AsString='1');
    isprint:= isSuperUser or (qAccessisprint.AsString='1');
    isexport:= isSuperUser or (qAccessisexport.AsString='1');
  except
  end;
end;

procedure TDM.StartTransaction;
begin
  qTrans.SQL.Clear;
  qTrans.SQL.Add('BEGIN');
  qTrans.ExecSQL
end;

procedure TDM.CommitTransaction;
begin
  qTrans.SQL.Clear;
  qTrans.SQL.Add('COMMIT');
  qTrans.ExecSQL
end;

procedure TDM.RollbackTransaction;
begin
  qTrans.SQL.Clear;
  qTrans.SQL.Add('ROLLBACK');
  qTrans.ExecSQL
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  conn.Disconnect
end;

procedure TDM.SqlMonitorLogTrace(Sender: TObject; Event: TZLoggingEvent);
begin
  if Assigned(AppLogFrm) then
    AppLogFrm.reLog.Lines.Add(Event.Message)
end;

function TDM.GetSkinInfoFromXML: string;
var root: IXMLNode;
begin
  DM.xml.Active:= False;
  DM.xml.LoadFromFile(ExtractFilePath(Application.ExeName)+ConfigFileName);
  root:= DM.xml.DocumentElement;
  Result:= root.ChildNodes['setting'].ChildNodes['skin'].ChildNodes['style'].Text
end;

procedure TDM.SaveSkinInfotoXML(SkinInfo: string);
var root: IXMLNode;
begin
  DM.xml.Active:= False;
  DM.xml.LoadFromFile(ExtractFilePath(Application.ExeName)+ConfigFileName);
  root:= DM.xml.DocumentElement;
  root.ChildNodes['setting'].ChildNodes['skin'].ChildNodes['style'].Text:= SkinInfo;
  DM.xml.SaveToFile(ExtractFilePath(Application.ExeName)+ConfigFileName);
end;

function TDM.CheckStock(vIdItem, vGudang, vDate: string): Real;
begin
  Result:= 0;
   try
     qryCheckStok.Close;
     qryCheckStok.Params.ParamByName('pitem').Value:= vIdItem;
     qryCheckStok.Params.ParamByName('pgudang').Value:= vGudang;
     qryCheckStok.Params.ParamByName('ptgl').Value:= vDate;
     qryCheckStok.Open;
   except
      on E: Exception do
        MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

   Result:= qryCheckStokstok.AsFloat;
end;

function TDM.getShift: integer;
begin
  Result:= 0;
   try
     qryShift.Close;
     qryShift.Open;
     Result:= qryShiftshift_server.AsInteger;
   except
      on E: Exception do
        MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

end.

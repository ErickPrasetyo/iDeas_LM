unit U_RepairData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, DB, SdfData, SCStdControls, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxButtonEdit, StdCtrls, SCControl, kbmMemTable,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSequence;

type
  TfrmRepairData = class(TForm)
    scpnlTop: TSCPanel;
    lblLblReffNo: TLabel;
    btnFileSource: TcxButtonEdit;
    btnFetchDataFetch: TSCButton;
    pnlBottom: TPanel;
    btnFetchDataClose: TSCButton;
    pnl1: TPanel;
    lblStatus: TLabel;
    pgrsTotal: TSCProgress;
    pgrsProcess: TSCProgress;
    dlgOpen1: TOpenDialog;
    kbmtblMemorialOutlet: TkbmMemTable;
    wdstrMemorialF1: TWideStringField;
    wdstrMemorialF2: TWideStringField;
    wdstrMemorialF3: TWideStringField;
    wdstrMemorialF4: TWideStringField;
    wdstrMemorialF5: TWideStringField;
    zqryExec: TZQuery;
    zqryITEM: TZQuery;
    strngfldITEMkd_rekanan: TStringField;
    strngfldITEMnama_rekanan: TStringField;
    strngfldITEMalamat: TStringField;
    strngfldITEMusr_upd: TStringField;
    dtmfldITEMdt_upd: TDateTimeField;
    strngfldITEMtelephone: TStringField;
    lrgntfldITEMid_rekanan: TLargeintField;
    sq_mrekanan_bku: TZSequence;
    qRekanan: TZQuery;
    qRekanankd_rekanan: TStringField;
    qRekanannama_rekanan: TStringField;
    qRekananalamat: TStringField;
    qRekananjenis: TStringField;
    qRekanancontact: TStringField;
    qRekanankota: TStringField;
    qRekanankode_pos: TStringField;
    qRekanantelephone: TStringField;
    qRekananfaxcimile: TStringField;
    qRekananalamat2: TStringField;
    qRekananprovince: TStringField;
    qRekanancountry: TStringField;
    qRekananemail: TStringField;
    qRekananremarks: TStringField;
    qRekananusr_ins: TStringField;
    qRekananusr_upd: TStringField;
    qRekanandt_ins: TDateTimeField;
    qRekanandt_upd: TDateTimeField;
    qRekanancontact_title: TStringField;
    qRekananmobile_no: TStringField;
    qRekananplafon: TFloatField;
    qRekanannpwp: TStringField;
    qRekanannppkp: TStringField;
    qRekananis_pkp: TStringField;
    qRekananid_rek_gl: TStringField;
    wdstrMemorialF6: TStringField;
    sdfdtstImportData: TSdfDataSet;
    procedure btnFileExcelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnFetchDataFetchClick(Sender: TObject);
    procedure btnFetchDataCloseClick(Sender: TObject);
  private
    { Private declarations }
    isError, isProses : boolean;

    procedure ImportDataOutlet;
  public
    { Public declarations }
  end;

var
  frmRepairData: TfrmRepairData;

implementation

uses
  U_DM;

{$R *.dfm}

procedure TfrmRepairData.btnFileExcelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if  dlgOpen1.Execute then begin
       btnFileSource.Text:= dlgOpen1.FileName;
//       if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TfrmRepairData.FormCreate(Sender: TObject);
begin
  dlgOpen1.Filter := 'Text files only|*.txt';
end;

procedure TfrmRepairData.btnFetchDataFetchClick(Sender: TObject);
var
  qw, fdcount, rowid : Integer;
begin

  if btnFileSource.Text='' then begin
    DM.MyMsg(mmInformation,'Lokasi File Extract Tidak Ditemukan !!!','Pilih Dahulu Lokasi File Extract !!!');
    Exit;
  end;

  try
    sdfdtstImportData.Close;
    sdfdtstImportData.FileName := Trim(btnFileSource.Text);
    sdfdtstImportData.Open;

    kbmtblMemorialOutlet.Close;
    kbmtblMemorialOutlet.Open;
    kbmtblMemorialOutlet.EmptyTable;

    sdfdtstImportData.First;
    rowid := 0;

    while not sdfdtstImportData.Eof do begin

      kbmtblMemorialOutlet.Append;

      if rowid = 0 then begin
        sdfdtstImportData.Next;
        inc(rowid);
        Continue;
      end;

      fdcount := sdfdtstImportData.Fields.Count;
      for qw := 0 to fdcount -1 do begin

        if qw = 1 then
          wdstrMemorialF1.AsString := Trim(sdfdtstImportData.Fields[qw].Value);

        if qw = 2 then
          wdstrMemorialF2.AsString := Trim(sdfdtstImportData.Fields[qw].Value);

        if qw = 3 then
          wdstrMemorialF3.AsString := Trim(sdfdtstImportData.Fields[qw].Value);

        if qw = 7 then
          wdstrMemorialF4.AsString := Trim('-');

        if qw = 8 then
          wdstrMemorialF5.AsString := Trim('-');

        if qw = 57 then
          wdstrMemorialF6.AsString := Trim('-');

      end;

      sdfdtstImportData.Next;
    end;

    ImportDataOutlet;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
  end;

end;

procedure TfrmRepairData.ImportDataOutlet;
var iq, i, cnt: Integer;
    s: String;
begin

  // delete old tmp data
  DM.PrepareQuery(zqryExec);
  s:='delete from master.mrekanan';
  s:= s+' where jenis='+QuotedStr('CUSTOMER');
  DM.ExecQuery(zqryExec,s);

  LblStatus.Caption:= 'Status : Hapus data temporary lama';

  try
    pgrsTotal.Min:= 0;
    pgrsTotal.Max:= 2;
    isProses:= False;
    pgrsTotal.Position:= 0;
    Application.ProcessMessages;

    LblStatus.Caption:= 'Status : Memulai proses perbaikan data master outlet';

    if kbmtblMemorialOutlet.RecordCount>0 then
        isProses:= True;

    if isProses then  begin
       qRekanan.Close;
       qRekanan.Open;
       DM.vSysDate.Close;
       DM.vSysDate.Open;
       pgrsProcess.Position:= 0;
       i:= 1;
       cnt:= kbmtblMemorialOutlet.RecordCount;
       kbmtblMemorialOutlet.First;

       while not kbmtblMemorialOutlet.Eof do begin
          qRekanan.Append;
          qRekanankd_rekanan.AsString:= Trim(wdstrMemorialF1.AsString);
          qRekanannama_rekanan.AsString:= Trim(wdstrMemorialF2.AsString);
          qRekananalamat.AsString:= Trim(wdstrMemorialF3.AsString);
          qRekananjenis.AsString:= Trim('CUSTOMER');
          qRekanancontact.AsString:= Trim(wdstrMemorialF4.AsString);
          qRekanantelephone.AsString:= Trim(wdstrMemorialF5.AsString);
          qRekanannpwp.AsString:= Trim(wdstrMemorialF6.AsString);
          qRekananusr_ins.AsString:= DM.UserConnect;
          qRekananusr_upd.AsString:= DM.UserConnect;
          qRekanandt_ins.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
          qRekanandt_upd.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
          qRekananplafon.AsFloat:= 0;
          qRekanan.Post;

//          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;

          kbmtblMemorialOutlet.Next;
       end;

        pgrsTotal.Position:= 1;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data Item Sukses';

//        DM.PrepareQuery(zqryExec);
//        s:= 'SELECT master.fn_proc_fixed_data_outlet()';
//        DM.ExecQuery(zqryExec,s);

        pgrsTotal.Position:= 2;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses perbaikan data Outlet Sukses';

    end
    else begin
        DM.MyMsg(mmError,'File Data Master Outlet Tidak Bisa di Import !','Periksa ulang file Data !!!');
        Exit;
    end;

  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;

end;

procedure TfrmRepairData.btnFetchDataCloseClick(Sender: TObject);
begin
  frmRepairData.Free;
end;

end.

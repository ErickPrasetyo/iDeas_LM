unit U_RepairCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SCControl, SCStdControls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset, wwDialog, wwidlg, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxmdaset,
  ZAbstractDataset, cxLabel, kbmMemTable, cxGridBandedTableView,
  AdvToolBar, AdvToolBarStylers, AdvPanel, AdvAppStyler, ADODB,
  cxDropDownEdit, RzStatus, ComCtrls, ZSequence, cxMemo, cxPC,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, SdfData;

type
  TRepairCustomerFrm = class(TForm)
    pnlTop: TSCPanel;
    dskmtMemorial: TDataSource;
    pnlBottom: TPanel;
    btnClose: TSCButton;
    kmtMemorial: TkbmMemTable;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    ADOConnection1: TADOConnection;
    LblReffNo: TLabel;
    edtFileExcel: TcxButtonEdit;
    OpenDialog1: TOpenDialog;
    ADODataSet1: TADODataSet;
    btnFetch: TSCButton;
    StatusBar1: TStatusBar;
    oqExec: TZQuery;
    Panel1: TPanel;
    LblStatus: TLabel;
    pgrsTotal: TSCProgress;
    pgrsProcess: TSCProgress;
    cbSheet: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    oqITEM: TZQuery;
    ADODataSet1F1: TWideStringField;
    ADODataSet1F2: TWideStringField;
    ADODataSet1F3: TWideStringField;
    ADODataSet1F4: TWideStringField;
    ADODataSet1F5: TWideStringField;
    kmtMemorialF1: TWideStringField;
    kmtMemorialF2: TWideStringField;
    kmtMemorialF3: TWideStringField;
    kmtMemorialF4: TWideStringField;
    kmtMemorialF5: TWideStringField;
    oqITEMkd_rekanan: TStringField;
    oqITEMnama_rekanan: TStringField;
    oqITEMalamat: TStringField;
    oqITEMusr_upd: TStringField;
    oqITEMdt_upd: TDateTimeField;
    oqITEMtelephone: TStringField;
    sq_mrekanan_bku: TZSequence;
    oqITEMid_rekanan: TLargeintField;
    sdfdtstOutlet: TSdfDataSet;
    procedure edtFileExcelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnFetchClick(Sender: TObject);
  private
    { Private declarations }
    isError, isProses : boolean;
    vSeqImport : Int64;
    procedure ConnectToExcel;
    procedure FetchData;
    procedure ImportItem;

  public
    { Public declarations }
    vMode : String;
  end;

var
  RepairCustomerFrm: TRepairCustomerFrm;

implementation

uses U_DM;

{$R *.dfm}



procedure TRepairCustomerFrm.ConnectToExcel;
var strConn :  widestring;
begin
  strConn:='Provider='+Trim(StatusBar1.Panels[1].Text)+';' +
           'Data Source=' + edtFileExcel.Text + ';' +
           'Extended Properties="'+Trim(StatusBar1.Panels[3].Text)+'"';

  AdoConnection1.Connected:=False;
  AdoConnection1.ConnectionString:=strConn;
  try
    AdoConnection1.Open;

    AdoConnection1.GetTableNames(cbSheet.Properties.Items,True);
  except
    ShowMessage('Unable to connect to Excel, make sure the workbook ' + edtFileExcel.Text + ' exist!');
    raise;
  end;
end;(*ConnectToExcel*)

procedure TRepairCustomerFrm.FetchData;
begin
  if not AdoConnection1.Connected then ConnectToExcel;

  ADODataSet1.Close;
  ADODataSet1.CommandText:=  'SELECT * FROM ['+cbSheet.Text+']';
  try
    ADODataSet1.Open;
  except
    ShowMessage('Unable to read data from Excel, make sure the query ' + edtFileExcel.Text + ' is meaningful!');
    raise;
  end;
end;


procedure TRepairCustomerFrm.edtFileExcelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if  OpenDialog1.Execute then begin
       edtFileExcel.Text:= OpenDialog1.FileName;
//       if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TRepairCustomerFrm.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);
//  AdoConnection1.LoginPrompt:=False;
//  ADODataSet1.Connection:= AdoConnection1;
  OpenDialog1.Filter := 'Text files only|*.txt';
end;

procedure TRepairCustomerFrm.btnFetchClick(Sender: TObject);
var
  qw, fdcount, rowid : Integer;
begin

   if edtFileExcel.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi File Extract Tidak Ditemukan !!!','Pilih Dahulu Lokasi File Extract !!!');
      Exit;
   end;
//   if cbSheet.Text='' then begin
//      DM.MyMsg(mmInformation,'Lokasi Sheet Tidak Ditemukan !!!','Pilih Dahulu Lokasi Sheet  !!!');
//      Exit;
//   end;

//
//  ConnectToExcel;
//  FetchData;
  if not FileExists(edtFileExcel.Text) then
    Exit;

  try

    sdfdtstOutlet.Close;
//    sdfdtstOutlet.Delimiter := '|';
    sdfdtstOutlet.FileName := Trim(edtFileExcel.Text);
    sdfdtstOutlet.Open;

    kmtMemorial.Close;
    kmtMemorial.Open;
    kmtMemorial.EmptyTable;
//    kmtMemorial.LoadFromDataSet(ADODataSet1, [mtcpoAppend]);

    sdfdtstOutlet.First;
    rowid := 0;
    while not sdfdtstOutlet.Eof do
    begin
      kmtMemorial.Append;


      if rowid = 0 then
      begin
        sdfdtstOutlet.Next;
        inc(rowid);
        Continue;
      end;

      fdcount := sdfdtstOutlet.Fields.Count;
      for qw := 0 to fdcount -1 do
      begin
        if qw = 1 then
          kmtMemorialF1.AsString := Trim(sdfdtstOutlet.Fields[qw].Value);

        if qw = 2 then
          kmtMemorialF2.AsString := Trim(sdfdtstOutlet.Fields[qw].Value);

        if qw = 3 then
          kmtMemorialF3.AsString := Trim(sdfdtstOutlet.Fields[qw].Value);

        if qw = 8 then
          kmtMemorialF4.AsString := Trim(sdfdtstOutlet.Fields[qw].Value);
      end;

      sdfdtstOutlet.Next;
    end;

    ImportItem;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
  end;
end;

procedure TRepairCustomerFrm.ImportItem;
var iq, i, cnt: Integer;
    s: String;
begin

  // delete old tmp data
  DM.PrepareQuery(oqExec);
  s:='delete from master.mrekanan_bku';
  DM.ExecQuery(oqExec,s);

  LblStatus.Caption:= 'Status : Hapus data temporary lama';

  try
    pgrsTotal.Min:= 0;
    pgrsTotal.Max:= 2;
    isProses:= False;
    pgrsTotal.Position:= 0;
    Application.ProcessMessages;

    LblStatus.Caption:= 'Status : Memulai proses perbaikan data master outlet';

    if kmtMemorial.RecordCount>0 then
        isProses:= True;

    if isProses then  begin
       oqITEM.Close;
       oqITEM.Open;
       DM.vSysDate.Close;
       DM.vSysDate.Open;
       pgrsProcess.Position:= 0;
       i:= 1;
       cnt:= kmtMemorial.RecordCount;
       kmtMemorial.First;

       while not kmtMemorial.Eof do begin
          oqITEM.Append;
          oqITEMid_rekanan.AsLargeInt:= sq_mrekanan_bku.GetNextValue;
          oqITEMkd_rekanan.AsString:= Trim(kmtMemorialF1.AsString);
          oqITEMnama_rekanan.AsString:= Trim(kmtMemorialF2.AsString);
          oqITEMalamat.AsString:= Trim(kmtMemorialF3.AsString);
          oqITEMtelephone.AsString:= trim(kmtMemorialF4.AsString);
          oqITEMusr_upd.AsString:= DM.UserConnect;
          oqITEMdt_upd.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
          oqITEM.Post;

          pgrsProcess.Position:= Trunc((i/cnt)*100);
          Application.ProcessMessages;
          i:= i+1;

          kmtMemorial.Next;
       end;

        pgrsTotal.Position:= 1;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data Item Sukses';

        DM.PrepareQuery(oqExec);
        s:= 'SELECT master.fn_proc_fixed_data_outlet()';
        DM.ExecQuery(oqExec,s);

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


end.

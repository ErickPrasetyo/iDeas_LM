unit U_RepairSales;

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
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, SdfData;

type
  TRepairSalesFrm = class(TForm)
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
    oqITEMid_division: TStringField;
    oqITEMdescription: TStringField;
    oqITEMusr_upd: TStringField;
    ADODataSet1F1: TWideStringField;
    ADODataSet1F2: TWideStringField;
    ADODataSet1F3: TWideStringField;
    kmtMemorialF1: TWideStringField;
    kmtMemorialF2: TWideStringField;
    kmtMemorialF3: TWideStringField;
    sdfdtstImportData: TSdfDataSet;
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
  RepairSalesFrm: TRepairSalesFrm;

implementation

uses U_DM;

{$R *.dfm}



procedure TRepairSalesFrm.ConnectToExcel;
var strConn :  widestring;
begin
//  strConn:='Provider='+Trim(StatusBar1.Panels[1].Text)+';' +
//           'Data Source=' + edtFileExcel.Text + ';' +
//           'Extended Properties="'+Trim(StatusBar1.Panels[3].Text)+'"';
//
//  AdoConnection1.Connected:=False;
//  AdoConnection1.ConnectionString:=strConn;
//  try
//    AdoConnection1.Open;
//
//    AdoConnection1.GetTableNames(cbSheet.Properties.Items,True);
//  except
//    ShowMessage('Unable to connect to Excel, make sure the workbook ' + edtFileExcel.Text + ' exist!');
//    raise;
//  end;
end;(*ConnectToExcel*)

procedure TRepairSalesFrm.FetchData;
begin
//  if not AdoConnection1.Connected then ConnectToExcel;
//
//  ADODataSet1.Close;
//  ADODataSet1.CommandText:=  'SELECT * FROM ['+cbSheet.Text+']';
//  try
//    ADODataSet1.Open;
//  except
//    ShowMessage('Unable to read data from Excel, make sure the query ' + edtFileExcel.Text + ' is meaningful!');
//    raise;
//  end;
end;


procedure TRepairSalesFrm.edtFileExcelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if  OpenDialog1.Execute then begin
       edtFileExcel.Text:= OpenDialog1.FileName;
//       if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TRepairSalesFrm.FormCreate(Sender: TObject);
begin
  OpenDialog1.Filter:= 'Text files only|*.txt';
//  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
//  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);
//  AdoConnection1.LoginPrompt:=False;
//  ADODataSet1.Connection:= AdoConnection1;
end;

procedure TRepairSalesFrm.btnFetchClick(Sender: TObject);
var qw, fdcount, rowid : Integer;
begin

   if edtFileExcel.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi File Extract Tidak Ditemukan !!!','Pilih Dahulu Lokasi File Extract !!!');
      Exit;
   end;
//   if cbSheet.Text='' then begin
//      DM.MyMsg(mmInformation,'Lokasi Sheet Tidak Ditemukan !!!','Pilih Dahulu Lokasi Sheet  !!!');
//      Exit;
//   end;


//  ConnectToExcel;
//  FetchData;
  try
    sdfdtstImportData.Close;
    sdfdtstImportData.FileName := Trim(edtFileExcel.Text);
    sdfdtstImportData.Open;

    kmtMemorial.Close;
    kmtMemorial.Open;
    kmtMemorial.EmptyTable;
//    kmtMemorial.LoadFromDataSet(ADODataSet1, [mtcpoAppend]);
    sdfdtstImportData.First;
    rowid := 0;

    while not sdfdtstImportData.Eof do begin

      kmtMemorial.Append;

      if rowid = 0 then begin
        sdfdtstImportData.Next;
        inc(rowid);
        Continue;
      end;

      fdcount := sdfdtstImportData.Fields.Count;
      for qw := 0 to fdcount -1 do begin

        if qw = 1 then
          kmtMemorialF1.AsString := Trim(sdfdtstImportData.Fields[qw].Value);

        if qw = 2 then
          kmtMemorialF2.AsString := Trim(sdfdtstImportData.Fields[qw].Value);

        if qw = 3 then
          kmtMemorialF3.AsString := Trim(sdfdtstImportData.Fields[qw].Value);

      end;

      sdfdtstImportData.Next;
    end;


    ImportItem;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
  end;
end;

procedure TRepairSalesFrm.ImportItem;
var iq, i, cnt: Integer;
    s: String;
begin

  // delete old tmp data
  DM.PrepareQuery(oqExec);
  s:='delete from master.mdivision_bku';
  DM.ExecQuery(oqExec,s);

  LblStatus.Caption:= 'Status : Hapus data temporary lama';

  try
    pgrsTotal.Min:= 0;
    pgrsTotal.Max:= 2;
    isProses:= False;
    pgrsTotal.Position:= 0;
    Application.ProcessMessages;

    LblStatus.Caption:= 'Status : Memulai proses perbaikan data master item';

    if kmtMemorial.RecordCount>0 then
        isProses:= True;

    if isProses then  begin
       oqITEM.Close;
       oqITEM.Open;
       pgrsProcess.Position:= 0;
       i:= 1;
       cnt:= kmtMemorial.RecordCount;
       kmtMemorial.First;

       while not kmtMemorial.Eof do begin
          oqITEM.Append;
          oqITEMid_division.AsString:= Trim(kmtMemorialF1.AsString);
          oqITEMdescription.AsString:= Trim(kmtMemorialF2.AsString);
          oqITEMusr_upd.AsString:= DM.UserConnect;
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
        s:= 'SELECT master.fn_proc_fixed_data_sales()';
        DM.ExecQuery(oqExec,s);

        pgrsTotal.Position:= 2;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses perbaikan data Sales Sukses';

    end
    else begin
        DM.MyMsg(mmError,'File Data Master Sales Tidak Bisa di Import !','Periksa ulang file Data !!!');
        Exit;
    end;

  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;

end;


end.
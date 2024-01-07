unit U_Repair;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TRepairFrm = class(TForm)
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
    oqITEMkd_item: TStringField;
    oqITEMnama_item: TStringField;
    oqITEMbiji_per_karton: TFloatField;
    oqITEMhrg_beli_karton: TFloatField;
    oqITEMhrg_jual_karton: TFloatField;
    oqITEMhrg_jual_lusin: TFloatField;
    oqITEMhrg_jual_biji: TFloatField;
    ADODataSet1F1: TWideStringField;
    ADODataSet1F2: TWideStringField;
    ADODataSet1F3: TWideStringField;
    ADODataSet1F4: TFloatField;
    ADODataSet1F5: TFloatField;
    ADODataSet1F6: TFloatField;
    ADODataSet1F7: TFloatField;
    kmtMemorialF1: TWideStringField;
    kmtMemorialF2: TWideStringField;
    kmtMemorialF3: TWideStringField;
    kmtMemorialF4: TFloatField;
    kmtMemorialF5: TFloatField;
    kmtMemorialF6: TFloatField;
    kmtMemorialF7: TFloatField;
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
  RepairFrm: TRepairFrm;

implementation

uses U_DM;

{$R *.dfm}



procedure TRepairFrm.ConnectToExcel;
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

procedure TRepairFrm.FetchData;
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


procedure TRepairFrm.edtFileExcelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if  OpenDialog1.Execute then begin
       edtFileExcel.Text:= OpenDialog1.FileName;
       if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TRepairFrm.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);
  AdoConnection1.LoginPrompt:=False;
  ADODataSet1.Connection:= AdoConnection1;
end;

procedure TRepairFrm.btnFetchClick(Sender: TObject);
begin

   if edtFileExcel.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi File Extract Tidak Ditemukan !!!','Pilih Dahulu Lokasi File Extract !!!');
      Exit;
   end;
   if cbSheet.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi Sheet Tidak Ditemukan !!!','Pilih Dahulu Lokasi Sheet  !!!');
      Exit;
   end;


  ConnectToExcel;
  FetchData;
  try

    kmtMemorial.Close;
    kmtMemorial.Open;
    kmtMemorial.EmptyTable;
    kmtMemorial.LoadFromDataSet(ADODataSet1, [mtcpoAppend]);

    ImportItem;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
  end;
end;

procedure TRepairFrm.ImportItem;
var iq, i, cnt: Integer;
    s: String;
begin

  // delete old tmp data
  DM.PrepareQuery(oqExec);
  s:='delete from master.item_bku';
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
          oqITEMkd_item.AsString:= Trim(kmtMemorialF1.AsString);
          oqITEMnama_item.AsString:= Trim(kmtMemorialF2.AsString);
          oqITEMbiji_per_karton.AsFloat:= StrToInt(copy(trim(kmtMemorialF3.AsString),1,3))*12+StrToInt(copy(trim(kmtMemorialF3.AsString),5,3));
          oqITEMhrg_beli_karton.AsFloat:= kmtMemorialF4.AsFloat;
          oqITEMhrg_jual_karton.AsFloat:= kmtMemorialF5.AsFloat;
          oqITEMhrg_jual_lusin.AsFloat:= kmtMemorialF6.AsFloat;
          oqITEMhrg_jual_biji.AsFloat:= kmtMemorialF7.AsFloat;
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
        s:= 'SELECT master.fn_proc_fixed_data_item()';
        DM.ExecQuery(oqExec,s);

        pgrsTotal.Position:= 2;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses perbaikan data Item Sukses';

    end
    else begin
        DM.MyMsg(mmError,'File Data MAster Item Tidak Bisa di Import !','Periksa ulang file Data !!!');
        Exit;
    end;

  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;

end;


end.

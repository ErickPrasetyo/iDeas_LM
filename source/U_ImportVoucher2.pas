unit U_ImportVoucher2;

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
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TImportVoucher2Frm = class(TForm)
    pnlTop: TSCPanel;
    lblHeader: TLabel;
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
    ADODataSet1F2: TWideStringField;
    ADODataSet1F3: TWideStringField;
    ADODataSet1F4: TWideStringField;
    ADODataSet1F5: TWideStringField;
    ADODataSet1F6: TWideStringField;
    ADODataSet1F7: TWideStringField;
    ADODataSet1F1: TWideStringField;
    kmtMemorialF1: TWideStringField;
    kmtMemorialF2: TWideStringField;
    kmtMemorialF3: TWideStringField;
    kmtMemorialF4: TWideStringField;
    kmtMemorialF5: TWideStringField;
    kmtMemorialF6: TWideStringField;
    kmtMemorialF7: TWideStringField;
    odsCheck: TZQuery;
    oqExec: TZQuery;
    oqVocer: TZQuery;
    btnImport: TSCButton;
    odsCheckString: TZQuery;
    odsCheckStringstr_cek: TStringField;
    pgcImport: TcxPageControl;
    tabImportData: TcxTabSheet;
    gridImport: TcxGrid;
    grdDBTV_Import: TcxGridDBTableView;
    grdDBTV_ImportF1: TcxGridDBColumn;
    grdDBTV_ImportF2: TcxGridDBColumn;
    grdDBTV_ImportF3: TcxGridDBColumn;
    grdDBTV_ImportF4: TcxGridDBColumn;
    grdDBTV_ImportF5: TcxGridDBColumn;
    grdDBTV_ImportF6: TcxGridDBColumn;
    grdDBTV_ImportF7: TcxGridDBColumn;
    grdLVL_Import: TcxGridLevel;
    dsError: TDataSource;
    Panel1: TPanel;
    LblStatus: TLabel;
    pgrsTotal: TSCProgress;
    sq_Vocer: TZSequence;
    pgrsProcess: TSCProgress;
    cbSheet: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btnInsertError: TSCButton;
    oqVocerid_vocer: TLargeintField;
    oqVocerno_vocer: TStringField;
    oqVocerno_invoice: TStringField;
    oqVocernilai: TFloatField;
    oqVocerpromo_id: TStringField;
    oqVocerkd_rekanan: TStringField;
    oqVocernama_rekanan: TStringField;
    oqVocerisupdate: TStringField;
    oqVocerdt_faktur: TDateTimeField;
    procedure edtFileExcelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnFetchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure tabImportDataShow(Sender: TObject);
  private
    { Private declarations }
    isError, isProses : boolean;
    vSeqImport : Int64;
    procedure ConnectToExcel;
    procedure FetchData;
    procedure ImportMaster;
    procedure GoToTheRealTable;
    function GetMonthNum(vMonth:string):integer ;
    function GetNilaiVoucher(vStr:string):Real ;
    function CekString(vString:string):Boolean ;
    function IsStrANumber(const S: string):Boolean ;
    procedure setButton(state:string);


  public
    vid_supplier : string;
    { Public declarations }
  end;

var
  ImportVoucher2Frm: TImportVoucher2Frm;

implementation

uses U_DM;

{$R *.dfm}

function TImportVoucher2Frm.GetNilaiVoucher(vStr:string):Real ;
var iq : integer;
    vResult : String;
begin
   Result:= 0;
   vResult:= '';
   try
     for iq := 1 to length(vStr)  do begin
         if (copy(vStr,iq,1)='0') or (copy(vStr,iq,1)='1') or (copy(vStr,iq,1)='2') or
            (copy(vStr,iq,1)='3') or (copy(vStr,iq,1)='4') or (copy(vStr,iq,1)='5') or
            (copy(vStr,iq,1)='6') or (copy(vStr,iq,1)='7') or (copy(vStr,iq,1)='8') or
            (copy(vStr,iq,1)='9') then begin
             vResult:= vResult+(copy(vStr,iq,1));
         end;

     end;
     Result:= StrToFloat(vResult);
   except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

function TImportVoucher2Frm.GetMonthNum(vMonth:String):integer;
begin
   Result:= 0;

   if vMonth='Jan' then Result:=1
   else
   if vMonth='Feb' then Result:=2
   else
   if vMonth='Mar' then Result:=3
   else
   if vMonth='Apr' then Result:=4
   else
   if vMonth='Mei' then Result:=5
   else
   if vMonth='Jun' then Result:=6
   else
   if vMonth='Jul' then Result:=7
   else
   if vMonth='Agt' then Result:=8
   else
   if vMonth='Sep' then Result:=9
   else
   if vMonth='Okt' then Result:=10
   else
   if vMonth='Nop' then Result:=11
   else
   if vMonth='Dec' then Result:=12;
end;

function TImportVoucher2Frm.CekString(vString:string):Boolean ;
begin
   Result:= True;

   try
     odsCheckString.Close;
     odsCheckString.Open;
     odsCheckString.First;
     while not odsCheckString.Eof do begin
       if (UpperCase(vString)=UpperCase(odsCheckStringstr_cek.AsString)) or (vString='') then begin
          Result:= False;
          Exit;
       end
       else odsCheckString.Next;
     end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

function TImportVoucher2Frm.IsStrANumber(const S: string):Boolean ;
begin
 Result := True;
  try
    StrToInt(S);
  except
    Result := False;
  end;
end;

procedure TImportVoucher2Frm.setButton(state:string);
begin
   if state='F' then begin
      btnFetch.Visible:= True;
      btnImport.Visible:= False;
      btnInsertError.Visible:= False;
   end
   else
   if state='I' then begin
      btnFetch.Visible:= False;
      btnImport.Visible:= True;
      btnInsertError.Visible:= False;

   end
   else
   if state='E' then begin
      btnFetch.Visible:= False;
      btnImport.Visible:= False;
      btnInsertError.Visible:= True;
   end;
end;


procedure TImportVoucher2Frm.ConnectToExcel;
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

procedure TImportVoucher2Frm.FetchData;
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


procedure TImportVoucher2Frm.edtFileExcelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if  OpenDialog1.Execute then begin
       edtFileExcel.Text:= OpenDialog1.FileName;
       if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TImportVoucher2Frm.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);
  AdoConnection1.LoginPrompt:=False;
  ADODataSet1.Connection:= AdoConnection1;
end;

procedure TImportVoucher2Frm.btnFetchClick(Sender: TObject);
begin

   if edtFileExcel.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi File Extract Voucher Tidak Ditemukan !!!','Pilih Dahulu Lokasi File Extract Voucher !!!');
      Exit;
   end;
   if cbSheet.Text='' then begin
      DM.MyMsg(mmInformation,'Lokasi Sheet Voucher Tidak Ditemukan !!!','Pilih Dahulu Lokasi Sheet Voucher !!!');
      Exit;
   end;


  ConnectToExcel;
  FetchData;
  try

    kmtMemorial.Close;
    kmtMemorial.Open;
    kmtMemorial.EmptyTable;
    kmtMemorial.LoadFromDataSet(ADODataSet1, [mtcpoAppend]);

    if ADOConnection1.Connected then ADOConnection1.Close;
    setButton('I');
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
  end;
end;

procedure TImportVoucher2Frm.ImportMaster;
var
    dtF, dtT : TDateTime;
    iq, i, cnt: Integer;
    isVocer : Boolean;
    s, opr, F1str, vGroupVocer, vPromoID, vNilaiStr, vOutlet, vNOutlet, vNoVocer, vInvoice, vTglInvoice : string;
    vNilai : Double;
begin
  isError := False;
  // delete old tmp data
  DM.PrepareQuery(oqExec);
  s:='delete from transaksi.vocer';
  DM.ExecQuery(oqExec,s);

  LblStatus.Caption:= 'Status : Hapus data temporary lama';

  DM.vSysDate.Close;
  DM.vSysDate.Open;
  opr:= DM.UserConnect;
  vSeqImport:= sq_Vocer.GetNextValue;

  try
    pgrsTotal.Min:= 0;
    pgrsTotal.Max:= 2;
    isProses:= False;
    pgrsTotal.Position:= 0;
    Application.ProcessMessages;

// ---------------------------------------------------------------------------------------------------  AP
    LblStatus.Caption:= 'Status : Memulai proses import Voucher';

    if kmtMemorial.RecordCount>0 then
       isProses:= True;

    if isProses then begin

          LblStatus.Caption:= 'Status : Import Data Master';

          oqVocer.Close;
          oqVocer.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= kmtMemorial.RecordCount;
          vGroupVocer:= '';
          vPromoID:= '';
          isVocer:= False;
          kmtMemorial.First;

          while not kmtMemorial.Eof do begin
              for iq:= 0  to kmtMemorial.Fields.Count-1  do begin
                  if iq=0 then begin
                      if UpperCase(copy(kmtMemorial.Fields[iq].AsString,1,6))=UpperCase('MASTER') then begin
                           F1str:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                           vGroupVocer:= Trim(copy(F1str,36,7));
                      end
                      else
                      if UpperCase(copy(kmtMemorial.Fields[iq].AsString,1,5))=UpperCase('PROMO') then begin
                           F1str:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                           vPromoID:= Trim(copy(F1str,9,8));
                           vNilaiStr:= Trim(copy(F1str,33,7));
                           vNilai:= GetNilaiVoucher(vNilaiStr);

                      end;
                   //   isVocer:= (StringReplace(copy(F1str,1,8),' ','',[rfReplaceAll]))='''1';
                     if (StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]))<>'' then begin
                          F1str:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                          //isVocer:= CekString(StringReplace(copy(F1str,1,8),' ','',[rfReplaceAll]));
                          isVocer:= IsStrANumber(F1str);
                     end;
                  end
                  else
                  if iq=1 then begin
                      if isVocer then begin
                           vOutlet:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                      end
                  end
                  else
                  if iq=2 then begin
                      if isVocer then begin
                         vNOutlet:=  Trim(kmtMemorial.Fields[iq].AsString);
                      end
                  end
                  else
                  if iq=5  then begin
                      if isVocer then begin
                           vNoVocer:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                      end
                  end
                  else
                  if iq=6  then begin
                      if isVocer then begin
                           vInvoice:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                      end
                  end
//                  else
//                  if iq=5  then begin
//                      if isVocer then begin
//                           F1str:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
//                           dtF:= EncodeDate(StrToInt(copy(F1str,6,4)),
//                                                     GetMonthNum(copy(F1str,3,3)),
//                                                      StrToInt(copy(F1str,1,2)));
//                      end
//                  end

              end; // end of for do
            if isVocer then begin
               oqVocer.Append;
               oqVocerid_vocer.AsLargeInt:= sq_Vocer.GetNextValue;
               oqVocerno_vocer.AsString:= Trim(vNoVocer);
               oqVocerno_invoice.AsString:= Trim(vInvoice);
               oqVocernilai.AsFloat:= vNilai;
               oqVocerpromo_id.AsString:= vPromoID;
               oqVocerkd_rekanan.AsString:= vOutlet;
               oqVocernama_rekanan.AsString:= vNOutlet;
               oqVocerisupdate.AsString:= '0';
  //             oqVocerdt_faktur.AsDateTime:= dtF;
               oqVocer.Post;
            end;


            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            kmtMemorial.Next;
          end;      // end of while not eof

        pgrsProcess.Position:= 100;

        pgrsTotal.Position:= 1;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data Master Sukses';
    end
    else begin
        DM.MyMsg(mmError,'File Master Tidak Bisa di Import !','Periksa ulang file Vocer !!!');
        Exit;
    end;
    // end of isProses

    Application.ProcessMessages;
    LblStatus.Caption:= 'Update Faktur Penjualan';

    GoToTheRealTable;


     DM.PrepareQuery(oqExec);
     s:= 'select count(*) as vcount from transaksi.vocer where isupdate='+QuotedStr('1');
     DM.OpenQuery(oqExec,s);

     setButton('F');
    pgrsTotal.Position:= 2;
    Application.ProcessMessages;
    LblStatus.Caption:= 'Status : Faktur Penjualan ter-update '+oqExec.FieldByName('vcount').AsString;

    // ---------------------------------------------------------------------------------------------------  END OF AP


  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;

end;



procedure TImportVoucher2Frm.GoToTheRealTable;
var s : String;
begin
  try
     DM.PrepareQuery(oqExec);
     s:= 'select transaksi.fn_update_nota_voucher()';
     DM.ExecQuery(oqExec,s);
     LblStatus.Caption:= 'Status : Proses Update Faktur Penjualan Sukses ';

  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;

procedure TImportVoucher2Frm.FormShow(Sender: TObject);
begin
  LblStatus.Caption:= '';
  lblHeader.Caption:= 'Import Data Voucher Scylla';
  pgcImport.HideTabs:= True;
  pgcImport.ActivePageIndex:=0;
  setButton('F');


end;

procedure TImportVoucher2Frm.btnImportClick(Sender: TObject);
begin
  if pgcImport.ActivePageIndex=0 then begin
     ImportMaster;
  end
  else begin
     setButton('E');
  end;
end;

procedure TImportVoucher2Frm.tabImportDataShow(Sender: TObject);
begin
  lblHeader.Caption:= 'Import Data Voucher';
end;


end.

unit U_ImportReturBungah;

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
  TImportReturBungahFrm = class(TForm)
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
    odsCheck: TZQuery;
    oqExec: TZQuery;
    sq_AP_DETAIL: TZSequence;
    oqAP: TZQuery;
    oqAPno_faktur: TStringField;
    oqAPdt_faktur: TDateTimeField;
    oqAPdt_jth_tempo: TDateTimeField;
    oqAPsub_total: TFloatField;
    oqAPppn_rp: TFloatField;
    oqAPtotal: TFloatField;
    oqAP_Detail: TZQuery;
    oqAP_Detailno_detail: TLargeintField;
    oqAP_Detailkd_item: TStringField;
    oqAP_Detailnama_item: TStringField;
    oqAP_Detailhrg_beli: TFloatField;
    oqAP_Detailqty_karton: TFloatField;
    oqAP_Detailqty_lusin: TFloatField;
    oqAP_Detaildisc_psn: TFloatField;
    oqAP_Detaildisc_rp: TFloatField;
    oqAP_Detailno_faktur: TStringField;
    btnImport: TSCButton;
    odsCheckString: TZQuery;
    odsCheckStringstr_cek: TStringField;
    oqAPopr: TStringField;
    pgcImport: TcxPageControl;
    tabImportData: TcxTabSheet;
    tabImportError: TcxTabSheet;
    gridImport: TcxGrid;
    grdDBTV_Import: TcxGridDBTableView;
    grdDBTV_ImportF1: TcxGridDBColumn;
    grdDBTV_ImportF2: TcxGridDBColumn;
    grdDBTV_ImportF3: TcxGridDBColumn;
    grdDBTV_ImportF4: TcxGridDBColumn;
    grdDBTV_ImportF5: TcxGridDBColumn;
    grdLVL_Import: TcxGridLevel;
    grdDeliveryPlace: TcxGrid;
    grddbtv_Master: TcxGridDBTableView;
    grddbtv_Mastertable_name: TcxGridDBColumn;
    grddbtv_Masterfield_name: TcxGridDBColumn;
    grdDeliveryPlaceLevel1: TcxGridLevel;
    QTableError: TZQuery;
    dsError: TDataSource;
    QTableErrorid_import_ap_error: TLargeintField;
    QTableErrornama_tabel: TStringField;
    QTableErrornama_field: TStringField;
    QTableErrorid_value: TStringField;
    QTableErrordiskripsi: TStringField;
    QTableErrornum_value: TFloatField;
    grddbtv_Masterid_value: TcxGridDBColumn;
    grddbtv_Masterdiskripsi: TcxGridDBColumn;
    grddbtv_Masternum_value: TcxGridDBColumn;
    Panel1: TPanel;
    LblStatus: TLabel;
    pgrsTotal: TSCProgress;
    Label14: TLabel;
    Label19: TLabel;
    edtSupplier: TcxButtonEdit;
    LblSupplier: TLabel;
    oqAPkd_rekanan: TStringField;
    sq_IMPORT: TZSequence;
    oqAPid_import: TLargeintField;
    oqAP_Detailid_import: TLargeintField;
    pgrsProcess: TSCProgress;
    cbSheet: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    oqAPjenis: TStringField;
    btnInsertError: TSCButton;
    oqAPdisc_psn: TFloatField;
    edtJenis: TcxTextEdit;
    kmtMemorialF1: TWideStringField;
    kmtMemorialF2: TWideStringField;
    kmtMemorialF3: TWideStringField;
    kmtMemorialF4: TWideStringField;
    kmtMemorialF5: TWideStringField;
    ADODataSet1F1: TWideStringField;
    ADODataSet1F2: TWideStringField;
    ADODataSet1F3: TWideStringField;
    ADODataSet1F4: TWideStringField;
    ADODataSet1F5: TWideStringField;
    oqAPketerangan: TStringField;
    oqAP_Detailqty_biji: TFloatField;
    oqAP_Detailsub_total: TFloatField;
    procedure edtFileExcelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnFetchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tabImportErrorShow(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure edtSupplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tabImportDataShow(Sender: TObject);
    procedure btnInsertErrorClick(Sender: TObject);
  private
    { Private declarations }
    isError, isProses : boolean;
    vSeqImport : Int64;
    procedure ConnectToExcel;
    procedure FetchData;
    procedure ImportMaster;
    procedure ImportDetail;
    procedure ImportError;
    procedure GoToTheRealTable;
    function GetMonthNum(vMonth:string):integer ;
    function CekString(vString:string):Boolean ;
    function FixedErrorData:Boolean;
    procedure setButton(state:string);


  public
    vid_supplier : string;
    { Public declarations }
  end;

var
  ImportReturBungahFrm: TImportReturBungahFrm;

implementation

uses U_DM, U_CariRekanan;

{$R *.dfm}

function TImportReturBungahFrm.GetMonthNum(vMonth:String):integer;
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

function TImportReturBungahFrm.CekString(vString:string):Boolean ;
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

procedure TImportReturBungahFrm.setButton(state:string);
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


procedure TImportReturBungahFrm.ConnectToExcel;
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

procedure TImportReturBungahFrm.FetchData;
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


procedure TImportReturBungahFrm.edtFileExcelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if  OpenDialog1.Execute then begin
       edtFileExcel.Text:= OpenDialog1.FileName;
       if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TImportReturBungahFrm.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);
  AdoConnection1.LoginPrompt:=False;
  ADODataSet1.Connection:= AdoConnection1;
end;

procedure TImportReturBungahFrm.btnFetchClick(Sender: TObject);
begin

   if edtJenis.Text='' then begin
      DM.MyMsg(mmInformation,'Jenis Faktur Harus Diisi !!!','Pilih Dahulu Jenis Faktur !!!');
      Exit;
   end;
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

procedure TImportReturBungahFrm.ImportMaster;
var
    dtF : TDateTime;
    iq, i, cnt: Integer;
    isNewNota : boolean;
    s, opr, F1str, vNoNota, vKeterangan : string;
    vSub, vPPN, vTot : Double;
begin
  isError := False;
  // delete old tmp data
  DM.PrepareQuery(oqExec);
  s:='select transaksi.fn_delete_ap()';
  DM.ExecQuery(oqExec,s);

  LblStatus.Caption:= 'Status : Hapus data temporary lama';

  DM.vSysDate.Close;
  DM.vSysDate.Open;
  opr:= DM.UserConnect;
  vSeqImport:= sq_IMPORT.GetNextValue;

  try
    pgrsTotal.Min:= 0;
    pgrsTotal.Max:= 2;
    isProses:= False;
    pgrsTotal.Position:= 0;
    Application.ProcessMessages;

// ---------------------------------------------------------------------------------------------------  AP
    LblStatus.Caption:= 'Status : Memulai proses import AP';

    if kmtMemorial.RecordCount>0 then
       isProses:= True;

    if isProses then begin

          LblStatus.Caption:= 'Status : Import AP';

          oqAP.Close;
          oqAP.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= kmtMemorial.RecordCount;
          vNoNota:= '';
          kmtMemorial.First;

          while not kmtMemorial.Eof do begin
              isNewNota:= False;
              for iq:= 0  to kmtMemorial.Fields.Count-1  do begin
                  if iq=0 then begin
                      if UpperCase(copy(kmtMemorial.Fields[iq].AsString,1,11))=UpperCase('NO. DOKUMEN') then begin
                           F1str:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                           vNoNota:= Trim(copy(F1str,12,8));
                           dtF:= EncodeDate(StrToInt(copy(F1str,33,4)),
                                                     GetMonthNum(copy(F1str,30,3)),
                                                      StrToInt(copy(F1str,28,2)));
                      end
                      else
                      if UpperCase(copy(kmtMemorial.Fields[iq].AsString,1,10))=UpperCase('KETERANGAN') then begin
                           vKeterangan:= copy(kmtMemorial.Fields[iq].AsString,15,length(kmtMemorial.Fields[iq].AsString))
                      end


                  end
                  else
                  if iq=3 then begin
                      if UpperCase(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]))=UpperCase('SUBTOTAL') then begin
                           vSub:= StrToFloat(StringReplace(kmtMemorial.Fields[4].AsString,' ','',[rfReplaceAll]));
                      end
                      else
                      if UpperCase(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]))=UpperCase('PPN') then begin
                           vPPN:= StrToFloat(StringReplace(kmtMemorial.Fields[4].AsString,' ','',[rfReplaceAll]));
                      end
                      else
                      if UpperCase(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]))=UpperCase('TOTAL') then begin
                           vTot:= StrToFloat(StringReplace(kmtMemorial.Fields[4].AsString,' ','',[rfReplaceAll]));
                           isNewNota:= True;
                      end;

                  end
;
              end; // end of for do
            if isNewNota then begin
               oqAP.Append;
               oqAPno_faktur.AsString:= vNoNota;
               oqAPdt_faktur.AsDateTime:= dtF;
//               oqAPdt_jth_tempo.AsDateTime:= dtT;
               oqAPdisc_psn.AsFloat:= 0;
               oqAPsub_total.AsFloat:= vSub;
               oqAPppn_rp.AsFloat:= vPPN;
               oqAPtotal.AsFloat:= vTot;
               oqAPopr.AsString:= opr;
               oqAPkd_rekanan.AsString:= edtSupplier.Text;
               oqAPjenis.AsString:= TRIM(edtJenis.Text);
               oqAPid_import.AsLargeInt:= vSeqImport;
               oqAPketerangan.AsString:= vKeterangan;
               oqAP.Post;
            end;
            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            kmtMemorial.Next;
          end;      // end of while not eof

        pgrsProcess.Position:= 100;

        pgrsTotal.Position:= 1;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data AP Sukses';
    end
    else begin
        DM.MyMsg(mmError,'File AP Tidak Bisa di Import !','Periksa ulang file AP !!!');
        Exit;
    end;
    // end of isProses

// ---------------------------------------------------------------------------------------------------  END OF AP


  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;

end;

procedure TImportReturBungahFrm.ImportDetail;
var
    iq, i, cnt, p: Integer;
    isPCCode : boolean;
    s, F1str, vNoNota, vPCCode, vNamaItem, strQTY, s1 : string;
    vHrg, vQtyKarton, vQtyLusin, vQtyBiji, vSubTotal  : Double;
begin
  isError := False;


  try
    isProses:= False;
// ---------------------------------------------------------------------------------------------------  AP DETAIL
    LblStatus.Caption:= 'Status : Memulai proses import AP DETAIL';

    if kmtMemorial.RecordCount>0 then
       isProses:= True;

    if isProses then begin

          LblStatus.Caption:= 'Status : Import AP DETAIL';

          oqAP_Detail.Close;
          oqAP_Detail.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= kmtMemorial.RecordCount;
          vNoNota:= '';
          kmtMemorial.First;
          isPCCode:= False;
          while not kmtMemorial.Eof do begin
              for iq:= 0  to kmtMemorial.Fields.Count-1  do begin
                  if iq=0 then begin
                      F1str:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                      if UpperCase(copy(kmtMemorial.Fields[iq].AsString,1,11))=UpperCase('NO. DOKUMEN') then begin
                           vNoNota:= Trim(copy(F1str,12,8));
                      end
                      else begin
                          vNoNota:= vNoNota;
                      end;

                      isPCCode:= CekString(StringReplace(copy(F1str,1,8),' ','',[rfReplaceAll]));

                      if isPCCode then begin
                           DM.PrepareQuery(odsCheck);
                           s:= 'select * from master.item where kd_item='+QuotedStr(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
                           DM.OpenQuery(odsCheck,s);
                           if odsCheck.RecordCount=0 then begin
                              isError:= True;
                              DM.PrepareQuery(oqExec);
                              s:= 'insert into transaksi.import_ap_error (id_import_ap_error, nama_tabel, nama_field, id_value, diskripsi, num_value)';
                              s:= s+' values (nextval('+QuotedStr('transaksi.sq_import_error_ap')+')';
                              s:= s+', '+QuotedStr('master.item');
                              s:= s+', '+QuotedStr('kd_item');
                              s:= s+', '+QuotedStr(trim(kmtMemorial.Fields[iq].AsString));
                              s:= s+', '+QuotedStr(kmtMemorial.Fields[1].AsString);
                              s:= s+', '+StringReplace(kmtMemorial.Fields[2].AsString,' ','',[rfReplaceAll]);
                              s:= s+')';
                              DM.ExecQuery(oqExec,s);
                           end;
                         vPCCode:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                      end;
                  end
                  else
                  if iq=1 then begin
                      if isPCCode then begin
                           vNamaItem:= Trim(kmtMemorial.Fields[iq].AsString);
                      end
                  end
                  else
                  if iq=2  then begin
                      if isPCCode then begin
                           s:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                           s1:= '.';
                           if (copy(s,1,2)='0.') then begin
                                strQTY:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                                p:= pos(s1,strQty);
                                vQtyKarton:= StrToFloat(copy(strQTY,1,(p-1)));
                                vQtyLusin:= StrToFloat(copy(strQTY,p+1,3));
                                vQtyBiji:= StrToFloat(copy(strQTY,p+5,3));
                           end
                           else begin
                               vQtyKarton:= StrToFloat(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
                               vQtyLusin:= 0;
                               vQtyBiji:= 0
                           end;
                      end
                  end
                  else
                  if iq=3 then begin
                      if isPCCode then begin
                         vHrg:= StrToFloat(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
                      end
                  end
                  else
                  if iq=4  then begin
                      if isPCCode then begin
                           vSubTotal:= StrToFloat(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
                      end
                  end;
//                  else
//                  if iq=5  then begin
//                      if isPCCode then begin
//                           vDiscRp:= StrToFloat(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
//                      end
//                  end;
              end; // end of for do
            if isPCCode then begin
               oqAP_Detail.Append;
               oqAP_Detailno_detail.AsLargeInt:= sq_AP_DETAIL.GetNextValue;
               oqAP_Detailno_faktur.AsString:= vNoNota;
               oqAP_Detailkd_item.AsString:= vPCCode;
               oqAP_Detailnama_item.AsString:= vNamaItem;
               oqAP_Detailhrg_beli.AsFloat:= vHrg;
               oqAP_Detailqty_karton.AsFloat:= vQtyKarton;
               oqAP_Detailqty_lusin.AsFloat:= vQtyLusin;
               oqAP_Detailqty_biji.AsFloat:= vQtyBiji;
               oqAP_Detailsub_total.AsFloat:= vSubTotal;
               oqAP_Detaildisc_psn.AsFloat:= 0;
               oqAP_Detaildisc_rp.AsFloat:= 0;
               oqAP_Detailid_import.AsLargeInt:= vSeqImport;
               oqAP_Detail.Post;
            end;
            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            kmtMemorial.Next;
          end;      // end of while not eof

        pgrsProcess.Position:= 100;

        pgrsTotal.Position:= 2;
        Application.ProcessMessages;
        LblStatus.Caption:= 'Status : Proses Import data AP DETAIL Sukses';
    end
    else begin
        DM.MyMsg(mmError,'File AP Tidak Bisa di Import !','Periksa ulang file AP DETAIL !!!');
        Exit;
    end;

    GoToTheRealTable;

  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;

procedure TImportReturBungahFrm.ImportError;
var s : String;
begin
     LblStatus.Caption:= 'Memulai proses Import Data ';

    try
        DM.PrepareQuery(oqExec);
        s:= 'SELECT transaksi.proc_ins_new_ap_item()';
        DM.ExecQuery(oqExec,s);
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;

    LblStatus.Caption:= 'Proses IMPORT DATA ERROR sukses ...!!'+'  '+'Ulangi lagi proses Import data ';
    pgcImport.ActivePageIndex:= 0;
end;


procedure TImportReturBungahFrm.GoToTheRealTable;
var s : String;
begin
  try
       if not isError then begin
         DM.PrepareQuery(oqExec);
         s:= 'select transaksi.fn_proc_insert_ap_tmp()';
         DM.ExecQuery(oqExec,s);
         LblStatus.Caption:= 'Status : Proses Import data Sukses !!!';
       end
       else begin
          LblStatus.Caption:= 'Status : Proses Import Gagal !!!';
          pgcImport.ActivePageIndex:= 1;
       end;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;

procedure TImportReturBungahFrm.FormShow(Sender: TObject);
begin
  LblStatus.Caption:= '';
  lblHeader.Caption:= 'Import Data Retur Pembelian Bungah';
  pgcImport.HideTabs:= True;
  pgcImport.ActivePageIndex:=0;
  edtSupplier.Text:= '00001';
  edtJenis.Text:= 'RETUR PEMBELIAN';
  LblSupplier.Caption:= 'AFANDISON, PT.- BUNGAH';
  setButton('F');
  edtSupplier.Properties.ReadOnly:= True;
  edtSupplier.Properties.Buttons[0].Visible:= False;
end;

procedure TImportReturBungahFrm.tabImportErrorShow(Sender: TObject);
begin
   try
     QTableError.Close;
     QTableError.Open;
   except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
   lblHeader.Caption:= 'Import Data Error';
   LblStatus.Caption:= 'Jumlah Data Error : '+IntToStr(QTableError.RecordCount);
   setButton('E');
end;

procedure TImportReturBungahFrm.btnImportClick(Sender: TObject);
begin
  if pgcImport.ActivePageIndex=0 then begin
     ImportMaster;
     ImportDetail;
  end
  else begin
     ImportError;
     setButton('E');
  end;
end;

procedure TImportReturBungahFrm.edtSupplierPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var f:TCariRekananFrm;
begin
   try
     f:= TCariRekananFrm.Create(Application);
     f.vMode:= 0;
     f.vJenis:= 'SUPPLIER';
     if f.ShowModal=mrOK then begin
        edtSupplier.Text:= f.qRekanankd_rekanan.AsString;
        LblSupplier.Caption:= f.qRekanannama_rekanan.AsString;
     end;
   finally
     f.Free;
   end;
end;

procedure TImportReturBungahFrm.tabImportDataShow(Sender: TObject);
begin
  lblHeader.Caption:= 'Import Data Faktur Pembelian';
end;

procedure TImportReturBungahFrm.btnInsertErrorClick(Sender: TObject);
begin
   if FixedErrorData then begin
      LblStatus.Caption:= 'Proses PERBAIKAN DATA ERROR sukses ...!!  Ulangi lagi proses Import data ';
      pgcImport.ActivePageIndex:= 0;
      lblHeader.Caption:= 'Import Data Faktur Pembelian ';
      setButton('I');
   end
   else begin
      LblStatus.Caption:= 'Proses PERBAIKAN DATA ERROR Tidak sukses ...!!  Hubungi ADMINISTRATOR';
      Exit;
   end;
end;

function TImportReturBungahFrm.FixedErrorData:Boolean;
var s : String;
   i, cnt: Integer;
begin
     Result:= False;

     pgrsTotal.Position:=0;
     pgrsTotal.Max:=1;
     pgrsProcess.Position:= 0;

     try
       DM.PrepareQuery(odsCheck);
       s:= 'select distinct(nama_tabel) as nama_tabel FROM transaksi.import_ap_error';
       DM.OpenQuery(odsCheck,s);
       i:= 1;
       cnt:= odsCheck.RecordCount;
       LblStatus.Caption:= 'Memulai Proses Perbaikan Data ';

       odsCheck.First;
       while not odsCheck.Eof do begin
          try

               if Trim(odsCheck.FieldbyName('nama_tabel').AsString)='master.item' then begin
                  DM.PrepareQuery(oqExec);
                  s:= 'SELECT transaksi.proc_ins_new_ap_item()';
                  DM.ExecQuery(oqExec,s);
               end;
          except
            on E: Exception do
              DM.MyMsg(mmError,'Error has been encountered !',E.Message)
          end;
       pgrsProcess.Position:= Trunc((i/cnt)*100);
       LblStatus.Caption:= 'Import ke '+IntToStr(i)+' dari '+IntToStr(cnt)+' data';
       Application.ProcessMessages;
       i:= i+1;

       odsCheck.Next;
       end;

      pgrsProcess.Position:= 100;
      pgrsTotal.Position:= 1;
      Application.ProcessMessages;
      Result:= True;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Result:= False;
      end;
    end;


end;

end.

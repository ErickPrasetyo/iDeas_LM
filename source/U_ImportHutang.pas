unit U_ImportHutang;

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
  TImportHutangFrm = class(TForm)
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
    sq_AP_DETAIL: TZSequence;
    oqAP: TZQuery;
    oqAPno_faktur: TStringField;
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
    grdDBTV_ImportF6: TcxGridDBColumn;
    grdDBTV_ImportF7: TcxGridDBColumn;
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
    oqAPdisc_psn: TFloatField;
    edtJenis: TcxTextEdit;
    oqAPketerangan: TStringField;
    oqAPdt_faktur: TStringField;
    oqAPdt_jth_tempo: TStringField;
    qryCekFaktur: TZQuery;
    qryCekFakturjumlah: TIntegerField;
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
    function CekString(vString:string):Boolean ;
    function FixedErrorData:Boolean;
    procedure setButton(state:string);


  public
    vid_supplier : string;
    { Public declarations }
  end;

var
  ImportHutangFrm: TImportHutangFrm;

implementation

uses U_DM, U_CariRekanan;

{$R *.dfm}

function TImportHutangFrm.CekString(vString:string):Boolean ;
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

procedure TImportHutangFrm.setButton(state:string);
begin
   if state='F' then begin
      btnFetch.Enabled:= True;
      btnImport.Enabled:= False;
   end
   else
   if state='I' then begin
      btnFetch.Enabled:= False;
      btnImport.Caption:= 'Import';
      btnImport.Enabled:= True;

   end
   else
   if state='E' then begin
      btnFetch.Enabled:= False;
      btnImport.Caption:= 'Perbaiki Data';
      btnImport.Enabled:= True;
   end;
end;


procedure TImportHutangFrm.ConnectToExcel;
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

procedure TImportHutangFrm.FetchData;
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


procedure TImportHutangFrm.edtFileExcelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if  OpenDialog1.Execute then begin
       edtFileExcel.Text:= OpenDialog1.FileName;
       if not AdoConnection1.Connected then ConnectToExcel;
   end;
end;

procedure TImportHutangFrm.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= DM.GetParamstr(15);
  StatusBar1.Panels[3].Text:= DM.GetParamstr(16);
  AdoConnection1.LoginPrompt:=False;
  ADODataSet1.Connection:= AdoConnection1;
end;

procedure TImportHutangFrm.btnFetchClick(Sender: TObject);
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

procedure TImportHutangFrm.ImportMaster;
var
//    dtF, dtT : TDateTime;
    iq, i, cnt: Integer;
    isNewNota : boolean;
    s, opr, F1str, vNoNota, dtF, dtT : string;
    vSub, vPPN, vTot, vDisc : Double;
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
                      if UpperCase(copy(kmtMemorial.Fields[iq].AsString,1,9))=UpperCase('No.Faktur') then begin
                           F1str:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                           vNoNota:= Trim(copy(F1str,11,10));
                           dtF:= copy(F1str,31,9);
                           dtT:= copy(F1str,50,9);
                      end

                  end
                  else
                  if iq=3 then begin
                      if UpperCase(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]))=UpperCase('SubTota') then begin
                           vDisc:= StrToFloat(StringReplace(kmtMemorial.Fields[5].AsString,' ','',[rfReplaceAll]));
                           vSub:= StrToFloat(StringReplace(kmtMemorial.Fields[6].AsString,' ','',[rfReplaceAll]));
                      end
                  end
                  else
                  if iq=4 then begin
                      if UpperCase(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]))=UpperCase('Tota') then begin
                           vTot:= StrToFloat(StringReplace(kmtMemorial.Fields[6].AsString,' ','',[rfReplaceAll]));
                           isNewNota:= True;
                      end;
                  end
                  else
                  if iq=5  then begin
                      if UpperCase(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]))=UpperCase('PPN:') then begin
                           vPPN:= StrToFloat(StringReplace(kmtMemorial.Fields[6].AsString,' ','',[rfReplaceAll]));
                      end
                  end;
              end; // end of for do
            if isNewNota then begin
               oqAP.Append;
               oqAPno_faktur.AsString:= vNoNota;
               oqAPdt_faktur.AsString:= dtF;
               oqAPdt_jth_tempo.AsString:= dtT;
               oqAPdisc_psn.AsFloat:= vDisc;
               oqAPsub_total.AsFloat:= vSub;
               oqAPppn_rp.AsFloat:= vPPN;
               oqAPtotal.AsFloat:= vTot;
               oqAPopr.AsString:= opr;
               oqAPkd_rekanan.AsString:= edtSupplier.Text;
               oqAPjenis.AsString:= TRIM(edtJenis.Text);
               oqAPid_import.AsLargeInt:= vSeqImport;
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

procedure TImportHutangFrm.ImportDetail;
var
    iq, i, cnt: Integer;
    isPCCode : boolean;
    s, F1str, vNoNota, vPCCode, vNamaItem, vDiscStr : string;
     vHrg, vQty, vDiscPsn, vDiscRp  : Double;
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
                      if UpperCase(copy(kmtMemorial.Fields[iq].AsString,1,9))=UpperCase('No.Faktur') then begin
                           vNoNota:= Trim(copy(F1str,11,10));
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
                  if iq=2 then begin
                      if isPCCode then begin
                         vHrg:= StrToFloat(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
                      end
                  end
                  else
                  if iq=3  then begin
                      if isPCCode then begin
                           vQty:= StrToFloat(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
                      end
                  end
                  else
                  if iq=4  then begin
                      if isPCCode then begin
                           vDiscStr:= StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]);
                      end
                  end
                  else
                  if iq=5  then begin
                      if isPCCode then begin
                           vDiscRp:= StrToFloat(StringReplace(kmtMemorial.Fields[iq].AsString,' ','',[rfReplaceAll]));
                      end
                  end;
              end; // end of for do
            if isPCCode then begin
               oqAP_Detail.Append;
               oqAP_Detailno_detail.AsLargeInt:= sq_AP_DETAIL.GetNextValue;
               oqAP_Detailno_faktur.AsString:= vNoNota;
               oqAP_Detailkd_item.AsString:= vPCCode;
               oqAP_Detailnama_item.AsString:= vNamaItem;
               oqAP_Detailhrg_beli.AsFloat:= vHrg;
               oqAP_Detailqty_karton.AsFloat:= vQty;
               oqAP_Detailqty_lusin.AsFloat:= 0;
               oqAP_Detaildisc_psn.AsFloat:= StrToFloat(StringReplace(vDiscStr,',','.',[rfReplaceAll]));
               oqAP_Detaildisc_rp.AsFloat:= vDiscRp;
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

procedure TImportHutangFrm.ImportError;
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


procedure TImportHutangFrm.GoToTheRealTable;
var s : String;
begin
    try
      try
         qryCekFaktur.Close;
         qryCekFaktur.Open;
         if qryCekFakturjumlah.AsInteger>0 then begin
            DM.MyMsg(mmError,'Ada No Faktur sejumlah '+IntToStr(qryCekFakturjumlah.AsInteger)+' yang sudah ada !!!','No. Faktur tidak boleh Sama');
            Exit;
         end;
      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end;
    finally
      setButton('F');
    end;

  try
       if not isError then begin
         DM.PrepareQuery(oqExec);
         s:= 'select transaksi.fn_proc_insert_ap_tmp()';
         DM.ExecQuery(oqExec,s);
         LblStatus.Caption:= 'Status : Proses Import data Sukses !!!';
         setButton('F');
       end
       else begin
          setButton('E');
          LblStatus.Caption:= 'Status : Proses Import Gagal !!!';
          pgcImport.ActivePageIndex:= 1;
       end;
  except
    on E: Exception do begin
      MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
    end
  end;
end;

procedure TImportHutangFrm.FormShow(Sender: TObject);
begin
  LblStatus.Caption:= '';
  lblHeader.Caption:= 'Import Data Faktur Pembelian';
  pgcImport.HideTabs:= True;
  pgcImport.ActivePageIndex:=0;
  edtSupplier.Text:= '00000';
  edtJenis.Text:= 'PEMBELIAN';
  LblSupplier.Caption:= 'UNILEVER INDONESIA, PT.';
  setButton('F');
  edtSupplier.Properties.ReadOnly:= True;
  edtSupplier.Properties.Buttons[0].Visible:= False;
end;

procedure TImportHutangFrm.tabImportErrorShow(Sender: TObject);
begin
   try
     QTableError.Close;
     QTableError.Open;
   except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
//   setButton('E');
   lblHeader.Caption:= 'Import Data Error';
   LblStatus.Caption:= 'Jumlah Data Error : '+IntToStr(QTableError.RecordCount);

end;

procedure TImportHutangFrm.btnImportClick(Sender: TObject);
begin
  if pgcImport.ActivePageIndex=0 then begin
     ImportMaster;
     ImportDetail;
//     setButton('F');
  end
  else begin
     ImportError;
     setButton('I');
  end;
end;

procedure TImportHutangFrm.edtSupplierPropertiesButtonClick(
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

procedure TImportHutangFrm.tabImportDataShow(Sender: TObject);
begin
  lblHeader.Caption:= 'Import Data Faktur Pembelian';
end;

procedure TImportHutangFrm.btnInsertErrorClick(Sender: TObject);
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

function TImportHutangFrm.FixedErrorData:Boolean;
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
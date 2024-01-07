unit U_List_FakturPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxInplaceContainer,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, DBCtrls, RzDBNav, StdCtrls, SCControl, SCStdControls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxLabel, cxContainer,
  cxTextEdit, cxDBEdit, RzLabel, Mask, RzEdit, RzDBEdit, RzDBLbl, RzPanel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit,
  cxDropDownEdit, Wwkeycb, cxCheckBox, Menus, cxLookAndFeelPainters,
  cxButtons, cxCalendar, wwdbdatetimepicker, DateUtils, wwDialog, wwidlg,
  cxButtonEdit, RzRadGrp, kbmMemTable, frxClass, frxDBSet, frxExportPDF,
  frxExportRTF, frxExportXML, frxRich, AdvPanel, AdvToolBar,
  AdvToolBarStylers, AdvAppStyler, cxRadioGroup, cxLookAndFeels,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TListFakturPenjualanFrm = class(TForm)
    SCPanel1: TSCPanel;
    btnOK: TcxButton;
    RzGroupBox1: TRzGroupBox;
    edtDate: TwwDBDateTimePicker;
    dsMaster: TDataSource;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    ATBos: TAdvToolBarOfficeStyler;
    pnlHeader: TAdvPanel;
    lblHeader: TLabel;
    AdvPanel1: TAdvPanel;
    PopupMenu1: TPopupMenu;
    grdItem: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    grd_DBTV_Item: TcxGridDBTableView;
    grdItemLevel1: TcxGridLevel;
    grd_DBTV_Itemno_nota: TcxGridDBColumn;
    grd_DBTV_Itemdt_nota: TcxGridDBColumn;
    grd_DBTV_Itemno_faktur_pajak: TcxGridDBColumn;
    grd_DBTV_Itemno_bukti: TcxGridDBColumn;
    grd_DBTV_Itemid_division: TcxGridDBColumn;
    grd_DBTV_Itemkd_rekanan: TcxGridDBColumn;
    grd_DBTV_Itemcara_bayar: TcxGridDBColumn;
    grd_DBTV_Itemdt_jth_tempo: TcxGridDBColumn;
    grd_DBTV_Itemsub_total: TcxGridDBColumn;
    grd_DBTV_Itemdisc_rp: TcxGridDBColumn;
    grd_DBTV_Itemtotal: TcxGridDBColumn;
    grd_DBTV_Itemdpp: TcxGridDBColumn;
    grd_DBTV_Itemppn: TcxGridDBColumn;
    Exportcsv1: TMenuItem;
    ExportFakturcsv1: TMenuItem;
    SaveDialog: TSaveDialog;
    qData: TZQuery;
    qDatak1: TMemoField;
    qDatak2: TMemoField;
    qDatak3: TMemoField;
    qDatak4: TMemoField;
    qDatak5: TMemoField;
    qDatak6: TMemoField;
    qDatak7: TMemoField;
    qDatak8: TMemoField;
    qDatak9: TMemoField;
    qDatak10: TMemoField;
    qDatak11: TMemoField;
    qDatak12: TMemoField;
    qDatak13: TMemoField;
    qDatak14: TMemoField;
    qDatak15: TMemoField;
    qDatak16: TMemoField;
    qDatak17: TMemoField;
    qDatak18: TMemoField;
    qDatak19: TMemoField;
    qSlot_NoFaktur: TZQuery;
    qSlot_NoFaktursisa: TIntegerField;
    MasterNull: TZQuery;
    MasterNulltot_data: TLargeintField;
    btnClose: TSCButton;
    dbnBrowse: TRzDBNavigator;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    qDataAll: TZQuery;
    MemoField1: TMemoField;
    MemoField2: TMemoField;
    MemoField3: TMemoField;
    MemoField4: TMemoField;
    MemoField5: TMemoField;
    MemoField6: TMemoField;
    MemoField7: TMemoField;
    MemoField8: TMemoField;
    MemoField9: TMemoField;
    MemoField10: TMemoField;
    MemoField11: TMemoField;
    MemoField12: TMemoField;
    MemoField13: TMemoField;
    MemoField14: TMemoField;
    MemoField15: TMemoField;
    MemoField16: TMemoField;
    MemoField17: TMemoField;
    MemoField18: TMemoField;
    MemoField19: TMemoField;
    dsDetail: TDataSource;
    Detail: TZQuery;
    grd_DBTV_Itemid_nota: TcxGridDBColumn;
    Detailnomor: TIntegerField;
    Detailkd_item: TStringField;
    Detailqty: TFloatField;
    Detailharga: TFloatField;
    Detaildisc_rp: TFloatField;
    Detailsub_total: TFloatField;
    Detailtotal: TFloatField;
    Detaildpp: TFloatField;
    Detailppn: TFloatField;
    Detaildpp_n_ppn: TFloatField;
    Detailselisih: TFloatField;
    Detaildpp_baru: TFloatField;
    grdItemLevel2: TcxGridLevel;
    grdItemDBBandedTableView1: TcxGridDBBandedTableView;
    grdItemDBBandedTableView1nomor: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1kd_item: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1qty: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1harga: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1disc_rp: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1sub_total: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1total: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1dpp: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1ppn: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1dpp_n_ppn: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1selisih: TcxGridDBBandedColumn;
    grdItemDBBandedTableView1dpp_baru: TcxGridDBBandedColumn;
    Detailid_nota: TLargeintField;
    Master: TZQuery;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterno_faktur_pajak: TStringField;
    Masterno_bukti: TStringField;
    Masterid_division: TStringField;
    Masterkd_rekanan: TStringField;
    Mastercara_bayar: TStringField;
    Masterdt_jth_tempo: TDateTimeField;
    Mastersub_total: TFloatField;
    Masterdisc_rp: TFloatField;
    Mastertotal: TFloatField;
    Masterdpp: TFloatField;
    Masterppn: TFloatField;
    Masterid_nota: TLargeintField;
    Detaildppbaru_n_ppn: TFloatField;
    grdItemDBBandedTableView1dppbaru_n_ppn: TcxGridDBBandedColumn;
    cxRedStyle: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure Exportcsv1Click(Sender: TObject);
    procedure ExportFakturcsv1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure DetailBeforeOpen(DataSet: TDataSet);
    procedure DetailCalcFields(DataSet: TDataSet);
    procedure grdItemDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
    vjns_transaksi, vjns_gudang, vjns_item, namamenu : string;
    vtag : integer;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  ListFakturPenjualanFrm: TListFakturPenjualanFrm;
  
procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  ListFakturPenjualanFrm := TListFakturPenjualanFrm.Create(Application);
  ListFakturPenjualanFrm.namamenu := pNamaMenu;
  ListFakturPenjualanFrm.vtag:= ptag;
  ListFakturPenjualanFrm.lblHeader.Caption := pNamaMenu;
  ListFakturPenjualanFrm.Show;
end;

procedure TListFakturPenjualanFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TListFakturPenjualanFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    dbnBrowse.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    grd_DBTV_Item.OptionsData.Inserting:= False;
    grd_DBTV_Item.OptionsData.Editing:= False;
    grd_DBTV_Item.OptionsData.Deleting:= False;

    btnRefresh.Visible := isBrowse;
  end;
end;

procedure TListFakturPenjualanFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TListFakturPenjualanFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TListFakturPenjualanFrm.btnOKClick(Sender: TObject);
begin
  try
    Detail.Close;
    Master.Close;
    Master.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDate.Date);
    Master.Open;
    Detail.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
 end;
end;

procedure TListFakturPenjualanFrm.Exportcsv1Click(Sender: TObject);
var
  List: TStringList;
  S, appPath, ttl: String;
  I: Integer;
begin
  if (Trim(Masterno_faktur_pajak.AsString)<>'') then begin
     MessageBox(0, 'Nomor Faktur sudah pernah di Export !', 'Warning', MB_ICONWARNING or MB_OK);
     Abort
  end;

  // Cek Slot/ Sisa Nomor Faktur Pajak
  qSlot_NoFaktur.Close;
  qSlot_NoFaktur.Open;

  if qSlot_NoFaktursisa.Value<1 then begin
     raise Exception.Create('Slot Nomor Faktur Pajak tidak tersedia ! Slot Nomor Faktur Pajak = '+IntToStr(qSlot_NoFaktursisa.Value)+' Nomor !');
  end;

  if Master.RecordCount>0 then begin

   if SaveDialog.Execute then begin

      qData.Close;
      qData.Params.ParamByName('pno_nota').Value:= Masterno_nota.AsString;
      qData.Open;

      appPath:= ExtractFilePath(SaveDialog.InitialDir);
      ttl:= SaveDialog.FileName;

      List := TStringList.Create;
      try
        qData.First;
        while not qData.Eof do
        begin
          S := '';
          for I := 0 to qData.FieldCount - 1 do
          begin
            if S > '' then
              S := S + ',';
              S := S + qData.Fields[I].AsString;
          end;
          List.Add(S);
          qData.Next;
        end;
      finally
        List.SaveToFile(ttl);
        List.Free;
      end;

   end;
   end;
end;

procedure TListFakturPenjualanFrm.ExportFakturcsv1Click(Sender: TObject);
var
  List: TStringList;
  S, appPath, ttl: String;
  I: Integer;
begin
  if (Trim(Masterno_faktur_pajak.AsString)<>'') then begin
     MessageBox(0, 'Nomor Faktur sudah pernah di Export !', 'Warning', MB_ICONWARNING or MB_OK);
     Abort
  end;

  // Cek Slot/ Sisa Nomor Faktur Pajak
  qSlot_NoFaktur.Close;
  qSlot_NoFaktur.Open;

  if qSlot_NoFaktursisa.Value<1 then begin
     raise Exception.Create('Slot Nomor Faktur Pajak tidak tersedia ! Slot Nomor Faktur Pajak = '+IntToStr(qSlot_NoFaktursisa.Value)+' Nomor !');
  end;

  if Master.RecordCount>0 then begin
   
   if SaveDialog.Execute then begin

      qData.Close;
      qData.Params.ParamByName('pno_nota').Value:= Masterno_nota.AsString;
      qData.Open;

      appPath:= ExtractFilePath(SaveDialog.InitialDir);
      ttl:= SaveDialog.FileName;

      List := TStringList.Create;
      try
        qData.First;
        while not qData.Eof do
        begin
          S := '';
          for I := 0 to qData.FieldCount - 1 do
          begin
            if S > '' then
              S := S + ',';
              S := S + '"' + qData.Fields[I].AsString + '"' ;
          end;
          List.Add(S);
          qData.Next;
        end;
      finally
        List.SaveToFile(ttl);
        List.Free;
      end;

   end;
   end;
end;

procedure TListFakturPenjualanFrm.btnPrintClick(Sender: TObject);
var
  List: TStringList;
  S, appPath, ttl: String;
  I: Integer;
begin
  if Master.RecordCount>0 then begin

      // Cek Faktur yang belum ada Nomor Faktur Pajak
      MasterNull.Close;
      MasterNull.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDate.Date);
      MasterNull.Open;

      // Cek Slot/ Sisa Nomor Faktur Pajak
      qSlot_NoFaktur.Close;
      qSlot_NoFaktur.Open;

      if MasterNulltot_data.Value>qSlot_NoFaktursisa.Value then begin

         if qSlot_NoFaktursisa.Value<1 then begin
            raise Exception.Create('Slot Nomor Faktur Pajak tidak tersedia ! Slot Nomor Faktur Pajak = '+IntToStr(qSlot_NoFaktursisa.Value)+' Nomor !');
         end else begin
         
             if DM.MyMsg(mmConfirmation,'Slot Nomor Faktur Pajak tidak cukup !','Tersedia '+IntToStr(qSlot_NoFaktursisa.Value)+' Nomor. Lanjutkan ?')=101 then
                Exit;

               if SaveDialog.Execute then begin

                  qDataAll.Close;
                  qDataAll.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDate.Date);
                  qDataAll.Params.ParamByName('plimit').Value:= qSlot_NoFaktursisa.Value;
                  qDataAll.Open;

                  appPath:= ExtractFilePath(SaveDialog.InitialDir);
                  ttl:= SaveDialog.FileName;

                  List := TStringList.Create;
                  try
                    qDataAll.First;
                    while not qDataAll.Eof do
                    begin
                      S := '';
                      for I := 0 to qDataAll.FieldCount - 1 do
                      begin
                        if S > '' then
                          S := S + ',';
                          S := S + qDataAll.Fields[I].AsString;
                      end;
                      List.Add(S);
                      qDataAll.Next;
                    end;
                  finally
                    List.SaveToFile(ttl);
                    List.Free;
                  end;

               end;
         end;

      end else begin
           if SaveDialog.Execute then begin

              qDataAll.Close;
              qDataAll.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDate.Date);
              qDataAll.Params.ParamByName('plimit').Value:= MasterNulltot_data.Value;
              qDataAll.Open;

              appPath:= ExtractFilePath(SaveDialog.InitialDir);
              ttl:= SaveDialog.FileName;

              List := TStringList.Create;
              try
                qDataAll.First;
                while not qDataAll.Eof do
                begin
                  S := '';
                  for I := 0 to qDataAll.FieldCount - 1 do
                  begin
                    if S > '' then
                      S := S + ',';
                      S := S + qDataAll.Fields[I].AsString;
                  end;
                  List.Add(S);
                  qDataAll.Next;
                end;
              finally
                List.SaveToFile(ttl);
                List.Free;
              end;

           end;
      end;
  end;
end;

procedure TListFakturPenjualanFrm.DetailBeforeOpen(DataSet: TDataSet);
begin
    Detail.Params.ParamByName('ptgl').Value:= FormatDateTime('dd/mm/yyyy', edtDate.Date);
end;

procedure TListFakturPenjualanFrm.DetailCalcFields(DataSet: TDataSet);
begin
   Detaildppbaru_n_ppn.AsFloat:= Detaildpp_baru.AsFloat + Detailppn.AsFloat;
end;

procedure TListFakturPenjualanFrm.grdItemDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if VarToStr(ARecord.Values[10]) = '1' then
     AStyle := cxRedStyle;
end;

end.

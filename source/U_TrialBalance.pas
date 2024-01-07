unit U_TrialBalance;

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
  cxButtons, cxCalendar, wwdbdatetimepicker, DateUtils, AdvToolBar,
  AdvToolBarStylers, AdvAppStyler, AdvPanel, AdvReflectionImage,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, wwDialog,
  wwidlg, Wwdatsrc, kbmMemTable, frxClass, frxDBSet, frxExportRTF,
  frxExportPDF, frxExportXLS, cxRadioGroup, wwfltdlg, cxLookAndFeels,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TTrialBalanceFrm = class(TForm)
    pnlTop: TSCPanel;
    lblHeader: TLabel;
    pgcPosting: TcxPageControl;
    pnlBottom: TSCPanel;
    dbnItem: TRzDBNavigator;
    btnRefresh: TSCButton;
    btnClose: TSCButton;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtDatePicker1: TwwDBDateTimePicker;
    edtDatePicker2: TwwDBDateTimePicker;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    ATBOS: TAdvToolBarOfficeStyler;
    tabPERKIRAAN: TcxTabSheet;
    tabTB: TcxTabSheet;
    grdPerkiraan: TcxGrid;
    grd_dbtvPerkiraan: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    grdLvlPerkiraan: TcxGridLevel;
    SCPanel2: TSCPanel;
    Label1: TLabel;
    btnBB_OK: TcxButton;
    grdTB: TcxGrid;
    grdDBTV_TB: TcxGridDBTableView;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    grdLvlTB: TcxGridLevel;
    SCPanel3: TSCPanel;
    Label3: TLabel;
    edtPerkiraan: TcxButtonEdit;
    LblPerkiran: TLabel;
    Master: TZQuery;
    dsMaster: TwwDataSource;
    dsDetail: TwwDataSource;
    grdDBTV_TBid_rek_gl: TcxGridDBColumn;
    grdDBTV_TBnama_rekening: TcxGridDBColumn;
    grdDBTV_TBawal: TcxGridDBColumn;
    grdDBTV_TBdebet_berjalan: TcxGridDBColumn;
    grdDBTV_TBkredit_berjalan: TcxGridDBColumn;
    grdDBTV_TBakhir: TcxGridDBColumn;
    grd_dbtvPerkiraanno_jurnal: TcxGridDBColumn;
    grd_dbtvPerkiraanno_bukti: TcxGridDBColumn;
    grd_dbtvPerkiraandt_memorial: TcxGridDBColumn;
    grd_dbtvPerkiraandescriptions: TcxGridDBColumn;
    grd_dbtvPerkiraandebet: TcxGridDBColumn;
    grd_dbtvPerkiraankredit: TcxGridDBColumn;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBDetail: TfrxDBDataset;
    MemDetail: TkbmMemTable;
    MemDetailid_rek_gl: TStringField;
    MemDetailid_parent: TStringField;
    MemDetailnama_rekening: TStringField;
    MemDetailisdetail: TStringField;
    MemDetailawal: TFloatField;
    MemDetaildebet_berjalan: TFloatField;
    MemDetailkredit_berjalan: TFloatField;
    MemDetailberjalan: TFloatField;
    btnPrint: TSCButton;
    Label4: TLabel;
    LAwal: TLabel;
    qryMutasi: TZQuery;
    qryMutasiid_rek_gl: TStringField;
    qryMutasiawal: TFloatField;
    qryMutasiberjalan: TFloatField;
    qryMutasiakhir: TFloatField;
    kbmMemDetail: TkbmMemTable;
    frxDBMemDetail: TfrxDBDataset;
    kbmMemDetailno_jurnal: TStringField;
    kbmMemDetailno_bukti: TStringField;
    kbmMemDetailno_nota: TStringField;
    kbmMemDetaildt_memorial: TDateTimeField;
    kbmMemDetailproject_no: TStringField;
    kbmMemDetaildescriptions: TStringField;
    kbmMemDetaildebet: TFloatField;
    kbmMemDetailkredit: TFloatField;
    frBB: TfrxReport;
    Detail: TZQuery;
    Detailno_jurnal: TStringField;
    Detailno_bukti: TStringField;
    Detailno_nota: TStringField;
    Detaildt_memorial: TDateTimeField;
    Detaildescriptions: TStringField;
    Detaildebet: TFloatField;
    Detailkredit: TFloatField;
    grdDBTV_TBberjalan: TcxGridDBColumn;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtInfopnamamenu: TStringField;
    kmtInfoperiode: TStringField;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat: TStringField;
    kmtInfofax_telp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    kmtInfoprepared_name: TStringField;
    frxDBInfo: TfrxDBDataset;
    frxTB: TfrxReport;
    MemDetailakhir: TFloatField;
    SCPanel4: TSCPanel;
    Label5: TLabel;
    LMutasi: TLabel;
    edtGroup: TcxComboBox;
    cxLabel4: TcxLabel;
    kmtInfoawal: TStringField;
    kmtInfomutasi: TStringField;
    kmtInfoakhir: TStringField;
    qPrintDetailBB: TZQuery;
    qPrintDetailBBno_jurnal: TStringField;
    qPrintDetailBBno_bukti: TStringField;
    qPrintDetailBBno_nota: TStringField;
    qPrintDetailBBdt_memorial: TDateTimeField;
    qPrintDetailBBdescriptions: TStringField;
    qPrintDetailBBdebet: TFloatField;
    qPrintDetailBBkredit: TFloatField;
    qPrintMasterBB: TZQuery;
    qPrintMasterBBid_rek_gl: TStringField;
    qPrintMasterBBawal: TFloatField;
    qPrintMasterBBberjalan: TFloatField;
    qPrintDetailBBid_rek_gl: TStringField;
    qPrintMasterBBakhir: TFloatField;
    frxDBMasterBB: TfrxDBDataset;
    frxDBDetailBB: TfrxDBDataset;
    frBBSemua: TfrxReport;
    qPrintMasterBBnama_rekening: TStringField;
    dsqPrintMasterBB: TwwDataSource;
    rgPrintMode: TRzGroupBox;
    RBSemua: TcxRadioButton;
    RBLokasi: TcxRadioButton;
    dsqryJURNAL: TwwDataSource;
    qryJURNAL: TZQuery;
    qryJURNALid_rek_gl: TStringField;
    qryJURNALnama_rekening: TStringField;
    qryJURNALdt_memorial: TDateTimeField;
    qryJURNALno_jurnal: TStringField;
    qryJURNALdebet: TFloatField;
    qryJURNALkredit: TFloatField;
    qryJURNALno_bukti: TStringField;
    qryJURNALremarks: TStringField;
    qryJURNALno_nota: TStringField;
    qryJURNALno_payment: TStringField;
    qryJURNALkd_rekanan: TStringField;
    qryJURNALid_arus: TStringField;
    tabJURNALKONTROL: TcxTabSheet;
    SCPanel5: TSCPanel;
    Label6: TLabel;
    btnJC_OK: TcxButton;
    btnFilter: TcxButton;
    grdJURNAL: TcxGrid;
    gr_DBTV_JURNAL: TcxGridDBTableView;
    gr_DBTV_JURNALno_jurnal: TcxGridDBColumn;
    gr_DBTV_JURNALdt_memorial: TcxGridDBColumn;
    gr_DBTV_JURNALno_nota: TcxGridDBColumn;
    gr_DBTV_JURNALno_payment: TcxGridDBColumn;
    gr_DBTV_JURNALkd_rekanan: TcxGridDBColumn;
    gr_DBTV_JURNALid_arus: TcxGridDBColumn;
    gr_DBTV_JURNALid_rek_gl: TcxGridDBColumn;
    gr_DBTV_JURNALnama_rekening: TcxGridDBColumn;
    gr_DBTV_JURNALremarks: TcxGridDBColumn;
    gr_DBTV_JURNALdebet: TcxGridDBColumn;
    gr_DBTV_JURNALkredit: TcxGridDBColumn;
    grdLVL_JC: TcxGridLevel;
    wwFilterDialog1: TwwFilterDialog;
    frxJURNAL: TfrxReport;
    frxDBJURNAL: TfrxDBDataset;
    btnTB_OK: TSCButton;
    Masterid_rek_gl: TStringField;
    Masterid_parent: TStringField;
    Masterrekening: TStringField;
    Masterawal: TFloatField;
    Masterdebet_berjalan: TFloatField;
    Masterkredit_berjalan: TFloatField;
    Mastermutasi: TFloatField;
    Masterend: TFloatField;
    cxLabel3: TcxRadioButton;
    SCPanel6: TSCPanel;
    Label7: TLabel;
    LAkhir: TLabel;
    btnExport: TSCButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure edtDatePicker2CloseUp(Sender: TObject);
    procedure btnBB_OKClick(Sender: TObject);
    procedure edtPerkiraanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnTB_OKClick(Sender: TObject);
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure DetailBeforeOpen(DataSet: TDataSet);
    procedure qryMutasiBeforeOpen(DataSet: TDataSet);
    procedure qryMutasiCalcFields(DataSet: TDataSet);
    procedure qPrintMasterBBCalcFields(DataSet: TDataSet);
    procedure qPrintMasterBBBeforeOpen(DataSet: TDataSet);
    procedure qPrintDetailBBBeforeOpen(DataSet: TDataSet);
    procedure btnJC_OKClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    DBMode: TDBMode;
    isEmpty: Boolean;
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  TrialBalanceFrm: TTrialBalanceFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, U_CariRekening;

{$R *.dfm}
procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  TrialBalanceFrm:= TTrialBalanceFrm.Create(Application);
  TrialBalanceFrm.lblHeader.Caption:= pNamaMenu;
  TrialBalanceFrm.vtag:= ptag;
  TrialBalanceFrm.UpdateView;
  TrialBalanceFrm.pgcPosting.ActivePageIndex:= 0;
  TrialBalanceFrm.Show;
end;


procedure TTrialBalanceFrm.UpdateView;
var isBrowse: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
    vqry: TZQuery;
begin
  if DBMode=dmNone then begin
    pgcPosting.ActivePageIndex := 0;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;

  end else begin
    isBrowse := DBMode=dmBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnRefresh.Visible := isBrowse;
    grd_dbtvPerkiraan.OptionsData.Appending:= False;
    grd_dbtvPerkiraan.OptionsData.Inserting:= False;
    grd_dbtvPerkiraan.OptionsData.Editing:= False;
    grd_dbtvPerkiraan.OptionsData.Deleting:= False;

  end;
end;

procedure TTrialBalanceFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TTrialBalanceFrm.FormShow(Sender: TObject);
begin
    UpdateView;
    pgcPosting.ActivePageIndex:= 0;
    ShowWindow(Handle, SW_Maximize)
end;

procedure TTrialBalanceFrm.btnRefreshClick(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
    0 : begin
        btnTB_OKClick(nil);
        isEmpty:=(Master.RecordCount=0)
        end;
    1 : begin
        btnBB_OKClick(nil);
        isEmpty:=(Detail.RecordCount=0)
        end;
  end;
  DBMode:= dmBrowse;
  UpdateView;
end;


procedure TTrialBalanceFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TTrialBalanceFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TTrialBalanceFrm.edtDatePicker2CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if edtDatePicker2.Date<edtDatePicker1.Date then begin
    DecodeDate(edtDatePicker2.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    edtDatePicker1.Date:=dt;
  end
end;

procedure TTrialBalanceFrm.btnBB_OKClick(Sender: TObject);
begin
  try
    Detail.Close;
    Detail.Open;
    qryMutasi.Close;
    qryMutasi.Open;
    LAwal.Caption:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiawal.AsFloat);
    LMutasi.Caption:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiberjalan.AsFloat);
    LAkhir.Caption:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiakhir.AsFloat);
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  isEmpty:= Detail.RecordCount=0;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TTrialBalanceFrm.edtPerkiraanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var f : TCariRekeningFrm;
begin
   try
     f:= TCariRekeningFrm.Create(Application);
     if f.ShowModal=mrOK then begin
        edtPerkiraan.Text:= f.qRekGLid_rek_gl.AsString;
        LblPerkiran.Caption:= f.qRekGLdescriptions.AsString;
     end;

   finally
     f.Free;
   end;
end;

procedure TTrialBalanceFrm.btnTB_OKClick(Sender: TObject);
VAR s,dt_format, dt_awal, dt_akhir, dt_awal_thn, where_str : String;
begin
   if Trim(edtGroup.Text)='' then begin
      DM.MyMsg(mmInformation,'Select Account Group First !','');
      Exit;
   end;

   dt_format:= QuotedStr('dd/mm/yyyy');
   dt_awal:= QuotedStr(FormatDateTime('dd/mm/yyyy', edtDatePicker1.Date));
   dt_akhir:= QuotedStr(FormatDateTime('dd/mm/yyyy', edtDatePicker2.Date));

   if UpperCase(Trim(edtGroup.Text))='AKTIVA' then where_str:= ' id_parent like '+QuotedStr('A%');
   if UpperCase(Trim(edtGroup.Text))='PASIVA' then where_str:= ' id_parent like '+QuotedStr('P%');
   if UpperCase(Trim(edtGroup.Text))='LABARUGI' then where_str:= ' id_parent like '+QuotedStr('R%');
   if UpperCase(Trim(edtGroup.Text))='SEMUA' then where_str:= ' id_parent like '+QuotedStr('%');

      try
        Master.Close;
        Master.SQL.Clear;
        Master.SQL.Add('SELECT * FROM accfin.get_trial_balance('+dt_awal+','+dt_akhir+')WHERE'+where_str);
        Master.Open;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end;
      end;
end;

procedure TTrialBalanceFrm.MasterCalcFields(DataSet: TDataSet);
begin
   Masterend.AsFloat:= Masterawal.AsFloat + Mastermutasi.AsFloat;
end;

procedure TTrialBalanceFrm.btnPrintClick(Sender: TObject);
var i, row_count: Integer;
begin
 case pgcPosting.ActivePageIndex of
    0 : begin
          if Master.RecordCount=0 then
             Exit;

          DM.vSysDate.Close;
          DM.vSysDate.Open;
          kmtInfo.Close;
          kmtInfo.Open;
          kmtInfo.Append;
          DM.Perusahaan.Close;
          DM.Perusahaan.Open;

          kmtInfouser_id.AsString := DM.UserConnect;
          kmtInfouser_name.AsString := DM.UserConnect;
          kmtInfoperiode.AsString := 'Periode : '+ FormatDateTime('dd mmm yyyy',edtDatePicker1.Date)+' to '+FormatDateTime('dd mmm yyyy',edtDatePicker2.Date);
          kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
          kmtInfopnamamenu.AsString := UpperCase('trial balance');
          kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
          kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
          kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
          kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
          kmtInfofilter.AsString:= 'ACCOUNT GROUP : '+edtGroup.Text;
          kmtInfo.Post;


            MemDetail.Close;
            MemDetail.Open;
              Master.DisableControls;
              try
                Master.First;
                while not Master.Eof do begin
                  MemDetail.Append;
                  MemDetailid_rek_gl.AsString:= ' '+Masterid_rek_gl.AsString;
                  MemDetailnama_rekening.AsString:= ' '+Masterrekening.AsString;
                  MemDetailawal.AsFloat:= Masterawal.AsFloat;
                  MemDetaildebet_berjalan.AsFloat:= Masterdebet_berjalan.AsFloat;
                  MemDetailkredit_berjalan.AsFloat:= Masterkredit_berjalan.AsFloat;
                  MemDetailberjalan.AsFloat:= Mastermutasi.AsFloat;
                  MemDetailakhir.AsFloat:= Masterend.AsFloat;
                  MemDetail.Post;
                  Master.Next;
                end;
              finally
                Master.First;
                Master.EnableControls
              end;

          frxTB.ShowReport;
    end;

    1 : begin

          if RBLokasi.Checked then begin

                if Detail.RecordCount=0 then
                   Exit;

                DM.vSysDate.Close;
                DM.vSysDate.Open;
                kmtInfo.Close;
                kmtInfo.Open;
                kmtInfo.Append;
                DM.Perusahaan.Close;
                DM.Perusahaan.Open;

                kmtInfouser_id.AsString := DM.UserConnect;
                kmtInfouser_name.AsString := DM.UserConnect;
                kmtInfoperiode.AsString := 'Periode : '+ FormatDateTime('dd mmm yyyy',edtDatePicker1.Date)+' to '+FormatDateTime('dd mmm yyyy',edtDatePicker2.Date);
                kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
                kmtInfopnamamenu.AsString := UpperCase('BUKU BESAR');
                kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
                kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
                kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
                kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
                kmtInfofilter.AsString:= 'ACCOUNT : '+UpperCase(LblPerkiran.Caption);
                kmtInfoawal.AsString:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiawal.AsFloat);
                kmtInfomutasi.AsString:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiberjalan.AsFloat);
                kmtInfoakhir.AsString:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiakhir.AsFloat);
                kmtInfo.Post;

                  kbmMemDetail.Close;
                  kbmMemDetail.Open;
                    Detail.DisableControls;
                    try
                      Detail.First;
                      while not Detail.Eof do begin
                        kbmMemDetail.Append;
                        kbmMemDetailno_jurnal.AsString:= Detailno_jurnal.AsString;
                        kbmMemDetailno_bukti.AsString:= Detailno_bukti.AsString;
                        kbmMemDetailno_nota.AsString:= Detailno_nota.AsString;
                        kbmMemDetaildt_memorial.AsDateTime:= Detaildt_memorial.AsDateTime;
//                        kbmMemDetailproject_no.AsString:= Detailproject_no.AsString;
                        kbmMemDetaildescriptions.AsString:= Detaildescriptions.AsString;
                        kbmMemDetaildebet.AsFloat:= Detaildebet.AsFloat;
                        kbmMemDetailkredit.AsFloat:= Detailkredit.AsFloat;
                        kbmMemDetail.Post;
                        Detail.Next;
                      end;
                    finally
                      Detail.First;
                      Detail.EnableControls
                    end;

                frBB.ShowReport;
          end;  // END OF PER REKENING

          if RBSemua.Checked then begin
//                if Detail.RecordCount=0 then
//                   Exit;

                DM.vSysDate.Close;
                DM.vSysDate.Open;
                kmtInfo.Close;
                kmtInfo.Open;
                kmtInfo.Append;
                DM.Perusahaan.Close;
                DM.Perusahaan.Open;

                kmtInfouser_id.AsString := DM.UserConnect;
                kmtInfouser_name.AsString := DM.UserConnect;
                kmtInfoperiode.AsString := 'Periode : '+ FormatDateTime('dd mmm yyyy',edtDatePicker1.Date)+' to '+FormatDateTime('dd mmm yyyy',edtDatePicker2.Date);
                kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
                kmtInfopnamamenu.AsString := UpperCase('BUKU BESAR');
                kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
                kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
                kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
                kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
//                kmtInfofilter.AsString:= 'ACCOUNT : '+UpperCase(LblPerkiran.Caption);
//                kmtInfoawal.AsString:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiawal.AsFloat);
//                kmtInfomutasi.AsString:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiberjalan.AsFloat);
//                kmtInfoakhir.AsString:= FormatFloat('#,##0.00;(#,##0.00)', qryMutasiakhir.AsFloat);
                kmtInfo.Post;

                try
                  qPrintDetailBB.Close;
                  qPrintMasterBB.Close;
                  qPrintMasterBB.Open;
                  qPrintDetailBB.Open;
                except
                  on E: Exception do begin
                    DM.MyMsg(mmError,'Error has been encountered !',E.Message)
                  end;
                end;
                frBBSemua.ShowReport;
          end;
    end;


    2 : begin
          if qryJURNAL.RecordCount=0 then
             Exit;

          DM.vSysDate.Close;
          DM.vSysDate.Open;
          kmtInfo.Close;
          kmtInfo.Open;
          kmtInfo.Append;
          DM.Perusahaan.Close;
          DM.Perusahaan.Open;

          kmtInfouser_id.AsString := DM.UserConnect;
          kmtInfouser_name.AsString := DM.UserConnect;
          kmtInfoperiode.AsString := 'Periode : '+ FormatDateTime('dd mmm yyyy',edtDatePicker1.Date)+' to '+FormatDateTime('dd mmm yyyy',edtDatePicker2.Date);
          kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
          kmtInfopnamamenu.AsString := UpperCase('jurnal control');
          kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
          kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
          kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
          kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
          kmtInfofilter.AsString:= 'ACCOUNT GROUP : '+edtGroup.Text;
          kmtInfo.Post;

          qryJURNAL.DisableControls;
          try
            qryJURNAL.First;
            frxJURNAL.ShowReport;
          finally
            qryJURNAL.First;
            qryJURNAL.EnableControls;
          end;


    end;

 end;  // END OF CASE


 end;

procedure TTrialBalanceFrm.btnExportClick(Sender: TObject);
begin
  case pgcPosting.ActivePageIndex of
      0 : begin
            DM.Export2Excel(Master,'Trial_Balance');
          end;
      1 : begin
            DM.Export2Excel(Detail,'Buku_besar_rek_'+edtPerkiraan.Text);
          end;
      2 : begin
            DM.Export2Excel(qryJURNAL,'jurnal_kontrol');
          end;
  end;
end;

procedure TTrialBalanceFrm.DetailBeforeOpen(DataSet: TDataSet);
begin
    Detail.Params.ParamByName('pid_rek_gl').Value:= edtPerkiraan.Text;
    Detail.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    Detail.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

procedure TTrialBalanceFrm.qryMutasiBeforeOpen(DataSet: TDataSet);
begin
    qryMutasi.Params.ParamByName('pid_rek_gl').Value:= edtPerkiraan.Text;
    qryMutasi.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qryMutasi.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

procedure TTrialBalanceFrm.qryMutasiCalcFields(DataSet: TDataSet);
begin
  qryMutasiakhir.AsFloat:= qryMutasiawal.AsFloat+qryMutasiberjalan.AsFloat;
end;

procedure TTrialBalanceFrm.qPrintMasterBBCalcFields(DataSet: TDataSet);
begin
  qPrintMasterBBakhir.AsFloat:= qPrintMasterBBawal.AsFloat+qPrintMasterBBberjalan.AsFloat;
end;

procedure TTrialBalanceFrm.qPrintMasterBBBeforeOpen(DataSet: TDataSet);
begin
    qPrintMasterBB.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qPrintMasterBB.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

procedure TTrialBalanceFrm.qPrintDetailBBBeforeOpen(DataSet: TDataSet);
begin
//    Detail.Params.ParamByName('pid_rek_gl').Value:= edtPerkiraan.Text;
    qPrintDetailBB.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qPrintDetailBB.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
end;

procedure TTrialBalanceFrm.btnJC_OKClick(Sender: TObject);
begin
  try
    qryJURNAL.Close;
    qryJURNAL.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    qryJURNAL.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
    qryJURNAL.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  isEmpty:= qryJURNAL.RecordCount=0;
  DBMode:= dmBrowse;
  UpdateView;
end;

procedure TTrialBalanceFrm.btnFilterClick(Sender: TObject);
begin
 wwFilterDialog1.Execute;
end;





end.

unit U_InfoARList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, StdCtrls,
  wwdbdatetimepicker, SCControl, SCStdControls, frxClass,
  ZAbstractRODataset, ZDataset, frxChBox, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  kbmMemTable, frxDBSet, frxExportPDF, frxExportRTF, frxExportXML, frxRich,
  wwDialog, wwidlg, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, DBCtrls, RzDBNav,
  ExtCtrls, cxPC, cxCheckBox, ZAbstractDataset, wwfltdlg, cxRadioGroup,
  RzPanel, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TInfoARListFrm = class(TForm)
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMaster: TfrxDBDataset;
    kmtInfo: TkbmMemTable;
    kmtInfouser_id: TStringField;
    kmtInfouser_name: TStringField;
    kmtInfodt_now: TStringField;
    kmtInfopnamamenu: TStringField;
    frxDBInfo: TfrxDBDataset;
    pnlHeader: TAdvPanel;
    lblHeader1: TLabel;
    ATBos: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    AdvPanel1: TAdvPanel;
    dbnBrowse: TRzDBNavigator;
    btnClose: TSCButton;
    btnRefresh: TSCButton;
    btnPrint: TSCButton;
    kmtInfoperiode: TStringField;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    Master: TZReadOnlyQuery;
    dsMaster: TDataSource;
    kmtInfonama_perusahaan: TStringField;
    kmtInfoalamat: TStringField;
    kmtInfofax_telp: TStringField;
    kmtInfokota_negara: TStringField;
    kmtInfofilter: TStringField;
    kmtInfoprepared_name: TStringField;
    frxARList_SLS: TfrxReport;
    frxARList_OLT: TfrxReport;
    frxSUM_OUTLET: TfrxReport;
    frxDBSUM_OUTLET: TfrxDBDataset;
    qrySUM_OUTLET: TZReadOnlyQuery;
    Detail: TZReadOnlyQuery;
    dsDetail: TDataSource;
    Detailno_reff: TStringField;
    Detailpembayaran: TFloatField;
    Detaildt_payment: TDateTimeField;
    Detailno_payment: TStringField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masterid_division: TStringField;
    Masternama_sales: TStringField;
    Masterno_bukti: TStringField;
    Mastertotal: TFloatField;
    Masterpembayaran: TFloatField;
    Mastersisa: TFloatField;
    SCPanel3: TSCPanel;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    qrySUM_OUTLETkd_rekanan: TStringField;
    qrySUM_OUTLETnama_rekanan: TStringField;
    qrySUM_OUTLETtotal: TFloatField;
    qrySUM_OUTLETpembayaran: TFloatField;
    qrySUM_OUTLETsisa: TFloatField;
    pgcMaster: TcxPageControl;
    tabDetail: TcxTabSheet;
    tabOutlet: TcxTabSheet;
    tabSales: TcxTabSheet;
    grdOutlet: TcxGrid;
    grddbtvOutlet: TcxGridDBTableView;
    grdlvlOutlet: TcxGridLevel;
    grdSales: TcxGrid;
    grddbtvSales: TcxGridDBTableView;
    grdLvlSales: TcxGridLevel;
    dsqrySUM_OUTLET: TDataSource;
    grddbtvOutletkd_rekanan: TcxGridDBColumn;
    grddbtvOutletnama_rekanan: TcxGridDBColumn;
    grddbtvOutlettotal: TcxGridDBColumn;
    grddbtvOutletpembayaran: TcxGridDBColumn;
    grddbtvOutletsisa: TcxGridDBColumn;
    qrySUM_SALES: TZReadOnlyQuery;
    dsqrySUM_SALES: TDataSource;
    qrySUM_SALESid_division: TStringField;
    qrySUM_SALESnama_sales: TStringField;
    qrySUM_SALEStotal: TFloatField;
    qrySUM_SALESpembayaran: TFloatField;
    qrySUM_SALESsisa: TFloatField;
    qrySUM_SALESlbl: TStringField;
    grddbtvSalesid_division: TcxGridDBColumn;
    grddbtvSalesnama_sales: TcxGridDBColumn;
    grddbtvSalestotal: TcxGridDBColumn;
    grddbtvSalespembayaran: TcxGridDBColumn;
    grddbtvSalessisa: TcxGridDBColumn;
    grddbtvSaleslbl: TcxGridDBColumn;
    frxDBSUM_SALES: TfrxDBDataset;
    frxSUM_SALES: TfrxReport;
    qryPrint: TZQuery;
    dsqryPrint: TDataSource;
    Masternet_n_ppn: TFloatField;
    Masternilai_retur: TFloatField;
    dtpStart: TwwDBDateTimePicker;
    Label21: TLabel;
    Masterispilih: TStringField;
    MemMaster: TkbmMemTable;
    frxARList_Centhang: TfrxReport;
    frxDBMemMaster: TfrxDBDataset;
    MemMasterPrint: TkbmMemTable;
    btnCari: TSCButton;
    btnFilter: TSCButton;
    LookBrowse: TwwLookupDialog;
    FilterBrowse: TwwFilterDialog;
    cxStyle5: TcxStyle;
    grdAP_List: TcxGrid;
    grddbtvAP_List: TcxGridDBTableView;
    grddbtvAP_Listispilih: TcxGridDBColumn;
    grddbtvAP_Listno_nota: TcxGridDBColumn;
    grddbtvAP_Listdt_nota: TcxGridDBColumn;
    grddbtvAP_Listno_bukti: TcxGridDBColumn;
    grddbtvAP_Listid_division: TcxGridDBColumn;
    grddbtvAP_Listnama_sales: TcxGridDBColumn;
    grddbtvAP_Listkd_rekanan: TcxGridDBColumn;
    grddbtvAP_Listnama_rekanan: TcxGridDBColumn;
    grddbtvAP_Listtotal_in: TcxGridDBColumn;
    grddbtvAP_Listnilai_retur: TcxGridDBColumn;
    grddbtvAP_Listpembayaran: TcxGridDBColumn;
    grddbtvAP_Listsisa: TcxGridDBColumn;
    grddbtvAP_ListDetail: TcxGridDBTableView;
    grddbtvAP_ListDetailno_payment: TcxGridDBColumn;
    grddbtvAP_ListDetaildt_payment: TcxGridDBColumn;
    grddbtvAP_ListDetailpembayaran: TcxGridDBColumn;
    grdAP_ListLevel: TcxGridLevel;
    grdAP_ListLevel1: TcxGridLevel;
    AdvPanel2: TAdvPanel;
    rbSemua: TcxRadioButton;
    rbSudahLunas: TcxRadioButton;
    rbBelumDibayar: TcxRadioButton;
    rbDiangsur: TcxRadioButton;
    rbBelumLunas: TcxRadioButton;
    qryPrintispilih: TStringField;
    qryPrintno_nota: TStringField;
    qryPrintdt_nota: TDateTimeField;
    qryPrintkd_rekanan: TStringField;
    qryPrintnama_rekanan: TStringField;
    qryPrintid_division: TStringField;
    qryPrintnama_sales: TStringField;
    qryPrintno_bukti: TStringField;
    qryPrintnet_n_ppn: TFloatField;
    qryPrintnilai_retur: TFloatField;
    qryPrinttotal: TFloatField;
    qryPrintpembayaran: TFloatField;
    qryPrintsisa: TFloatField;
    btnExport: TSCButton;
    Masterevocer: TFloatField;
    Mastermvocer: TFloatField;
    MemMasterispilih: TStringField;
    MemMasterispilih_1: TStringField;
    MemMasterno_nota: TStringField;
    MemMasterdt_nota: TDateTimeField;
    MemMasterkd_rekanan: TStringField;
    MemMasternama_rekanan: TStringField;
    MemMasterid_division: TStringField;
    MemMasternama_sales: TStringField;
    MemMasterno_bukti: TStringField;
    MemMasternet_n_ppn: TFloatField;
    MemMasterevocer: TFloatField;
    MemMastermvocer: TFloatField;
    MemMasternilai_retur: TFloatField;
    MemMastertotal: TFloatField;
    MemMasterpembayaran: TFloatField;
    MemMastersisa: TFloatField;
    grddbtvAP_Listevocer: TcxGridDBColumn;
    grddbtvAP_Listmvocer: TcxGridDBColumn;
    grddbtvAP_Listtotal: TcxGridDBColumn;
    qryPrintevocer: TFloatField;
    qryPrintmvocer: TFloatField;
    MemMasterPrintispilih: TStringField;
    MemMasterPrintno_nota: TStringField;
    MemMasterPrintdt_nota: TDateTimeField;
    MemMasterPrintkd_rekanan: TStringField;
    MemMasterPrintnama_rekanan: TStringField;
    MemMasterPrintid_division: TStringField;
    MemMasterPrintnama_sales: TStringField;
    MemMasterPrintno_bukti: TStringField;
    MemMasterPrintnet_n_ppn: TFloatField;
    MemMasterPrintevocer: TFloatField;
    MemMasterPrintmvocer: TFloatField;
    MemMasterPrintnilai_retur: TFloatField;
    MemMasterPrinttotal: TFloatField;
    MemMasterPrintpembayaran: TFloatField;
    MemMasterPrintsisa: TFloatField;
    tabPeriode: TcxTabSheet;
    grdPeriode: TcxGrid;
    grddbtv_Periode: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    grdLvlPeriode: TcxGridLevel;
    qryPeriode: TZReadOnlyQuery;
    dsqryPeriode: TDataSource;
    qryPeriodeispilih: TStringField;
    qryPeriodeno_nota: TStringField;
    qryPeriodedt_nota: TDateTimeField;
    qryPeriodekd_rekanan: TStringField;
    qryPeriodenama_rekanan: TStringField;
    qryPeriodeid_division: TStringField;
    qryPeriodenama_sales: TStringField;
    qryPeriodeno_bukti: TStringField;
    qryPeriodenet_n_ppn: TFloatField;
    qryPeriodeevocer: TFloatField;
    qryPeriodemvocer: TFloatField;
    qryPeriodenilai_retur: TFloatField;
    qryPeriodetotal: TFloatField;
    qryPeriodepembayaran: TFloatField;
    qryPeriodesisa: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure qrySUM_OUTLETBeforeOpen(DataSet: TDataSet);
    procedure qrySUM_SALESBeforeOpen(DataSet: TDataSet);
    procedure tabDetailShow(Sender: TObject);
    procedure tabOutletShow(Sender: TObject);
    procedure tabSalesShow(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure qryPeriodeBeforeOpen(DataSet: TDataSet);
    procedure tabPeriodeShow(Sender: TObject);
  private
    { Private declarations }
    namamenu : string;
    vtag : integer;
    procedure UpdateView(ds : TDataSet);
    procedure OpenDataset(ds : TDataSet);
    procedure OpenDataMaster;
    procedure PrintOption(opt: string; val : String);
    procedure PrintOptionPeriode(opt: string; val : String);
    procedure ExportOption(opt: string; val : String);
    procedure ExportOptionPeriode(opt: string; val : String);
    procedure PrepareForPrint(pCap : String);
    procedure getList;

  public
    { Public declarations }
  end;

var
  InfoARListFrm: TInfoARListFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);

implementation

uses U_DM, U_PrintOption;

{$R *.dfm}
procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  InfoARListFrm := TInfoARListFrm.Create(Application);
  InfoARListFrm.namamenu := pNamaMenu;
  InfoARListFrm.vtag:= ptag;
  InfoARListFrm.lblHeader1.Caption := pNamaMenu;
  InfoARListFrm.pgcMaster.ActivePageIndex:= 0;
  InfoARListFrm.Show;
end;


procedure TInfoARListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;


procedure TInfoARListFrm.OpenDataset(ds : TDataSet);
begin
   try
     ds.Close;
     ds.Open;
     if ds=Master then begin
        Detail.Close;
        Detail.Open;
     end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TInfoARListFrm.OpenDataMaster;
var s, ptgl0, ptgl1 : String;

begin
  ptgl0:= QuotedStr(FormatDateTime('dd/mm/yyyy',dtpStart.Date));
  ptgl1:= QuotedStr(FormatDateTime('dd/mm/yyyy',dtpEnd.Date));


  if rbBelumLunas.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+ptgl0+','+ptgl1+')';
     s:= s+' WHERE sisa>1';
  end
  else
  if rbSemua.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+ptgl0+','+ptgl1+')';
  end
  else
  if rbSudahLunas.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+ptgl0+','+ptgl1+')';
     s:= s+' WHERE sisa<=1';
  end
  else
  if rbBelumDibayar.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+ptgl0+','+ptgl1+')';
     s:= s+' WHERE pembayaran=0';
  end
  else
  if rbDiangsur.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+ptgl0+','+ptgl1+')';
     s:= s+' WHERE sisa>1 AND pembayaran>0';

  end;

   try
     Detail.Close;
     Master.Close;
     Master.SQL.Clear;
     Master.Params.Clear;
     Master.SQL.Add(s);
     Master.Open;
     Detail.Open;

     MemMaster.Close;
     MemMaster.Open;
     MemMaster.EmptyTable;
     MemMaster.LoadFromDataSet(Master, [mtcpoAppend]);

   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TInfoARListFrm.UpdateView(ds : TDataSet);
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnPrint.Visible:= False;
  end else begin
    isBrowse := ds.State=dsBrowse;
    isEmpty := ds.RecordCount=0;
    dbnBrowse.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    grddbtvAP_List.OptionsData.Inserting:= False;
//    grddbtvAP_List.OptionsData.Editing:= False;
    grddbtvAP_List.OptionsData.Deleting:= False;

    btnPrint.Visible:= True;
    btnPrint.Enabled:= not isEmpty and accprint;

    btnExport.Visible:= True;
    btnExport.Enabled:= not isEmpty and accprint;


    grddbtvAP_ListDetail.OptionsData.Inserting:= False;
    grddbtvAP_ListDetail.OptionsData.Editing:= False;
    grddbtvAP_ListDetail.OptionsData.Deleting:= False;

    btnRefresh.Enabled:= not isEmpty;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
  end;
end;


procedure TInfoARListFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoARListFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TInfoARListFrm.btnOKClick(Sender: TObject);
begin
   case pgcMaster.ActivePageIndex of
     0: begin OpenDataMaster; UpdateView(Master); end;
     1: begin OpenDataset(qrySUM_OUTLET); UpdateView(qrySUM_OUTLET); end;
     2: begin OpenDataset(qrySUM_SALES); UpdateView(qrySUM_SALES); end;
     3: begin OpenDataset(qryPeriode); UpdateView(qryPeriode); end;
   end;
end;

procedure TInfoARListFrm.getList;
begin
  try
    MemMasterPrint.Close;
    MemMasterPrint.Open;
    MemMaster.DisableControls;
    MemMaster.First;
    try
      while not MemMaster.Eof do begin
         if MemMasterispilih.AsString='1' then begin
            MemMasterPrint.Append;
            MemMasterPrintno_nota.AsString:= MemMasterno_nota.AsString;
            MemMasterPrintno_bukti.AsString:= MemMasterno_bukti.AsString;
            MemMasterPrintdt_nota.AsDateTime:= MemMasterdt_nota.AsDateTime;
            MemMasterPrintnama_rekanan.AsString:= MemMasternama_rekanan.AsString;
            MemMasterPrintid_division.AsString:= MemMasterid_division.AsString;
            MemMasterPrintnama_sales.AsString:= MemMasternama_sales.AsString;
            MemMasterPrintnet_n_ppn.AsFloat:= MemMasternet_n_ppn.AsFloat;
            MemMasterPrintnilai_retur.AsFloat:= MemMasternilai_retur.AsFloat;
            MemMasterPrinttotal.AsFloat:= MemMastertotal.AsFloat;
            MemMasterPrintpembayaran.AsFloat:= MemMasterpembayaran.AsFloat;
            MemMasterPrintsisa.AsFloat:= MemMastersisa.AsFloat;
            MemMasterPrintkd_rekanan.AsString:= MemMasterkd_rekanan.AsString;
            MemMasterPrintevocer.AsFloat:= MemMasterevocer.AsFloat;
            MemMasterPrintmvocer.AsFloat:= MemMastermvocer.AsFloat;
            MemMasterPrint.Post;
         end;
         MemMaster.Next;
      end;
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  finally
     MemMaster.First;
     MemMaster.EnableControls;
  end;
end;

procedure TInfoARListFrm.PrintOption(opt: string; val : String);
var s, ss, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);


  if rbBelumLunas.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+QuotedStr(dt2)+')';
     s:= s+' WHERE sisa>1';
  end
  else
  if rbSemua.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+QuotedStr(dt2)+')';
     s:= s+' WHERE 1=1';
  end
  else
  if rbSudahLunas.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+
       QuotedStr(dt2)+')';
     s:= s+' WHERE sisa<=1';
  end
  else
  if rbBelumDibayar.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+
       QuotedStr(dt2)+')';
     s:= s+' WHERE pembayaran=0';
  end
  else
  if rbDiangsur.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+
       QuotedStr(dt2)+')';
     s:= s+' WHERE sisa>1 AND pembayaran>0';

  end;

 if opt='SS' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY id_division, dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang');
    frxARList_SLS.ShowReport();
 end
 else
 if opt='SO' then begin   // SEMUA NOTA group by outlet
    s:= s+' ORDER BY kd_rekanan, dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='OO' then begin   // PER CUSTOMER
    s:= s+' AND kd_rekanan='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='SL' then begin   // PER SALES
    s:= s+' AND id_division='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang');
    frxARList_SLS.ShowReport();
 end
 else
  if opt='CE' then begin   // YANG DI CENTHANG
    if MemMaster.State<>dsBrowse then
       MemMaster.Post;
    PrepareForPrint('Buku Piutang');
    getList;
    frxARList_Centhang.ShowReport();
 end;
end;


procedure TInfoARListFrm.PrintOptionPeriode(opt: string; val : String);
var s, ss, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);


 s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_4('+QuotedStr(dt1)+','+QuotedStr(dt2)+')';
 s:= s+' WHERE 1=1 ';


 if opt='SS' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY id_division, dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang Per Periode');
    frxARList_SLS.ShowReport();
 end
 else
 if opt='SO' then begin   // SEMUA NOTA group by outlet
    s:= s+' ORDER BY kd_rekanan, dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang Per Periode');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='OO' then begin   // PER CUSTOMER
    s:= s+' AND kd_rekanan='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang Per Periode');
    frxARList_OLT.ShowReport();
 end
 else
 if opt='SL' then begin   // PER SALES
    s:= s+' AND id_division='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    PrepareForPrint('Buku Piutang Per Periode');
    frxARList_SLS.ShowReport();
 end;
end;

procedure TInfoARListFrm.PrepareForPrint(pCap : String);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;
  DM.Perusahaan.Close;
  DM.Perusahaan.Open;
  kmtInfo.Close;
  kmtInfo.Open;
  kmtInfo.Append;
  kmtInfouser_id.AsString := DM.UserConnect;
  kmtInfouser_name.AsString := DM.L_Userfull_name.AsString;
  kmtInfoperiode.AsString := 'Periode : '+FormatDateTime('dd mmm yyyy',dtpStart.Date)+' s/d '+FormatDateTime('dd mmm yyyy',dtpEnd.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.AsString:= 'NAMA OUTLET : '+DM.L_Customernama_rekanan.AsString;
  kmtInfo.Post;
end;



procedure TInfoARListFrm.btnPrintClick(Sender: TObject);
var f : TPrintOptionFrm;
    printMode : string;
begin

   if pgcMaster.ActivePageIndex=0 then begin
       try
         f:= TPrintOptionFrm.Create(Application);
         f.vMode:= 0;
         if f.ShowModal=mrOK then begin
             if f.RB_C_SEMUA.Checked then begin
                if f.RB_G_SALES.Checked then
                   PrintOption('SS','');
                if f.RB_G_CUSTOMER.Checked then
                   PrintOption('SO','');
             end
             else
             if f.RB_C_PERCUSTOMER.Checked then begin
                PrintOption('OO', Trim(F.ECUSTOMER.Text));
             end
             else
             if f.RB_C_PERSALES.Checked then begin
                PrintOption('SL', Trim(F.ESALES.Text));
             end
             else
             if f.RB_C_CENTHANG.Checked then begin
                 PrintOption('CE','');
             end;
         end;
       finally
         f.Free;
       end;
   end
   else
   if pgcMaster.ActivePageIndex=1 then begin
      PrepareForPrint('Rekap Piutang Per Outlet');
      try
        qrySUM_OUTLET.DisableControls;
        qrySUM_OUTLET.First;
        frxSUM_OUTLET.ShowReport();
      finally
        qrySUM_OUTLET.First;
        qrySUM_OUTLET.EnableControls;
      end;
   end
   else
   if pgcMaster.ActivePageIndex=2 then begin
      PrepareForPrint('Rekap Piutang Per Sales');
      try
        qrySUM_SALES.DisableControls;
        qrySUM_SALES.First;
        frxSUM_SALES.ShowReport();
      finally
        qrySUM_SALES.First;
        qrySUM_SALES.EnableControls;
      end;
   end
   else
   if pgcMaster.ActivePageIndex=3 then begin
       try
         f:= TPrintOptionFrm.Create(Application);
         f.vMode:= 0;
         f.RB_C_CENTHANG.Visible:= False;
         if f.ShowModal=mrOK then begin
             if f.RB_C_SEMUA.Checked then begin
                if f.RB_G_SALES.Checked then
                   PrintOptionPeriode('SS','');
                if f.RB_G_CUSTOMER.Checked then
                   PrintOptionPeriode('SO','');
             end
             else
             if f.RB_C_PERCUSTOMER.Checked then begin
                PrintOptionPeriode('OO', Trim(F.ECUSTOMER.Text));
             end
             else
             if f.RB_C_PERSALES.Checked then begin
                PrintOptionPeriode('SL', Trim(F.ESALES.Text));
             end;
         end;
       finally
         f.Free;
       end;
   end;
end;

procedure TInfoARListFrm.qrySUM_OUTLETBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_OUTLET.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TInfoARListFrm.qrySUM_SALESBeforeOpen(DataSet: TDataSet);
begin
    qrySUM_SALES.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;


procedure TInfoARListFrm.tabDetailShow(Sender: TObject);
begin
  OpenDataset(Master);
  UpdateView(Master);
end;

procedure TInfoARListFrm.tabOutletShow(Sender: TObject);
begin
  OpenDataset(qrySUM_OUTLET);
  UpdateView(qrySUM_OUTLET);
end;

procedure TInfoARListFrm.tabSalesShow(Sender: TObject);
begin
  OpenDataset(qrySUM_SALES);
  UpdateView(qrySUM_SALES);
end;

procedure TInfoARListFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TInfoARListFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TInfoARListFrm.btnCariClick(Sender: TObject);
begin
   LookBrowse.Execute;
end;

procedure TInfoARListFrm.btnFilterClick(Sender: TObject);
begin
   FilterBrowse.Execute;
end;

procedure TInfoARListFrm.ExportOption(opt: string; val : String);
var s, ss, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);

  if rbBelumLunas.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+QuotedStr(dt2)+')';
     s:= s+' WHERE sisa>1';
  end
  else
  if rbSemua.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+QuotedStr(dt2)+')';
     s:= s+' WHERE 1=1';
  end
  else
  if rbSudahLunas.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+
       QuotedStr(dt2)+')';
     s:= s+' WHERE sisa<=1';
  end
  else
  if rbBelumDibayar.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+
       QuotedStr(dt2)+')';
     s:= s+' WHERE pembayaran=0';
  end
  else
  if rbDiangsur.Checked then begin
     s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_3('+QuotedStr(dt1)+','+
       QuotedStr(dt2)+')';
     s:= s+' WHERE sisa>1 AND pembayaran>0';

  end;

 if opt='SS' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    DM.Export2Excel(qryPrint,'semua_faktur');
 end
 else
 if opt='OO' then begin   // PER CUSTOMER
    s:= s+' AND kd_rekanan='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    DM.Export2Excel(qryPrint,'no_outlet_'+val);
 end
 else
 if opt='SL' then begin   // PER SALES
    s:= s+' AND id_division='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    DM.Export2Excel(qryPrint,'no_sales_'+val);
 end
 else
  if opt='CE' then begin   // YANG DI CENTHANG
    if MemMaster.State<>dsBrowse then
       MemMaster.Post;
    getList;
    DM.Export2Excel(MemMasterPrint,'centang_saja');
 end;
end;


procedure TInfoARListFrm.ExportOptionPeriode(opt: string; val : String);
var s, ss, dt1, dt2 : String;
begin
 dt1:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
 dt2:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);

 s:= 'SELECT * FROM  transaksi.fn_rep_ar_list_4('+QuotedStr(dt1)+','+QuotedStr(dt2)+')';
 s:= s+' WHERE 1=1 ';

 if opt='SS' then begin   // SEMUA NOTA group by sales
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    DM.Export2Excel(qryPrint,'semua_faktur');
 end
 else
 if opt='OO' then begin   // PER CUSTOMER
    s:= s+' AND kd_rekanan='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    DM.Export2Excel(qryPrint,'no_outlet_'+val);
 end
 else
 if opt='SL' then begin   // PER SALES
    s:= s+' AND id_division='+QuotedStr(val);
    s:= s+' ORDER BY dt_nota';
    DM.PrepareQuery(qryPrint);
    DM.OpenQuery(qryPrint,s);
    DM.Export2Excel(qryPrint,'no_sales_'+val);
 end;
end;



procedure TInfoARListFrm.btnExportClick(Sender: TObject);
var f : TPrintOptionFrm;
    printMode : string;
begin

   if pgcMaster.ActivePageIndex=0 then begin
       try
         f:= TPrintOptionFrm.Create(Application);
         f.vMode:= 0;
         f.rgGrouping.Visible:= False;
         if f.ShowModal=mrOK then begin
             if f.RB_C_SEMUA.Checked then begin
                ExportOption('SS','');
             end
             else
             if f.RB_C_PERCUSTOMER.Checked then begin
                ExportOption('OO', Trim(F.ECUSTOMER.Text));
             end
             else
             if f.RB_C_PERSALES.Checked then begin
                ExportOption('SL', Trim(F.ESALES.Text));
             end
             else
             if f.RB_C_CENTHANG.Checked then begin
                 ExportOption('CE','');
             end;
         end;
       finally
         f.Free;
       end;
   end
   else
   if pgcMaster.ActivePageIndex=1 then begin
      DM.Export2Excel(qrySUM_OUTLET,'rekap_per_outlet');
   end
   else
   if pgcMaster.ActivePageIndex=2 then begin
      DM.Export2Excel(qrySUM_SALES,'rekap_per_sales');
   end
   else
   if pgcMaster.ActivePageIndex=3 then begin
       try
         f:= TPrintOptionFrm.Create(Application);
         f.vMode:= 0;
         f.rgGrouping.Visible:= False;
         f.RB_C_CENTHANG.Visible:= False;
         if f.ShowModal=mrOK then begin
             if f.RB_C_SEMUA.Checked then begin
                ExportOptionPeriode('SS','');
             end
             else
             if f.RB_C_PERCUSTOMER.Checked then begin
                ExportOptionPeriode('OO', Trim(F.ECUSTOMER.Text));
             end
             else
             if f.RB_C_PERSALES.Checked then begin
                ExportOptionPeriode('SL', Trim(F.ESALES.Text));
             end
             else
             if f.RB_C_CENTHANG.Checked then begin
                 ExportOptionPeriode('CE','');
             end;
         end;
       finally
         f.Free;
       end;
   end;

end;

procedure TInfoARListFrm.qryPeriodeBeforeOpen(DataSet: TDataSet);
begin
    qryPeriode.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
    qryPeriode.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);
end;

procedure TInfoARListFrm.tabPeriodeShow(Sender: TObject);
begin
  OpenDataset(qryPeriode);
  UpdateView(qryPeriode);
end;

end.

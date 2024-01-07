unit U_BankRekonsiliasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DateUtils, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, AdvMenus, frxExportRTF, frxExportPDF, frxClass, frxExportXLS,
  kbmMemTable, frxDBSet, ZDataset, ZAbstractRODataset, ZAbstractDataset,
  AdvAppStyler, AdvToolBar, AdvToolBarStylers, AdvPanel,
  cxGridBandedTableView, cxGridTableView, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Wwkeycb, ExtCtrls, AdvReflectionImage, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, wwdbdatetimepicker,
  cxContainer, cxLabel, SCStdControls, DBCtrls, RzDBNav, SCControl,
  cxLookAndFeels, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  RzPanel;

type
  TBankRekonsiliasiFrm = class(TForm)
    pnlBottom: TSCPanel;
    dbnItem: TRzDBNavigator;
    btnRefresh: TSCButton;
    btnClose: TSCButton;
    btnSearch: TSCButton;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    AFS: TAdvFormStyler;
    grdProject: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdProjectLevelMaster: TcxGridLevel;
    pnlTop: TSCPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    dsMaster: TDataSource;
    Master: TZQuery;
    qryUpdate: TZReadOnlyQuery;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    description: TcxGridDBColumn;
    qty_ot: TcxGridDBColumn;
    satuan: TcxGridDBColumn;
    harga: TcxGridDBColumn;
    disc_psn: TcxGridDBColumn;
    sub_total: TcxGridDBColumn;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    frxRepMaster: TfrxReport;
    MemMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    frxDBInfo: TfrxDBDataset;
    MemRepInfo: TkbmMemTable;
    MemRepInfojudul: TStringField;
    MemRepInfousr_print: TStringField;
    MemRepInfodt_print: TStringField;
    MemRepInfotgl1: TStringField;
    MemRepInfotgl2: TStringField;
    pnlSearch: TSCPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    MemMasterno_pemb: TStringField;
    MemMasterno_bukti: TStringField;
    MemMastertgl: TStringField;
    MemMasterdiskripsi: TStringField;
    MemMasterdebet: TFloatField;
    MemMasterkredit: TFloatField;
    MemRepInfokode_rek: TStringField;
    MemRepInfosal_awal: TStringField;
    MemRepInfosal_akir: TStringField;
    MemRepInfomutasi: TStringField;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtDatePicker1: TwwDBDateTimePicker;
    edtDatePicker2: TwwDBDateTimePicker;
    btnOK: TcxButton;
    grddbtvMasterdt_payment: TcxGridDBColumn;
    grddbtvMasterdue_date: TcxGridDBColumn;
    grddbtvMasterno_payment: TcxGridDBColumn;
    grddbtvMasteriscair: TcxGridDBColumn;
    grddbtvMasterdt_cair: TcxGridDBColumn;
    grddbtvMasternama_rekanan: TcxGridDBColumn;
    grddbtvMasterno_bkbb: TcxGridDBColumn;
    PopUp: TAdvPopupMenu;
    Issued1: TMenuItem;
    grddbtvMasterid_payment: TcxGridDBColumn;
    Masterid_payment: TLargeintField;
    Masterid_trans: TStringField;
    Masterno_payment: TStringField;
    Masterdt_payment: TDateTimeField;
    Masterdue_date: TDateTimeField;
    Masteriscair: TStringField;
    Masterdt_cair: TDateTimeField;
    Masterno_bkbb: TStringField;
    Masternominal: TFloatField;
    Masternama_rekening: TStringField;
    Masternama_rekanan: TStringField;
    grddbtvMasternominal: TcxGridDBColumn;
    grddbtvMasternama_rekening: TcxGridDBColumn;
    Masterjns_ttbg: TStringField;
    grddbtvMasterjns_ttbg: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure Issued1Click(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
    procedure OpenDataset;
  public
    { Public declarations }
  end;

var
  BankRekonsiliasiFrm: TBankRekonsiliasiFrm;

  procedure ShowForm(ptag : integer);

implementation

uses U_DM, U_DateCair;

{$R *.dfm}

procedure ShowForm(ptag : integer);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;

  BankRekonsiliasiFrm:= TBankRekonsiliasiFrm.Create(Application);
  with BankRekonsiliasiFrm do begin
      OpenDataset;
      vtag:= ptag;
      UpdateView;
      ShowWindow(Handle, SW_Maximize);
  end;
end;

procedure TBankRekonsiliasiFrm.OpenDataset;
begin
  try
    Master.Close;
    Master.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
    Master.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
    Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TBankRekonsiliasiFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
     grdProject.Enabled:= False;
     btnSearch.Visible:= True;
     btnSearch.Enabled:= False;
     btnRefresh.Visible:= True;
     btnRefresh.Enabled:= False;
//     btnPrint.Visible:= True;
//     btnPrint.Enabled:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;

     dbnItem.Enabled:= isBrowse;
     DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

     btnSearch.Visible:= isBrowse;
     btnSearch.Enabled:= not isEmpty;
     btnRefresh.Visible := isBrowse;
     btnRefresh.Enabled := isBrowse;
//     btnPrint.Visible:= isBrowse;
//     btnPrint.Enabled:= not isEmpty and accprint;

     grddbtvMaster.OptionsData.Appending:= False;
     grddbtvMaster.OptionsData.Inserting:= False;
     grddbtvMaster.OptionsData.Editing:= False;
     grddbtvMaster.OptionsData.Deleting:= False;

  end;
end;


procedure TBankRekonsiliasiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
 BankRekonsiliasiFrm:=nil;
end;

procedure TBankRekonsiliasiFrm.btnOKClick(Sender: TObject);
begin
  OpenDataset;
  UpdateView;
end;

procedure TBankRekonsiliasiFrm.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TBankRekonsiliasiFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TBankRekonsiliasiFrm.btnRefreshClick(Sender: TObject);
begin
   OpenDataset;
   UpdateView;
end;

procedure TBankRekonsiliasiFrm.Issued1Click(Sender: TObject);
var f : TDateCairFrm;
   s : String;
   vdate : TdateTime;
begin
   DM.vSysDate.Close;
   DM.vSysDate.Open;

   try
     f:= TDateCairFrm.Create(Application);
     f.dtpStart.Date:=DM.vSysDatedt_server.AsDateTime;
     if f.ShowModal=mrOK then begin

        vdate:= f.dtpStart.Date;

        s:= 'update accfin.payment';
        s:=s+' set iscair='+QuotedStr('1');
        s:=s+', dt_cair=to_timestamp('+QuotedStr(FormatDateTime('dd/mm/yyyy',vdate))+','+QuotedStr('dd/mm/yyyy')+')';
        s:=s+', no_bkbb= (select accfin.fn_gen_rekonsilisai_number())';
        s:=s+' where id_payment='+IntToStr(Masterid_payment.Value);
//        s:=s+' and iscair='+QuotedStr('0');

        qryUpdate.Close;
        qryUpdate.Params.Clear;
        qryUpdate.SQL.Clear;
        qryUpdate.SQL.Add(s);
        qryUpdate.ExecSQL;

        OpenDataset;
     end;
   finally
     f.Free;
   end;
end;

end.

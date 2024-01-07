unit U_InfoBukuBesar;

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
  frxExportRTF, frxExportXML, frxRich, AdvPanel, AdvAppStyler, AdvToolBar,
  AdvToolBarStylers, frxChBox;

type
  TInfoBukuBesarFrm = class(TForm)
    SCPanel1: TSCPanel;
    Label2: TLabel;
    btnOK: TcxButton;
    RzGroupBox1: TRzGroupBox;
    edtDatePicker1: TwwDBDateTimePicker;
    cxLabel1: TcxLabel;
    edtDatePicker2: TwwDBDateTimePicker;
    Master: TZReadOnlyQuery;
    dsMaster: TDataSource;
    frxRichObject1: TfrxRichObject;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMaster: TfrxDBDataset;
    rptBukuBesarPerRekening: TfrxReport;
    kmtMaster: TkbmMemTable;
    kmtDetail: TkbmMemTable;
    frxDBdETAIL: TfrxDBDataset;
    Detail: TZReadOnlyQuery;
    dsDetail: TDataSource;
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
    frxCheckBoxObject1: TfrxCheckBoxObject;
    Masterid_rek_gl: TStringField;
    Masterid_parent: TStringField;
    Masterdescriptions: TStringField;
    Masterisdetail: TStringField;
    Masterawal: TFloatField;
    Masterberjalan: TFloatField;
    Detailno_payment: TStringField;
    Detailno_bukti: TStringField;
    Detailno_nota: TStringField;
    Detaildt_memorial: TDateTimeField;
    Detaildescriptions: TStringField;
    Detaildebet: TFloatField;
    Detailkredit: TFloatField;
    Masterakhir: TFloatField;
    pgcMaster: TcxPageControl;
    tabBukuBesar: TcxTabSheet;
    tabNeracaSaldo: TcxTabSheet;
    grdMaster: TcxGrid;
    grdDBTVMaster: TcxGridDBTableView;
    grdDBTVMasterid_rek_gl: TcxGridDBColumn;
    grdDBTVMasterdescriptions: TcxGridDBColumn;
    grdDBTVMasterawal: TcxGridDBColumn;
    grdDBTVMasterberjalan: TcxGridDBColumn;
    grdDBTVMasterakhir: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detail: TcxGridDBTableView;
    grddbtvBrowse_PR_Project_Detailid_item: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detaildescription: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detailqty: TcxGridDBColumn;
    grddbtvBrowse_PR_Project_Detailid_unit: TcxGridDBColumn;
    grdLvlMaster: TcxGridLevel;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grddbtvDetailno_bukti: TcxGridDBColumn;
    grddbtvDetaildt_memorial: TcxGridDBColumn;
    grddbtvDetaildescriptions: TcxGridDBColumn;
    grddbtvDetaildebet: TcxGridDBColumn;
    grddbtvDetailkredit: TcxGridDBColumn;
    grdlvlDetail: TcxGridLevel;
    adpDetailNavigator: TAdvDockPanel;
    pgcNeracaSaldo: TcxPageControl;
    tabAktiva: TcxTabSheet;
    tabPasiva: TcxTabSheet;
    tabRugiLaba: TcxTabSheet;
    tabSemua: TcxTabSheet;
    grdAkitva: TcxGrid;
    grdDBTVAkitva: TcxGridDBTableView;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    grdLvlAkitva: TcxGridLevel;
    grdPasiva: TcxGrid;
    grdDBTVPasiva: TcxGridDBTableView;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    grdLvlPasiva: TcxGridLevel;
    grdRL: TcxGrid;
    grdDBTV_RL: TcxGridDBTableView;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    grdLvlRL: TcxGridLevel;
    grdSemua: TcxGrid;
    grdDBTVSemua: TcxGridDBTableView;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    grdLvlSemua: TcxGridLevel;
    qryAktiva: TZReadOnlyQuery;
    dsqryAktiva: TDataSource;
    qryAktivaid_rek_gl: TStringField;
    qryAktivadescriptions: TStringField;
    qryAktivaawal: TFloatField;
    qryAktivadebet: TFloatField;
    qryAktivakredit: TFloatField;
    qryAktivaakhir: TFloatField;
    grdDBTVAkitvaid_rek_gl: TcxGridDBColumn;
    grdDBTVAkitvadescriptions: TcxGridDBColumn;
    grdDBTVAkitvaawal: TcxGridDBColumn;
    grdDBTVAkitvadebet: TcxGridDBColumn;
    grdDBTVAkitvakredit: TcxGridDBColumn;
    grdDBTVAkitvaakhir: TcxGridDBColumn;
    qryPasiva: TZReadOnlyQuery;
    dsqryPasiva: TDataSource;
    qryRL: TZReadOnlyQuery;
    dsRL: TDataSource;
    qrySemua: TZReadOnlyQuery;
    dsqrySemua: TDataSource;
    qryPasivaid_rek_gl: TStringField;
    qryPasivadescriptions: TStringField;
    qryPasivaawal: TFloatField;
    qryPasivadebet: TFloatField;
    qryPasivakredit: TFloatField;
    qryPasivaakhir: TFloatField;
    qrySemuaid_rek_gl: TStringField;
    qrySemuadescriptions: TStringField;
    qrySemuaawal: TFloatField;
    qrySemuadebet: TFloatField;
    qrySemuakredit: TFloatField;
    qrySemuaakhir: TFloatField;
    qryRLid_rek_gl: TStringField;
    qryRLdescriptions: TStringField;
    qryRLawal: TFloatField;
    qryRLdebet: TFloatField;
    qryRLkredit: TFloatField;
    qryRLakhir: TFloatField;
    grdDBTVPasivaid_rek_gl: TcxGridDBColumn;
    grdDBTVPasivadescriptions: TcxGridDBColumn;
    grdDBTVPasivaawal: TcxGridDBColumn;
    grdDBTVPasivadebet: TcxGridDBColumn;
    grdDBTVPasivakredit: TcxGridDBColumn;
    grdDBTVPasivaakhir: TcxGridDBColumn;
    grdDBTV_RLid_rek_gl: TcxGridDBColumn;
    grdDBTV_RLdescriptions: TcxGridDBColumn;
    grdDBTV_RLawal: TcxGridDBColumn;
    grdDBTV_RLdebet: TcxGridDBColumn;
    grdDBTV_RLkredit: TcxGridDBColumn;
    grdDBTV_RLakhir: TcxGridDBColumn;
    grdDBTVSemuaid_rek_gl: TcxGridDBColumn;
    grdDBTVSemuadescriptions: TcxGridDBColumn;
    grdDBTVSemuaawal: TcxGridDBColumn;
    grdDBTVSemuadebet: TcxGridDBColumn;
    grdDBTVSemuakredit: TcxGridDBColumn;
    grdDBTVSemuaakhir: TcxGridDBColumn;
    kmtMasterid_rek_gl: TStringField;
    kmtMasterid_parent: TStringField;
    kmtMasterdescriptions: TStringField;
    kmtMasterisdetail: TStringField;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    LblSaldoAwal: TLabel;
    Label3: TLabel;
    LblMutasi: TLabel;
    Label5: TLabel;
    LblSaldoAkhir: TLabel;
    Detailid_cc_project: TStringField;
    grddbtvDetailid_cc_project: TcxGridDBColumn;
    kmtMasterawal: TStringField;
    kmtMasterberjalan: TStringField;
    kmtMasterakhir: TStringField;
    kmtDetailno_payment: TStringField;
    kmtDetailno_bukti: TStringField;
    kmtDetailno_nota: TStringField;
    kmtDetailid_cc_project: TStringField;
    kmtDetaildescriptions: TStringField;
    kmtDetaildebet: TFloatField;
    kmtDetailkredit: TFloatField;
    kmtDetaildt_memorial: TStringField;
    kmtMasterdt_print: TStringField;
    kmtMasteruser_print: TStringField;
    kmtMasternama_menu: TStringField;
    kmtMasterperiode: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure edtDatePicker2CloseUp(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure MasterCalcFields(DataSet: TDataSet);
    procedure qryAktivaCalcFields(DataSet: TDataSet);
    procedure qryPasivaCalcFields(DataSet: TDataSet);
    procedure qryRLCalcFields(DataSet: TDataSet);
    procedure qrySemuaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vjns_transaksi, vjns_gudang, vjns_item, namamenu : string;
    vtag : integer;
    procedure UpdateView;

  public
    { Public declarations }
  end;

var
  InfoBukuBesarFrm: TInfoBukuBesarFrm;


implementation

uses U_DM;

{$R *.dfm}


procedure TInfoBukuBesarFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TInfoBukuBesarFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnPrint.Visible:= False;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    dbnBrowse.Enabled := isBrowse;

    DM.GetAccessRights(514, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport, accpreparer, accreviewer, accapprover);

    grdDBTVMaster.OptionsData.Inserting:= False;
    grdDBTVMaster.OptionsData.Editing:= False;
    grdDBTVMaster.OptionsData.Deleting:= False;

    grddbtvDetail.OptionsData.Inserting:= False;
    grddbtvDetail.OptionsData.Editing:= False;
    grddbtvDetail.OptionsData.Deleting:= False;

    btnRefresh.Visible := isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
  end;
end;


procedure TInfoBukuBesarFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TInfoBukuBesarFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TInfoBukuBesarFrm.btnOKClick(Sender: TObject);
begin
   try
      try
        Detail.Close;
        Master.Close;
        Master.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker1.Date);
        Master.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date);
        Master.Open;
        Detail.Open;
      except
        on E: Exception do begin
          MessageBox(0, PChar(E.Message), 'Error', MB_ICONERROR or MB_OK);
        end
     end;
   finally
     UpdateView;
   end;
end;

procedure TInfoBukuBesarFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TInfoBukuBesarFrm.edtDatePicker2CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if edtDatePicker2.Date<edtDatePicker1.Date then begin
    DecodeDate(edtDatePicker2.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    edtDatePicker1.Date:=dt;
  end
end;

procedure TInfoBukuBesarFrm.btnPrintClick(Sender: TObject);
var i, row_count: Integer;
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;

  kmtMaster.Close;
  kmtMaster.Open;
  kmtMaster.Append;
  kmtMasterid_rek_gl.AsString := Masterid_rek_gl.AsString;
  kmtMasterdescriptions.AsString := Masterdescriptions.AsString;
  kmtMasterawal.AsString := FormatFloat('0.0,0', Masterawal.AsFloat);
  kmtMasterberjalan.AsString := FormatFloat('0.0,0', Masterberjalan.AsFloat);
  kmtMasterakhir.AsString := FormatFloat('0.0,0', Masterakhir.AsFloat);
  kmtMasterperiode.AsString:= FormatDateTime('dd-mmm-yyyy', edtDatePicker1.Date)+ ' To '+ FormatDateTime('dd-mmm-yyyy', edtDatePicker2.Date);
  kmtMasteruser_print.AsString := 'User Print : '+DM.UserConnect;
  kmtMasterdt_print.AsString:= 'Print Date : '+FormatDateTime('dd-mmm-yyyy', DM.vSysDatedt_server.AsDateTime);

  kmtMaster.Post;

      if Detail.RecordCount=0 then
      Exit;

      kmtDetail.Close;
      kmtDetail.Open;
      if Detail.RecordCount<10 then begin
        row_count:= 10-Detail.RecordCount;
        Detail.DisableControls;
        try
          Detail.First;
          while not Detail.Eof do begin
            kmtDetail.Append;
            kmtDetailno_bukti.AsString:= Detailno_bukti.AsString;
            kmtDetailid_cc_project.AsString:= Detailid_cc_project.AsString;
            kmtDetaildescriptions.AsString:= Detaildescriptions.AsString;
            if Detaildt_memorial.IsNull then kmtDetaildt_memorial.AsString:= ''
            else kmtDetaildt_memorial.AsString:= FormatDateTime('dd mmm yyyy', Detaildt_memorial.AsDateTime);

            kmtDetaildebet.AsFloat:= Detaildebet.AsFloat;
            kmtDetailkredit.AsFloat:= Detaildebet.AsFloat;
            kmtDetail.Post;
            Detail.Next;
          end;
          for i := 1 to row_count do begin
            kmtDetail.Append;
            kmtDetailno_bukti.AsString:= '';
            kmtDetailid_cc_project.AsString:= '';
            kmtDetaildescriptions.AsString:= '';
            kmtDetaildt_memorial.AsString:= '';
            kmtDetaildebet.Clear;
            kmtDetailkredit.Clear;
            kmtDetail.Post;
          end;
        finally
          Detail.First;
          Detail.EnableControls
        end
      end else begin
        Detail.DisableControls;
        try
          Detail.First;
          while not Detail.Eof do begin
            kmtMaster.Append;
            kmtDetailno_bukti.AsString:= Detailno_bukti.AsString;
            kmtDetailid_cc_project.AsString:= Detailid_cc_project.AsString;
            kmtDetaildescriptions.AsString:= Detaildescriptions.AsString;
            if Detaildt_memorial.IsNull then kmtDetaildt_memorial.AsString:= ''
            else kmtDetaildt_memorial.AsString:= FormatDateTime('dd mmm yyyy', Detaildt_memorial.AsDateTime);

            kmtDetaildebet.AsFloat:= Detaildebet.AsFloat;
            kmtDetailkredit.AsFloat:= Detaildebet.AsFloat;
            kmtDetail.Post;
            Detail.Next;
          end;
        finally
          Detail.First;
          Detail.EnableControls
        end
      end;

      rptBukuBesarPerRekening.ShowReport;
end;

procedure TInfoBukuBesarFrm.MasterCalcFields(DataSet: TDataSet);
begin
   Masterakhir.AsFloat:= Masterawal.AsFloat+Masterberjalan.AsFloat;
end;

procedure TInfoBukuBesarFrm.qryAktivaCalcFields(DataSet: TDataSet);
begin
   qryAktivaakhir.AsFloat:= qryAktivaawal.AsFloat+qryAktivadebet.AsFloat-qryAktivakredit.AsFloat;
end;

procedure TInfoBukuBesarFrm.qryPasivaCalcFields(DataSet: TDataSet);
begin
   qryPasivaakhir.AsFloat:= qryPasivaawal.AsFloat+qryPasivadebet.AsFloat-qryPasivakredit.AsFloat;
end;

procedure TInfoBukuBesarFrm.qryRLCalcFields(DataSet: TDataSet);
begin
 qryRLakhir.AsFloat:= qryRLawal.AsFloat+qryRLdebet.AsFloat-qryRLkredit.AsFloat;
end;

procedure TInfoBukuBesarFrm.qrySemuaCalcFields(DataSet: TDataSet);
begin
 qrySemuaakhir.AsFloat:= qrySemuaawal.AsFloat+qrySemuadebet.AsFloat-qrySemuakredit.AsFloat;
end;

end.

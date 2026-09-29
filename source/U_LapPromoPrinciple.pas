unit U_LapPromoPrinciple;

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
  AdvToolBarStylers, frxChBox, cxRadioGroup, cxLookAndFeels, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvMenus;

type
  TLapPromoPrincipleFrm = class(TForm)
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
    SCPanel3: TSCPanel;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    SCButton1: TSCButton;
    pgcMaster: TcxPageControl;
    tabAP: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvAP_ListDetail: TcxGridDBTableView;
    grdLvlMaster: TcxGridLevel;
    dtpStart: TwwDBDateTimePicker;
    Label21: TLabel;
    btnExport: TSCButton;
    RepPerNota: TfrxReport;
    OpenDialog: TSaveDialog;
    grddbtvMasterColumn1: TcxGridDBColumn;
    grddbtvMasterColumn2: TcxGridDBColumn;
    grddbtvMasterColumn3: TcxGridDBColumn;
    grddbtvMasterColumn4: TcxGridDBColumn;
    grddbtvMasterColumn5: TcxGridDBColumn;
    grddbtvMasterColumn6: TcxGridDBColumn;
    Masterid_nota: TLargeintField;
    Masterjns_promo: TStringField;
    Masternama_promo: TStringField;
    Masterqty: TFloatField;
    Masternama_principle: TStringField;
    Masterketerangan: TStringField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Mastertotal: TFloatField;
    grddbtvMasterColumn7: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure tabAPShow(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    namamenu : string;
    vtag : integer;
    procedure UpdateView(ds : TDataSet);
    procedure PrepareForPrint(pCap : String);

  public
    { Public declarations }
  end;

var
  LapPromoPrincipleFrm: TLapPromoPrincipleFrm;

procedure ShowForm(pNamaMenu : String;  ptag : integer);


implementation

uses U_DM, U_PrintOption, cxGridExportLink;

{$R *.dfm}

procedure ShowForm(pNamaMenu : String;  ptag : integer);
begin
  LapPromoPrincipleFrm := TLapPromoPrincipleFrm.Create(Application);
  LapPromoPrincipleFrm.namamenu := pNamaMenu;
  LapPromoPrincipleFrm.vtag:= ptag;
  LapPromoPrincipleFrm.lblHeader1.Caption := pNamaMenu;
  LapPromoPrincipleFrm.pgcMaster.ActivePageIndex:= 0;
  LapPromoPrincipleFrm.Show;
end;

procedure TLapPromoPrincipleFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TLapPromoPrincipleFrm.UpdateView(ds : TDataSet);
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

    grddbtvMaster.OptionsData.Inserting:= False;
    grddbtvMaster.OptionsData.Editing:= False;
    grddbtvMaster.OptionsData.Deleting:= False;

    btnRefresh.Enabled:= not isEmpty;
    btnPrint.Visible:= isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;
    btnExport.Visible:= isBrowse;
    btnExport.Enabled := not isEmpty and accprint;
  end;
end;

procedure TLapPromoPrincipleFrm.btnRefreshClick(Sender: TObject);
begin
  btnOKClick(nil);
end;

procedure TLapPromoPrincipleFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TLapPromoPrincipleFrm.btnOKClick(Sender: TObject);
var
s, dt0, dt1 : String;
begin

  dt0:= FormatDateTime('dd/mm/yyyy',dtpStart.Date);
  dt1:= FormatDateTime('dd/mm/yyyy',dtpEnd.Date);

  Master.Close;
  Master.Params.ParamByName('ptgl0').Value:= dt0;
  Master.Params.ParamByName('ptgl1').Value:= dt1;
  Master.Open;

  UpdateView(Master);

end;

procedure TLapPromoPrincipleFrm.PrepareForPrint(pCap : String);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;
  kmtInfo.Close;
  kmtInfo.Open;
  kmtInfo.Append;
  DM.Perusahaan.Close;
  DM.Perusahaan.Open;

  kmtInfouser_id.AsString := DM.UserConnect;
  kmtInfouser_name.AsString := DM.UserConnect;
  kmtInfoperiode.AsString := 'Periode : '+FormatDateTime('dd mmm yyyy',dtpStart.Date)+' s/d '+FormatDateTime('dd mmm yyyy',dtpEnd.Date);
  kmtInfodt_now.AsString := FormatDateTime('dd mmm yyyy',dm.vSysDatedt_server.AsDateTime);
  kmtInfopnamamenu.AsString := UpperCase(pCap);
  kmtInfonama_perusahaan.AsString:= DM.Perusahaanperusahaan.AsString;
  kmtInfoalamat.AsString:= DM.Perusahaanalamat.AsString;
  kmtInfofax_telp.AsString:= 'Telp.: '+DM.Perusahaantelepon.AsString+', Fax.: '+DM.Perusahaanfax.AsString;
  kmtInfokota_negara.AsString:= UpperCase(DM.Perusahaankota.AsString);
  kmtInfofilter.AsString:= 'SUPPLIER : '+DM.L_Suppliernama_rekanan.AsString;
  kmtInfo.Post;

end;


procedure TLapPromoPrincipleFrm.btnPrintClick(Sender: TObject);
begin

  PrepareForPrint('Rekap Promo Principle');
  RepPerNota.ShowReport;

end;

procedure TLapPromoPrincipleFrm.tabAPShow(Sender: TObject);
begin
  UpdateView(Master);
end;

procedure TLapPromoPrincipleFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TLapPromoPrincipleFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TLapPromoPrincipleFrm.btnExportClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin


   if pgcMaster.ActivePageIndex=0 then begin
      if Master.RecordCount=0 then
         Exit;

      if OpenDialog.Execute then begin
         appPath:= ExtractFilePath(OpenDialog.InitialDir);
         ttl:= OpenDialog.FileName;

         if (Master.Active) and (Master.RecordCount>0) then begin
           ExportGridToExcel(appPath+ttl,grdMaster,true,true,true,'xls');

         end;

      end;

   end

end;

end.

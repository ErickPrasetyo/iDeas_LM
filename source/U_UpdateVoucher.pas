unit U_UpdateVoucher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, Menus,
  cxLookAndFeelPainters, cxSpinEdit, wwdbdatetimepicker, StdCtrls,
  cxButtons, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Wwkeycb, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, SCControl, AdvReflectionImage,
  AdvAppStyler, AdvToolBar, AdvToolBarStylers, AdvPanel,
  cxGridBandedTableView, kbmMemTable, frxClass, frxDBSet, ZSequence,
  ZDataset, ZAbstractRODataset, ZAbstractDataset, DateUtils, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, wwDialog, wwidlg, cxButtonEdit,
  cxDBLabel, cxGroupBox, cxDBEdit, frxExportRTF, frxExportPDF, frxExportXLS,
  AdvMenus, RzPanel, cxLookAndFeels, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TUpdateVoucherFrm = class(TForm)
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
    grddbtvMasternama_rekanan: TcxGridDBColumn;
    PopUp: TAdvPopupMenu;
    Issued1: TMenuItem;
    grddbtvMasterid_payment: TcxGridDBColumn;
    Masterid_nota: TLargeintField;
    Masterno_nota: TStringField;
    Masterdt_nota: TDateTimeField;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masterid_division: TStringField;
    Masternama_sales: TStringField;
    Mastertotal: TFloatField;
    Masterno_evocer: TStringField;
    Masterevocer: TFloatField;
    Masterno_mvocer: TStringField;
    Mastermvocer: TFloatField;
    grddbtvMastertotal: TcxGridDBColumn;
    grddbtvMasterno_evocer: TcxGridDBColumn;
    grddbtvMasterevocer: TcxGridDBColumn;
    grddbtvMasterno_mvocer: TcxGridDBColumn;
    grddbtvMastermvocer: TcxGridDBColumn;
    mVoucher1: TMenuItem;
    N1: TMenuItem;
    HapuseVoucher1: TMenuItem;
    HapusmVoucher1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edtDatePicker1CloseUp(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure Issued1Click(Sender: TObject);
    procedure mVoucher1Click(Sender: TObject);
    procedure HapuseVoucher1Click(Sender: TObject);
    procedure HapusmVoucher1Click(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
    procedure OpenDataset;
    function SqlText(sqlstr: string): String;
  public
    { Public declarations }
  end;

var
  UpdateVoucherFrm: TUpdateVoucherFrm;

  procedure ShowForm(ptag : integer);

implementation

uses U_DM, U_SetVoucher;

{$R *.dfm}

procedure ShowForm(ptag : integer);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;

  UpdateVoucherFrm:= TUpdateVoucherFrm.Create(Application);
  with UpdateVoucherFrm do begin
      OpenDataset;
      vtag:= ptag;
      UpdateView;
      ShowWindow(Handle, SW_Maximize);
  end;
end;

function TUpdateVoucherFrm.SqlText(sqlstr: string): String;
var s : String;
begin
  s:= 'select a.*, b.nama_rekanan';
  s:= s+' from pas.cetak_pas a';
  s:= s+' left join master.mrekanan b on b.kd_rekanan=a.kd_rekanan';
  s:= s+' where a.dt_cetak between to_timestamp('+QuotedStr(FormatDateTime('dd/mm/yyyy',edtDatePicker1.date));
  s:= s+', '+ QuotedStr('dd/mm/yyyy')+') and to_timestamp('+QuotedStr(FormatDateTime('dd/mm/yyyy',edtDatePicker2.Date));
  s:= s+', '+QuotedStr('dd/mm/yyyy')+') +  interval '+QuotedStr('23 hours 59 min');
//  if (Trim(edtJPAS.Text)='ALL') then begin
//     s:= s+sqlstr;
//  end
//  else begin
//     s:= s+' and a.kd_pas='+QuotedStr(Trim(edtJPAS.Text));
//     s:= s+sqlstr;
//  end;


  Result:= s;
end;

procedure TUpdateVoucherFrm.OpenDataset;
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

procedure TUpdateVoucherFrm.UpdateView;
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


procedure TUpdateVoucherFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
 UpdateVoucherFrm:=nil;
end;

procedure TUpdateVoucherFrm.btnOKClick(Sender: TObject);
begin
  OpenDataset;
  UpdateView;
end;

procedure TUpdateVoucherFrm.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TUpdateVoucherFrm.edtDatePicker1CloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(edtDatePicker1.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  edtDatePicker2.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TUpdateVoucherFrm.btnRefreshClick(Sender: TObject);
begin
   OpenDataset;
   UpdateView;
end;

procedure TUpdateVoucherFrm.Issued1Click(Sender: TObject);
var f : TSetVoucherFrm;
   s : String;
   vID : int64;
begin
//  e-Voucher

   try
      vID:= Masterid_nota.AsLargeInt;
     f:= TSetVoucherFrm.Create(Application);
     if f.ShowModal=mrOK then begin

        s:= 'update transaksi.nota';
        s:=s+' set no_evocer='+QuotedStr(f.edtNoVocer.Text);
        s:=s+', evocer='+f.edtNoMVocer.Text;
        s:=s+' where id_nota='+IntToStr(Masterid_nota.Value);

        qryUpdate.Close;
        qryUpdate.Params.Clear;
        qryUpdate.SQL.Clear;
        qryUpdate.SQL.Add(s);
        qryUpdate.ExecSQL;

        OpenDataset;
        Master.Locate('id_nota',vID,[loCaseInsensitive])
     end;
   finally
     f.Free;
   end;
end;

procedure TUpdateVoucherFrm.mVoucher1Click(Sender: TObject);
var f : TSetVoucherFrm;
   s, vno_old : String;
   vnilai_old : single;
   vID : int64;
begin
//  e-Voucher

   try
     vID:= Masterid_nota.AsLargeInt;
     f:= TSetVoucherFrm.Create(Application);
     f.edtNoVocer.Text:= Masterno_mvocer.AsString;
     f.edtNoMVocer.Text:= FloatToStr(Mastermvocer.AsFloat);
     if f.ShowModal=mrOK then begin

        s:= 'update transaksi.nota';
        s:=s+' set no_mvocer='+QuotedStr(f.edtNoVocer.Text);
        s:=s+', mvocer='+f.edtNoMVocer.Text;
        s:=s+' where id_nota='+IntToStr(Masterid_nota.Value);

        qryUpdate.Close;
        qryUpdate.Params.Clear;
        qryUpdate.SQL.Clear;
        qryUpdate.SQL.Add(s);
        qryUpdate.ExecSQL;

        Master.DisableControls;
        Master.Refresh;
        Master.Locate('id_nota',vID,[loCaseInsensitive])
     end;
   finally
     f.Free;
     Master.EnableControls;
   end;

end;

procedure TUpdateVoucherFrm.HapuseVoucher1Click(Sender: TObject);
var s : String;
   vID : int64;
begin
      try
        vID:= Masterid_nota.AsLargeInt;
        Master.DisableControls;
          try
            s:= 'update transaksi.nota';
            s:=s+' set no_evocer= null';
            s:=s+', evocer=0';
            s:=s+' where id_nota='+IntToStr(Masterid_nota.Value);

            qryUpdate.Close;
            qryUpdate.Params.Clear;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.Add(s);
            qryUpdate.ExecSQL;

            OpenDataset;
            Master.Locate('id_nota',vID,[loCaseInsensitive]);
          except
            on E: Exception do begin
              DM.MyMsg(mmError,'Error has been encountered !',E.Message)
            end
          end;
      finally
        Master.EnableControls;
      end;
end;

procedure TUpdateVoucherFrm.HapusmVoucher1Click(Sender: TObject);
var s : String;
   vID : int64;
begin
      try
        vID:= Masterid_nota.AsLargeInt;
        Master.DisableControls;
        try
          s:= 'update transaksi.nota';
          s:=s+' set no_mvocer= null';
          s:=s+', mvocer=0';
          s:=s+' where id_nota='+IntToStr(Masterid_nota.Value);

          qryUpdate.Close;
          qryUpdate.Params.Clear;
          qryUpdate.SQL.Clear;
          qryUpdate.SQL.Add(s);
          qryUpdate.ExecSQL;

          OpenDataset;
          Master.Locate('id_nota',vID,[loCaseInsensitive]);
        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message)
          end
        end;
      finally
         Master.EnableControls;
      end;
end;

end.

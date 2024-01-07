unit U_LookHutangUli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SCControl, SCStdControls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset, wwDialog, wwidlg, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxmdaset,
  ZAbstractDataset, cxLabel, cxPC, cxGridBandedTableView, AdvToolBar,
  AdvToolBarStylers, AdvPanel, AdvAppStyler, kbmMemTable, DateUtils, Menus,
  AdvMenus, Wwkeycb, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, wwdbdatetimepicker;

type
  TLookHutangUliFrm = class(TForm)
    pnlTop: TSCPanel;
    lblHeader: TLabel;
    dsLPR_Item_Status: TDataSource;
    LPR_Item_Status: TZQuery;
    pnlBottom: TPanel;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    gridItemPR: TcxGrid;
    grdDBTV_ItemPR: TcxGridDBTableView;
    grdLVL_ItemPR: TcxGridLevel;
    dsPR: TDataSource;
    kmtPR: TkbmMemTable;
    PopSelect: TAdvPopupMenu;
    CheckAll1: TMenuItem;
    UncheckAll1: TMenuItem;
    MenuStyler: TAdvMenuStyler;
    grdDBTV_ItemPRno_pas_sementara: TcxGridDBColumn;
    grdDBTV_ItemPRnama: TcxGridDBColumn;
    grdDBTV_ItemPRispilih: TcxGridDBColumn;
    grdDBTV_ItemPRjenis_pas: TcxGridDBColumn;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    SCPanel3: TSCPanel;
    Label21: TLabel;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    cxLabel30: TcxLabel;
    btnOK: TSCButton;
    edtFilter: TcxTextEdit;
    grdDBTV_ItemPRkd_rekanan: TcxGridDBColumn;
    grdDBTV_ItemPRid_rek_gl: TcxGridDBColumn;
    grdDBTV_ItemPRnama_rekanan: TcxGridDBColumn;
    LPR_Item_Statusispilih: TStringField;
    LPR_Item_Statusno_doc: TStringField;
    LPR_Item_Statusdt_doc: TDateTimeField;
    LPR_Item_Statusid_curr: TStringField;
    LPR_Item_Statuskurs: TFloatField;
    LPR_Item_Statusremarks: TStringField;
    LPR_Item_Statusno_bukti: TStringField;
    LPR_Item_Statuskd_rekanan: TStringField;
    LPR_Item_Statusdt_due: TDateTimeField;
    LPR_Item_Statustotal_in: TFloatField;
    LPR_Item_Statustotal_idr: TFloatField;
    LPR_Item_Statusid_rek_gl: TStringField;
    LPR_Item_Statuspembayaran: TFloatField;
    LPR_Item_Statuspembayaran_idr: TFloatField;
    LPR_Item_Statussisa: TFloatField;
    LPR_Item_Statussisa_idr: TFloatField;
    LPR_Item_Statusnama_rekanan: TStringField;
    kmtPRispilih: TStringField;
    kmtPRno_doc: TStringField;
    kmtPRdt_doc: TDateTimeField;
    kmtPRid_curr: TStringField;
    kmtPRkurs: TFloatField;
    kmtPRremarks: TStringField;
    kmtPRno_bukti: TStringField;
    kmtPRkd_rekanan: TStringField;
    kmtPRdt_due: TDateTimeField;
    kmtPRtotal_in: TFloatField;
    kmtPRtotal_idr: TFloatField;
    kmtPRid_rek_gl: TStringField;
    kmtPRpembayaran: TFloatField;
    kmtPRpembayaran_idr: TFloatField;
    kmtPRsisa: TFloatField;
    kmtPRsisa_idr: TFloatField;
    kmtPRnama_rekanan: TStringField;
    grdDBTV_ItemPRdt_due: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure CheckAll1Click(Sender: TObject);
    procedure UncheckAll1Click(Sender: TObject);
    procedure kmtPRNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenDataset;
  public
    { Public declarations }
//    vkd_rekanan : String;
  end;

var
  LookHutangUliFrm: TLookHutangUliFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TLookHutangUliFrm.FormShow(Sender: TObject);
var dt_akhir : TDateTime;
begin
//  try
//    DM.vSysDate.Close;
//    DM.vSysDate.Open;
//
//    DM.PrepareQuery(LPR_Item_Status);
//    DM.OpenQuery(LPR_Item_Status,SqlText(''));
//    kmtPR.Close;
//    kmtPR.Open;
//    kmtPR.EmptyTable;
//    kmtPR.LoadFromDataSet(LPR_Item_Status, [mtcpoAppend]);
//  except
//    on E: Exception do
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//  end;
end;


procedure TLookHutangUliFrm.CheckAll1Click(Sender: TObject);
begin
   if kmtPR.RecordCount=0 then
      Exit;

   try
     kmtPR.First;
     kmtPR.DisableControls;
     while not kmtPR.Eof do begin
        kmtPR.Edit;
        kmtPRispilih.AsString:='1';
        kmtPR.Post;
        kmtPR.Next;
     end;
     kmtPR.EnableControls;
   except
     on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
   end;
end;

procedure TLookHutangUliFrm.UncheckAll1Click(Sender: TObject);
begin
   if kmtPR.RecordCount=0 then
      Exit;

   try
     kmtPR.First;
     kmtPR.DisableControls;
     while not kmtPR.Eof do begin
        kmtPR.Edit;
        kmtPRispilih.AsString:='0';
        kmtPR.Post;
        kmtPR.Next;
     end;
     kmtPR.EnableControls;
   except
     on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
   end;
end;

procedure TLookHutangUliFrm.kmtPRNewRecord(DataSet: TDataSet);
begin
  kmtPRispilih.AsString:= '0';
end;

procedure TLookHutangUliFrm.OpenDataset;
var s, dt0, dt1, dti, dtf : String;
begin

     dt0:= QuotedStr(FormatDateTime('dd/mm/yyyy',dtpStart.Date));
     dt1:= QuotedStr(FormatDateTime('dd/mm/yyyy',dtpEnd.Date));
     dtf:= QuotedStr('dd/mm/yyyy');

      s:= 'select cast('+QuotedStr('0')+' as varchar(1)) as ispilih, a.*, b.nama_rekanan';
      s:= s+' from accfin.vnotahutang a';
      s:= s+' left join master.mrekanan b on b.kd_rekanan=a.kd_rekanan';

      s:= s+' where 1=1 ';
      s:= s+' and a.dt_doc between to_timestamp('+dt0+','+dtf+') and to_timestamp('+dt1+','+dtf+') +  interval '+QuotedStr('23 hours 59 min');

      s:= s+' AND (a.no_doc LIKE '+QuotedStr('%'+edtFilter.Text+'%');
      s:= s+' OR upper(a.nama_rekanan) LIKE '+QuotedStr('%'+UpperCase(edtFilter.Text)+'%');
      s:= s+') order by a.dt_doc';


     try
        kmtPR.DisableControls;
        try
          DM.vSysDate.Close;
          DM.vSysDate.Open;

          DM.PrepareQuery(LPR_Item_Status);
          DM.OpenQuery(LPR_Item_Status,s);

          kmtPR.Close;
          kmtPR.Open;
          kmtPR.EmptyTable;
          kmtPR.LoadFromDataSet(LPR_Item_Status, [mtcpoAppend]);
        except
          on E: Exception do
            DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end;
     finally
        kmtPR.EnableControls;
     end;
end;

end.

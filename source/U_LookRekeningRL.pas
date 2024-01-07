unit U_LookRekeningRL;

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
  AdvToolBarStylers, AdvPanel, AdvAppStyler, kbmMemTable;

type
  TLookRekeningRLFrm = class(TForm)
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
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    gridItemPR: TcxGrid;
    grdDBTV_ItemPR: TcxGridDBTableView;
    grdDBTV_ItemPRischoosen: TcxGridDBColumn;
    grdDBTV_ItemPRitem_name: TcxGridDBColumn;
    grdDBTV_ItemPRid_unit: TcxGridDBColumn;
    grdLVL_ItemPR: TcxGridLevel;
    grdDBTV_ItemPRproject_no: TcxGridDBColumn;
    dsPR: TDataSource;
    kmtPR: TkbmMemTable;
    qExec: TZQuery;
    grdDBTV_ItemPRid_rek_neraca: TcxGridDBColumn;
    kmtPRselected: TStringField;
    kmtPRid_rek_gl: TStringField;
    kmtPRdescriptions: TStringField;
    kmtPRgolongan: TStringField;
    kmtPRid_rek_rl: TStringField;
    kmtPRnama_rekening: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    vid_rek : String;
    { Public declarations }
  end;

var
  LookRekeningRLFrm: TLookRekeningRLFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TLookRekeningRLFrm.FormShow(Sender: TObject);
begin


  try
    LPR_Item_Status.Close;
    LPR_Item_Status.Open;

    kmtPR.Close;
    kmtPR.Open;
    kmtPR.EmptyTable;
    kmtPR.LoadFromDataSet(LPR_Item_Status, [mtcpoAppend]);

    kmtPR.DisableControls;
    kmtPR.First;
    while not kmtPR.Eof do begin
      if kmtPRid_rek_rl.AsString=vid_rek then begin
         kmtPR.Edit;
         kmtPRselected.AsString:= '1';
         kmtPR.Post;
      end;
      kmtPR.Next;
    end;
    kmtPR.First;
    kmtPR.EnableControls;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TLookRekeningRLFrm.btnAddClick(Sender: TObject);
begin
   if kmtPR.State<>dsBrowse then
      kmtPR.Post;

  try
    kmtPR.DisableControls;
    kmtPR.First;
    while not kmtPR.Eof do begin
      if (kmtPRselected.AsString='1') AND (kmtPRid_rek_rl.AsString<>vid_rek)  then begin
         qExec.Close;
         qExec.Params.ParamByName('vrek_rl').AsString:= vid_rek;
         qExec.Params.ParamByName('pid_rek_gl').AsString:= kmtPRid_rek_gl.AsString;
         qExec.ExecSQL;
      end;
      kmtPR.Next;
    end;
    kmtPR.EnableControls;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  ModalResult:= mrOK;
end;

end.

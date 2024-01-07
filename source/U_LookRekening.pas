unit U_LookRekening;

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
  TLookRekeningFrm = class(TForm)
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
    LPR_Item_Statusselected: TStringField;
    LPR_Item_Statusid_rek_gl: TStringField;
    LPR_Item_Statusdescriptions: TStringField;
    LPR_Item_Statusgolongan: TStringField;
    LPR_Item_Statusid_rek_neraca: TStringField;
    kmtPRselected: TStringField;
    kmtPRid_rek_gl: TStringField;
    kmtPRdescriptions: TStringField;
    kmtPRgolongan: TStringField;
    kmtPRid_rek_neraca: TStringField;
    qExec: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    grdDBTV_ItemPRid_rek_neraca: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    vid_rek : String;
    { Public declarations }
  end;

var
  LookRekeningFrm: TLookRekeningFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TLookRekeningFrm.FormShow(Sender: TObject);
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
      if kmtPRid_rek_neraca.AsString=vid_rek then begin
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

procedure TLookRekeningFrm.btnAddClick(Sender: TObject);
begin
   if kmtPR.State<>dsBrowse then
      kmtPR.Post;

  try
    kmtPR.DisableControls;
    kmtPR.First;
    while not kmtPR.Eof do begin
      if (kmtPRselected.AsString='1') AND (kmtPRid_rek_neraca.AsString<>vid_rek)  then begin
         qExec.Close;
         qExec.Params.ParamByName('vrek_neraca').AsString:= vid_rek;
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

unit U_Export;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SysUtils, DateUtils, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, kbmMemTable, kbmMemBinaryStreamFormat, DB,
  AdvPanel, AdvAppStyler, SCStdControls, SCControl, AdvGlowButton,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDBaseEdit, LMDCustomEdit, LMDCustomBrowseEdit, LMDBrowseEdit,
  ExtCtrls, StdCtrls, wwdbdatetimepicker;

type
  TExportFrm = class(TForm)
    AdvFormStyler1: TAdvFormStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    pnlTop: TAdvPanel;
    lblHeader: TLabel;
    mtExport: TkbmMemTable;
    lblLocation: TLabel;
    edtLocation: TLMDBrowseEdit;
    btnExport: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    pnlDivider: TSCPanel;
    kbmBinaryStreamFormat: TkbmBinaryStreamFormat;
    pgrsProcess: TSCProgress;
    qryExport: TZQuery;
    qryExec: TZQuery;
    dtpStart: TwwDBDateTimePicker;
    dtpEnd: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnExportClick(Sender: TObject);
    procedure mtExportProgress(DataSet: TDataSet; Percentage: Integer;
      Code: TkbmProgressCode);
  private
    { Private declarations }

  public
    { Public declarations }
//    vmode, vid_cabang : String;
//    vid_transfer : Int64;
  end;

var
  ExportFrm: TExportFrm;

implementation

uses U_DM;

{$R *.dfm}


procedure TExportFrm.btnExportClick(Sender: TObject);
var tmp,dt: TDateTime;
    dd,mm,yy: Word;
    i, cnt: Integer;
    s : String;
begin

//        DM.vSysDate.Close;
//        DM.vSysDate.Open;
//        tmp:= DM.vSysDatedt_server.AsDateTime;
//        DecodeDate(tmp,yy,mm,dd);
//        dt:= EncodeDate(yy,mm,dd);
//
//        DM.StartTransaction;
//        try
//
//          // TRANSFER SITE ESN IMEI
//          Application.ProcessMessages;
//          PrepareQuery(qryExport);
//          s:= 'select b.id_item_detail, a.id_item, a.imei_1, a.imei_2, a.esn_1, a.esn_2, a.isreceipt, a.serial_number';
//          s:= s+', a.lot_number, a.box_id';
//          s:= s+' from master.mitem_detail a, inventory.transfer_esn_imei b';
//          s:= s+' where a.id_item_detail=b.id_item_detail and b.id_transfer='+IntToStr(vid_transfer);
//          OpenQuery(qryExport,s);
//
//          pgrsProcess.Position:= 50;
//          Application.ProcessMessages;
//
//          mtExport.LoadFromDataSet(qryExport,[mtcpoStructure,mtcpoProperties]);
//
//          pgrsProcess.Position:= 75;
//          Application.ProcessMessages;
//
//          mtExport.SaveToFile(edtLocation.Text+'\'+LowerCase(vid_cabang)+'-tsimei.mtx');
//
//          pgrsProcess.Position:= 100;
//          pgrsTotal.Position:= 1;
//          Application.ProcessMessages;
//
//          DM.CommitTransaction;
//
//          DM.MyMsg(mmInformation,'Proses Ekspor Sukses','');
//          btnCancel.Caption:= 'Close';
//        except
//          on E: Exception do begin
//            DM.RollbackTransaction;
//            DM.MyMsg(mmWarning,'Proses Ekspor gagal !','Error : '+E.Message);
//          end
//        end;

end;

procedure TExportFrm.mtExportProgress(DataSet: TDataSet;
  Percentage: Integer; Code: TkbmProgressCode);
begin
  pgrsProcess.Position:= Percentage;
  Application.ProcessMessages
end;

end.

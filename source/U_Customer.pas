unit U_Customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvReflectionImage, ExtCtrls, AdvPanel, ActnList, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridBandedTableView,
  cxClasses, cxStyles, cxGridTableView, AdvAppStyler, AdvGlowButton,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxContainer, cxTextEdit,
  cxDBEdit, SCControl, SCStdControls, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, DBCtrls, RzDBEdit, Mask, RzEdit, RzLabel, RzDBLbl,
  RzPanel, SCGraphicButton, SCDbNavButton, Wwkeycb, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TCustomerFrm = class(TForm)
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    dsMaster: TDataSource;
    Master: TZQuery;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actSave: TAction;
    actCancel: TAction;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    pgMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdMasterDBTableView2: TcxGridDBTableView;
    grdMasterDBTableView2Column1: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    pnlDetailSupplier: TRzPanel;
    lblDBNamaRekanan: TRzDBLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    Label2: TLabel;
    EdtFirstName: TRzDBEdit;
    EdtContact: TRzDBEdit;
    EdtAddress: TRzDBEdit;
    EdtCity: TRzDBEdit;
    EdtPhone: TRzDBEdit;
    EdtFax: TRzDBEdit;
    edtid_Supplier: TRzDBEdit;
    qryGen_ID_Supplier: TZReadOnlyQuery;
    grddbtvMasterid_rekanan: TcxGridDBColumn;
    grddbtvMasternama_rekanan: TcxGridDBColumn;
    grddbtvMasteralamat: TcxGridDBColumn;
    grddbtvMasterkota: TcxGridDBColumn;
    grddbtvMastertelepon: TcxGridDBColumn;
    grddbtvMasterfax: TcxGridDBColumn;
    grddbtvMastercontact: TcxGridDBColumn;
    grddbtvMasterhp: TcxGridDBColumn;
    qryGen_ID_Supplierfn_gen_id_supplier: TStringField;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    edtPlafon: TRzDBEdit;
    RzLabel6: TRzLabel;
    btnFirst: TSCNavButton;
    btnPrior: TSCNavButton;
    btnNext: TSCNavButton;
    btnLast: TSCNavButton;
    pnlSearch: TSCPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    edtSearch: TwwIncrementalSearch;
    cbFieldName: TcxComboBox;
    btnSearch: TSCButton;
    actSearch: TAction;
    Masterkd_rekanan: TStringField;
    Masternama_rekanan: TStringField;
    Masteralamat: TStringField;
    Masterjenis: TStringField;
    Mastercontact: TStringField;
    Masterkota: TStringField;
    Masterkode_pos: TStringField;
    Mastertelephone: TStringField;
    Masterfaxcimile: TStringField;
    Masteralamat2: TStringField;
    Masterprovince: TStringField;
    Mastercountry: TStringField;
    Masteremail: TStringField;
    Masterremarks: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Mastercontact_title: TStringField;
    Mastermobile_no: TStringField;
    Masterplafon: TFloatField;
    Masternpwp: TStringField;
    Masternppkp: TStringField;
    edtNPWP: TRzDBEdit;
    edtNPPKP: TRzDBEdit;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    Masteris_pkp: TStringField;
    grddbtvMasterkd_gol: TcxGridDBColumn;
    ckbDetail: TcxDBCheckBox;
    Shape6: TShape;
    RzLabel12: TRzLabel;
    btnData: TSCButton;
    RzLabel11: TRzLabel;
    edtDisc: TcxDBTextEdit;
    RzLabel13: TRzLabel;
    edtTotalMin: TcxDBTextEdit;
    RzLabel14: TRzLabel;
    edtTotalMax: TcxDBTextEdit;
    Masterdisc_member_psn: TFloatField;
    Mastertotal_min: TFloatField;
    Mastertotal_max: TFloatField;
    OpenDialog: TSaveDialog;
    btnExport: TSCButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure pgMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure grddbtvMasterDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFieldNamePropertiesChange(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure btnDataClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  CustomerFrm: TCustomerFrm;

    procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, U_RepairCustomer, U_RepairData, cxGridExportLink;

{$R *.dfm}


procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  CustomerFrm:= TCustomerFrm.Create(Application);
  try
    DM.vSysDate.Close;
    DM.vSysDate.Open;
    CustomerFrm.Master.Close;
    CustomerFrm.Master.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
 // KaryawanFrm.pnlBottom.Visible:= False;
  CustomerFrm.lblHeader1.Caption:= pNamaMenu;
  CustomerFrm.vtag:= ptag;
  CustomerFrm.UpdateView;
  CustomerFrm.Show;
end;

procedure TCustomerFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TCustomerFrm.FormShow(Sender: TObject);
begin
    ShowWindow(Handle, SW_Maximize)
end;

procedure TCustomerFrm.MasterNewRecord(DataSet: TDataSet);
begin
//  Masterid_supplier.AsString:= '-';
  Masternama_rekanan.AsString := '-';
  Masteralamat.AsString:= '-';
  Masterkota.AsString:= '-';
  Mastertelephone.AsString := '-';
  Masterfaxcimile.AsString:= '-';
//  Mastercontact.AsString:= '-';
  Mastermobile_no.AsString := '-';
  Masterplafon.AsFloat:= 0;
  Masterjenis.AsString:= 'CUSTOMER';
  Masteris_pkp.AsString:= '0';
end;

procedure TCustomerFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TCustomerFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masternama_rekanan.IsNull or (Trim(Masternama_rekanan.AsString)='') then
    raise Exception.Create('Nama Rekanan harus Diisi !')
  else
  if Masterjenis.IsNull or (Trim(Masterjenis.AsString)='') then
    raise Exception.Create('Jenis Rekanan harus Diisi !')
  else
  if Masteralamat.IsNull or (Trim(Masteralamat.AsString)='') then
    raise Exception.Create('Alamat Harus Diisi !');

//  if Trim(Masterid_rekanan.AsString)='' then begin
//     qryGen_ID_Supplier.Close;
//     qryGen_ID_Supplier.Params.ParamByName('pjenis').AsString:= Masterjenis.AsString;
//     qryGen_ID_Supplier.Open;
//     Masterid_rekanan.AsString:= qryGen_ID_Supplierfn_gen_id_supplier.AsString;
//  end;


  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TCustomerFrm.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TCustomerFrm.actAddExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Append;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TCustomerFrm.actEditExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Edit;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TCustomerFrm.actDeleteExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TCustomerFrm.actRefreshExecute(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TCustomerFrm.actSaveExecute(Sender: TObject);
begin
  try
    Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TCustomerFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView;
  pgMaster.ActivePageIndex := 0;
end;

procedure TCustomerFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if Master.State=dsInactive then begin
    grdMaster.Enabled:= False;
    //pnlDataBackground.Visible:= False;
    pgMaster.ActivePageIndex := 0;
    btnFirst.Enabled:= False;
    btnPrior.Enabled:= False;
    btnNext.Enabled:= False;
    btnLast.Enabled:= False;
    btnAdd.Visible:= True;
    btnAdd.Enabled:= False;
    btnEdit.Visible:= True;
    btnEdit.Enabled:= False;
    btnDelete.Visible:= True;
    btnDelete.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnSave.Visible:= False;
    btnCancel.Visible:= False;
    btnSearch.Visible:= True;
    btnSearch.Enabled:= False;
//    btnData.Visible:= True;
//    btnData.Enabled:= False;


  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;
    grdMaster.Enabled := isBrowse;
    //pnlDataBackground.Visible := not isBrowse;
    if isBrowse then
      pgMaster.ActivePageIndex := 0
    else
      pgMaster.ActivePageIndex := 1;

    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;
    btnSearch.Visible:= isBrowse;
    btnSearch.Enabled:= not isEmpty;

//    btnData.Visible := isBrowse;
//    btnData.Enabled := not isEmpty and accedit;


    EdtFirstName.ReadOnly := isBrowse;
    EdtContact.ReadOnly := isBrowse;
    EdtAddress.ReadOnly := isBrowse;
    EdtCity.ReadOnly := isBrowse;
    EdtPhone.ReadOnly := isBrowse;
    EdtFax.ReadOnly := isBrowse;
    edtPlafon.ReadOnly:= isBrowse;
    edtNPWP.ReadOnly:= isBrowse;
    edtNPPKP.ReadOnly:= isBrowse;
    ckbDetail.Properties.ReadOnly:= isBrowse;
    edtDisc.Properties.ReadOnly:= isBrowse;
    edtTotalMin.Properties.ReadOnly:= isBrowse;
    edtTotalMax.Properties.ReadOnly:= isBrowse;
  end;
end;

procedure TCustomerFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= Master.State=dsBrowse
end;

procedure TCustomerFrm.grddbtvMasterDblClick(Sender: TObject);
begin
  pgMaster.ActivePageIndex := 1;
end;

procedure TCustomerFrm.FormCreate(Sender: TObject);
begin
  cbFieldName.Clear;
  cbFieldName.Properties.Items.Add('Kode');
  cbFieldName.Properties.Items.Add('Nama Rekanan');
end;

procedure TCustomerFrm.cbFieldNamePropertiesChange(Sender: TObject);
begin
  case cbFieldName.ItemIndex of
    0: edtSearch.SearchField:= 'kd_rekanan';
    1: edtSearch.SearchField:= 'nama_rekanan';
  end;
end;

procedure TCustomerFrm.actSearchExecute(Sender: TObject);
begin
   pnlSearch.Visible:= not pnlSearch.Visible;
end;

procedure TCustomerFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TCustomerFrm.btnDataClick(Sender: TObject);
var f : TfrmRepairData;
begin

   f := TfrmRepairData.Create(Application);
   f.Caption := 'Perbaikan Data Master Outlet';
//   f.Tag := 0;

   try
    f.ShowModal();
    Master.Refresh;
   except

   end;
end;

procedure TCustomerFrm.btnExportClick(Sender: TObject);
var
excel : Variant;
appPath, ttl :string;
begin
   if pgMaster.ActivePageIndex=0 then begin
      if Master.RecordCount=0 then
         Exit;

      if OpenDialog.Execute then begin
         appPath:= ExtractFilePath(OpenDialog.InitialDir);
         ttl:= OpenDialog.FileName;

         if (Master.Active) and (Master.RecordCount>0) then begin
           ExportGridToExcel(appPath+ttl,grdMaster,true,true,true,'xls');

         end;

      end;

   end;

end;

end.
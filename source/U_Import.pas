unit U_Import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvPanel, AdvAppStyler, DB,
  SCControl, SCStdControls, AdvGlowButton, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit,
  LMDCustomBrowseEdit, LMDBrowseEdit, kbmMemTable, kbmMemBinaryStreamFormat,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSequence, LMDControl;

type
  TImportFrm = class(TForm)
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
    pgrsTotal: TSCProgress;
    pgrsProcess: TSCProgress;
    qryExec: TZQuery;
    qryExport: TZQuery;
    qryCheck: TZQuery;
    sq_SO: TZSequence;
    sq_DO: TZSequence;
    procedure btnExportClick(Sender: TObject);
    procedure mtExportProgress(DataSet: TDataSet; Percentage: Integer;
      Code: TkbmProgressCode);
  private
    { Private declarations }
    procedure PrepareQuery(qry: TZQuery);
    procedure OpenQuery(qry: TZQuery; sqlstr: string);
    function ExecQuery(qry: TZQuery; sqlstr: string): Integer;

  public
    { Public declarations }
    vmode, vid_cabang : String;
    vid_transfer, vnewIdSo, vnewIdDo : Int64;
    isError : boolean;
  end;

var
  ImportFrm: TImportFrm;

implementation

uses U_DM;

{$R *.dfm}
procedure TImportFrm.PrepareQuery(qry: TZQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.Params.Clear;
end;

procedure TImportFrm.OpenQuery(qry: TZQuery; sqlstr: string);
begin
  qry.SQL.Add(sqlstr);
  qry.Open;
end;

function TImportFrm.ExecQuery(qry: TZQuery; sqlstr: string): Integer;
begin
  qry.SQL.Add(sqlstr);
  qry.ExecSQL;
  Result:= qry.RowsAffected
end;

procedure TImportFrm.btnExportClick(Sender: TObject);
var dt: TDateTime;
    i, cnt: Integer;
    s, opr : string;
    is_new_imei, is_new_esn : Boolean;
begin

   if vmode='SODO' then begin   /// -----------------------------------------------------START OF SODO


        DM.vSysDate.Close;
        DM.vSysDate.Open;
        dt:= DM.vSysDatedt_server.AsDateTime;
        opr:= DM.UserConnect;

        DM.StartTransaction;
        try
          pgrsTotal.Min:= 0;
          pgrsTotal.Max:= 10;

      // DELETE SO TMP DAN DO TMP

         PrepareQuery(qryExec);
         s:= 'delete from sales.do_esn_imei_tmp';
         ExecQuery(qryExec,s);

         PrepareQuery(qryExec);
         s:= 'delete from sales.do_tmp_detail';
         ExecQuery(qryExec,s);

         PrepareQuery(qryExec);
         s:= 'delete from sales.do_tmp';
         ExecQuery(qryExec,s);

         PrepareQuery(qryExec);
         s:= 'delete from sales.so_tmp_detail';
         ExecQuery(qryExec,s);

         PrepareQuery(qryExec);
         s:= 'delete from sales.so_tmp';
         ExecQuery(qryExec,s);

         
      // SO MASTER
          pgrsTotal.Position:= 0;
          Application.ProcessMessages;
          mtExport.Close;
          mtExport.LoadFromFile(edtLocation.Text+'\'+'mso.mtx');
          mtExport.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= mtExport.RecordCount;
          mtExport.First;

          while not mtExport.Eof do begin

      // CHECK SO
            PrepareQuery(qryExport);
            s:= 'select * from sales.so where so_number='+QuotedStr(mtExport.FieldByName('so_number').AsString);
            OpenQuery(qryExport,s);

            if qryExport.RecordCount=0 then begin

      //CHECK CC/PROJECT

               PrepareQuery(qryCheck);
               s:= 'select * from master.mcc_project where id_cc_project='+QuotedStr(mtExport.FieldByName('id_cc_project').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mcc_project');
                  s:= s+', '+QuotedStr('id_cc_project');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_cc_project').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      //CHECK CUSTOMER

               PrepareQuery(qryCheck);
               s:= 'select * from master.mcustomer where id_cust='+QuotedStr(mtExport.FieldByName('id_cust').AsString);
               OpenQuery(qryCheck,s);

               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mcustomer');
                  s:= s+', '+QuotedStr('id_cust');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_cust').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK CURRENCY
                PrepareQuery(qryCheck);
                s:= 'select * from master.mcurrency where id_curr='+QuotedStr(mtExport.FieldByName('id_curr').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mcurrency');
                  s:= s+', '+QuotedStr('id_curr');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_curr').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK SALESMAN

               PrepareQuery(qryCheck);
               s:= 'select * from master.msalesman where id_salesman='+QuotedStr(mtExport.FieldByName('id_salesman').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.msalesman');
                  s:= s+', '+QuotedStr('id_salesman');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_salesman').AsString)+')';
                  ExecQuery(qryExec,s);
               end;


               PrepareQuery(qryExec);
               s:='';
               s:= 'insert into sales.so_tmp';
               s:= s+' (id_so_tmp';
               s:= s+', so_number';
               s:= s+', id_cust';
               s:= s+', dt_so';
               s:= s+', cust_po_number';
               s:= s+', usr_ins';
               s:= s+', usr_upd';
               s:= s+', ispost';
               s:= s+', iscancel';
               s:= s+', isdelete';
               s:= s+', isclosed';
               s:= s+', prepared_by';
               s:= s+', id_trans';
               s:= s+', reviewed_by';
               s:= s+', approved_by';
               s:= s+', dt_prepared';
               s:= s+', dt_reviewed';
               s:= s+', dt_approved';
               s:= s+', status_auth';
               s:= s+', id_salesman';
               s:= s+', remarks';
               s:= s+', dt_po';
               s:= s+', id_cc_project';
               s:= s+', vat_str';
               s:= s+', dt_brg_diterima';
               s:= s+', dt_brg_dikirim';
               s:= s+', id_curr';
               s:= s+', payment_term';
               s:= s+', kurs';
               s:= s+', iskonsinyasi';
               s:= s+', salesman';
               s:= s+', approved_by_2';
               s:= s+', reviewed_by_2';
               s:= s+', dt_reviewed_2';
               s:= s+', dt_approved_2';
               s:= s+', st_reviewed_1';
               s:= s+', st_reviewed_2';
               s:= s+', st_approved_1';
               s:= s+', st_approved_2';
               s:= s+', disc';
               s:= s+', sub_total';
               s:= s+', total';
               s:= s+', vat_num';
               s:= s+', isinvoice';
               s:= s+', isexported';
               s:= s+', dt_exported)';
               s:= s+' values ';
               s:= s+'('+mtExport.FieldByName('id_so').AsString;
               s:= s+', '+QuotedStr(mtExport.FieldByName('so_number').AsString);
               s:= s+', '+QuotedStr(mtExport.FieldByName('id_cust').AsString);
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_so').AsDateTime))+')';
               s:= s+', '+QuotedStr(mtExport.FieldByName('cust_po_number').AsString);
               s:= s+', '+QuotedStr(mtExport.FieldByName('usr_ins').AsString);
               s:= s+', '+QuotedStr(mtExport.FieldByName('usr_upd').AsString);
               s:= s+', '+QuotedStr('0');
               s:= s+', '+QuotedStr('0');
               s:= s+', '+QuotedStr('0');
               s:= s+', '+QuotedStr('0');
               if Length(mtExport.FieldByName('prepared_by').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('prepared_by').asstring)
               else s:= s+', null';
               s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString);
               if Length(mtExport.FieldByName('reviewed_by').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('approved_by').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by').asstring)
               else s:= s+', null';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_prepared').AsDateTime))+')';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_reviewed').AsDateTime))+')';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_approved').AsDateTime))+')';
               if Length(mtExport.FieldByName('status_auth').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('status_auth').asstring)
               else s:= s+', null';
               s:= s+', '+QuotedStr(mtExport.fieldbyname('id_saleman').AsString);
               if Length(mtExport.FieldByName('remarks').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('remarks').asstring)
               else s:= s+', null';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_po').AsDateTime))+')';
               if Length(mtExport.FieldByName('id_cc_project').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('id_cc_project').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('vat_str').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('vat_str').asstring)
               else s:= s+', null';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_brg_diterima').AsDateTime))+')';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_brg_dikirim').AsDateTime))+')';
               if Length(mtExport.FieldByName('id_curr').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('id_curr').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('payment_term').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('payment_term').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('kurs').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('kurs').asstring)
               else s:= s+', 1';
               if Length(mtExport.FieldByName('iskonsinyasi').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('iskonsinyasi').asstring)
               else s:= s+', '+QuotedStr('0');
               if Length(mtExport.FieldByName('salesman').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('salesman').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('approved_by_2').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by_2').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('reviewed_by_2').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by_2').asstring)
               else s:= s+', null';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_reviewed_2').AsDateTime))+')';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_approved_2').AsDateTime))+')';
               if Length(mtExport.FieldByName('st_reviewed_1').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('st_reviewed_1').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('st_reviewed_2').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('st_reviewed_2').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('st_approved_1').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('st_approved_1').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('st_approved_2').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('st_approved_2').asstring)
               else s:= s+', null';
               if Length(mtExport.FieldByName('disc').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('disc').asstring)
               else s:= s+', 0';
               if Length(mtExport.FieldByName('sub_total').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('sub_total').asstring)
               else s:= s+', 0';
               if Length(mtExport.FieldByName('total').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('total').asstring)
               else s:= s+', 0';
               if Length(mtExport.FieldByName('vat_num').asstring)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('vat_num').asstring)
               else s:= s+', 0';
               s:= s+', '+QuotedStr('0');
               s:= s+', '+QuotedStr('1');
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_exported').AsDateTime))+')';
               s:= s+')';
               ExecQuery(qryExec,s);
            end;

            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            mtExport.Next
          end;
          pgrsProcess.Position:= 100;

          pgrsTotal.Position:= 1;
          Application.ProcessMessages;

      // SO DETAIL

          mtExport.Close;
          mtExport.LoadFromFile(edtLocation.Text+'\'+'dso.mtx');
          mtExport.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= mtExport.RecordCount;
          mtExport.First;

          while not mtExport.Eof do begin

      // CHECK ITEM
                PrepareQuery(qryCheck);
                s:= 'select * from master.mitem where id_item='+QuotedStr(mtExport.FieldByName('id_item').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mitem');
                  s:= s+', '+QuotedStr('id_item');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('kd_item').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

            PrepareQuery(qryExec);
            s:= 'insert into sales.so_tmp_detail';
            s:= s+' (id_so_tmp';
            s:= s+', kd_item';
            s:= s+', qty';
            s:= s+', kd_satuan';
            s:= s+', nomor';
            s:= s+', unit_price';
            s:= s+', qoh';
            s:= s+', qoo';
            s:= s+', disc)';
            s:= s+' values (';
            s:= s+mtExport.FieldByName('id_so').AsString;
            s:= s+', '+QuotedStr(mtExport.FieldByName('kd_item').AsString);
            if Length(mtExport.FieldByName('qty').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('qty').AsString
            else s:= s+', 0';
            s:= s+', '+QuotedStr(mtExport.FieldByName('kd_satuan').AsString);
            if Length(mtExport.FieldByName('nomor').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('nomor').AsString
            else s:= s+', null';
            if Length(mtExport.FieldByName('unit_price').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('unit_price').AsString
            else s:= s+', 0';
            if Length(mtExport.FieldByName('qoh').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('qoh').AsString
            else s:= s+', 0';
            if Length(mtExport.FieldByName('qoo').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('qoo').AsString
            else s:= s+', 0';
            if Length(mtExport.FieldByName('disc').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('disc').AsString
            else s:= s+', 0';
            s:= s+')';
            ExecQuery(qryExec,s);


            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            mtExport.Next
          end;
          pgrsProcess.Position:= 100;


          pgrsTotal.Position:= 2;
          Application.ProcessMessages;


      // DO MASTER
          mtExport.Close;
          mtExport.LoadFromFile(edtLocation.Text+'\'+'mdo.mtx');
          mtExport.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= mtExport.RecordCount;
          mtExport.First;

          while not mtExport.Eof do begin

      // CHECK SO
            PrepareQuery(qryExport);
            s:= 'select * from sales.so where so_number='+QuotedStr(mtExport.FieldByName('so_number').AsString);
            OpenQuery(qryExport,s);

            if qryExport.RecordCount=0 then begin

      // CHECK CUSTOMER
               PrepareQuery(qryCheck);
               s:= 'select * from master.mcustomer where id_cust='+QuotedStr(mtExport.FieldByName('id_cust').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mcustomer');
                  s:= s+', '+QuotedStr('id_cust');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_cust').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK EXPEDITION
               PrepareQuery(qryCheck);
               s:= 'select * from master.mexpedition where id_exped='+QuotedStr(mtExport.FieldByName('id_exped').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mexpedition');
                  s:= s+', '+QuotedStr('id_exped');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_exped').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // INSERT INTO DO

               PrepareQuery(qryExec);
               s:='';
               s:= 'insert into sales.do_tmp (';
               s:= s+'id_do';
               s:= s+', do_number';
               s:= s+', id_so';
               s:= s+', id_cust';
               s:= s+', dt_do';
               s:= s+', id_exped';
               s:= s+', cust_po_number';
               s:= s+', ship_to';
               s:= s+', bill_to';
               s:= s+', usr_ins';
               s:= s+', usr_upd';
               s:= s+', isdelete';
               s:= s+', ispost';
               s:= s+', iscancel';
               s:= s+', prepared_by';
               s:= s+', reviewed_by';
               s:= s+', approved_by';
               s:= s+', description';
               s:= s+', id_trans';
               s:= s+', id_cc_project';
               s:= s+', status';
               s:= s+', isdelivered';
               s:= s+', so_number';
               s:= s+', reviewed_by_2';
               s:= s+', approved_by_2';
               s:= s+', dt_reviewed_2';
               s:= s+', dt_approved_2';
               s:= s+', st_reviewed_1';
               s:= s+', st_reviewed_2';
               s:= s+', st_approved_1';
               s:= s+', st_approved_2';
               s:= s+', dt_prepared';
               s:= s+', dt_reviewed';
               s:= s+', dt_approved';
               s:= s+', id_trans_so';
               s:= s+', isclosed';
               s:= s+', isexported';
               s:= s+', dt_exported)';
               s:= s+' values ';
               s:= s+'('+mtExport.FieldByName('id_do').AsString;
               s:= s+', '+QuotedStr(mtExport.FieldByName('do_number').AsString);
               s:= s+', '+mtExport.FieldByName('id_so').AsString;
               s:= s+', '+QuotedStr(mtExport.FieldByName('id_cust').AsString);
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_do').AsDateTime))+')';
               if Length(mtExport.FieldByName('id_exped').AsString)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('id_exped').AsString)
               else s:= s+', null';
               s:= s+', '+QuotedStr(mtExport.FieldByName('cust_po_number').AsString);
               s:= s+', '+QuotedStr(mtExport.FieldByName('ship_to').AsString);
               s:= s+', '+QuotedStr(mtExport.FieldByName('bill_to').AsString);
               if Length(mtExport.FieldByName('usr_ins').AsString)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('usr_ins').AsString)
               else s:= s+', null';
               if Length(mtExport.FieldByName('usr_upd').AsString)>0 then
                    s:= s+', '+QuotedStr(mtExport.FieldByName('usr_upd').AsString)
               else s:= s+', null';
               s:= s+', '+QuotedStr('0');
               s:= s+', '+QuotedStr('0');
               s:= s+', '+QuotedStr('0');
               s:= s+', '+QuotedStr(mtExport.FieldByName('prepared_by').asstring);
               s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by').asstring);
               s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by').asstring);
               s:= s+', '+QuotedStr(mtExport.FieldByName('description').asstring);
               s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString);
               if Length(mtExport.fieldbyname('id_cc_project').AsString)>0 then
                    s:= s+', '+QuotedStr(mtExport.fieldbyname('id_cc_project').AsString)
               else s:= s+', null';
               s:= s+', '+QuotedStr(mtExport.FieldByName('status').AsString);
               s:= s+', '+QuotedStr(mtExport.FieldByName('isdelivered').AsString);
               s:= s+', '+QuotedStr(mtExport.FieldByName('so_number').AsString);
               s:= s+', '+QuotedStr(mtExport.fieldbyname('reviewed_by_2').AsString);
               s:= s+', '+QuotedStr(mtExport.fieldbyname('approved_by_2').AsString);
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_reviewed_2').AsDateTime))+')';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_approved_2').AsDateTime))+')';
               s:= s+', '+QuotedStr(mtExport.fieldbyname('st_reviewed_1').AsString);
               s:= s+', '+QuotedStr(mtExport.fieldbyname('st_reviewed_2').AsString);
               s:= s+', '+QuotedStr(mtExport.fieldbyname('st_approved_1').AsString);
               s:= s+', '+QuotedStr(mtExport.fieldbyname('st_approved_2').AsString);
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_prepared').AsDateTime))+')';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_reviewed').AsDateTime))+')';
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_approved').AsDateTime))+')';
               s:= s+', '+QuotedStr(mtExport.fieldbyname('id_trans_so').AsString);
               s:= s+', '+QuotedStr(mtExport.fieldbyname('isclosed').AsString);
               s:= s+', '+QuotedStr('1');
               s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', dt))+')';
               s:= s+')';
               ExecQuery(qryExec,s);
            end;

            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            mtExport.Next
          end;
          pgrsProcess.Position:= 100;

          pgrsTotal.Position:= 3;
          Application.ProcessMessages;

      // end of DO MASTER


      // DO DETAIL

          mtExport.Close;
          mtExport.LoadFromFile(edtLocation.Text+'\'+'ddo.mtx');
          mtExport.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= mtExport.RecordCount;
          mtExport.First;

          while not mtExport.Eof do begin
            PrepareQuery(qryExec);
            s:= 'insert into sales.do_tmp_detail ';
            s:= s+'(id_do';
            s:= s+', kd_item';
            s:= s+', qty';
            s:= s+', kd_satuan';
            s:= s+', id_so';
            s:= s+', id_warehouse';
            s:= s+', remarks';
            s:= s+', nomor';
            s:= s+', unit_price';
            s:= s+', isexported';
            s:= s+', dt_exported)';
            s:= s+' values (';
            s:= s+mtExport.FieldByName('id_do').AsString;
            s:= s+', '+QuotedStr(mtExport.FieldByName('kd_item').AsString);
            s:= s+', '+mtExport.FieldByName('qty').AsString;
            s:= s+', '+QuotedStr(mtExport.FieldByName('kd_satuan').AsString);
            s:= s+', '+mtExport.FieldByName('id_so').AsString;
            s:= s+', '+QuotedStr(mtExport.FieldByName('id_warehouse').AsString);

            if Length(mtExport.FieldByName('remarks').AsString)>0 then
               s:= s+', '+QuotedStr(mtExport.FieldByName('remarks').AsString)
            else s:= s+', null';

            if Length(mtExport.FieldByName('nomor').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('nomor').AsString
            else s:= s+', null';
            if Length(mtExport.FieldByName('unit_price').AsString)>0 then
               s:= s+', '+mtExport.FieldByName('unit_price').AsString
            else s:= s+', 0';
            s:= s+' ,'+QuotedStr('1');
            s:= s+', to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', dt))+')';
            s:= s+')';
            ExecQuery(qryExec,s);


            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            mtExport.Next
          end;
          pgrsProcess.Position:= 100;


          pgrsTotal.Position:= 4;
          Application.ProcessMessages;


      // DO ESN IMEI

          mtExport.Close;
          mtExport.LoadFromFile(edtLocation.Text+'\'+'ido.mtx');
          mtExport.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= mtExport.RecordCount;
          mtExport.First;

          while not mtExport.Eof do begin
            PrepareQuery(qryExec);
            s:= 'insert into sales.do_esn_imei_tmp ';
            s:= s+'(id_do';
            s:= s+', id_item_detail';
            s:= s+', id_item';
            s:= s+', no_gsm_1';
            s:= s+', no_gsm_2';
            s:= s+', no_cdma_1';
            s:= s+', no_cdma_2';
            s:= s+', isexported';
            s:= s+', dt_exported)';
            s:= s+' values (';
            s:= s+mtExport.FieldByName('id_do').AsString;
            s:= s+', '+mtExport.FieldByName('id_item_detail').AsString;
            s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString);
            if Length(Trim(mtExport.FieldByName('no_gsm_1').AsString))>0 then
               s:= s+', '+QuotedStr(mtExport.FieldByName('no_gsm_1').AsString)
            else s:= s+', null';
            if Length(Trim(mtExport.FieldByName('no_gsm_2').AsString))>0 then
               s:= s+', '+QuotedStr(mtExport.FieldByName('no_gsm_2').AsString)
            else s:= s+', null';
            if Length(Trim(mtExport.FieldByName('no_cdma_1').AsString))>0 then
               s:= s+', '+QuotedStr(mtExport.FieldByName('no_cdma_1').AsString)
            else s:= s+', null';
            if Length(Trim(mtExport.FieldByName('no_cdma_2').AsString))>0 then
               s:= s+', '+QuotedStr(mtExport.FieldByName('no_cdma_2').AsString)
            else s:= s+', null';
            s:= s+', '+QuotedStr('1');
            s:= s+', to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', dt))+')';
            s:= s+')';
            ExecQuery(qryExec,s);


            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            mtExport.Next
          end;
          pgrsProcess.Position:= 100;
          Application.ProcessMessages;

         PrepareQuery(qryExport);
         s:= 'select * from sales.so_tmp';
         OpenQuery(qryExport,s);

         qryExport.First;
         while not qryExport.eof do  begin
           PrepareQuery(qryExec);
//           s:= 'insert into sales.so
//           ExecQuery(qryExec,s)
//           qryExport.Next;
         end;


          pgrsTotal.Position:= 5;
          Application.ProcessMessages;


          DM.CommitTransaction;
          DM.MyMsg(mmInformation,'Proses Impor Data Sukses','');
          btnCancel.Caption:= 'Close';
        except
          on E: Exception do begin
            DM.RollbackTransaction;
            DM.MyMsg(mmWarning,'Proses Impor Data gagal !','Error : '+E.Message);
          end
        end;
    end    //-----------------------------------------------------------------------------END OF SODO
    else
    if vmode='TSIMEI' then begin     //--------------------------------------------------------------------- START OF TSIMEI

        DM.vSysDate.Close;
        DM.vSysDate.Open;
        dt:= DM.vSysDatedt_server.AsDateTime;
        opr:= DM.UserConnect;

        DM.StartTransaction;
        try
          pgrsTotal.Min:= 0;
          pgrsTotal.Max:= 1;

          pgrsTotal.Position:= 0;
          Application.ProcessMessages;
          mtExport.Close;
          mtExport.LoadFromFile(edtLocation.Text+'\'+LowerCase(DM.siteOffice)+'-tsimei.mtx');
          mtExport.Open;
          pgrsProcess.Position:= 0;
          i:= 1;
          cnt:= mtExport.RecordCount;
          mtExport.First;

          while not mtExport.Eof do begin

      // CHECK IMEI 1
            if Length(mtExport.FieldByName('imei_1').AsString)>0 then begin
                PrepareQuery(qryExport);
                s:= 'select * from master.mitem_detail';
                s:= s+' where imei_1='+QuotedStr(mtExport.FieldByName('imei_1').AsString);
                s:= s+' or imei_2='+QuotedStr(mtExport.FieldByName('imei_1').AsString);
                OpenQuery(qryExport,s);
                if qryExport.RecordCount>0 then begin
                   PrepareQuery(qryExec);
                   s:= 'update master.mitem_detail set id_cabang='+QuotedStr(DM.siteOffice);
                   s:= s+' where imei_1='+QuotedStr(mtExport.FieldByName('imei_1').AsString);
                   s:= s+' or imei_2='+QuotedStr(mtExport.FieldByName('imei_1').AsString);
                   ExecQuery(qryExec,s);

                   // CHESK IMEI STOK
                   PrepareQuery(qryExport);
                   s:= 'select * from master.mimei_stok';
                   s:= s+' where imei_stok='+QuotedStr(mtExport.FieldByName('imei_1').AsString);
                   OpenQuery(qryExport,s);
                   if qryExport.RecordCount=0 then begin
                      PrepareQuery(qryExec);
                      s:= ' insert into master.mimei_stok (imei_stok, id_item_detail) values ';
                      s:= s+'('+QuotedStr(mtExport.FieldByName('imei_1').AsString)+', '+mtExport.FieldByName('id_item_detail').AsString+')';
                      ExecQuery(qryExec,s);
                   end;
                   is_new_imei:= False;
                end else
                is_new_imei:= True;
            end else
            if Length(mtExport.FieldByName('esn_1').AsString)>0 then begin
                PrepareQuery(qryExport);
                s:= 'select * from master.mitem_detail';
                s:= s+' where esn_1='+QuotedStr(mtExport.FieldByName('esn_1').AsString);
                s:= s+' or esn_2='+QuotedStr(mtExport.FieldByName('esn_1').AsString);
                OpenQuery(qryExport,s);
                if qryExport.RecordCount>0 then begin
                   PrepareQuery(qryExec);
                   s:= 'update master.mitem_detail set id_cabang='+QuotedStr(DM.siteOffice);
                   s:= s+' where esn_1='+QuotedStr(mtExport.FieldByName('esn_1').AsString);
                   s:= s+' or esn_2='+QuotedStr(mtExport.FieldByName('esn_1').AsString);
                   ExecQuery(qryExec,s);

                   // CHESK ESN STOK
                   PrepareQuery(qryExport);
                   s:= 'select * from master.mesn_stok';
                   s:= s+' where esn_stok='+QuotedStr(mtExport.FieldByName('esn_1').AsString);
                   OpenQuery(qryExport,s);
                   if qryExport.RecordCount=0 then begin
                      PrepareQuery(qryExec);
                      s:= ' insert into master.mesn_stok (esn_stok, id_item_detail) values ';
                      s:= s+'('+QuotedStr(mtExport.FieldByName('esn_1').AsString)+', '+mtExport.FieldByName('id_item_detail').AsString+')';
                      ExecQuery(qryExec,s);
                   end;
                   is_new_esn:= False;
                end else
                   is_new_esn:= True;
            end;


      // NEW IMEI / ESN
           if is_new_imei or is_new_esn then begin

               PrepareQuery(qryExec);
               s:='';
               s:= 'insert into master.mitem_detail';
               s:= s+'(id_item_detail, id_item, imei_1, imei_2, esn_1, esn_2, isreceipt, isdo, ispurchase_return, issales_return, isng';
               s:= s+', serial_number, lot_number, box_id, id_cabang)';
               s:= s+' values ';
               s:= s+'('+mtExport.FieldByName('id_item_detail').AsString+', '+QuotedStr(mtExport.FieldByName('id_item').AsString);
               if Length(mtExport.FieldByName('imei_1').AsString)>0 then
                  s:= s+', '+QuotedStr(mtExport.FieldByName('imei_1').AsString)
               else
                  s:= s+', null';
               if Length(mtExport.FieldByName('imei_2').AsString)>0 then
                  s:= s+', '+QuotedStr(mtExport.FieldByName('imei_2').AsString)
               else
                  s:= s+', null';
               if Length(mtExport.FieldByName('esn_1').AsString)>0 then
                  s:= s+', '+QuotedStr(mtExport.FieldByName('esn_1').AsString)
                else
                  s:= s+', null';
               if Length(mtExport.FieldByName('esn_2').AsString)>0 then
                  s:= s+', '+QuotedStr(mtExport.FieldByName('esn_2').AsString)
               else
                  s:= s+', null';
               s:= s+', '+QuotedStr(mtExport.FieldByName('isreceipt').AsString)+', '+QuotedStr('0')+', '+QuotedStr('0');
               s:= s+', '+QuotedStr('0')+', '+QuotedStr('0');
               if Length(mtExport.FieldByName('serial_number').AsString)>0 then
                  s:= s+', '+QuotedStr(mtExport.FieldByName('serial_number').AsString)
               else
                  s:= s+', null';
               if Length(mtExport.FieldByName('lot_number').AsString)>0 then
                  s:= s+', '+QuotedStr(mtExport.FieldByName('lot_number').AsString)
               else
                  s:= s+', null';
               if Length(mtExport.FieldByName('box_id').AsString)>0 then
                  s:= s+', '+QuotedStr(mtExport.FieldByName('box_id').AsString)
               else
                  s:= s+', null';
               s:= s+', '+QuotedStr(DM.siteOffice);
               s:= s+')';
               ExecQuery(qryExec,s);
            end;

            PrepareQuery(qryExec);
            s:= 'insert into inventory.transval_esn_imei (id_transfer, id_item_detail) values (';
            s:= s+IntToStr(vid_transfer)+', '+mtExport.FieldByName('id_item_detail').AsString+')';
            ExecQuery(qryExec,s);

            pgrsProcess.Position:= Trunc((i/cnt)*100);
            Application.ProcessMessages;
            i:= i+1;
            mtExport.Next
          end;
          pgrsProcess.Position:= 100;

          pgrsTotal.Position:= 1;
          Application.ProcessMessages;

          DM.CommitTransaction;
          DM.MyMsg(mmInformation,'Proses Impor Data Sukses','');
          btnCancel.Caption:= 'Close';
        except
          on E: Exception do begin
            DM.RollbackTransaction;
            DM.MyMsg(mmWarning,'Proses Impor Data gagal !','Error : '+E.Message);
          end
        end;
    end //--------------------------------------------------------------------- END OF TSIMEI
    else
     if vmode='SERVICE' then begin   /// -----------------------------------------------------START OF SERVICE


          DM.vSysDate.Close;
          DM.vSysDate.Open;
          dt:= DM.vSysDatedt_server.AsDateTime;
          opr:= DM.UserConnect;
          isError:= False;

          DM.StartTransaction;
          try
            pgrsTotal.Min:= 0;
            pgrsTotal.Max:= 8;

        // DELETE MDATA_ERROR
           PrepareQuery(qryExec);
           s:= 'delete from master.mdata_error';
           ExecQuery(qryExec,s);

        // DELETE REPAIR_INVOICE_DETAIL_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.repair_invoice_detail_tmp';
           ExecQuery(qryExec,s);

        // DELETE REPAIR_INVOICE_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.repair_invoice_tmp';
           ExecQuery(qryExec,s);

        // DELETE JOB_TINDAKAN_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.job_tindakan_tmp';
           ExecQuery(qryExec,s);

        // DELETE JOB_SYMPTOM_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.job_symptom_tmp';
           ExecQuery(qryExec,s);

        // DELETE JOBSHEET_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.jobsheet_tmp';
           ExecQuery(qryExec,s);

        // DELETE MATERIAL_DETAIL_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.material_detail_tmp';
           ExecQuery(qryExec,s);

        // DELETE MATERIAL_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.material_tmp';
           ExecQuery(qryExec,s);

        // DELETE REPAIR_ORDER_TMP
           PrepareQuery(qryExec);
           s:= 'delete from service.repair_order_tmp';
           ExecQuery(qryExec,s);

        // REPAIR ORDER
            pgrsTotal.Position:= 0;
            Application.ProcessMessages;
            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'ro.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin


        // CHECK REPAIR_ORDER
              PrepareQuery(qryExport);
              s:= 'select * from service.repair_order where no_repair_order='+QuotedStr(mtExport.FieldByName('no_repair_order').AsString);
              OpenQuery(qryExport,s);

              if qryExport.RecordCount=0 then begin

      // CHECK ITEM
                PrepareQuery(qryCheck);
                s:= 'select * from master.mitem where id_item='+QuotedStr(mtExport.FieldByName('id_item').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mitem');
                  s:= s+', '+QuotedStr('id_item');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK SERVICE POINT
                PrepareQuery(qryCheck);
                s:= 'select * from master.mservice_point where id_service_point='+QuotedStr(mtExport.FieldByName('id_service_point').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mservice_point');
                  s:= s+', '+QuotedStr('id_service_point');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK KODE TRANSAKSI
                PrepareQuery(qryCheck);
                s:= 'select * from master.mtransaction where id_trans='+QuotedStr(mtExport.FieldByName('id_trans').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mtransaction');
                  s:= s+', '+QuotedStr('id_trans');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString)+')';
                  ExecQuery(qryExec,s);
               end;


                 PrepareQuery(qryExec);
                 s:='';
                 s:= 'insert into service.repair_order_tmp';
                 s:= s+'(id_repair_order';
                 s:= s+', no_repair_order';
                 s:= s+', no_ro';
                 s:= s+', id_item';
                 s:= s+', imei';
                 s:= s+', sn_esn';
                 s:= s+', imei_esn_cassing';
                 s:= s+', warna';
                 s:= s+', custmer_name';
                 s:= s+', cust_address';
                 s:= s+', phone';
                 s:= s+', dt_purchase';
                 s:= s+', status_garansi';
                 s:= s+', seal_ok';
                 s:= s+', vis_power_on';
                 s:= s+', vis_power_off';
                 s:= s+', vis_success_boot';
                 s:= s+', vis_display';
                 s:= s+', vis_keypad';
                 s:= s+', vis_charging';
                 s:= s+', vis_soft_ver';
                 s:= s+', vis_lain';
                 s:= s+', lkp_hand_only';
                 s:= s+', lkp_battery';
                 s:= s+', lkp_charger';
                 s:= s+', lkp_mmc_sd_tf';
                 s:= s+', lkp_batt_cover';
                 s:= s+', lkp_stylush';
                 s:= s+', lkp_lain';
                 s:= s+', gejala';
                 s:= s+', ispost';
                 s:= s+', iscancel';
                 s:= s+', iskembali';
                 s:= s+', prepared_by';
                 s:= s+', supervisor';
                 s:= s+', penerima';
                 s:= s+', usr_ins';
                 s:= s+', usr_upd';
                 s:= s+', dt_ins';
                 s:= s+', dt_upd';
                 s:= s+', dt_terima';
                 s:= s+', dt_kembali';
                 s:= s+', id_service_point';
                 s:= s+', seal_not_ok';
                 s:= s+', id_trans';
                 s:= s+', isclosed';
                 s:= s+', isdelete';
                 s:= s+', dt_garansi';
                 s:= s+', sp_name';
                 s:= s+', isexported';
                 s:= s+', dt_exported)';
                 s:= s+' values ';
                 s:= s+'(';
                 s:= s+ mtExport.FieldByName('id_repair_order').AsString;
                 s:= s+', '+QuotedStr(mtExport.FieldByName('no_repair_order').AsString);
                 s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString);
                 if Length(mtExport.FieldByName('imei').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('imei').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('sn_esn').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('sn_esn').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('imei_esn_cassing').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('imei_esn_cassing').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('warna').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('warna').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('custmer_name').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('custmer_name').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('cust_address').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('cust_address').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('phone').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('phone').AsString)
                 else s:= s+', null';

                 if Length(mtExport.FieldByName('dt_purchase').AsString)>0 then
                  s:= s+', '+'to_date('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_purchase').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('status_garansi').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('status_garansi').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('seal_ok').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('seal_ok').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_power_on').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_power_off').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_success_boot').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_display').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_keypad').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_charging').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_soft_ver').AsString);
                 if Length(mtExport.FieldByName('vis_lain').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('vis_lain').AsString)
                 else s:= s+', null';

                 s:= s+', '+QuotedStr(mtExport.FieldByName('lkp_hand_only').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('lkp_battery').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('lkp_charger').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('lkp_mmc_sd_tf').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('lkp_batt_cover').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('lkp_stylush').AsString);

                 if Length(mtExport.FieldByName('lkp_lain').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('lkp_lain').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('gejala').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('gejala').AsString)
                 else s:= s+', null';

                 s:= s+', '+QuotedStr(mtExport.FieldByName('ispost').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('iscancel').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('iskembali').AsString);
                 if Length(mtExport.FieldByName('prepared_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('prepared_by').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('supervisor').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('supervisor').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('penerima').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('penerima').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('usr_ins').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_ins').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('usr_upd').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_upd').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_ins').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_ins').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_upd').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_upd').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_terima').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_terima').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_kembali').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_kembali').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('id_service_point').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('seal_not_ok').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('seal_not_ok').AsString)
                 else s:= s+', null';
                s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString);
                s:= s+', '+QuotedStr(mtExport.FieldByName('isclosed').AsString);
                s:= s+', '+QuotedStr(mtExport.FieldByName('isdelete').AsString);

                 if Length(mtExport.FieldByName('dt_garansi').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_garansi').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('sp_name').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('sp_name').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('isexported').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('isexported').AsString)
                 else s:= s+', '+QuotedStr('1');
                 if Length(mtExport.FieldByName('dt_exported').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_exported').AsDateTime))+')'
                 else s:= s+', null';
                 s:= s+')';
                 ExecQuery(qryExec,s);
              end;

              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;

            pgrsTotal.Position:= 1;
            Application.ProcessMessages;


        // JOBSHEET MASTER
            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'mjs.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin


      // CHECK SERVICE POINT
                PrepareQuery(qryCheck);
                s:= 'select * from master.mservice_point where id_service_point='+QuotedStr(mtExport.FieldByName('id_service_point').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mservice_point');
                  s:= s+', '+QuotedStr('id_service_point');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK TEKNISI
                PrepareQuery(qryCheck);
                s:= 'select * from master.mteknisi where id_teknisi='+QuotedStr(mtExport.FieldByName('id_teknisi').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mteknisi');
                  s:= s+', '+QuotedStr('id_teknisi');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_teknisi').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK KODE TRANSAKSI
                PrepareQuery(qryCheck);
                s:= 'select * from master.mtransaction where id_trans='+QuotedStr(mtExport.FieldByName('id_trans').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mtransaction');
                  s:= s+', '+QuotedStr('id_trans');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString)+')';
                  ExecQuery(qryExec,s);
               end;




        // INSERT INTO JOBSHEET_TMP

                 PrepareQuery(qryExec);
                 s:='';
                 s:= 'insert into service.jobsheet_tmp (';
                 s:= s+' id_jobsheet,';
                 s:= s+' no_jobsheet,';
                 s:= s+' dt_jobsheet,';
                 s:= s+' kerusakan,';
                 s:= s+' tindakan,';
                 s:= s+' no_ro,';
                 s:= s+' vis_liquid_effect,';
                 s:= s+' vis_water_damage,';
                 s:= s+' vis_board_bent,';
                 s:= s+' vis_bad_soldering,';
                 s:= s+' vis_missing_part,';
                 s:= s+' vis_pad_lifted,';
                 s:= s+' vis_uno_service,';
                 s:= s+' oth_ringtone,';
                 s:= s+' oth_vibrate,';
                 s:= s+' oth_speaker,';
                 s:= s+' oth_speakerphone,';
                 s:= s+' oth_mic,';
                 s:= s+' oth_volume,';
                 s:= s+' oth_keypad_tone,';
                 s:= s+' oth_infra_red,';
                 s:= s+' oth_bluetooth,';
                 s:= s+' oth_flashlight,';
                 s:= s+' oth_radio,';
                 s:= s+' oth_camera,';
                 s:= s+' oth_mmc_sd_tf,';
                 s:= s+' oth_usb,';
                 s:= s+' usr_ins,';
                 s:= s+' usr_upd,';
                 s:= s+' dt_ins,';
                 s:= s+' dt_upd,';
                 s:= s+' new_imei_esn,';
                 s:= s+' new_sn,';
                 s:= s+' vis_lain_lain,';
                 s:= s+' oth_lain_lain,';
                 s:= s+' remarks,';
                 s:= s+' prepared_by,';
                 s:= s+' reviewed_by_1,';
                 s:= s+' reviewed_by_2,';
                 s:= s+' approved_by_1,';
                 s:= s+' approved_by_2,';
                 s:= s+' ispost,';
                 s:= s+' iscancel,';
                 s:= s+' isdelete,';
                 s:= s+' id_trans,';
                 s:= s+' isclosed,';
                 s:= s+' id_teknisi,';
                 s:= s+' id_service_point,';
                 s:= s+' phone_teknisi,';
                 s:= s+' isgaransi,';
                 s:= s+' isexported,';
                 s:= s+' dt_exported)';
                 s:= s+' values ';
                 s:= s+'('+mtExport.FieldByName('id_jobsheet').AsString+', ';
                 s:= s+QuotedStr(mtExport.FieldByName('no_jobsheet').AsString);
                 s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_jobsheet').AsDateTime))+')';
                 if Length(mtExport.FieldByName('kerusakan').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('kerusakan').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('tindakan').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('tindakan').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('no_ro').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('no_ro').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_liquid_effect').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_water_damage').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_board_bent').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_bad_soldering').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_missing_part').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_pad_lifted').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_uno_service').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_ringtone').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_speaker').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_vibrate').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_speakerphone').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_mic').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_volume').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_keypad_tone').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_infra_red').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_bluetooth').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_flashlight').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_radio').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_camera').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_mmc_sd_tf').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_usb').AsString);
                 if Length(mtExport.FieldByName('usr_ins').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_ins').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('usr_upd').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_upd').AsString)
                 else s:= s+', null';
                if Length(mtExport.FieldByName('dt_ins').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_ins').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_upd').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_upd').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('new_imei_esn').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('new_imei_esn').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('new_sn').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('new_sn').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('vis_lain_lain').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('oth_lain_lain').AsString);
                 if Length(mtExport.FieldByName('remarks').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('remarks').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('prepared_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('prepared_by').AsString)
                 else s:= s+', null';

                 if Length(mtExport.FieldByName('reviewed_by_1').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by_1').AsString)
                 else s:= s+', null';
                if Length(mtExport.FieldByName('reviewed_by_2').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by_2').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('approved_by_1').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by_1').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('approved_by_2').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by_2').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr('0');
                 s:= s+', '+QuotedStr(mtExport.FieldByName('iscancel').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('isdelete').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('isclosed').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_teknisi').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString);
                 if Length(mtExport.FieldByName('phone_teknisi').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('phone_teknisi').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('isgaransi').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('isgaransi').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('isexported').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('isexported').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_exported').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_exported').AsDateTime))+')'
                 else s:= s+', null';

                 s:= s+')';
                 ExecQuery(qryExec,s);

              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;

            pgrsTotal.Position:= 2;
            Application.ProcessMessages;

        // end of JOBSHEET MASTER


        // JOB_SYMPTOM

            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'js.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin

      // CHECK DAMAGE
                PrepareQuery(qryCheck);
                s:= 'select * from master.mdamage where id_damage='+QuotedStr(mtExport.FieldByName('id_damage').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mdamage');
                  s:= s+', '+QuotedStr('id_damage');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_damage').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // INSERT INTO
              PrepareQuery(qryExec);
              s:= 'insert into service.job_symptom_tmp';
              s:= s+' (id_jobsheet';
              s:= s+', id_damage';
              s:= s+', nomor';
              s:= s+', description';
              s:= s+', hrg_jual';
              s:= s+', isexported';
              s:= s+', dt_exported)';
              s:= s+' values (';
              s:= s+mtExport.FieldByName('id_jobsheet').AsString;
              s:= s+', '+QuotedStr(mtExport.FieldByName('id_damage').AsString);
              if Length(mtExport.FieldByName('nomor').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('nomor').AsString
              else s:= s+', null';
              if Length(mtExport.FieldByName('description').AsString)>0 then
                 s:= s+', '+QuotedStr(mtExport.FieldByName('description').AsString)
              else s:= s+', null';
              if Length(mtExport.FieldByName('hrg_jual').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('hrg_jual').AsString
              else s:= s+', 0';
              s:= s+' ,'+QuotedStr('1');
              s:= s+', to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', dt))+')';
              s:= s+')';
              ExecQuery(qryExec,s);


              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;


            pgrsTotal.Position:= 3;
            Application.ProcessMessages;


        // JOB_TINDAKAN

            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'jt.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin

      // CHECK ITEM TINDAKAN
                PrepareQuery(qryCheck);
                s:= 'select * from master.mitem where id_item='+QuotedStr(mtExport.FieldByName('id_item').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mitem');
                  s:= s+', '+QuotedStr('id_item');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString)+')';
                  ExecQuery(qryExec,s);
               end;


              PrepareQuery(qryExec);
              s:= 'insert into service.job_tindakan_tmp';
              s:= s+'(id_jobsheet';
              s:= s+', harga';
              s:= s+', nomor';
              s:= s+', description';
              s:= s+', id_item';
              s:= s+', isexported';
              s:= s+', dt_exported)';
              s:= s+' values (';
              s:= s+mtExport.FieldByName('id_jobsheet').AsString;
              if Length(mtExport.FieldByName('harga').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('harga').AsString
              else s:= s+', 0';
              if Length(mtExport.FieldByName('nomor').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('nomor').AsString
              else s:= s+', null';
              if Length(mtExport.FieldByName('description').AsString)>0 then
                 s:= s+', '+QuotedStr(mtExport.FieldByName('description').AsString)
              else s:= s+', null';
              s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString);
              s:= s+' ,'+QuotedStr('1')+', to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', dt))+')';
              s:= s+')';
              ExecQuery(qryExec,s);


              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;
            Application.ProcessMessages;

            pgrsTotal.Position:= 4;
            Application.ProcessMessages;


        // MATERIAL MASTER     -------------------------------------------------------------------------START OF MATERIAL REQUEST
            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'mmat.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin


      // CHECK SERVICE POINT
                PrepareQuery(qryCheck);
                s:= 'select * from master.mservice_point where id_service_point='+QuotedStr(mtExport.FieldByName('id_service_point').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mservice_point');
                  s:= s+', '+QuotedStr('id_service_point');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK TEKNISI
                PrepareQuery(qryCheck);
                s:= 'select * from master.mteknisi where id_teknisi='+QuotedStr(mtExport.FieldByName('id_teknisi').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mteknisi');
                  s:= s+', '+QuotedStr('id_teknisi');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_teknisi').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // CHECK KODE TRANSAKSI
                PrepareQuery(qryCheck);
                s:= 'select * from master.mtransaction where id_trans='+QuotedStr(mtExport.FieldByName('id_trans').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mtransaction');
                  s:= s+', '+QuotedStr('id_trans');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString)+')';
                  ExecQuery(qryExec,s);
               end;




        // INSERT INTO MATERIAL_TMP

                 PrepareQuery(qryExec);
                 s:='';
                 s:= 'insert into service.material_tmp (';
                 s:= s+' id_material,';
                 s:= s+' material_no,';
                 s:= s+' dt_material,';
                 s:= s+' dt_prepared,';
                 s:= s+' prepared_by,';
                 s:= s+' reviewed_by,';
                 s:= s+' reviewed_by_2,';
                 s:= s+' approved_by,';
                 s:= s+' approved_by_2,';
                 s:= s+' ispost,';
                 s:= s+' iscancel,';
                 s:= s+' isdelete,';
                 s:= s+' usr_ins,';
                 s:= s+' usr_upd,';
                 s:= s+' dt_ins,';
                 s:= s+' dt_upd,';
                 s:= s+' description,';
                 s:= s+' id_trans,';
                 s:= s+' remarks,';
                 s:= s+' no_repair_order,';
                 s:= s+' isclosed,';
                 s:= s+' id_teknisi,';
                 s:= s+' id_service_point,';
                 s:= s+' isexported,';
                 s:= s+' dt_exported)';
                 s:= s+' values ';
                 s:= s+'('+mtExport.FieldByName('id_material').AsString+', ';
                 s:= s+QuotedStr(mtExport.FieldByName('material_no').AsString);
                 s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_material').AsDateTime))+')';
                 s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_prepared').AsDateTime))+')';
                 if Length(mtExport.FieldByName('prepared_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('prepared_by').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('reviewed_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by').AsString)
                 else s:= s+', null';
                if Length(mtExport.FieldByName('reviewed_by_2').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by_2').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('approved_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('approved_by_2').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by_2').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr('0');
                 s:= s+', '+QuotedStr(mtExport.FieldByName('iscancel').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('isdelete').AsString);
                 if Length(mtExport.FieldByName('usr_ins').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_ins').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('usr_upd').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_upd').AsString)
                 else s:= s+', null';
                if Length(mtExport.FieldByName('dt_ins').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_ins').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_upd').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_upd').AsDateTime))+')'
                 else s:= s+', null';


                 if Length(mtExport.FieldByName('description').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('description').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString);
                 if Length(mtExport.FieldByName('remarks').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('remarks').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('no_repair_order').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('no_repair_order').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('isclosed').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_teknisi').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString);
                 if Length(mtExport.FieldByName('isexported').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('isexported').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_exported').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_exported').AsDateTime))+')'
                 else s:= s+', null';

                 s:= s+')';
                 ExecQuery(qryExec,s);

              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;

            pgrsTotal.Position:= 5;
            Application.ProcessMessages;

        // end of MATERIAL REQUEST MASTER


        // MATERIAL DETAIL

            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'dmat.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin

      // CHECK ITEM
                PrepareQuery(qryCheck);
                s:= 'select * from master.mitem where id_item='+QuotedStr(mtExport.FieldByName('id_item').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mitem');
                  s:= s+', '+QuotedStr('id_item');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // INSERT INTO
              PrepareQuery(qryExec);
              s:= 'insert into service.material_detail_tmp';
              s:= s+' (id_material';
              s:= s+', id_item';
              s:= s+', description';
              s:= s+', qty_in';
              s:= s+', qty_ot';
              s:= s+', id_unit';
              s:= s+', id_warehouse';
              s:= s+', nomor';
              s:= s+', remarks';
              s:= s+', hrg_jual';
              s:= s+', isexported';
              s:= s+', dt_exported)';
              s:= s+' values (';
              s:= s+mtExport.FieldByName('id_material').AsString;
              s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString);
              s:= s+', '+QuotedStr(mtExport.FieldByName('description').AsString);
              if Length(mtExport.FieldByName('qty_in').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('qty_in').AsString
              else s:= s+', 0';
              if Length(mtExport.FieldByName('qty_ot').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('qty_ot').AsString
              else s:= s+', 0';

              if Length(mtExport.FieldByName('id_unit').AsString)>0 then
                s:= s+', '+QuotedStr(mtExport.FieldByName('id_unit').AsString)
              else s:= s+', null';
              if Length(mtExport.FieldByName('id_warehouse').AsString)>0 then
                s:= s+', '+QuotedStr(mtExport.FieldByName('id_warehouse').AsString)
              else s:= s+', null';
              if Length(mtExport.FieldByName('nomor').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('nomor').AsString
              else s:= s+', null';
              if Length(mtExport.FieldByName('remarks').AsString)>0 then
                s:= s+', '+QuotedStr(mtExport.FieldByName('remarks').AsString)
              else s:= s+', null';
              if Length(mtExport.FieldByName('hrg_jual').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('hrg_jual').AsString
              else s:= s+', 0';
              s:= s+' ,'+QuotedStr('1');
              s:= s+', to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', dt))+')';
              s:= s+')';
              ExecQuery(qryExec,s);


              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;


            pgrsTotal.Position:= 6;
            Application.ProcessMessages;

          // ------------------------------------------------------------------------------------END OF MATERIAL REQUEST
            

        // REPAIR INVOICE MASTER     -------------------------------------------------------------------------START OF REPAIR_INVOICE
            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'mri.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin


      // CHECK SERVICE POINT
                PrepareQuery(qryCheck);
                s:= 'select * from master.mservice_point where id_service_point='+QuotedStr(mtExport.FieldByName('id_service_point').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mservice_point');
                  s:= s+', '+QuotedStr('id_service_point');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString)+')';
                  ExecQuery(qryExec,s);
               end;



      // CHECK KODE TRANSAKSI
                PrepareQuery(qryCheck);
                s:= 'select * from master.mtransaction where id_trans='+QuotedStr(mtExport.FieldByName('id_trans').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mtransaction');
                  s:= s+', '+QuotedStr('id_trans');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString)+')';
                  ExecQuery(qryExec,s);
               end;




        // INSERT INTO REPAIR_INVOICE_TMP

                 PrepareQuery(qryExec);
                 s:='';
                 s:= 'insert into service.repair_invoice_tmp (';
                 s:= s+' id_repair_invoice,';
                 s:= s+' no_repair_invoice,';
                 s:= s+' dt_repair_invoice,';
                 s:= s+' id_rek_gl,';
                 s:= s+' prepared_by,';
                 s:= s+' reviewed_by,';
                 s:= s+' reviewed_by_2,';
                 s:= s+' approved_by,';
                 s:= s+' approved_by_2,';
                 s:= s+' ispost,';
                 s:= s+' iscancel,';
                 s:= s+' isdelete,';
                 s:= s+' usr_ins,';
                 s:= s+' usr_upd,';
                 s:= s+' dt_ins,';
                 s:= s+' dt_upd,';
                 s:= s+' vat_str,';
                 s:= s+' id_trans,';
                 s:= s+' remarks,';
                 s:= s+' no_repair_order,';
                 s:= s+' isclosed,';
                 s:= s+' sub_total,';
                 s:= s+' total,';
                 s:= s+' vat_num,';
                 s:= s+' customer_name,';
                 s:= s+' cust_address,';
                 s:= s+' phone,';
                 s:= s+' id_item,';
                 s:= s+' imei,';
                 s:= s+' sn_esn,';
                 s:= s+' order_canceled,';
                 s:= s+' isexported,';
                 s:= s+' dt_exported,';
                 s:= s+' isgaransi,';
                 s:= s+' id_service_point)';
                 s:= s+' values ';
                 s:= s+'('+mtExport.FieldByName('id_repair_invoice').AsString+', ';
                 s:= s+QuotedStr(mtExport.FieldByName('no_repair_invoice').AsString);
                 s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_repair_invoice').AsDateTime))+')';
                 if Length(mtExport.FieldByName('id_rek_gl').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('id_rek_gl').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('prepared_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('prepared_by').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('reviewed_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by').AsString)
                 else s:= s+', null';
                if Length(mtExport.FieldByName('reviewed_by_2').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('reviewed_by_2').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('approved_by').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('approved_by_2').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('approved_by_2').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr('0');
                 s:= s+', '+QuotedStr(mtExport.FieldByName('iscancel').AsString);
                 s:= s+', '+QuotedStr(mtExport.FieldByName('isdelete').AsString);
                 if Length(mtExport.FieldByName('usr_ins').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_ins').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('usr_upd').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('usr_upd').AsString)
                 else s:= s+', null';
                if Length(mtExport.FieldByName('dt_ins').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_ins').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_upd').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_upd').AsDateTime))+')'
                 else s:= s+', null';

                 if Length(mtExport.FieldByName('vat_str').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('vat_str').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('id_trans').AsString);
                 if Length(mtExport.FieldByName('remarks').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('remarks').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('no_repair_order').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('no_repair_order').AsString)
                 else s:= s+', null';
                 s:= s+', '+QuotedStr(mtExport.FieldByName('isclosed').AsString);
                 if Length(mtExport.FieldByName('sub_total').AsString)>0 then
                   s:= s+', '+mtExport.FieldByName('sub_total').AsString
                 else s:= s+', 0';
                  if Length(mtExport.FieldByName('total').AsString)>0 then
                   s:= s+', '+mtExport.FieldByName('total').AsString
                 else s:= s+', 0';
                 if Length(mtExport.FieldByName('vat_num').AsString)>0 then
                   s:= s+', '+mtExport.FieldByName('vat_num').AsString
                 else s:= s+', 0';
                 if Length(mtExport.FieldByName('customer_name').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('customer_name').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('cust_address').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('cust_address').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('phone').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('phone').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('id_item').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('imei').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('imei').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('sn_esn').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('sn_esn').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('order_canceled').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('order_canceled').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('isexported').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('isexported').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('dt_exported').AsString)>0 then
                  s:= s+', '+'to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', mtExport.FieldByName('dt_exported').AsDateTime))+')'
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('isgaransi').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('isgaransi').AsString)
                 else s:= s+', null';
                 if Length(mtExport.FieldByName('id_service_point').AsString)>0 then
                   s:= s+', '+QuotedStr(mtExport.FieldByName('id_service_point').AsString)
                 else s:= s+', null';

                 s:= s+')';
                 ExecQuery(qryExec,s);

              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;

            pgrsTotal.Position:= 7;
            Application.ProcessMessages;

        // end of MATERIAL REQUEST MASTER


        // REPAIR INVOICE DETAIL

            mtExport.Close;
            mtExport.LoadFromFile(edtLocation.Text+'\'+'dri.mtx');
            mtExport.Open;
            pgrsProcess.Position:= 0;
            i:= 1;
            cnt:= mtExport.RecordCount;
            mtExport.First;

            while not mtExport.Eof do begin

      // CHECK ITEM
                PrepareQuery(qryCheck);
                s:= 'select * from master.mitem where id_item='+QuotedStr(mtExport.FieldByName('id_item').AsString);
               OpenQuery(qryCheck,s);
               if qryCheck.RecordCount=0 then begin
                  isError:= True;
                  PrepareQuery(qryExec);
                  s:= 'insert into master.mdata_error (id_error, error_table, error_coloumn, error_value)';
                  s:= s+' values (';
                  s:= s+'nextval('+QuotedStr('master.sq_mdata_error')+')' ;
                  s:= s+', '+QuotedStr('master.mitem');
                  s:= s+', '+QuotedStr('id_item');
                  s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString)+')';
                  ExecQuery(qryExec,s);
               end;

      // INSERT INTO
              PrepareQuery(qryExec);
              s:= 'insert into service.repair_invoice_detail_tmp';
              s:= s+' (id_repair_invoice';
              s:= s+', id_item';
              s:= s+', qty';
              s:= s+', id_unit';
              s:= s+', unit_price';
              s:= s+', nomor';
              s:= s+', id_rek_gl';
              s:= s+', remarks';
              s:= s+', disc';
              s:= s+', isexported';
              s:= s+', dt_exported)';
              s:= s+' values (';
              s:= s+mtExport.FieldByName('id_repair_invoice').AsString;
              s:= s+', '+QuotedStr(mtExport.FieldByName('id_item').AsString);
              if Length(mtExport.FieldByName('qty').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('qty').AsString
              else s:= s+', 0';

              if Length(mtExport.FieldByName('id_unit').AsString)>0 then
                s:= s+', '+QuotedStr(mtExport.FieldByName('id_unit').AsString)
              else s:= s+', null';
              if Length(mtExport.FieldByName('unit_price').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('unit_price').AsString
              else s:= s+', 0';
              if Length(mtExport.FieldByName('nomor').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('nomor').AsString
              else s:= s+', null';
              if Length(mtExport.FieldByName('id_rek_gl').AsString)>0 then
                s:= s+', '+QuotedStr(mtExport.FieldByName('id_rek_gl').AsString)
              else s:= s+', null';
              if Length(mtExport.FieldByName('remarks').AsString)>0 then
                s:= s+', '+QuotedStr(mtExport.FieldByName('remarks').AsString)
              else s:= s+', null';
              if Length(mtExport.FieldByName('disc').AsString)>0 then
                 s:= s+', '+mtExport.FieldByName('disc').AsString
              else s:= s+', 0';
              s:= s+' ,'+QuotedStr('1');
              s:= s+', to_timestamp('+ QuotedStr('dd/mm/yyyy')+','+QuotedStr(FormatDateTime('dd/mm/yyyy', dt))+')';
              s:= s+')';
              ExecQuery(qryExec,s);


              pgrsProcess.Position:= Trunc((i/cnt)*100);
              Application.ProcessMessages;
              i:= i+1;
              mtExport.Next
            end;
            pgrsProcess.Position:= 100;


            pgrsTotal.Position:= 8;
            Application.ProcessMessages;

          // ------------------------------------------------------------------------------------END OF REPAIR INVOICE



            
            DM.CommitTransaction;
//            DM.MyMsg(mmInformation,'Proses Impor Data Sukses','');
//            btnCancel.Caption:= 'Close';
          except
            on E: Exception do begin
              DM.RollbackTransaction;
              DM.MyMsg(mmWarning,'Proses Impor Data Langkah 1 gagal !','Error : '+E.Message);
              Exit;
            end
          end;

            if not isError then begin// if NOT ERROR
              PrepareQuery(qryExec);
              s:= 'select service.proc_ins_exim()';
              ExecQuery(qryExec,s);
              ShowMessage('Proses Import Data Sukses !!!');
                DM.StartTransaction;
                try

                  DM.CommitTransaction;
                  DM.MyMsg(mmInformation,'Proses Impor Data Sukses','');
                  btnCancel.Caption:= 'Close';
                except
                  on E: Exception do begin
                    DM.RollbackTransaction;
                    DM.MyMsg(mmWarning,'Proses Impor Data gagal Langkah 2 Gagal !','Error : '+E.Message);
                  end
                end;
            end
            else
            begin  // if ERROR
              DM.MyMsg(mmWarning,'Proses Import Tidak Sukses !!!','');
//              if ImportErrorFrm=nil then begin
//                 ImportErrorFrm:=TImportErrorFrm.Create(Application);
//                 ImportErrorFrm.Show;
//                 end
//              else
//                 ImportErrorFrm.Show;
            end;

      end;    //-----------------------------------------------------------------------------END OF SERVICE


end;

procedure TImportFrm.mtExportProgress(DataSet: TDataSet;
  Percentage: Integer; Code: TkbmProgressCode);
begin
  pgrsProcess.Position:= Percentage;
  Application.ProcessMessages
end;

end.

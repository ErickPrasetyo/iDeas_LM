unit UDataObject;

interface

uses
  DB, ZDataset, ZConnection, U_DM;

type
  TDataMode = (dmBrowse, dmEdit, dmNew);
  TSQLLikeType = (ltAll, ltLeft, ltRight);  
  TDataObject = class
  private
    FConn : TZConnection;
    function GetConnection: TZConnection;
    procedure SetConnection(AValue: TZConnection);
  protected
  public
    constructor Create; overload;
    constructor Create(AConn: TZConnection); overload;
    function GetIntNewID(AIDFieldName, ATableName: String): Integer;
    property Connection: TZConnection read GetConnection write SetConnection;
    function GetSequenceValue(ASeqName: String; AIncrease: boolean=True): Integer;
    function GetLastID(): Longint;
    function GetServerDate(const ADateOnly: Boolean=False): TDateTime;
    function GetParamValue(AParamID: String): String;

    function OpenQuery(ADataset: TZReadOnlyQuery; ASQL: String) : boolean;
    function ExecQuery(ASQL: String) : boolean;
    function ExecuteQuery(ASQL: String) : String;
    function ExecuteQueryWithDataset(ASQL: String; ADataset: TZQuery; ADataMode: TDataMode; AUserUpdate: Boolean) : String;
    function CreateQuery: TZReadOnlyQuery;
    function PrepareQuery(ADataset: TZReadOnlyQuery; ASQL: String) : boolean;
    function SQLLike(AText: String; AType: TSQLLikeType; AChar: Char='%'): String;
    function SetDeleteRecord(ATableName, ACriteria: String): boolean;

    function FieldIsEmpty(AFieldObject: TField): Boolean;
    function ToSQLDate(ADateTime: TDateTime): String;
    function ToSQLDateTime(ADateTime: TDateTime): String;


    procedure SetParamValue(AParamID: String; AValue: String);
    procedure SetParamsRecord(ATo:TZReadOnlyQuery; AFrom: TDataset; ADataMode: TDataMode; AUserUpdate: Boolean);

   end;

implementation

uses SysUtils;

{ TDataObject }


{ TDataObject }

function TDataObject.CreateQuery: TZReadOnlyQuery;
var
  NewQuery: TZReadOnlyQuery;
begin
  NewQuery := TZReadOnlyQuery.Create(nil);
  NewQuery.Connection := FConn;
  Result := NewQuery;
end;

function TDataObject.ExecQuery(ASQL: String): boolean;
var
  DS : TZReadOnlyQuery;
begin
  DS := CreateQuery;
  try
    DS.Close;
    DS.SQL.Text := ASQL;
    DS.ExecSQL;
    Result := True;
  except
    Result := False;
  end;
  DS.Close;
  DS.Destroy;
end;

function TDataObject.OpenQuery(ADataset: TZReadOnlyQuery; ASQL: String): boolean;
begin
  try
    ADataset.Close;
    ADataset.SQL.Text := ASQL;
    ADataset.Open;
    Result := True;
  except
    Result := False;
  end;
end;

function TDataObject.GetConnection: TZConnection;
begin
  Result := FConn;
end;

procedure TDataObject.SetConnection(AValue: TZConnection);
begin
  FConn := AValue;
end;

function TDataObject.PrepareQuery(ADataset: TZReadOnlyQuery;
  ASQL: String): boolean;
begin
  ADataset.Close;
  ADataset.SQL.Clear;
  ADataset.SQL.Append(ASQL);
end;

function TDataObject.GetIntNewID(AIDFieldName, ATableName: String): Integer;
var
  StrSQL: String;
  qry: TZReadOnlyQuery;
  NewId : Integer;
begin
  StrSQL := 'SELECT MAX(' + AIDFieldName + ') as new_id FROM ' + ATableName;
  qry := CreateQuery();
  OpenQuery(qry, StrSQL);
  if (not qry.Eof) then
  begin
    NewId := qry.FieldByName('new_id').AsInteger+1;
  end else
  begin
    NewId := 1;
  end;
  qry.Close;
  qry.Destroy;
  Result := NewId; 
end;

function TDataObject.SQLLike(AText: String; AType: TSQLLikeType;
  AChar: Char='%'): String;
var
  Temp: String;
begin
  case AType of
    ltAll: Temp := QuotedStr(AChar + AText + AChar);
    ltLeft: Temp := QuotedStr(AChar + AText);
    ltRight: Temp := QuotedStr(AText + AChar);
  end;
  Result := Temp;
end;

constructor TDataObject.Create;
begin

end;

constructor TDataObject.Create(AConn: TZConnection); 
begin
  FConn := AConn;
end;

function TDataObject.GetSequenceValue(ASeqName: String;
  AIncrease: boolean): Integer;
var
  StrSQL, Func: String;
  qry: TZReadOnlyQuery;
  NewId : Integer;
begin
  if AIncrease then
    Func := 'NEXTVAL'
  else
    Func := 'CURRVAL';
  StrSQL := 'SELECT ' + ASeqName + '.' + Func + ' AS SEQ_VALUE FROM DUAL';
  qry := CreateQuery();
  OpenQuery(qry, StrSQL);
  if (not qry.Eof) then
  begin
    NewId := qry.FieldByName('SEQ_VALUE').AsInteger;
  end else
  begin
    NewId := 1;
  end;
  qry.Close;
  qry.Destroy;
  Result := NewId;
end;

function TDataObject.GetLastID: Longint;
var
  StrSQL: String;
  qry: TZReadOnlyQuery;
  NewId : Integer;
begin

  StrSQL := 'SELECT LAST_INSERT_ID() AS last_value FROM DUAL';
  qry := CreateQuery();
  OpenQuery(qry, StrSQL);
  if (not qry.Eof) then
  begin
    NewId := qry.FieldByName('last_value').AsInteger;
  end else
  begin
    NewId := 1;
  end;
  qry.Close;
  qry.Destroy;
  Result := NewId;
end;

function TDataObject.GetServerDate(const ADateOnly: Boolean=False): TDateTime;
var
  StrSQL: String;
  qry: TZReadOnlyQuery;
  CurrDateTime : TDateTime;
begin
  StrSQL := 'SELECT Now() as curr_date_time;';
  qry := CreateQuery();
  OpenQuery(qry, StrSQL);
  if (not qry.Eof) then
  begin
    if ADateOnly then
      CurrDateTime := Trunc(qry.FieldByName('curr_date_time').AsFloat)
    else
      CurrDateTime := qry.FieldByName('curr_date_time').AsDateTime;
  end else
  begin
    CurrDateTime := Now;
  end;
  qry.Close;
  qry.Destroy;
  Result := CurrDateTime;
end;

function TDataObject.GetParamValue(AParamID: String): String;
var
  qry: TZReadOnlyQuery;
  StrSQL: String;
begin
  qry := CreateQuery;
  StrSQL :=
    'SELECT param_value FROM m_param WHERE param_id=' + QuotedStr(AParamID);
  OpenQuery(qry, StrSQL);
  if not qry.Eof then
  begin
    result := qry.FieldByName('param_value').AsString;
  end else
    result := '';

  qry.Close;
  qry.Destroy;
end;

procedure TDataObject.SetParamValue(AParamID, AValue: String);
var
  StrSQL: String;
begin
  StrSQL :=
    'UPDATE m_param SET param_value=' + QuotedStr(AValue) +
    ' WHERE param_id=' + QuotedStr(AParamID);
  ExecQuery(StrSQL);
end;


function TDataObject.ExecuteQuery(ASQL: String): String;
var
  DS : TZReadOnlyQuery;
begin
  Result := '';
  DS := CreateQuery;
  try
    DS.Close;
    DS.SQL.Text := ASQL;
    DS.ExecSQL;
  except
    on E: Exception do
    begin
      Result := E.Message;
    end;
  end;
  DS.Close;
  DS.Destroy;
end;

function TDataObject.ExecuteQueryWithDataset(ASQL: String;
  ADataset: TZQuery; ADataMode: TDataMode; AUserUpdate: Boolean): String;
var
  qry: TZReadonlyQuery;
begin
  Result := '';
  qry := CreateQuery;
  PrepareQuery(qry, ASQL);
  SetParamsRecord(qry, ADataset, ADataMode, AUserUpdate);
  try

    qry.ExecSQL;
  except
    on E: Exception do
    begin
      Result := E.Message;
    end;
  end;
  qry.Close;
  qry.Destroy;
end;

procedure TDataObject.SetParamsRecord(ATo: TZReadOnlyQuery;
  AFrom: TDataset; ADataMode: TDataMode; AUserUpdate: Boolean);
var
  i : Integer;
begin                
  for i := 0 to ATo.Params.Count-1 do
  begin
    if Pos(ATo.Params[i].Name, 'usr_ins, usr_upd, date_ins, date_upd')=0 then
    begin
      case ATo.Params[i].DataType of
        ftSmallint, ftInteger, ftWord, ftLargeint:
          ATo.Params[i].AsInteger := AFrom.FieldByName(ATo.Params[i].Name).AsInteger;
      else
        ATo.Params[i].Value := AFrom.FieldByName(ATo.Params[i].Name).AsVariant;
      end;
    end;

  end;
  if AUserUpdate then
  begin
    if ADataMode=dmEdit then
    begin
      ATo.ParamByName('usr_upd').AsString := DM.UserConnect;
      ATo.ParamByName('dt_upd').AsDateTime := GetServerDate;
    end else
    begin
      ATo.ParamByName('usr_ins').AsString := DM.UserConnect;
      ATo.ParamByName('dt_ins').AsDateTime := GetServerDate;
      ATo.ParamByName('usr_upd').AsString := DM.UserConnect;
      ATo.ParamByName('dt_upd').AsDateTime := ATo.ParamByName('dt_ins').AsDateTime;
    end;
  end;

end;

function TDataObject.SetDeleteRecord(ATableName, ACriteria: String): boolean;
var
  SQL: String;
begin
  SQL :=
    'UPDATE ' + ATableName + ' SET is_delete=1 WHERE ' + ACriteria;
  Result := ExecQuery(SQL);
end;


function TDataObject.FieldIsEmpty(AFieldObject: TField): Boolean;
begin
  Result := AFieldObject.IsNull OR (AFieldObject.AsString='');
end;

function TDataObject.ToSQLDate(ADateTime: TDateTime): String;
begin
  Result := 'TO_DATE(' + QuotedStr(FormatDateTime('dd/mm/yyyy', ADateTime)) + ',' + QuotedStr('DD/MM/YYYY') + ') ';
end;

function TDataObject.ToSQLDateTime(ADateTime: TDateTime): String;
begin
  Result := 'TO_DATE(' + QuotedStr(FormatDateTime('dd/mm/yyyy hh:nn:ss', ADateTime)) + ',' + QuotedStr('DD/MM/YYYY HH24:MI:SS') + ') ';
end;


end.

unit U_Status_Dialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SCControl, SCStdControls, StdCtrls, ExtCtrls;

type
  TfrmStatus_Dialog = class(TForm)
    Panel1: TPanel;
    lblStatus: TLabel;
    Panel2: TPanel;
    Progress: TSCProgress;
  private
    { Private declarations }
    Min_Value: Integer;
    Max_Value: Integer;
    Current_Value: Integer;
  public
    { Public declarations }
    procedure Set_Min(val: Integer);
    procedure Set_Max(val: Integer);
    procedure Set_Status(s: string);
    procedure Reset_Progress;
    procedure Progress_It;
    procedure Complete_Progress;
  end;

var
  frmStatus_Dialog: TfrmStatus_Dialog;

implementation

{$R *.dfm}

procedure TfrmStatus_Dialog.Set_Min(val: Integer);
begin
  Min_Value:= val;
  Current_Value:= val-1;
end;

procedure TfrmStatus_Dialog.Set_Max(val: Integer);
begin
  Max_Value:= val;
end;

procedure TfrmStatus_Dialog.Set_Status(s: string);
begin
  lblStatus.Caption:= s;
end;

procedure TfrmStatus_Dialog.Reset_Progress;
begin
  Progress.Position:= 0;
end;

procedure TfrmStatus_Dialog.Progress_It;
begin
  if Current_Value<Max_Value then
    Current_Value:= Current_Value + 1;
  Progress.Position:= Round((Current_Value/Max_Value)*100);
  Application.ProcessMessages
end;

procedure TfrmStatus_Dialog.Complete_Progress;
begin
  Progress.Position:= 100;
end;

end.

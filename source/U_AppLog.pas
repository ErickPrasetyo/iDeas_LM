unit U_AppLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TAppLogFrm = class(TForm)
    pnlBottom: TPanel;
    reLog: TRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    isClose: Boolean;
  end;

var
  AppLogFrm: TAppLogFrm;

implementation

{$R *.dfm}

procedure TAppLogFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if isClose then
    Action:= caFree
  else
    Action:= caHide
end;

procedure TAppLogFrm.FormDestroy(Sender: TObject);
begin
  AppLogFrm:= nil
end;

end.

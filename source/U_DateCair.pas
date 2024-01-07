unit U_DateCair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, wwdbdatetimepicker, AdvAppStyler, AdvPanel,
  AdvGlowButton, ExtCtrls, SCControl, SCStdControls;

type
  TDateCairFrm = class(TForm)
    SCPanel1: TSCPanel;
    AdvPanel1: TAdvPanel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    dtpStart: TwwDBDateTimePicker;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateCairFrm: TDateCairFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TDateCairFrm.FormShow(Sender: TObject);
begin
  if dtpStart.Text='' then
    dtpStart.Date:= Date;

end;

end.

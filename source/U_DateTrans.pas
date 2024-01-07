unit U_DateTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, wwdbdatetimepicker, AdvAppStyler, AdvPanel,
  AdvGlowButton, ExtCtrls, SCControl, SCStdControls;

type
  TDateTransFrm = class(TForm)
    SCPanel1: TSCPanel;
    AdvPanel1: TAdvPanel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    dtpStart: TwwDBDateTimePicker;
    Label1: TLabel;
    dtpEnd: TwwDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateTransFrm: TDateTransFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TDateTransFrm.FormShow(Sender: TObject);
begin
  if dtpStart.Text='' then
    dtpStart.Date:= Date;

  if dtpEnd.Text='' then
    dtpEnd.Date:= Date;
end;

procedure TDateTransFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TDateTransFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

end.

unit U_SetExcelString;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, ExtCtrls,
  wwdbdatetimepicker,
  AdvPanel, AdvGlowButton, AdvAppStyler,
  StdCtrls, SCStdControls, SCControl, cxControls, cxContainer, cxEdit,
  cxTextEdit;

type
  TSetExcelStringFrm = class(TForm)
    SCPanel1: TSCPanel;
    AdvPanel1: TAdvPanel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    Label1: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Label2: TLabel;
    edtProvider: TcxTextEdit;
    Shape2: TShape;
    Shape4: TShape;
    edtExtdProperties: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetExcelStringFrm: TSetExcelStringFrm;

implementation

{$R *.dfm}

end.

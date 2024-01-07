object AppLogFrm: TAppLogFrm
  Left = 315
  Top = 173
  Width = 563
  Height = 409
  BorderStyle = bsSizeToolWin
  Caption = 'AppLogFrm'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 341
    Width = 555
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
  end
  object reLog: TRichEdit
    Left = 0
    Top = 0
    Width = 555
    Height = 341
    Align = alClient
    BorderStyle = bsNone
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
end

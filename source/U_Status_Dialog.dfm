object frmStatus_Dialog: TfrmStatus_Dialog
  Left = 399
  Top = 346
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Status'
  ClientHeight = 95
  ClientWidth = 363
  Color = 16640471
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 9
    Top = 50
    Width = 348
    Height = 35
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 16316664
    TabOrder = 1
    object Progress: TSCProgress
      Left = 9
      Top = 5
      Width = 329
      Height = 22
      BorderProps.Border = sccbSoftRaised
      BorderProps.ExDraw = True
      Percentage = 100
      Position = 100
      PositionColor = 9568117
      PositionEndColor = clNavy
      Style = scpsGradient3D
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 9
    Top = 8
    Width = 348
    Height = 43
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clWhite
    TabOrder = 0
    object lblStatus: TLabel
      Left = 15
      Top = 11
      Width = 271
      Height = 13
      Caption = 'Harap Tunggu, Sedang Proses Loading Data ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end

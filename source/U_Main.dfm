object MainFrm: TMainFrm
  Left = 190
  Top = 51
  Width = 889
  Height = 678
  Align = alClient
  Caption = 'INTEGRATED DATABASE ENTERPRISE APPLICATION SERVER [iDeas]'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  WindowMenu = Window1
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TAdvOfficeStatusBar
    Left = 0
    Top = 597
    Width = 873
    Height = 22
    AnchorHint = False
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psText
        TimeFormat = 'hh:mm:ss'
        Width = 200
      end
      item
        Alignment = taCenter
        AppearanceStyle = psLight
        DateFormat = 'dddd, mmm dd, yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psDate
        Text = 'Wednesday, Feb 12, 2025'
        TimeFormat = 'hh:mm:ss'
        Width = 150
      end
      item
        Alignment = taCenter
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psTime
        Text = '09:34:23'
        TimeFormat = 'hh:mm:ss'
        Width = 60
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psCapsLock
        TimeFormat = 'h:mm:ss'
        Width = 50
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psText
        TimeFormat = 'h:mm:ss'
        Width = 200
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Style = psText
        TimeFormat = 'h:mm:ss'
        Width = 216
      end>
    ShowSplitter = True
    SimplePanel = False
    Styler = StatusBarOfficeStyler
    Version = '1.5.3.0'
  end
  object MDITabset: TAdvOfficeMDITabSet
    Left = 0
    Top = 0
    Width = 873
    Height = 25
    AdvOfficeTabSetStyler = TabSetOfficeStyler
    Align = alTop
    ButtonSettings.CloseButton = True
    ButtonSettings.CloseButtonPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
      0000000202000100020200000000000202020002020200000000010002020202
      0200010000000101000202020001010000000100020202020200010000000002
      0202000202020000000000020200010002020000000001000001010100000100
      0000}
    ButtonSettings.ClosedListButtonPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
      0000010101000200010101000000010100020202000101000000010002020202
      0200010000000002020200020202000000000002020001000202000000000100
      0001010100000100000001010101010101010100000001010101010101010100
      0000}
    ButtonSettings.TabListButtonPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
      0000010101000200010101000000010100020202000101000000010002020202
      0200010000000002020200020202000000000002020001000202000000000100
      0001010100000100000001010101010101010100000001010101010101010100
      0000}
    ButtonSettings.ScrollButtonPrevPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
      0000010101000202000101000000010100020202000101000000010002020200
      0101010000000002020200010101010000000100020202000101010000000101
      0002020200010100000001010100020200010100000001010101000001010100
      0000}
    ButtonSettings.ScrollButtonNextPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
      0000010002020001010101000000010002020200010101000000010100020202
      0001010000000101010002020200010000000101000202020001010000000100
      0202020001010100000001000202000101010100000001010000010101010100
      0000}
    ButtonSettings.ScrollButtonFirstPicture.Data = {
      424DC60400000000000036040000280000001000000009000000010008000000
      000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
      0101000001010101010100020200010101000202000101010100020202000101
      0002020200010101000202020001010002020200010101000202020001010002
      0202000101010101000202020001010002020200010101010100020202000101
      0002020200010101010100020200010101000202000101010101010000010101
      010100000101}
    ButtonSettings.ScrollButtonLastPicture.Data = {
      424DC60400000000000036040000280000001000000009000000010008000000
      000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
      0001010101010100020200010101000202000101010101000202020001010002
      0202000101010101000202020001010002020200010101010100020202000101
      0002020200010101000202020001010002020200010101000202020001010002
      0202000101010100020200010101000202000101010101010000010101010100
      000101010101}
    ButtonSettings.CloseButtonHint = 'Close'
    ButtonSettings.InsertButtonHint = 'Insert new item'
    ButtonSettings.TabListButtonHint = 'TabList'
    ButtonSettings.ClosedListButtonHint = 'Closed Pages'
    ButtonSettings.ScrollButtonNextHint = 'Next'
    ButtonSettings.ScrollButtonPrevHint = 'Previous'
    ButtonSettings.ScrollButtonFirstHint = 'First'
    ButtonSettings.ScrollButtonLastHint = 'Last'
    CloseOnTab = True
  end
  object StatusBarOfficeStyler: TAdvOfficeStatusBarOfficeStyler
    Style = psOffice2007Obsidian
    BorderColor = 4276545
    PanelAppearanceLight.BorderColor = clNone
    PanelAppearanceLight.BorderColorHot = 10079963
    PanelAppearanceLight.BorderColorDown = 4548219
    PanelAppearanceLight.Color = 4276545
    PanelAppearanceLight.ColorTo = 3158063
    PanelAppearanceLight.ColorHot = 16515071
    PanelAppearanceLight.ColorHotTo = 12644607
    PanelAppearanceLight.ColorDown = 7845111
    PanelAppearanceLight.ColorDownTo = 4561657
    PanelAppearanceLight.ColorMirror = 3158063
    PanelAppearanceLight.ColorMirrorTo = 5000268
    PanelAppearanceLight.ColorMirrorHot = 7067903
    PanelAppearanceLight.ColorMirrorHotTo = 10544892
    PanelAppearanceLight.ColorMirrorDown = 1671928
    PanelAppearanceLight.ColorMirrorDownTo = 241407
    PanelAppearanceLight.TextColor = clWhite
    PanelAppearanceLight.TextColorHot = clWhite
    PanelAppearanceLight.TextColorDown = clWhite
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = 10079963
    PanelAppearanceDark.BorderColorDown = 4548219
    PanelAppearanceDark.Color = 10592158
    PanelAppearanceDark.ColorTo = 6512478
    PanelAppearanceDark.ColorHot = 16515071
    PanelAppearanceDark.ColorHotTo = 12644607
    PanelAppearanceDark.ColorDown = 7845111
    PanelAppearanceDark.ColorDownTo = 4561657
    PanelAppearanceDark.ColorMirror = 6512478
    PanelAppearanceDark.ColorMirrorTo = 5459275
    PanelAppearanceDark.ColorMirrorHot = 7067903
    PanelAppearanceDark.ColorMirrorHotTo = 10544892
    PanelAppearanceDark.ColorMirrorDown = 1671928
    PanelAppearanceDark.ColorMirrorDownTo = 241407
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 386
    Top = 40
  end
  object aclMain: TActionList
    Images = DM.IconList
    Left = 435
    Top = 28
    object actDatabaseConnection: TAction
      Category = 'Application'
      Caption = 'Koneksi Database'
      ImageIndex = 21
      OnExecute = actDatabaseConnectionExecute
    end
    object actDirectorySetting: TAction
      Category = 'Admin'
      Caption = 'Directory Setting'
      ImageIndex = 3
    end
    object actSetExcelString: TAction
      Category = 'Application'
      Caption = 'Koneksi File Excel'
      ImageIndex = 31
      OnExecute = actSetExcelStringExecute
    end
    object actExit: TAction
      Category = 'Application'
      Caption = 'Keluar'
      ImageIndex = 14
      OnExecute = actExitExecute
    end
    object actLogin: TAction
      Category = 'User'
      Caption = 'Login'
      ImageIndex = 13
      OnExecute = actLoginExecute
    end
    object actChangePassword: TAction
      Category = 'User'
      Caption = 'Ubah Password'
      ImageIndex = 1
      OnExecute = actChangePasswordExecute
    end
    object actUserMessages: TAction
      Category = 'User'
      Caption = 'Messages'
      ImageIndex = 5
    end
    object actGroups: TAction
      Category = 'Admin'
      Caption = 'Groups'
      ImageIndex = 0
    end
    object actUsers: TAction
      Category = 'Admin'
      Caption = 'Hak Menu User'
      ImageIndex = 9
      OnExecute = actUsersExecute
    end
    object actMArusKas: TAction
      Category = 'Master'
      Caption = 'Rekening Arus Kas'
      ImageIndex = 42
      OnExecute = actMArusKasExecute
    end
    object actWindowsXPSkin: TAction
      Category = 'Application'
      Caption = 'Windows XP'
      OnExecute = actWindowsXPSkinExecute
    end
    object actWhidbeySkin: TAction
      Category = 'Application'
      Caption = 'Whidbey'
      OnExecute = actWhidbeySkinExecute
    end
    object actOffice2003ClassicSkin: TAction
      Category = 'Application'
      Caption = 'Classic'
      OnExecute = actOffice2003ClassicSkinExecute
    end
    object actOffice2003BlueSkin: TAction
      Category = 'Application'
      Caption = 'Blue'
      OnExecute = actOffice2003BlueSkinExecute
    end
    object actOffice2003OliveSkin: TAction
      Category = 'Application'
      Caption = 'Olive'
      OnExecute = actOffice2003OliveSkinExecute
    end
    object actOffice2003SilverSkin: TAction
      Category = 'Application'
      Caption = 'Silver'
      OnExecute = actOffice2003SilverSkinExecute
    end
    object actOffice2007LunaSkin: TAction
      Category = 'Application'
      Caption = 'Luna'
      OnExecute = actOffice2007LunaSkinExecute
    end
    object actOffice2007ObsidianSkin: TAction
      Category = 'Application'
      Caption = 'Obsidian'
      OnExecute = actOffice2007ObsidianSkinExecute
    end
    object actOffice2007SilverSkin: TAction
      Category = 'Application'
      Caption = 'Silver'
      OnExecute = actOffice2007SilverSkinExecute
    end
    object actAppLog: TAction
      Category = 'Window'
      Caption = 'Application Logger'
      OnExecute = actAppLogExecute
    end
    object actMSupplier: TAction
      Category = 'Master'
      Caption = 'Data Supplier'
      ImageIndex = 54
      OnExecute = actMSupplierExecute
    end
    object actMCustomer: TAction
      Category = 'Master'
      Caption = 'Data Customer/Member'
      ImageIndex = 55
      OnExecute = actMCustomerExecute
    end
    object actMItem: TAction
      Category = 'Master'
      Caption = 'Data Item'
      ImageIndex = 56
      OnExecute = actMItemExecute
    end
    object actMSalesman: TAction
      Category = 'Master'
      Caption = 'Data Salesman'
      ImageIndex = 60
      OnExecute = actMSalesmanExecute
    end
    object actMRekGL: TAction
      Category = 'Master'
      Caption = 'Rekening Perkiraan'
      ImageIndex = 32
      OnExecute = actMRekGLExecute
    end
    object actMRekeningKas: TAction
      Category = 'Master'
      Caption = 'Rekening Kas/Bank'
      ImageIndex = 31
      OnExecute = actMRekeningKasExecute
    end
    object actPNotaHutang: TAction
      Category = 'Pengadaan'
      Caption = 'Faktur Pembelian (PO)'
      ImageIndex = 9
      OnExecute = actPNotaHutangExecute
    end
    object actPNotaDebet: TAction
      Category = 'Pengadaan'
      Caption = 'Retur Pembelian'
      ImageIndex = 10
      OnExecute = actPNotaDebetExecute
    end
    object actPBukuHutang: TAction
      Category = 'Pengadaan'
      Caption = 'Buku Hutang'
      ImageIndex = 15
      OnExecute = actPBukuHutangExecute
    end
    object actJNotaPiutang: TAction
      Category = 'Penjualan'
      Caption = 'Posting Penjualan'
      ImageIndex = 9
      OnExecute = actJNotaPiutangExecute
    end
    object actJNotaKoreksi: TAction
      Category = 'Penjualan'
      Caption = 'Retur Penjualan'
      ImageIndex = 10
      OnExecute = actJNotaKoreksiExecute
    end
    object actJRepFakturSales: TAction
      Category = 'Penjualan'
      Caption = 'Rekap Faktur/Sales'
      ImageIndex = 18
      OnExecute = actJRepFakturSalesExecute
    end
    object actJRepFakturSalesArea: TAction
      Category = 'Penjualan'
      Caption = 'Ikhtisar Penjualan'
      ImageIndex = 18
      OnExecute = actJRepFakturSalesAreaExecute
    end
    object actJImportFaktur: TAction
      Category = 'Penjualan'
      Caption = 'Import Faktur Penjualan'
      ImageIndex = 17
      OnExecute = actJImportFakturExecute
    end
    object actJBukuPiutang: TAction
      Category = 'Penjualan'
      Caption = 'Buku Piutang'
      ImageIndex = 24
      OnExecute = actJBukuPiutangExecute
    end
    object actJFakturPajak: TAction
      Category = 'Penjualan'
      Caption = 'Faktur Pajak Barang TPR'
      ImageIndex = 16
    end
    object actKKasirTunai: TAction
      Category = 'Kasir'
      Caption = 'Kasir Tunai'
      ImageIndex = 1
      OnExecute = actKKasirTunaiExecute
    end
    object actKKasirNonTunai: TAction
      Category = 'Kasir'
      Caption = 'Kasir Non Tunai'
      ImageIndex = 2
      OnExecute = actKKasirNonTunaiExecute
    end
    object actKBukuKasir: TAction
      Category = 'Kasir'
      Caption = 'Buku Kasir'
      ImageIndex = 7
      OnExecute = actKBukuKasirExecute
    end
    object actKeuKasKeluar: TAction
      Category = 'Keuangan'
      Caption = 'Bukti Kas Keluar [BKK]'
      ImageIndex = 38
      OnExecute = actKeuKasKeluarExecute
    end
    object actKeuKasMasuk: TAction
      Category = 'Keuangan'
      Caption = 'Bukti Kas Masuk [BKM]'
      ImageIndex = 37
      OnExecute = actKeuKasMasukExecute
    end
    object actKeuBankKeluar: TAction
      Category = 'Keuangan'
      Caption = 'Bukti Bank Keluar [BBK]'
      ImageIndex = 18
      OnExecute = actKeuBankKeluarExecute
    end
    object actKeuBankMasuk: TAction
      Category = 'Keuangan'
      Caption = 'Bukti Bank Masuk [BBM]'
      ImageIndex = 19
      OnExecute = actKeuBankMasukExecute
    end
    object actKeuReconsile: TAction
      Category = 'Keuangan'
      Caption = 'BBM/BBK [Rekonsiliasi]'
      ImageIndex = 0
      OnExecute = actKeuReconsileExecute
    end
    object actKeuBukuKas: TAction
      Category = 'Keuangan'
      Caption = 'Buku Kas'
      ImageIndex = 15
      OnExecute = actKeuBukuKasExecute
    end
    object actKeuBukuBank: TAction
      Category = 'Keuangan'
      Caption = 'Buku Bank'
      ImageIndex = 16
      OnExecute = actKeuBukuBankExecute
    end
    object actKeuRepBayarFaktur: TAction
      Category = 'Keuangan'
      Caption = 'Rekap Pembayaran Faktur'
    end
    object actKodeTransaction: TAction
      Category = 'Admin'
      Caption = 'Kode Transaksi'
      ImageIndex = 57
      OnExecute = actKodeTransactionExecute
    end
    object actMemorial: TAction
      Category = 'Accounting'
      Caption = 'Jurnal Umum'
      ImageIndex = 24
      OnExecute = actMemorialExecute
    end
    object actJurnalPosting: TAction
      Category = 'Accounting'
      Caption = 'Jurnal Posting'
      ImageIndex = 4
      OnExecute = actJurnalPostingExecute
    end
    object actTrialBalance: TAction
      Category = 'Accounting'
      Caption = 'Trial Balance && Buku Besar'
      ImageIndex = 3
      OnExecute = actTrialBalanceExecute
    end
    object actRugiLaba: TAction
      Category = 'Accounting'
      Caption = 'Laba Rugi'
      ImageIndex = 21
      OnExecute = actRugiLabaExecute
    end
    object actNeraca: TAction
      Category = 'Accounting'
      Caption = 'Neraca'
      ImageIndex = 21
      OnExecute = actNeracaExecute
    end
    object actPPurchaseOrder: TAction
      Category = 'Pengadaan'
      Caption = 'Order Pembelian [PO]'
    end
    object actPPenerimaanBarang: TAction
      Category = 'Pengadaan'
      Caption = 'Bukti Penerimaan Barang [BPB]'
    end
    object actJSalesOrder: TAction
      Category = 'Penjualan'
      Caption = 'Order Penjualan [SO]'
    end
    object actJSuratJalan: TAction
      Category = 'Penjualan'
      Caption = 'Surat Jalan'
    end
    object actMHargaJual: TAction
      Category = 'Master'
      Caption = 'Harga Jual'
    end
    object actPRJobOrder: TAction
      Category = 'Produksi'
      Caption = 'Job Order'
    end
    object actArusKas: TAction
      Category = 'Accounting'
      Caption = 'Arus Kas'
      ImageIndex = 47
      OnExecute = actArusKasExecute
    end
    object actPRLapProduksi: TAction
      Category = 'Produksi'
      Caption = 'Laporan Produksi'
    end
    object actAbout: TAction
      Category = 'Window'
      Caption = 'About'
    end
    object actMParameter: TAction
      Category = 'Master'
      Caption = 'Setting Parameter'
      ImageIndex = 0
      OnExecute = actMParameterExecute
    end
    object actSaldoAwal: TAction
      Category = 'Accounting'
      Caption = 'Saldo Awal'
      ImageIndex = 28
      OnExecute = actSaldoAwalExecute
    end
    object actKeuKasbon: TAction
      Category = 'Keuangan'
      Caption = 'Kasbon'
      ImageIndex = 47
      OnExecute = actKeuKasbonExecute
    end
    object actKeuSettlement: TAction
      Category = 'Keuangan'
      Caption = 'Angsuran Kasbon'
      ImageIndex = 35
      OnExecute = actKeuSettlementExecute
    end
    object actKeuReimbursement: TAction
      Category = 'Keuangan'
      Caption = 'Reimbursement'
    end
    object actJRepFakturDistro: TAction
      Category = 'Penjualan'
      Caption = 'Rekap Faktur Distributor'
      ImageIndex = 35
    end
    object actMPegawai: TAction
      Category = 'Master'
      Caption = 'Data Karyawan'
      ImageIndex = 54
      OnExecute = actMPegawaiExecute
    end
    object actSettingNeraca: TAction
      Category = 'Admin'
      Caption = 'Setting Neraca'
      ImageIndex = 14
      OnExecute = actSettingNeracaExecute
    end
    object actSettingLari: TAction
      Category = 'Admin'
      Caption = 'Setting Laba-Rugi'
      ImageIndex = 46
      OnExecute = actSettingLariExecute
    end
    object actKeuBukuKasbon: TAction
      Category = 'Keuangan'
      Caption = 'Lap. Status Kasbon'
      ImageIndex = 21
      OnExecute = actKeuBukuKasbonExecute
    end
    object actJImportVoucher: TAction
      Category = 'Penjualan'
      Caption = 'Import Data Voucher'
      ImageIndex = 17
      OnExecute = actJImportVoucherExecute
    end
    object actJRepTPR: TAction
      Category = 'Penjualan'
      Caption = 'Rekap TPR Barang/Uang'
      ImageIndex = 18
      OnExecute = actJRepTPRExecute
    end
    object actPNotaTPR: TAction
      Category = 'Pengadaan'
      Caption = 'Nota TPR && Voucher'
      ImageIndex = 35
      OnExecute = actPNotaTPRExecute
    end
    object actPImportFakturUli: TAction
      Category = 'Pengadaan'
      Caption = 'Import Faktur Pembelian ULI'
      ImageIndex = 16
      OnExecute = actPImportFakturUliExecute
    end
    object ActJRepVoucher: TAction
      Category = 'Penjualan'
      Caption = 'Rekap Voucher'
      ImageIndex = 18
      OnExecute = ActJRepVoucherExecute
    end
    object actKeuDanaTalangan: TAction
      Category = 'Keuangan'
      Caption = 'Piutang Lain-lain Unilever'
      ImageIndex = 45
      OnExecute = actKeuDanaTalanganExecute
    end
    object actSettingBayar: TAction
      Category = 'Penjualan'
      Caption = 'Setting Bayar'
      ImageIndex = 58
      OnExecute = actSettingBayarExecute
    end
    object actJUpdteVoucher: TAction
      Category = 'Penjualan'
      Caption = 'Update Voucher'
      ImageIndex = 47
      OnExecute = actJUpdteVoucherExecute
    end
    object actJRepBarangBS: TAction
      Category = 'Penjualan'
      Caption = 'Rekap Barang Retur'
      ImageIndex = 19
      OnExecute = actJRepBarangBSExecute
    end
    object actATKelompokAset: TAction
      Category = 'Aset'
      Caption = 'Daftar Kelompok'
      ImageIndex = 24
      OnExecute = actATKelompokAsetExecute
    end
    object actATMAset: TAction
      Category = 'Aset'
      Caption = 'Daftar Aktiva Tetap'
      ImageIndex = 18
      OnExecute = actATMAsetExecute
    end
    object actATSusutTahun: TAction
      Category = 'Aset'
      Caption = 'Daftar Penyusutan Per Tahun'
      ImageIndex = 34
    end
    object actATDaftarSusut: TAction
      Category = 'Aset'
      Caption = 'Daftar Penyusutan'
      ImageIndex = 42
    end
    object actATPenyesuaianAset: TAction
      Category = 'Aset'
      Caption = 'Daftar Penyesuaian Nilai'
      ImageIndex = 31
    end
    object actATJurnalAset: TAction
      Category = 'Aset'
      Caption = 'Jurnal Penyusutan && Penyesuaian'
      ImageIndex = 47
    end
    object actATSusutKlpk: TAction
      Category = 'Aset'
      Caption = 'Daftra Penyusutan Per Kelompok'
      ImageIndex = 19
    end
    object actMemorialPiutangUli: TAction
      Category = 'Accounting'
      Caption = 'Jurnal Hutang Vs Piutang Uli'
      ImageIndex = 24
      OnExecute = actMemorialPiutangUliExecute
    end
    object actPImportFakturBungah: TAction
      Category = 'Pengadaan'
      Caption = 'Import Retur Pembelian Bungah'
      ImageIndex = 18
      OnExecute = actPImportFakturBungahExecute
    end
    object actPImportReturUli: TAction
      Category = 'Pengadaan'
      Caption = 'Import Retur Pembelian ULI'
      ImageIndex = 19
      OnExecute = actPImportReturUliExecute
    end
    object actPImportFakturPembelianBungah: TAction
      Category = 'Pengadaan'
      Caption = 'Import Faktur Pembelian Bungah'
      ImageIndex = 17
      OnExecute = actPImportFakturPembelianBungahExecute
    end
    object actTutupBukuBulan: TAction
      Category = 'Accounting'
      Caption = 'Tutup Buku Bulan'
      ImageIndex = 14
    end
    object actTutupBukuTahun: TAction
      Category = 'Accounting'
      Caption = 'Tutup Buku Tahun'
      ImageIndex = 14
    end
    object actJUmurPiutang: TAction
      Category = 'Penjualan'
      Caption = 'Umur && Analisa Piutang'
      ImageIndex = 2
      OnExecute = actJUmurPiutangExecute
    end
    object actJImportFakturMayora: TAction
      Category = 'Penjualan'
      Caption = 'Import Faktur Penjualan [Mayora]'
      ImageIndex = 17
      OnExecute = actJImportFakturMayoraExecute
    end
    object actGPenerimaan: TAction
      Caption = 'Penerimaan Barang'
      ImageIndex = 9
      OnExecute = actGPenerimaanExecute
    end
    object actGPengeluaran: TAction
      Caption = 'Pengeluaran Barang'
      ImageIndex = 15
      OnExecute = actGPengeluaranExecute
    end
    object actGVerifikasi: TAction
      Caption = 'Verifikasi'
      ImageIndex = 17
      OnExecute = actGVerifikasiExecute
    end
    object actGStokAwal: TAction
      Caption = 'Stok Awal'
      ImageIndex = 24
      OnExecute = actGStokAwalExecute
    end
    object actGKoreksi: TAction
      Caption = 'Koreksi Stok'
      ImageIndex = 55
      OnExecute = actGKoreksiExecute
    end
    object actGPosting: TAction
      Caption = 'Posting Data'
      ImageIndex = 2
    end
    object actGKartuStok: TAction
      Caption = 'Kartu Stok [Qty]'
      ImageIndex = 35
      OnExecute = actGKartuStokExecute
    end
    object actGKartuPersediaan: TAction
      Caption = 'Laporan Nilai Persediaan'
      ImageIndex = 34
      OnExecute = actGKartuPersediaanExecute
    end
    object actJRefNoFaktur: TAction
      Category = 'Penjualan'
      Caption = 'Referensi Nomor Faktur'
      ImageIndex = 2
      OnExecute = actJRefNoFakturExecute
    end
    object actJImportFakturKeluaran: TAction
      Category = 'Penjualan'
      Caption = 'Import Faktur Keluaran'
      ImageIndex = 1
      OnExecute = actJImportFakturKeluaranExecute
    end
    object actPImportFakturPembelianMayora: TAction
      Category = 'Pengadaan'
      Caption = 'actPImportFakturPembelianMayora'
      ImageIndex = 17
      OnExecute = actPImportFakturPembelianMayoraExecute
    end
    object actKasKeluar: TAction
      Category = 'Pengadaan'
      Caption = 'Kas Keluar'
      ImageIndex = 35
      OnExecute = actKasKeluarExecute
    end
    object actKasMasuk: TAction
      Category = 'Penjualan'
      Caption = 'Kas Masuk'
      ImageIndex = 15
      OnExecute = actKasMasukExecute
    end
    object actNotaRetail: TAction
      Category = 'Penjualan'
      Caption = 'Retail'
      ImageIndex = 7
      OnExecute = actNotaRetailExecute
    end
    object actMGudang: TAction
      Category = 'Master'
      Caption = 'Data Gudang'
      ImageIndex = 6
      OnExecute = actMGudangExecute
    end
    object actLapPembelian: TAction
      Category = 'Pengadaan'
      Caption = 'Laporan Pembelian'
      ImageIndex = 2
      OnExecute = actLapPembelianExecute
    end
    object actLapUmurHutang: TAction
      Category = 'Pengadaan'
      Caption = 'Laporan Umur Hutang'
      ImageIndex = 17
      OnExecute = actLapUmurHutangExecute
    end
    object actLapPenjualan: TAction
      Category = 'Penjualan'
      Caption = 'Laporan Penjualan'
      ImageIndex = 18
      OnExecute = actLapPenjualanExecute
    end
    object actMutasiStok: TAction
      Caption = 'Mutasi Stok'
      ImageIndex = 3
      OnExecute = actMutasiStokExecute
    end
    object actLapKasir: TAction
      Category = 'Penjualan'
      Caption = 'Lap. Kasir'
      ImageIndex = 17
      OnExecute = actLapKasirExecute
    end
    object actStokOpname: TAction
      Caption = 'Stok Opname'
      ImageIndex = 32
      OnExecute = actStokOpnameExecute
    end
    object actItemCheck: TAction
      Category = 'Master'
      Caption = 'Informasi Item'
      ImageIndex = 0
      OnExecute = actItemCheckExecute
    end
    object actLapSetoran: TAction
      Category = 'Keuangan'
      Caption = 'Laporan Setoran'
      ImageIndex = 0
      OnExecute = actLapSetoranExecute
    end
    object actOnline: TAction
      Category = 'Penjualan'
      Caption = 'Online'
      ImageIndex = 0
      OnExecute = actOnlineExecute
    end
    object actNotaRetailTouch: TAction
      Category = 'Penjualan'
      Caption = 'Retail Touch Screen'
      ImageIndex = 22
      OnExecute = actNotaRetailTouchExecute
    end
  end
  object MainMenu: TAdvMainMenu
    Images = DM.IconList
    MenuStyler = MenuOfficeStyler
    Version = '2.5.5.1'
    Left = 355
    Top = 9
    object Application1: TMenuItem
      Tag = 100
      Caption = 'Aplikasi'
      object DatabaseConnection1: TMenuItem
        Tag = 101
        Action = actDatabaseConnection
        GroupIndex = 1
      end
      object KoneksiFileExcel1: TMenuItem
        Tag = 110
        Action = actSetExcelString
        GroupIndex = 1
      end
      object N1: TMenuItem
        Tag = -1
        Caption = '-'
        GroupIndex = 1
      end
      object Skin1: TMenuItem
        Tag = 102
        Caption = 'Skin'
        GroupIndex = 1
        ImageIndex = 1
        object WindowsXP1: TMenuItem
          Tag = 1020
          Action = actWindowsXPSkin
          GroupIndex = 2
        end
        object Whidbey1: TMenuItem
          Tag = 1021
          Action = actWhidbeySkin
          GroupIndex = 2
        end
        object Office20031: TMenuItem
          Tag = 1022
          Caption = 'Office2003'
          GroupIndex = 2
          object Classic1: TMenuItem
            Tag = 10220
            Action = actOffice2003ClassicSkin
            GroupIndex = 3
          end
          object Blue1: TMenuItem
            Tag = 10221
            Action = actOffice2003BlueSkin
            GroupIndex = 3
          end
          object Olive1: TMenuItem
            Tag = 10222
            Action = actOffice2003OliveSkin
            GroupIndex = 3
          end
          object Silver1: TMenuItem
            Tag = 10223
            Action = actOffice2003SilverSkin
            GroupIndex = 3
          end
        end
        object Office20071: TMenuItem
          Tag = 1023
          Caption = 'Office2007'
          GroupIndex = 2
          object Luna1: TMenuItem
            Tag = 10230
            Action = actOffice2007LunaSkin
            GroupIndex = 3
          end
          object Obsidian1: TMenuItem
            Tag = 10231
            Action = actOffice2007ObsidianSkin
            GroupIndex = 3
          end
          object Silver2: TMenuItem
            Tag = 10232
            Action = actOffice2007SilverSkin
            GroupIndex = 3
          end
        end
      end
      object N2: TMenuItem
        Tag = -1
        Caption = '-'
        GroupIndex = 1
      end
      object Exit1: TMenuItem
        Tag = 103
        Action = actExit
        GroupIndex = 1
      end
    end
    object User1: TMenuItem
      Tag = 200
      Caption = 'Pengguna'
      object Login1: TMenuItem
        Tag = 201
        Action = actLogin
        GroupIndex = 1
      end
      object ChangePassword1: TMenuItem
        Tag = 202
        Action = actChangePassword
        GroupIndex = 1
      end
      object N13: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object Messages1: TMenuItem
        Action = actUserMessages
        GroupIndex = 1
      end
    end
    object Admin1: TMenuItem
      Tag = 300
      Caption = 'Admin'
      object ransaction1: TMenuItem
        Tag = 301
        Action = actKodeTransaction
        GroupIndex = 1
      end
      object UserMenu1: TMenuItem
        Tag = 302
        Action = actUsers
        GroupIndex = 1
      end
    end
    object Master1: TMenuItem
      Tag = 400
      Caption = 'Master'
      object Supplier1: TMenuItem
        Tag = 401
        Action = actMSupplier
        GroupIndex = 1
      end
      object Customer1: TMenuItem
        Tag = 402
        Action = actMCustomer
        GroupIndex = 1
      end
      object N3: TMenuItem
        Tag = -1
        Caption = '-'
        GroupIndex = 1
      end
      object DataPegawai1: TMenuItem
        Tag = 404
        Action = actMPegawai
        GroupIndex = 1
      end
      object N4: TMenuItem
        Tag = -1
        Caption = '-'
        GroupIndex = 1
      end
      object SettingParameter1: TMenuItem
        Tag = 427
        Action = actMParameter
        GroupIndex = 1
      end
      object N16: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object Item1: TMenuItem
        Tag = 458
        Action = actMItem
        GroupIndex = 1
      end
      object DataGudang1: TMenuItem
        Tag = 459
        Action = actMGudang
        GroupIndex = 1
      end
      object InformasiItem1: TMenuItem
        Tag = 460
        Action = actItemCheck
        GroupIndex = 1
      end
    end
    object Pembelian1: TMenuItem
      Tag = 500
      Caption = 'Pembelian'
      object agihanPembelian1: TMenuItem
        Tag = 501
        Action = actPNotaHutang
        GroupIndex = 1
      end
      object ReturPembelianNotaDebet1: TMenuItem
        Tag = 502
        Action = actPNotaDebet
        GroupIndex = 1
      end
      object LaporanPembelian1: TMenuItem
        Tag = 503
        Action = actLapPembelian
        GroupIndex = 1
      end
      object N6: TMenuItem
        Tag = -1
        Caption = '-'
        GroupIndex = 1
      end
      object LaporanUmurHutang1: TMenuItem
        Tag = 504
        Action = actLapUmurHutang
        GroupIndex = 1
      end
      object BukuHutang1: TMenuItem
        Tag = 510
        Action = actPBukuHutang
        GroupIndex = 1
      end
    end
    object Gudang1: TMenuItem
      Tag = 700
      Caption = 'Gudang'
      GroupIndex = 1
      object PenerimaanBarang1: TMenuItem
        Tag = 701
        Action = actGPenerimaan
        GroupIndex = 1
      end
      object PengeluaranBarang1: TMenuItem
        Tag = 702
        Action = actGPengeluaran
        GroupIndex = 1
      end
      object N27: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object StokAwal1: TMenuItem
        Tag = 707
        Action = actGStokAwal
        GroupIndex = 1
      end
      object KertasKerjaStokOpname1: TMenuItem
        Tag = 703
        Action = actStokOpname
        GroupIndex = 1
      end
      object KoreksiStok1: TMenuItem
        Tag = 705
        Action = actGKoreksi
        GroupIndex = 1
      end
      object MutasiStok1: TMenuItem
        Tag = 706
        Action = actMutasiStok
        GroupIndex = 1
      end
      object N28: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object KartuStokQTY1: TMenuItem
        Tag = 710
        Action = actGKartuStok
        GroupIndex = 1
      end
      object KartuStokPersediaan1: TMenuItem
        Tag = 711
        Action = actGKartuPersediaan
        GroupIndex = 1
      end
    end
    object Penjualan1: TMenuItem
      Tag = 600
      Caption = 'Penjualan'
      GroupIndex = 1
      object Retail1: TMenuItem
        Tag = 601
        Action = actNotaRetail
        GroupIndex = 1
      end
      object RetailTouchScreen1: TMenuItem
        Tag = 606
        Action = actNotaRetailTouch
        GroupIndex = 1
      end
      object Online1: TMenuItem
        Tag = 605
        Action = actOnline
        GroupIndex = 1
      end
      object NotaPiutang1: TMenuItem
        Tag = 602
        Action = actJNotaPiutang
        GroupIndex = 1
      end
      object N32: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object LaporanPenjualan1: TMenuItem
        Tag = 603
        Action = actLapPenjualan
        GroupIndex = 1
      end
      object actLapKasir1: TMenuItem
        Tag = 604
        Action = actLapKasir
        GroupIndex = 1
      end
    end
    object Keuangan1: TMenuItem
      Tag = 900
      Caption = 'Keuangan'
      GroupIndex = 1
      object BuktiKasKeluarBKK1: TMenuItem
        Tag = 911
        Action = actKeuKasKeluar
        GroupIndex = 1
      end
      object BuktiKasMasukBKM1: TMenuItem
        Tag = 912
        Action = actKeuKasMasuk
        GroupIndex = 1
      end
      object LaporanSetoran1: TMenuItem
        Tag = 913
        Action = actLapSetoran
        GroupIndex = 1
      end
      object N11: TMenuItem
        Tag = -1
        Caption = '-'
        GroupIndex = 1
      end
      object BukuKas1: TMenuItem
        Tag = 950
        Action = actKeuBukuKas
        GroupIndex = 1
      end
    end
    object Window1: TMenuItem
      Tag = 1
      Caption = 'Window'
      GroupIndex = 1
      object ApplicationLogger1: TMenuItem
        Tag = 2
        Action = actAppLog
        GroupIndex = 1
      end
    end
  end
  object MenuOfficeStyler: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Obsidian
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658729
    IconBar.ColorTo = 15658729
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 12105910
    RootItem.ColorTo = 10526878
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = clSilver
    Left = 389
    Top = 9
  end
  object afsMain: TAdvFormStyler
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 342
    Top = 78
  end
  object ToolBarOfficeStyler: TAdvToolBarOfficeStyler
    AppColor.AppButtonColor = 13005312
    AppColor.AppButtonHoverColor = 16755772
    AppColor.TextColor = clWhite
    AppColor.HoverColor = 16246477
    AppColor.HoverTextColor = clBlack
    AppColor.HoverBorderColor = 15187578
    AppColor.SelectedColor = 15187578
    AppColor.SelectedTextColor = clBlack
    AppColor.SelectedBorderColor = 15187578
    Style = bsOffice2007Obsidian
    BorderColor = 11841710
    BorderColorHot = 11841710
    ButtonAppearance.Color = 16640730
    ButtonAppearance.ColorTo = 14986888
    ButtonAppearance.ColorChecked = 9229823
    ButtonAppearance.ColorCheckedTo = 5812223
    ButtonAppearance.ColorDown = 5149182
    ButtonAppearance.ColorDownTo = 9556991
    ButtonAppearance.ColorHot = 13432063
    ButtonAppearance.ColorHotTo = 9556223
    ButtonAppearance.BorderDownColor = clNavy
    ButtonAppearance.BorderHotColor = clNavy
    ButtonAppearance.BorderCheckedColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 12105910
    CaptionAppearance.CaptionColorTo = 10526878
    CaptionAppearance.CaptionBorderColor = clHighlight
    CaptionAppearance.CaptionColorHot = 11184809
    CaptionAppearance.CaptionColorHotTo = 7237229
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = 12958644
    Color.ColorTo = 15527141
    Color.Direction = gdVertical
    Color.Mirror.Color = 14736343
    Color.Mirror.ColorTo = 13617090
    Color.Mirror.ColorMirror = 13024437
    Color.Mirror.ColorMirrorTo = 15000281
    ColorHot.Color = 15921390
    ColorHot.ColorTo = 16316662
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 15789804
    ColorHot.Mirror.ColorTo = 15592168
    ColorHot.Mirror.ColorMirror = 15131103
    ColorHot.Mirror.ColorMirrorTo = 16185075
    CompactGlowButtonAppearance.BorderColor = 12631218
    CompactGlowButtonAppearance.BorderColorHot = 10079963
    CompactGlowButtonAppearance.BorderColorDown = 4548219
    CompactGlowButtonAppearance.BorderColorChecked = 4548219
    CompactGlowButtonAppearance.Color = 14671574
    CompactGlowButtonAppearance.ColorTo = 15000283
    CompactGlowButtonAppearance.ColorChecked = 11918331
    CompactGlowButtonAppearance.ColorCheckedTo = 7915518
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 7778289
    CompactGlowButtonAppearance.ColorDownTo = 4296947
    CompactGlowButtonAppearance.ColorHot = 15465983
    CompactGlowButtonAppearance.ColorHotTo = 11332863
    CompactGlowButtonAppearance.ColorMirror = 14144974
    CompactGlowButtonAppearance.ColorMirrorTo = 15197664
    CompactGlowButtonAppearance.ColorMirrorHot = 5888767
    CompactGlowButtonAppearance.ColorMirrorHotTo = 10807807
    CompactGlowButtonAppearance.ColorMirrorDown = 946929
    CompactGlowButtonAppearance.ColorMirrorDownTo = 5021693
    CompactGlowButtonAppearance.ColorMirrorChecked = 10480637
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 13616833
    DockColor.ColorTo = 12958644
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    DragGripStyle = dsNone
    FloatingWindowBorderColor = 11841710
    FloatingWindowBorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 12631218
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.Color = 14671574
    GlowButtonAppearance.ColorTo = 15000283
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 14144974
    GlowButtonAppearance.ColorMirrorTo = 15197664
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.Background = clInfoBk
    GroupAppearance.BorderColor = 8878963
    GroupAppearance.Color = 4413279
    GroupAppearance.ColorTo = 3620416
    GroupAppearance.ColorMirror = 4413279
    GroupAppearance.ColorMirrorTo = 1617645
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Tahoma'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggRadial
    GroupAppearance.GradientMirror = ggRadial
    GroupAppearance.TextColor = clWhite
    GroupAppearance.CaptionAppearance.CaptionColor = 12105910
    GroupAppearance.CaptionAppearance.CaptionColorTo = 10526878
    GroupAppearance.CaptionAppearance.CaptionColorHot = 11184809
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 7237229
    GroupAppearance.PageAppearance.BorderColor = 12763842
    GroupAppearance.PageAppearance.Color = 15530237
    GroupAppearance.PageAppearance.ColorTo = 16382457
    GroupAppearance.PageAppearance.ColorMirror = 16382457
    GroupAppearance.PageAppearance.ColorMirrorTo = 16382457
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = clBlack
    GroupAppearance.PageAppearance.HighLightColor = 15526887
    GroupAppearance.TabAppearance.BorderColor = 10534860
    GroupAppearance.TabAppearance.BorderColorHot = 9870494
    GroupAppearance.TabAppearance.BorderColorSelected = 10534860
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 10534860
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 10412027
    GroupAppearance.TabAppearance.ColorSelectedTo = 12249340
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = 5992568
    GroupAppearance.TabAppearance.ColorHotTo = 9803415
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 4413279
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 1617645
    GroupAppearance.TabAppearance.ColorMirrorSelected = 12249340
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 13955581
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Tahoma'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggRadial
    GroupAppearance.TabAppearance.GradientMirror = ggRadial
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clWhite
    GroupAppearance.TabAppearance.TextColorHot = clWhite
    GroupAppearance.TabAppearance.TextColorSelected = 9126421
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = clBlack
    GroupAppearance.TabAppearance.HighLightColor = 9803929
    GroupAppearance.TabAppearance.HighLightColorHot = 9803929
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.BorderColor = 13423059
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 15530237
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16382457
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 15660277
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16645114
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 11841710
    PageAppearance.Color = 13616833
    PageAppearance.ColorTo = 12958644
    PageAppearance.ColorMirror = 12958644
    PageAppearance.ColorMirrorTo = 15527141
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 5263440
    PageAppearance.HighLightColor = 15526887
    PagerCaption.BorderColor = clBlack
    PagerCaption.Color = 5392195
    PagerCaption.ColorTo = 4866108
    PagerCaption.ColorMirror = 3158063
    PagerCaption.ColorMirrorTo = 4079166
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clBlue
    PagerCaption.TextColorExtended = clWhite
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -11
    PagerCaption.Font.Name = 'Tahoma'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 11708063
    QATAppearance.Color = 12958644
    QATAppearance.ColorTo = 15527141
    QATAppearance.FullSizeBorderColor = 13552843
    QATAppearance.FullSizeColor = 9407882
    QATAppearance.FullSizeColorTo = 9407882
    RightHandleColor = 13289414
    RightHandleColorTo = 11841710
    RightHandleColorHot = 13891839
    RightHandleColorHotTo = 7782911
    RightHandleColorDown = 557032
    RightHandleColorDownTo = 8182519
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 9870494
    TabAppearance.BorderColorSelected = 14922381
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 15724269
    TabAppearance.ColorSelectedTo = 15724269
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 5992568
    TabAppearance.ColorHotTo = 9803415
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 4413279
    TabAppearance.ColorMirrorHotTo = 1617645
    TabAppearance.ColorMirrorSelected = 13816526
    TabAppearance.ColorMirrorSelectedTo = 13816526
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Tahoma'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggRadial
    TabAppearance.GradientMirrorHot = ggRadial
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clWhite
    TabAppearance.TextColorHot = clWhite
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = clBlack
    TabAppearance.HighLightColor = 9803929
    TabAppearance.HighLightColorHot = 9803929
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 5460819
    TabAppearance.BackGround.ColorTo = 3815994
    TabAppearance.BackGround.Direction = gdVertical
    Left = 380
    Top = 70
  end
  object TabSetOfficeStyler: TAdvOfficeTabSetOfficeStyler
    ButtonBorderColor = clNone
    GlowButtonAppearance.BorderColor = 12631218
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.Color = 14671574
    GlowButtonAppearance.ColorTo = 15000283
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 14144974
    GlowButtonAppearance.ColorMirrorTo = 15197664
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    Style = tsOffice2007Obsidian
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 9870494
    TabAppearance.BorderColorSelected = 14922381
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 15724269
    TabAppearance.ColorSelectedTo = 15724269
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 5992568
    TabAppearance.ColorHotTo = 9803415
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 4413279
    TabAppearance.ColorMirrorHotTo = 1617645
    TabAppearance.ColorMirrorSelected = 13816526
    TabAppearance.ColorMirrorSelectedTo = 13816526
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Tahoma'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggRadial
    TabAppearance.GradientMirrorHot = ggRadial
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clWhite
    TabAppearance.TextColorHot = clWhite
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = clBlack
    TabAppearance.HighLightColorSelected = 9803929
    TabAppearance.HighLightColorHot = 9803929
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 5460819
    TabAppearance.BackGround.ColorTo = 3815994
    TabAppearance.BackGround.Direction = gdVertical
    Left = 357
    Top = 46
  end
end

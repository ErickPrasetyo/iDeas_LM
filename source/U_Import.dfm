object ImportFrm: TImportFrm
  Left = 426
  Top = 272
  BorderStyle = bsToolWindow
  Caption = 'Import Database'
  ClientHeight = 197
  ClientWidth = 381
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblLocation: TLabel
    Left = 14
    Top = 81
    Width = 122
    Height = 16
    Caption = 'File Import Location :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object pnlTop: TAdvPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    Color = 16640730
    TabOrder = 0
    UseDockManager = True
    Version = '1.7.7.5'
    AutoHideChildren = False
    BorderColor = clGray
    Caption.Color = 14059353
    Caption.ColorTo = 9648131
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clHighlight
    CollapsDelay = 0
    ColorTo = 14986888
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clNone
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWhite
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14716773
    StatusBar.ColorTo = 16374724
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    FullHeight = 0
    object lblHeader: TLabel
      Left = 12
      Top = 12
      Width = 230
      Height = 33
      Caption = 'Import Database'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object edtLocation: TLMDBrowseEdit
    Left = 136
    Top = 80
    Width = 233
    Height = 21
    Cursor = crIBeam
    Bevel.Mode = bmWindows
    Caret.BlinkRate = 530
    Caret.ImageIndex = 0
    Caret.ListIndex = 0
    TabOrder = 1
  end
  object btnExport: TAdvGlowButton
    Left = 217
    Top = 165
    Width = 71
    Height = 25
    Caption = 'Import'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 2
    OnClick = btnExportClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 11918331
    Appearance.ColorCheckedTo = 7915518
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object btnCancel: TAdvGlowButton
    Left = 295
    Top = 165
    Width = 71
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 3
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 11918331
    Appearance.ColorCheckedTo = 7915518
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object pnlDivider: TSCPanel
    Left = 80
    Top = 155
    Width = 288
    Height = 2
    Color = clWhite
    Gradient = scgLeftToRight
    GradientEnd = clBlack
    GradientMid = clGray
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 4
  end
  object pgrsTotal: TSCProgress
    Left = 15
    Top = 107
    Width = 355
    Height = 18
    BorderProps.Border = sccbFlat
    Step = 1
    Style = scpsXP
    TabOrder = 5
  end
  object pgrsProcess: TSCProgress
    Left = 15
    Top = 129
    Width = 355
    Height = 18
    BorderProps.Border = sccbFlat
    Step = 1
    Style = scpsXP
    TabOrder = 7
  end
  object AdvFormStyler1: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2003Blue
    Left = 277
    Top = 9
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = clGray
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 14059353
    Settings.Caption.ColorTo = 9648131
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clWhite
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clHighlight
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 16640730
    Settings.ColorTo = 14986888
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = clWindowText
    Settings.Font.Height = -11
    Settings.Font.Name = 'MS Sans Serif'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderColor = clNone
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clWhite
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 14716773
    Settings.StatusBar.ColorTo = 16374724
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2003Blue
    Left = 243
    Top = 7
  end
  object mtExport: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.60'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    DefaultFormat = kbmBinaryStreamFormat
    OnProgress = mtExportProgress
    Left = 276
    Top = 40
  end
  object kbmBinaryStreamFormat: TkbmBinaryStreamFormat
    Version = '3.00'
    sfUsingIndex = []
    sfData = [sfSaveData, sfLoadData]
    sfCalculated = []
    sfLookup = []
    sfNonVisible = [sfSaveNonVisible, sfLoadNonVisible]
    sfBlobs = []
    sfDef = [sfSaveDef, sfLoadDef]
    sfIndexDef = []
    sfFiltered = [sfSaveFiltered]
    sfIgnoreRange = [sfSaveIgnoreRange]
    sfIgnoreMasterDetail = [sfSaveIgnoreMasterDetail]
    sfDeltas = []
    sfDontFilterDeltas = []
    sfAppend = []
    sfFieldKind = [sfSaveFieldKind]
    sfFromStart = [sfLoadFromStart]
    sfDataTypeHeader = [sfSaveDataTypeHeader, sfLoadDataTypeHeader]
    BufferSize = 16384
    Left = 316
    Top = 40
  end
  object qryExec: TZQuery
    Connection = DM.conn
    CachedUpdates = True
    Params = <>
    Left = 149
    Top = 8
  end
  object qryExport: TZQuery
    Connection = DM.conn
    CachedUpdates = True
    Params = <>
    Left = 195
    Top = 9
  end
  object qryCheck: TZQuery
    Connection = DM.conn
    CachedUpdates = True
    Params = <>
    Left = 195
    Top = 42
  end
  object sq_SO: TZSequence
    Connection = DM.conn
    SequenceName = 'sales.sq_so'
    Left = 105
    Top = 6
  end
  object sq_DO: TZSequence
    Connection = DM.conn
    SequenceName = 'sales.sq_do'
    Left = 108
    Top = 37
  end
end

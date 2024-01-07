object RepairSalesFrm: TRepairSalesFrm
  Left = 301
  Top = 228
  Width = 584
  Height = 233
  BorderStyle = bsSizeToolWin
  Caption = 'Perbaikan Data Master Sales'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 75
    Align = alTop
    Color = 16579055
    Gradient = scgLeftToRight
    GradientMid = 14731160
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      568
      75)
    object LblReffNo: TLabel
      Left = 9
      Top = 17
      Width = 51
      Height = 13
      Caption = 'File Excel :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 9
      Top = 40
      Width = 28
      Height = 14
      Caption = 'Sheet'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label2: TLabel
      Left = 57
      Top = 40
      Width = 3
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object edtFileExcel: TcxButtonEdit
      Left = 67
      Top = 13
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtFileExcelPropertiesButtonClick
      TabOrder = 0
      Width = 292
    end
    object btnFetch: TSCButton
      Left = 362
      Top = 12
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Mulai'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnFetchClick
    end
    object cbSheet: TcxComboBox
      Left = 67
      Top = 34
      TabOrder = 2
      Visible = False
      Width = 121
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 140
    Width = 568
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 1
    DesignSize = (
      568
      28)
    object btnClose: TSCButton
      Left = 8
      Top = 0
      Width = 72
      Height = 28
      Anchors = [akTop]
      Caption = 'T&utup'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 168
    Width = 568
    Height = 26
    Panels = <
      item
        Text = 'Provider :'
        Width = 60
      end
      item
        Text = 'Microsoft.Jet.OLEDB.4.0'
        Width = 200
      end
      item
        Text = 'Extended Properties :'
        Width = 120
      end
      item
        Text = 'EXCEL 8.0;HDR=YES;IMEX=1'
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 75
    Width = 568
    Height = 65
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 15265510
    TabOrder = 4
    object LblStatus: TLabel
      Left = 0
      Top = 48
      Width = 566
      Height = 15
      Align = alBottom
      Alignment = taCenter
      Caption = 'status hubungan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object pgrsTotal: TSCProgress
      Left = 0
      Top = 20
      Width = 566
      Height = 28
      Align = alClient
      BorderProps.Border = sccbFlat
      Step = 1
      Style = scpsXP
      TabOrder = 0
    end
    object pgrsProcess: TSCProgress
      Left = 0
      Top = 0
      Width = 566
      Height = 20
      Align = alTop
      BorderProps.Border = sccbFlat
      Step = 1
      Style = scpsXP
      TabOrder = 1
    end
  end
  object dskmtMemorial: TDataSource
    DataSet = ADODataSet1
    Left = 444
    Top = 99
  end
  object kmtMemorial: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'F1'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F2'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F3'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.10.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 401
    Top = 94
    object kmtMemorialF1: TWideStringField
      FieldName = 'F1'
      Size = 255
    end
    object kmtMemorialF2: TWideStringField
      FieldName = 'F2'
      Size = 255
    end
    object kmtMemorialF3: TWideStringField
      FieldName = 'F3'
      Size = 255
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 203
    Top = 66
  end
  object APS: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 16765615
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 12105910
    Settings.Caption.ColorTo = 10526878
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clWhite
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 13616833
    Settings.ColorTo = 12958644
    Settings.ColorMirror = 12958644
    Settings.ColorMirrorTo = 15527141
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = 7485192
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
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clWhite
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 10592158
    Settings.StatusBar.ColorTo = 5459275
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2007Obsidian
    Left = 233
    Top = 67
  end
  object ATBOS: TAdvToolBarOfficeStyler
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
    ButtonAppearance.Color = 13627626
    ButtonAppearance.ColorTo = 9224369
    ButtonAppearance.ColorChecked = 9229823
    ButtonAppearance.ColorCheckedTo = 5812223
    ButtonAppearance.ColorDown = 5149182
    ButtonAppearance.ColorDownTo = 9556991
    ButtonAppearance.ColorHot = 13432063
    ButtonAppearance.ColorHotTo = 9556223
    ButtonAppearance.BorderDownColor = 3693887
    ButtonAppearance.BorderHotColor = 3693887
    ButtonAppearance.BorderCheckedColor = 3693887
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 12105910
    CaptionAppearance.CaptionColorTo = 10526878
    CaptionAppearance.CaptionBorderColor = clWhite
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
    Left = 266
    Top = 68
  end
  object SR: TcxStyleRepository
    Left = 303
    Top = 102
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7039851
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15400938
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15587527
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13616833
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle4
      BuiltIn = True
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Indicator = cxStyle4
      Styles.BandHeader = cxStyle1
      BuiltIn = True
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\Ne' +
      'wDeploy\iDeasULI\doc\sales_sld.xls;Mode=ReadWrite;Persist Securi' +
      'ty Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Pa' +
      'th="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=35;Je' +
      't OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Op' +
      's=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database ' +
      'Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Enc' +
      'rypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False' +
      ';Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=Fa' +
      'lse;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 400
    Top = 66
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xlsx'
    InitialDir = 'release/'
    Left = 269
    Top = 98
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM [Sheet1$]'
    FieldDefs = <
      item
        Name = 'F1'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F2'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F3'
        DataType = ftWideString
        Size = 255
      end>
    Parameters = <>
    StoreDefs = True
    Left = 441
    Top = 69
    object ADODataSet1F1: TWideStringField
      FieldName = 'F1'
      Size = 255
    end
    object ADODataSet1F2: TWideStringField
      FieldName = 'F2'
      Size = 255
    end
    object ADODataSet1F3: TWideStringField
      FieldName = 'F3'
      Size = 255
    end
  end
  object oqExec: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 233
    Top = 92
  end
  object oqITEM: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from master.mdivision_bku')
    Params = <>
    Left = 203
    Top = 99
    object oqITEMid_division: TStringField
      FieldName = 'id_division'
      Size = 12
    end
    object oqITEMdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object oqITEMusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
  end
  object sdfdtstImportData: TSdfDataSet
    FileMustExist = True
    ReadOnly = False
    FileName = 
      'C:\Users\ERICK\Desktop\ACP Data Export\Daftar Master Outlet M2 P' +
      'MK_.txt'
    Schema.Strings = (
      'Field1'
      'Field2'
      'Field3'
      'Field4'
      'Field5'
      'Field6'
      'Field7'
      'Field8'
      'Field9'
      'Field10'
      'Field11'
      'Field12'
      'Field13'
      'Field14'
      'Field15'
      'Field16'
      'Field17'
      'Field18'
      'Field19'
      'Field20'
      'Field21'
      'Field22'
      'Field23'
      'Field24'
      'Field25'
      'Field26'
      'Field27'
      'Field28'
      'Field29'
      'Field30'
      'Field31'
      'Field32'
      'Field33'
      'Field34'
      'Field35'
      'Field36'
      'Field37'
      'Field38'
      'Field39'
      'Field40'
      'Field41'
      'Field42'
      'Field43'
      'Field44'
      'Field45'
      'Field46'
      'Field47'
      'Field48'
      'Field49'
      'Field50'
      'Field51'
      'Field52'
      'Field53'
      'Field54'
      'Field55'
      'Field56'
      'Field57'
      'Field58'
      'Field59'
      'Field60'
      'Field61'
      'Field62'
      'Field63'
      'Field64')
    FieldDefs = <
      item
        Name = 'Field1'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field2'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field3'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field4'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field5'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field6'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field7'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field8'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field9'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field10'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field11'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field12'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field13'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field14'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field15'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field16'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field17'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field18'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field19'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field20'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field21'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field22'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field23'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field24'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field25'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field26'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field27'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field28'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field29'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field30'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field31'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field32'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field33'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field34'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field35'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field36'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field37'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field38'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field39'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field40'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field41'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field42'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field43'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field44'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field45'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field46'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field47'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field48'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field49'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field50'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field51'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field52'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field53'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field54'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field55'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field56'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field57'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field58'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field59'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field60'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field61'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field62'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field63'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field64'
        DataType = ftString
        Size = 1228
      end>
    Delimiter = '|'
    FirstLineAsSchema = False
    Left = 456
    Top = 8
  end
end

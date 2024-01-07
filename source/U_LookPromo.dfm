object LookPromoFrm: TLookPromoFrm
  Left = 235
  Top = 209
  Width = 908
  Height = 374
  BorderStyle = bsSizeToolWin
  Caption = 'Browse Rekening'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 49
    Align = alTop
    Color = 16579055
    Gradient = scgLeftToRight
    GradientMid = 14731160
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    object lblHeader: TLabel
      Left = 12
      Top = 8
      Width = 181
      Height = 25
      Caption = 'Browse Rekening'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 308
    Width = 892
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 1
    DesignSize = (
      892
      31)
    object btnClose: TSCButton
      Left = 798
      Top = 3
      Width = 72
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Close'
      ModalResult = 7
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 0
    end
    object btnAdd: TSCButton
      Left = 714
      Top = 3
      Width = 78
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Add Item'
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 1
      OnClick = btnAddClick
    end
  end
  object gridItemPR: TcxGrid
    Left = 0
    Top = 49
    Width = 892
    Height = 259
    Align = alClient
    TabOrder = 4
    object grdDBTV_ItemPR: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPR
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 35
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle4
      object grdDBTV_ItemPRischoosen: TcxGridDBColumn
        Caption = 'Pilih'
        DataBinding.FieldName = 'selected'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 59
      end
      object grdDBTV_ItemPRkd_item: TcxGridDBColumn
        Caption = 'PC Code'
        DataBinding.FieldName = 'kd_item'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 90
      end
      object grdDBTV_ItemPRdiskripsi: TcxGridDBColumn
        Caption = 'Product'
        DataBinding.FieldName = 'diskripsi'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 178
      end
      object grdDBTV_ItemPRclaim: TcxGridDBColumn
        Caption = 'Jml. Rupiah'
        DataBinding.FieldName = 'claim'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 95
      end
      object grdDBTV_ItemPRnama_sales: TcxGridDBColumn
        Caption = 'Sales'
        DataBinding.FieldName = 'nama_sales'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 94
      end
      object grdDBTV_ItemPRoutlet: TcxGridDBColumn
        Caption = 'Outlet'
        DataBinding.FieldName = 'outlet'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 138
      end
      object grdDBTV_ItemPRno_invoice: TcxGridDBColumn
        Caption = 'No. Faktur'
        DataBinding.FieldName = 'no_invoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 83
      end
      object grdDBTV_ItemPRno_nota: TcxGridDBColumn
        Caption = 'No. Order'
        DataBinding.FieldName = 'no_nota'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 81
      end
      object grdDBTV_ItemPRdt_tpr: TcxGridDBColumn
        Caption = 'Tgl. Faktur'
        DataBinding.FieldName = 'dt_tpr'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
      end
      object grdDBTV_ItemPRColumn1: TcxGridDBColumn
        Caption = 'Jenis Promo'
        DataBinding.FieldName = 'jns_promo'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
      end
    end
    object grdLVL_ItemPR: TcxGridLevel
      GridView = grdDBTV_ItemPR
    end
  end
  object dsLPR_Item_Status: TDataSource
    DataSet = LPR_Item_Status
    Left = 195
    Top = 16
  end
  object LPR_Item_Status: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select CAST('#39'0'#39' AS character varying(1)) as selected, a.*, o.nam' +
        'a_rekanan as outlet, d.description as nama_sales'
      'from transaksi.dtpr a'
      'left join master.mrekanan o on o.kd_rekanan=a.kd_rekanan'
      'left join master.mdivision d on d.id_division=a.id_division'
      'where a.istagih='#39'0'#39' --AND a.jns_promo=:pjenis'
      'order by a.id_dtpr')
    Params = <>
    Left = 164
    Top = 3
    object LPR_Item_Statusselected: TStringField
      FieldName = 'selected'
      ReadOnly = True
      Size = 1
    end
    object LPR_Item_Statusid_dtpr: TLargeintField
      FieldName = 'id_dtpr'
      Required = True
    end
    object LPR_Item_Statuskd_item: TStringField
      FieldName = 'kd_item'
      Size = 50
    end
    object LPR_Item_Statusdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object LPR_Item_Statusqty: TStringField
      FieldName = 'qty'
    end
    object LPR_Item_Statusclaim: TFloatField
      FieldName = 'claim'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object LPR_Item_Statusjns_promo: TStringField
      FieldName = 'jns_promo'
    end
    object LPR_Item_Statusno_invoice: TStringField
      FieldName = 'no_invoice'
    end
    object LPR_Item_Statusno_nota: TStringField
      FieldName = 'no_nota'
    end
    object LPR_Item_Statusid_division: TStringField
      FieldName = 'id_division'
      Size = 12
    end
    object LPR_Item_Statuskd_rekanan: TStringField
      FieldName = 'kd_rekanan'
    end
    object LPR_Item_Statusistagih: TStringField
      FieldName = 'istagih'
      Required = True
      Size = 1
    end
    object LPR_Item_Statusoutlet: TStringField
      FieldName = 'outlet'
      Required = True
      Size = 255
    end
    object LPR_Item_Statusnama_sales: TStringField
      FieldName = 'nama_sales'
      Required = True
      Size = 50
    end
    object LPR_Item_Statusdt_tpr: TDateTimeField
      FieldName = 'dt_tpr'
    end
  end
  object AFS: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    Left = 400
    Top = 8
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
    Settings.CollapsColor = clHighlight
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
    Left = 366
    Top = 8
  end
  object ATBOS: TAdvToolBarOfficeStyler
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
    ColorHot.Color = 15921390
    ColorHot.ColorTo = 16316662
    ColorHot.Direction = gdVertical
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
    PagerCaption.BorderColor = clBlack
    PagerCaption.Color = 5392195
    PagerCaption.ColorTo = 4866108
    PagerCaption.ColorMirror = 3158063
    PagerCaption.ColorMirrorTo = 4079166
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clBlue
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
    TabAppearance.BackGround.Color = 5460819
    TabAppearance.BackGround.ColorTo = 3815994
    TabAppearance.BackGround.Direction = gdVertical
    Left = 466
    Top = 4
  end
  object SR: TcxStyleRepository
    Left = 434
    Top = 10
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
  object dsPR: TDataSource
    DataSet = kmtPR
    Left = 249
    Top = 17
  end
  object kmtPR: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'selected'
        Attributes = [faReadonly]
        DataType = ftString
        Precision = 1
        Size = 1
      end
      item
        Name = 'id_dtpr'
        Attributes = [faRequired]
        DataType = ftLargeint
        Precision = 8
      end
      item
        Name = 'kd_item'
        DataType = ftString
        Precision = 50
        Size = 50
      end
      item
        Name = 'diskripsi'
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'qty'
        DataType = ftString
        Precision = 20
        Size = 20
      end
      item
        Name = 'claim'
        Attributes = [faRequired]
        DataType = ftFloat
        Precision = 1114114
      end
      item
        Name = 'jns_promo'
        DataType = ftString
        Precision = 20
        Size = 20
      end
      item
        Name = 'no_invoice'
        DataType = ftString
        Precision = 20
        Size = 20
      end
      item
        Name = 'no_nota'
        DataType = ftString
        Precision = 20
        Size = 20
      end
      item
        Name = 'id_division'
        DataType = ftString
        Precision = 12
        Size = 12
      end
      item
        Name = 'kd_rekanan'
        DataType = ftString
        Precision = 20
        Size = 20
      end
      item
        Name = 'istagih'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 1
        Size = 1
      end
      item
        Name = 'dt_tpr'
        DataType = ftDateTime
        Precision = 8
      end
      item
        Name = 'outlet'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'nama_sales'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 50
        Size = 50
      end>
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
    Left = 216
    Top = 11
    object kmtPRselected: TStringField
      FieldName = 'selected'
      Size = 1
    end
    object kmtPRid_dtpr: TLargeintField
      FieldName = 'id_dtpr'
      Required = True
    end
    object kmtPRkd_item: TStringField
      FieldName = 'kd_item'
      Size = 50
    end
    object kmtPRdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object kmtPRqty: TStringField
      FieldName = 'qty'
    end
    object kmtPRclaim: TFloatField
      FieldName = 'claim'
      Required = True
    end
    object kmtPRjns_promo: TStringField
      FieldName = 'jns_promo'
    end
    object kmtPRno_invoice: TStringField
      FieldName = 'no_invoice'
    end
    object kmtPRno_nota: TStringField
      FieldName = 'no_nota'
    end
    object kmtPRid_division: TStringField
      FieldName = 'id_division'
      Size = 12
    end
    object kmtPRkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
    end
    object kmtPRistagih: TStringField
      FieldName = 'istagih'
      Required = True
      Size = 1
    end
    object kmtPRdt_tpr: TDateTimeField
      FieldName = 'dt_tpr'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object kmtPRoutlet: TStringField
      FieldName = 'outlet'
      Required = True
      Size = 255
    end
    object kmtPRnama_sales: TStringField
      FieldName = 'nama_sales'
      Required = True
      Size = 50
    end
  end
  object qExec: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'UPDATE master.mrek_gl  SET id_rek_rl=:vrek_rl'
      'WHERE id_rek_gl=:pid_rek_gl')
    Params = <
      item
        DataType = ftUnknown
        Name = 'vrek_rl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pid_rek_gl'
        ParamType = ptUnknown
      end>
    Left = 282
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vrek_rl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pid_rek_gl'
        ParamType = ptUnknown
      end>
  end
end

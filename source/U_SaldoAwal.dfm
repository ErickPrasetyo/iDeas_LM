object SaldoAwalFrm: TSaldoAwalFrm
  Left = 225
  Top = 141
  Width = 920
  Height = 549
  Caption = 'Initial Balance'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMiddle: TSCPanel
    Left = 0
    Top = 470
    Width = 904
    Height = 40
    Align = alBottom
    Color = 11769446
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    object btnCancel: TSCButton
      Left = 350
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 6
      OnClick = btnCancelClick
    end
    object btnEdit: TSCButton
      Left = 349
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Koreksi'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnSave: TSCButton
      Left = 275
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Simpan'
      Images = DM.ImageList1
      ImageIndex = 3
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 5
      OnClick = btnSaveClick
    end
    object dbnWBS: TRzDBNavigator
      Left = 96
      Top = 8
      Width = 168
      Height = 25
      DataSource = dsMaster
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BorderOuter = fsNone
      TabOrder = 0
    end
    object btnAdd: TSCButton
      Left = 274
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Tambah'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnDelete: TSCButton
      Left = 426
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Hapus'
      Images = DM.ImageList1
      ImageIndex = 4
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 3
      OnClick = btnDeleteClick
    end
    object btnRefresh: TSCButton
      Left = 501
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 4
      OnClick = btnRefreshClick
    end
    object btnClose: TSCButton
      Left = 8
      Top = 7
      Width = 72
      Height = 25
      Caption = 'T&utup'
      Images = DM.ImageList1
      ImageIndex = 6
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 7
      OnClick = btnCloseClick
    end
  end
  object pnlBottom: TRzPanel
    Left = 0
    Top = 295
    Width = 904
    Height = 175
    Align = alBottom
    BorderOuter = fsNone
    Color = clGray
    TabOrder = 1
    OnPaint = pnlBottomPaint
    object pnlData: TSCPanel
      Left = 9
      Top = 10
      Width = 523
      Height = 158
      Color = 15986925
      GradientMid = 15845560
      GradientUsesMid = True
      ParentColor = False
      TabOrder = 0
      object Shape7: TShape
        Left = 8
        Top = 65
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Shape6: TShape
        Left = 86
        Top = 119
        Width = 430
        Height = 28
      end
      object Shape5: TShape
        Left = 8
        Top = 119
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Shape4: TShape
        Left = 86
        Top = 38
        Width = 150
        Height = 28
      end
      object Shape3: TShape
        Left = 8
        Top = 38
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Shape1: TShape
        Left = 8
        Top = 11
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Label1: TLabel
        Left = 15
        Top = 19
        Width = 51
        Height = 13
        Caption = 'Kode Rek.'
        Transparent = True
      end
      object Label3: TLabel
        Left = 15
        Top = 127
        Width = 55
        Height = 13
        Caption = 'Keterangan'
        Transparent = True
      end
      object Label4: TLabel
        Left = 15
        Top = 73
        Width = 29
        Height = 13
        Caption = 'Debet'
        Transparent = True
      end
      object Shape2: TShape
        Left = 86
        Top = 11
        Width = 150
        Height = 28
      end
      object Shape8: TShape
        Left = 86
        Top = 65
        Width = 150
        Height = 28
      end
      object Label2: TLabel
        Left = 16
        Top = 45
        Width = 34
        Height = 13
        Caption = 'Per Tgl'
        Transparent = True
      end
      object Shape9: TShape
        Left = 86
        Top = 92
        Width = 150
        Height = 28
      end
      object Shape10: TShape
        Left = 8
        Top = 92
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Label5: TLabel
        Left = 15
        Top = 100
        Width = 27
        Height = 13
        Caption = 'Kredit'
        Transparent = True
      end
      object edtKredit: TcxDBTextEdit
        Left = 92
        Top = 94
        DataBinding.DataField = 'kredit'
        DataBinding.DataSource = dsMaster
        Style.Shadow = True
        StyleFocused.BorderStyle = ebsThick
        StyleHot.BorderStyle = ebsThick
        TabOrder = 4
        Width = 140
      end
      object edtDeskripsi: TcxDBTextEdit
        Left = 92
        Top = 121
        DataBinding.DataField = 'descriptions'
        DataBinding.DataSource = dsMaster
        Style.Shadow = True
        StyleFocused.BorderStyle = ebsThick
        StyleHot.BorderStyle = ebsThick
        TabOrder = 1
        Width = 422
      end
      object edtDebet: TcxDBTextEdit
        Left = 92
        Top = 67
        DataBinding.DataField = 'debet'
        DataBinding.DataSource = dsMaster
        Style.Shadow = True
        StyleFocused.BorderStyle = ebsThick
        StyleHot.BorderStyle = ebsThick
        TabOrder = 3
        Width = 140
      end
      object edtDTMemorial: TcxDBDateEdit
        Left = 92
        Top = 41
        DataBinding.DataField = 'dt_saldo_awal'
        DataBinding.DataSource = dsMaster
        Style.Shadow = True
        TabOrder = 2
        Width = 140
      end
      object edtAkun: TcxDBButtonEdit
        Left = 92
        Top = 14
        DataBinding.DataField = 'id_rek_gl'
        DataBinding.DataSource = dsMaster
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtAkunPropertiesButtonClick
        Style.Shadow = True
        TabOrder = 0
        Width = 140
      end
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 13616833
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.3.0.7'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 12105910
    Caption.ColorTo = 10526878
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 12958644
    ColorMirror = 12958644
    ColorMirrorTo = 15527141
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWhite
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 10592158
    StatusBar.ColorTo = 5459275
    StatusBar.GradientDirection = gdVertical
    Styler = APS
    FullHeight = 40
    object lblHeader1: TLabel
      Left = 15
      Top = 9
      Width = 159
      Height = 23
      Caption = 'Initial Balance'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 10901530
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object grdDetail: TcxGrid
    Left = 0
    Top = 40
    Width = 904
    Height = 255
    Align = alClient
    TabOrder = 5
    object grddbtvDetail: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsMaster
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'debet'
          Column = grddbtvDetaildebet
        end
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'kredit'
          Column = grddbtvDetailkredit
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnMRUItemsList = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsView.DataRowHeight = 25
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderHeight = 25
      OptionsView.Indicator = True
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle4
      object grddbtvDetailid_rek_gl: TcxGridDBColumn
        Caption = 'KODE REK'
        DataBinding.FieldName = 'id_rek_gl'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 81
      end
      object grddbtvDetailnama_rekening: TcxGridDBColumn
        Caption = 'NAMA REKENING'
        DataBinding.FieldName = 'nama_rekening'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 150
      end
      object grddbtvDetaildt_saldo_awal: TcxGridDBColumn
        Caption = 'TGL'
        DataBinding.FieldName = 'dt_saldo_awal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 132
      end
      object grddbtvDetaildebet: TcxGridDBColumn
        Caption = 'DEBET'
        DataBinding.FieldName = 'debet'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 100
      end
      object grddbtvDetailkredit: TcxGridDBColumn
        Caption = 'KREDIT'
        DataBinding.FieldName = 'kredit'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 100
      end
      object grddbtvDetaildescriptions: TcxGridDBColumn
        Caption = 'KETERANGAN'
        DataBinding.FieldName = 'descriptions'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 262
      end
    end
    object grdLvlDetail: TcxGridLevel
      GridView = grddbtvDetail
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 221
    Top = 12
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
    Left = 564
    Top = 7
  end
  object SR: TcxStyleRepository
    Left = 472
    Top = 6
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
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 436
    Top = 4
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
    Left = 531
    Top = 5
  end
  object sq_saldo_awal: TZSequence
    Connection = DM.conn
    SequenceName = 'accfin.sq_saldo_awal'
    Left = 351
    Top = 8
  end
  object LookRek_GL: TwwLookupDialog
    Selected.Strings = (
      'id_rek_gl'#9'15'#9'Account #'#9'F'
      'descriptions'#9'25'#9'Descriptions'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = qRekGL
    Caption = 'Lookup Account'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 605
    Top = 8
  end
  object qRekGL: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select id_rek_gl, descriptions'
      'FROM master.mrek_gl'
      'where isdetail='#39'1'#39
      'order by id_rek_gl')
    Params = <>
    Left = 634
    Top = 7
    object qRekGLid_rek_gl: TStringField
      DisplayLabel = 'Account #'
      DisplayWidth = 15
      FieldName = 'id_rek_gl'
      Required = True
      Size = 30
    end
    object qRekGLdescriptions: TStringField
      DisplayLabel = 'Descriptions'
      DisplayWidth = 25
      FieldName = 'descriptions'
      Size = 255
    end
  end
  object Master: TZQuery
    Connection = DM.conn
    BeforePost = MasterBeforePost
    OnNewRecord = MasterNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM accfin.saldo_awal'
      'ORDER BY id_saldo_awal')
    Params = <>
    Left = 177
    Top = 10
    object Masterid_saldo_awal: TLargeintField
      FieldName = 'id_saldo_awal'
      Required = True
    end
    object Masterdt_saldo_awal: TDateTimeField
      FieldName = 'dt_saldo_awal'
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object Masterdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object Masterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
      Size = 15
    end
    object Masterdebet: TFloatField
      FieldName = 'debet'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Masterkredit: TFloatField
      FieldName = 'kredit'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Masterusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object Masterusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
    object Masterid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 10
    end
    object Masternama_rekening: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_rekening'
      LookupDataSet = DM.L_Rek_GL
      LookupKeyFields = 'id_rek_gl'
      LookupResultField = 'descriptions'
      KeyFields = 'id_rek_gl'
      Size = 100
      Lookup = True
    end
    object Masterno_saldo_awal: TStringField
      FieldName = 'no_saldo_awal'
      Size = 30
    end
  end
  object qryGET_NO_REFF: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select accfin.fn_gen_no_reff(:pseq) as reff_number')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pseq'
        ParamType = ptUnknown
      end>
    Left = 265
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pseq'
        ParamType = ptUnknown
      end>
    object qryGET_NO_REFFreff_number: TStringField
      FieldName = 'reff_number'
      ReadOnly = True
      Size = 255
    end
  end
end

object ImportReturBungahFrm: TImportReturBungahFrm
  Left = 202
  Top = 108
  Width = 951
  Height = 560
  BorderStyle = bsSizeToolWin
  Caption = 'Import Data Retur Pembelian'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 935
    Height = 108
    Align = alTop
    Color = 16579055
    Gradient = scgLeftToRight
    GradientMid = 14731160
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      935
      108)
    object lblHeader: TLabel
      Left = 12
      Top = 8
      Width = 310
      Height = 25
      Caption = 'Import Data Retur Pembelian'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LblReffNo: TLabel
      Left = 9
      Top = 41
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
    object Label14: TLabel
      Left = 9
      Top = 84
      Width = 39
      Height = 14
      Caption = 'Supplier'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 58
      Top = 84
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
    end
    object LblSupplier: TLabel
      Left = 194
      Top = 85
      Width = 46
      Height = 15
      Caption = 'Supplier'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 9
      Top = 64
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
    end
    object Label2: TLabel
      Left = 57
      Top = 64
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
    end
    object Label3: TLabel
      Left = 195
      Top = 63
      Width = 25
      Height = 14
      Caption = 'Jenis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 227
      Top = 63
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
    end
    object btnInsertError: TSCButton
      Left = 361
      Top = 40
      Width = 90
      Height = 25
      Caption = 'Perbaiki Data'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = clWindow
      RoundWithParentColor = False
      Spacing = 2
      Style = scbsCorel
      TabOrder = 6
      TabStop = False
      OnClick = btnInsertErrorClick
    end
    object btnImport: TSCButton
      Left = 361
      Top = 40
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Import'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnImportClick
    end
    object edtFileExcel: TcxButtonEdit
      Left = 67
      Top = 39
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
      Left = 361
      Top = 40
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fetch Data'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnFetchClick
    end
    object edtSupplier: TcxButtonEdit
      Left = 67
      Top = 81
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtSupplierPropertiesButtonClick
      Style.BorderStyle = ebsOffice11
      TabOrder = 3
      Width = 121
    end
    object cbSheet: TcxComboBox
      Left = 67
      Top = 60
      TabOrder = 4
      Width = 121
    end
    object edtJenis: TcxTextEdit
      Left = 237
      Top = 60
      TabOrder = 5
      Text = 'RETUR PEMBELIAN'
      Width = 121
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 468
    Width = 935
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 1
    DesignSize = (
      935
      28)
    object btnClose: TSCButton
      Left = 14
      Top = 3
      Width = 72
      Height = 25
      Anchors = [akTop, akRight]
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
    Top = 496
    Width = 935
    Height = 26
    Panels = <
      item
        Text = 'Provider :'
        Width = 60
      end
      item
        Text = 'Microsoft.Jet.OLEDB.4.0'
        Width = 300
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
  object pgcImport: TcxPageControl
    Left = 0
    Top = 108
    Width = 935
    Height = 295
    ActivePage = tabImportData
    Align = alClient
    Style = 5
    TabOrder = 3
    ClientRectBottom = 295
    ClientRectRight = 935
    ClientRectTop = 24
    object tabImportData: TcxTabSheet
      Caption = 'tabImportData'
      ImageIndex = 0
      OnShow = tabImportDataShow
      object gridImport: TcxGrid
        Left = 0
        Top = 0
        Width = 935
        Height = 271
        Align = alClient
        TabOrder = 0
        object grdDBTV_Import: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dskmtMemorial
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'debet'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'kredit'
            end>
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
          Styles.Selection = cxStyle5
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle3
          object grdDBTV_ImportF1: TcxGridDBColumn
            DataBinding.FieldName = 'F1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 120
          end
          object grdDBTV_ImportF2: TcxGridDBColumn
            DataBinding.FieldName = 'F2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 133
          end
          object grdDBTV_ImportF3: TcxGridDBColumn
            DataBinding.FieldName = 'F3'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 133
          end
          object grdDBTV_ImportF4: TcxGridDBColumn
            DataBinding.FieldName = 'F4'
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
          object grdDBTV_ImportF5: TcxGridDBColumn
            DataBinding.FieldName = 'F5'
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
        end
        object grdLVL_Import: TcxGridLevel
          GridView = grdDBTV_Import
        end
      end
    end
    object tabImportError: TcxTabSheet
      Caption = 'tabImportError'
      ImageIndex = 1
      OnShow = tabImportErrorShow
      object grdDeliveryPlace: TcxGrid
        Left = 0
        Top = 0
        Width = 935
        Height = 271
        Align = alClient
        TabOrder = 0
        object grddbtv_Master: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsError
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 35
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtv_Mastertable_name: TcxGridDBColumn
            Caption = 'Tabel'
            DataBinding.FieldName = 'nama_tabel'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 118
          end
          object grddbtv_Masterfield_name: TcxGridDBColumn
            Caption = 'Kolom'
            DataBinding.FieldName = 'nama_field'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 125
          end
          object grddbtv_Masterid_value: TcxGridDBColumn
            Caption = 'Kode Item'
            DataBinding.FieldName = 'id_value'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 176
          end
          object grddbtv_Masterdiskripsi: TcxGridDBColumn
            Caption = 'Diskripsi'
            DataBinding.FieldName = 'diskripsi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 312
          end
          object grddbtv_Masternum_value: TcxGridDBColumn
            Caption = 'Harga Beli'
            DataBinding.FieldName = 'num_value'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 202
          end
        end
        object grdDeliveryPlaceLevel1: TcxGridLevel
          GridView = grddbtv_Master
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 403
    Width = 935
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 15265510
    TabOrder = 6
    object LblStatus: TLabel
      Left = 0
      Top = 48
      Width = 933
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
      Width = 933
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
      Width = 933
      Height = 20
      Align = alTop
      BorderProps.Border = sccbFlat
      Step = 1
      Style = scpsXP
      TabOrder = 1
    end
  end
  object dskmtMemorial: TDataSource
    DataSet = kmtMemorial
    Left = 674
    Top = 78
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
      end
      item
        Name = 'F4'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F5'
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
    Version = '5.60'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 606
    Top = 74
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
    object kmtMemorialF4: TWideStringField
      FieldName = 'F4'
      Size = 255
    end
    object kmtMemorialF5: TWideStringField
      FieldName = 'F5'
      Size = 255
    end
  end
  object AFS: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 502
    Top = 10
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
    Left = 572
    Top = 12
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
    Left = 637
    Top = 14
  end
  object SR: TcxStyleRepository
    Left = 348
    Top = 9
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
      'wDeploy\iDeasULI\ExtractFaktur\RETUR_ULI\201401.xls;Mode=ReadWri' +
      'te;Persist Security Info=False;Jet OLEDB:System database="";Jet ' +
      'OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:' +
      'Engine Type=34;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Globa' +
      'l Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OL' +
      'EDB:New Database Password="";Jet OLEDB:Create System Database=Fa' +
      'lse;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale' +
      ' on Compact=False;Jet OLEDB:Compact Without Replica Repair=False' +
      ';Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 605
    Top = 47
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xlsx'
    InitialDir = 'release/'
    Left = 296
    Top = 7
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM [Sheet1$]'
    Parameters = <>
    Left = 643
    Top = 50
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
    object ADODataSet1F4: TWideStringField
      FieldName = 'F4'
      Size = 255
    end
    object ADODataSet1F5: TWideStringField
      FieldName = 'F5'
      Size = 255
    end
  end
  object odsCheck: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 778
    Top = 21
  end
  object oqExec: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 809
    Top = 20
  end
  object sq_AP_DETAIL: TZSequence
    Connection = DM.conn
    SequenceName = 'transaksi.sq_ap_detail'
    Left = 704
    Top = 44
  end
  object oqAP: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.ap')
    Params = <>
    Left = 671
    Top = 14
    object oqAPno_faktur: TStringField
      FieldName = 'no_faktur'
    end
    object oqAPdt_faktur: TDateTimeField
      FieldName = 'dt_faktur'
    end
    object oqAPdt_jth_tempo: TDateTimeField
      FieldName = 'dt_jth_tempo'
    end
    object oqAPsub_total: TFloatField
      FieldName = 'sub_total'
    end
    object oqAPppn_rp: TFloatField
      FieldName = 'ppn_rp'
    end
    object oqAPtotal: TFloatField
      FieldName = 'total'
    end
    object oqAPopr: TStringField
      FieldName = 'opr'
      Size = 30
    end
    object oqAPkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
    end
    object oqAPid_import: TLargeintField
      FieldName = 'id_import'
    end
    object oqAPjenis: TStringField
      FieldName = 'jenis'
    end
    object oqAPdisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object oqAPketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
  end
  object oqAP_Detail: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.ap_detail')
    Params = <>
    Left = 704
    Top = 13
    object oqAP_Detailno_detail: TLargeintField
      FieldName = 'no_detail'
    end
    object oqAP_Detailkd_item: TStringField
      FieldName = 'kd_item'
      Size = 50
    end
    object oqAP_Detailnama_item: TStringField
      FieldName = 'nama_item'
      Size = 255
    end
    object oqAP_Detailhrg_beli: TFloatField
      FieldName = 'hrg_beli'
    end
    object oqAP_Detailqty_karton: TFloatField
      FieldName = 'qty_karton'
    end
    object oqAP_Detailqty_lusin: TFloatField
      FieldName = 'qty_lusin'
    end
    object oqAP_Detaildisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object oqAP_Detaildisc_rp: TFloatField
      FieldName = 'disc_rp'
    end
    object oqAP_Detailno_faktur: TStringField
      FieldName = 'no_faktur'
    end
    object oqAP_Detailid_import: TLargeintField
      FieldName = 'id_import'
    end
    object oqAP_Detailqty_biji: TFloatField
      FieldName = 'qty_biji'
    end
    object oqAP_Detailsub_total: TFloatField
      FieldName = 'sub_total'
    end
  end
  object odsCheckString: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.replace_str')
    Params = <>
    Left = 674
    Top = 45
    object odsCheckStringstr_cek: TStringField
      FieldName = 'str_cek'
      Required = True
      Size = 10
    end
  end
  object QTableError: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.import_ap_error'
      'order by id_import_ap_error')
    Params = <>
    Left = 777
    Top = 52
    object QTableErrorid_import_ap_error: TLargeintField
      FieldName = 'id_import_ap_error'
      Required = True
    end
    object QTableErrornama_tabel: TStringField
      FieldName = 'nama_tabel'
      Size = 50
    end
    object QTableErrornama_field: TStringField
      FieldName = 'nama_field'
      Size = 50
    end
    object QTableErrorid_value: TStringField
      FieldName = 'id_value'
      Size = 50
    end
    object QTableErrordiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object QTableErrornum_value: TFloatField
      FieldName = 'num_value'
      Required = True
      DisplayFormat = '0.0,0'
    end
  end
  object dsError: TDataSource
    DataSet = QTableError
    Left = 781
    Top = 80
  end
  object sq_IMPORT: TZSequence
    Connection = DM.conn
    SequenceName = 'transaksi.sq_import'
    Left = 554
    Top = 53
  end
end

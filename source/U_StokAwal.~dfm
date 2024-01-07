object StokAwalFrm: TStokAwalFrm
  Left = 386
  Top = 239
  Width = 1324
  Height = 698
  Caption = 'Stok Awal'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMiddle: TSCPanel
    Left = 0
    Top = 619
    Width = 1308
    Height = 40
    Align = alBottom
    Color = 11769446
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    object btnClose: TSCButton
      Left = 9
      Top = 8
      Width = 72
      Height = 25
      Caption = 'T&utup'
      Images = DM.ImageList1
      ImageIndex = 6
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnExport: TSCButton
      Left = 97
      Top = 8
      Width = 120
      Height = 25
      Caption = 'Export To Excel'
      Images = DM.ImageList1
      ImageIndex = 23
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 1
      Visible = False
      OnClick = btnExportClick
    end
    object btnSave: TSCButton
      Left = 97
      Top = 8
      Width = 88
      Height = 25
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = DM.ImageList1
      ImageIndex = 9
      ParentFont = False
      RoundColor = 11769446
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnSaveClick
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 1308
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
    TabOrder = 1
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
      Left = 12
      Top = 9
      Width = 110
      Height = 23
      Caption = 'Stok Awal'
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
  object SCPanel1: TSCPanel
    Left = 0
    Top = 40
    Width = 1308
    Height = 58
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientEnd = 15845560
    GradientMid = 15845560
    ParentColor = False
    TabOrder = 2
    object RzGroupBox1: TRzGroupBox
      Left = 99
      Top = 3
      Width = 475
      Height = 43
      Caption = 'Periode Akhir / Lokasi Gudang'
      TabOrder = 0
      Transparent = True
      object edtDatePicker: TwwDBDateTimePicker
        Left = 11
        Top = 16
        Width = 158
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 0
        UnboundDataType = wwDTEdtDate
        DisplayFormat = 'DD MMM YYYY HH:NN:SS'
      end
      object edtWarehouse: TcxButtonEdit
        Left = 181
        Top = 15
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtWarehousePropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 150
      end
      object btnOK: TcxButton
        Left = 345
        Top = 13
        Width = 113
        Height = 22
        Caption = 'Ambil Data Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnOKClick
        Colors.Normal = clGradientActiveCaption
        Colors.Hot = clMenuHighlight
      end
    end
    object btnImport: TSCButton
      Left = 585
      Top = 16
      Width = 132
      Height = 25
      Caption = 'Import Data Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = DM.ImageList1
      ImageIndex = 19
      ParentFont = False
      RoundColor = 11769446
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnImportClick
    end
    object RzGroupBox2: TRzGroupBox
      Left = 11
      Top = 3
      Width = 421
      Height = 43
      Caption = 'Ambil File Excel'
      TabOrder = 2
      Transparent = True
      object btnGetExcel: TSCLabel
        Left = 8
        Top = 15
        Width = 170
        Height = 24
        Cursor = crHandPoint
        Alignment = taCenter
        BorderProps.Border = sccbFlat
        Caption = 'Ambil Data Kertas Kerja'
        Color = clGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotImage = 89
        Hottrack = False
        HotUnderline = False
        ImageIndex = 23
        Images = DM.ImageList1
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = btnGetExcelClick
      end
      object cbSheetExcel: TcxComboBox
        Left = 187
        Top = 14
        Cursor = crHandPoint
        Hint = 'Pilih Sheet Excel'
        AutoSize = False
        ParentShowHint = False
        ShowHint = True
        Style.BorderColor = clInfoText
        Style.BorderStyle = ebs3D
        Style.ButtonStyle = bts3D
        TabOrder = 1
        Height = 23
        Width = 130
      end
      object btnImportExcel: TSCLabel
        Left = 326
        Top = 14
        Width = 86
        Height = 24
        Cursor = crHandPoint
        Alignment = taCenter
        BorderProps.Border = sccbFlat
        Caption = 'IMPORT'
        Color = clBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotImage = 89
        Hottrack = False
        HotUnderline = False
        ImageIndex = 22
        Images = DM.ImageList1
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        OnClick = btnImportExcelClick
      end
    end
  end
  object pgTransaction: TcxPageControl
    Left = 0
    Top = 98
    Width = 1308
    Height = 521
    ActivePage = tsImport
    Align = alClient
    Style = 8
    TabOrder = 5
    ClientRectBottom = 521
    ClientRectRight = 1308
    ClientRectTop = 24
    object tsItem: TcxTabSheet
      Caption = 'ITEM STOK'
      ImageIndex = 0
      OnShow = tsItemShow
      object grdItem: TcxGrid
        Left = 0
        Top = 0
        Width = 1308
        Height = 497
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 30
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'ITEM ID'
            DataBinding.FieldName = 'kd_item'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 117
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'ITEM NAME'
            DataBinding.FieldName = 'nama_item'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 393
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'UNIT'
            DataBinding.FieldName = 'kd_satuan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 65
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'stok_awal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'stok_berjalan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 82
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'stok_akhir'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
        object grddbtvItem: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsGetItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'sisa'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'current'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'tiga_puluh'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'enam_puluh'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'sembilan_puluh'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'lebih_sembilan_puluh'
            end
            item
              Format = '0.0,0'
            end
            item
              Format = '0.0,0'
              Kind = skSum
            end
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.DataRowHeight = 35
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 30
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtvItemno_nota: TcxGridDBColumn
            Caption = 'Kode Item'
            DataBinding.FieldName = 'kd_item'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 107
          end
          object grddbtvItemdt_nota: TcxGridDBColumn
            Caption = 'Nama Item'
            DataBinding.FieldName = 'nama_item'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 308
          end
          object grddbtvItemno_bukti: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 108
          end
          object grddbtvItemColumn1: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'id_warehouse'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 129
          end
          object grddbtvItemnama_rekanan: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_import'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 150
          end
        end
        object grdItemLevel1: TcxGridLevel
          GridView = grddbtvItem
        end
      end
    end
    object tsImport: TcxTabSheet
      Caption = 'IMPORT STOK AWAL'
      ImageIndex = 1
      OnShow = tsImportShow
      object grdImport: TcxGrid
        Left = 0
        Top = 0
        Width = 1308
        Height = 497
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 30
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'ITEM ID'
            DataBinding.FieldName = 'kd_item'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 117
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'ITEM NAME'
            DataBinding.FieldName = 'nama_item'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 393
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'UNIT'
            DataBinding.FieldName = 'kd_satuan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 65
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'stok_awal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = 'stok_berjalan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 82
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'stok_akhir'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
        object grddbtvImport: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMemMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'sisa'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'current'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'tiga_puluh'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'enam_puluh'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'sembilan_puluh'
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'lebih_sembilan_puluh'
            end
            item
              Format = '0.0,0'
            end
            item
              Format = '0.0,0'
              Kind = skSum
            end
            item
              Kind = skCount
              Column = cxGridDBColumn13
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.DataRowHeight = 35
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 30
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Kode Item'
            DataBinding.FieldName = 'id_item'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 107
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Nama Item'
            DataBinding.FieldName = 'nama_item'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 308
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty_in'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 108
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'id_warehouse'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 129
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_doc'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 150
          end
        end
        object grdlvlImport: TcxGridLevel
          GridView = grddbtvImport
        end
      end
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 205
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
  object sq_stock: TZSequence
    Connection = DM.conn
    SequenceName = 'inventory.sq_no_stock'
    Left = 237
    Top = 13
  end
  object LookItem: TwwLookupDialog
    Selected.Strings = (
      'nama_item'#9'50'#9'DISKRIPSI'#9'F'
      'kd_item'#9'15'#9'KODE'#9'F'
      'kd_satuan'#9'12'#9'SATUAN'#9'F'
      'description'#9'25'#9'JENIS'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = qItem
    Caption = 'Lookup Item'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 605
    Top = 8
  end
  object qItem: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.kd_item, a.nama_item, a.satuan_jual'
      'FROM master.item a'
      'where a.isinventory='#39'1'#39' and a.isdetail='#39'1'#39
      'order by a.kd_item')
    Params = <>
    Left = 634
    Top = 7
    object qItemkd_item: TStringField
      FieldName = 'kd_item'
      Required = True
      Size = 200
    end
    object qItemnama_item: TStringField
      FieldName = 'nama_item'
      Size = 1020
    end
    object qItemsatuan_jual: TStringField
      FieldName = 'satuan_jual'
      Size = 80
    end
  end
  object Master: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT *'
      'FROM inventory.stock'
      'where doc_no='#39'STO'#39
      'ORDER BY no_tstock')
    Params = <>
    Left = 177
    Top = 10
    object Masterno_tstock: TLargeintField
      FieldName = 'no_tstock'
      Required = True
    end
    object Masterdoc_no: TStringField
      FieldName = 'doc_no'
      Required = True
      Size = 80
    end
    object Masterid_warehouse: TStringField
      FieldName = 'id_warehouse'
      Required = True
      Size = 48
    end
    object Masterid_item: TStringField
      FieldName = 'id_item'
      Required = True
      Size = 200
    end
    object Masterqty_in: TFloatField
      FieldName = 'qty_in'
    end
    object Masterqty_ot: TFloatField
      FieldName = 'qty_ot'
    end
    object Masterremarks: TStringField
      FieldName = 'remarks'
      Size = 400
    end
    object Mastersatuan: TStringField
      FieldName = 'satuan'
      Size = 40
    end
    object Masterdt_doc: TDateTimeField
      FieldName = 'dt_doc'
    end
    object Masterisinput: TStringField
      FieldName = 'isinput'
      Size = 4
    end
    object Masterunit_price: TFloatField
      FieldName = 'unit_price'
    end
    object Masterid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 40
    end
    object Masterid_cat_warehouse: TStringField
      FieldName = 'id_cat_warehouse'
      Size = 12
    end
  end
  object Warehouse: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select '
      'c.id_warehouse,'
      'c.description'
      'from master.warehouse c')
    Params = <>
    Left = 800
    Top = 41
    object Warehousedescription: TStringField
      DisplayLabel = 'Nama Gudang'
      DisplayWidth = 30
      FieldName = 'description'
      Required = True
      Size = 200
    end
    object Warehouseid_warehouse: TStringField
      DisplayLabel = 'Kode Gudang'
      DisplayWidth = 10
      FieldName = 'id_warehouse'
      Required = True
      Size = 48
    end
  end
  object LookWarehouse: TwwLookupDialog
    Selected.Strings = (
      'description'#9'30'#9'Nama Gudang'#9'F'
      'id_warehouse'#9'10'#9'Kode Gudang'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = Warehouse
    Caption = 'Daftar Gudang'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 828
    Top = 46
  end
  object dsGetItem: TDataSource
    DataSet = qGetItem
    Left = 37
    Top = 212
  end
  object qGetItem: TZQuery
    Connection = DM.conn
    BeforeOpen = qGetItemBeforeOpen
    SQL.Strings = (
      
        'select a.kd_item, a.nama_item, a.rasio, a.hrg_beli_karton, a.hrg' +
        '_jual_karton,'
      
        #39'0'#39' as qty, current_timestamp as dt_import, :pgudang as id_wareh' +
        'ouse'
      'from master.item a'
      'order by a.kd_item')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pgudang'
        ParamType = ptUnknown
      end>
    Left = 10
    Top = 207
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pgudang'
        ParamType = ptUnknown
      end>
    object qGetItemkd_item: TStringField
      Alignment = taCenter
      DisplayWidth = 200
      FieldName = 'kd_item'
      Required = True
      Size = 200
    end
    object qGetItemnama_item: TStringField
      DisplayWidth = 1020
      FieldName = 'nama_item'
      Size = 1020
    end
    object qGetItemrasio: TFloatField
      DisplayWidth = 10
      FieldName = 'rasio'
      Required = True
    end
    object qGetItemhrg_beli_karton: TFloatField
      DisplayWidth = 10
      FieldName = 'hrg_beli_karton'
      Required = True
    end
    object qGetItemhrg_jual_karton: TFloatField
      DisplayWidth = 10
      FieldName = 'hrg_jual_karton'
      Required = True
    end
    object qGetItemqty: TMemoField
      Alignment = taRightJustify
      FieldName = 'qty'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qGetItemdt_import: TDateTimeField
      Alignment = taCenter
      FieldName = 'dt_import'
      ReadOnly = True
    end
    object qGetItemid_warehouse: TMemoField
      Alignment = taCenter
      FieldName = 'id_warehouse'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object OpenDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = '.xls'
    Left = 736
    Top = 55
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = 'xls'
    Filter = '.xls'
    Left = 664
    Top = 343
  end
  object memMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'F1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F3'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'F4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F6'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F7'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F8'
        DataType = ftString
        Size = 100
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
    Left = 174
    Top = 43
    object memMasterno_tstock: TLargeintField
      FieldName = 'no_tstock'
      Required = True
    end
    object memMasterdoc_no: TStringField
      FieldName = 'doc_no'
      Required = True
      Size = 80
    end
    object memMasterid_warehouse: TStringField
      FieldName = 'id_warehouse'
      Required = True
      Size = 48
    end
    object memMasterid_item: TStringField
      FieldName = 'id_item'
      Required = True
      Size = 200
    end
    object memMasterqty_in: TFloatField
      FieldName = 'qty_in'
    end
    object memMasterqty_ot: TFloatField
      FieldName = 'qty_ot'
    end
    object memMasterremarks: TStringField
      FieldName = 'remarks'
      Size = 400
    end
    object memMastersatuan: TStringField
      FieldName = 'satuan'
      Size = 40
    end
    object memMasterdt_doc: TDateTimeField
      FieldName = 'dt_doc'
    end
    object memMasterisinput: TStringField
      FieldName = 'isinput'
      Size = 4
    end
    object memMasterunit_price: TFloatField
      FieldName = 'unit_price'
    end
    object memMasterid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 40
    end
    object memMasterid_cat_warehouse: TStringField
      FieldName = 'id_cat_warehouse'
      Size = 12
    end
    object memMasternama_item: TStringField
      FieldName = 'nama_item'
      Size = 255
    end
  end
  object dsMemMaster: TDataSource
    DataSet = memMaster
    Left = 202
    Top = 47
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Mode=ReadWrite;Pe' +
      'rsist Security Info=False;Jet OLEDB:System database="";Jet OLEDB' +
      ':Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engin' +
      'e Type=35;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Par' +
      'tial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:N' +
      'ew Database Password="";Jet OLEDB:Create System Database=False;J' +
      'et OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on C' +
      'ompact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet ' +
      'OLEDB:SFP=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 693
    Top = 343
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM [Sheet1$]'
    FieldDefs = <>
    Parameters = <>
    StoreDefs = True
    Left = 724
    Top = 346
    object ADODataSet1F1: TStringField
      FieldName = 'F1'
      Size = 100
    end
    object ADODataSet1F2: TStringField
      FieldName = 'F2'
      Size = 100
    end
    object ADODataSet1F3: TStringField
      FieldName = 'F3'
      Size = 255
    end
    object ADODataSet1F4: TStringField
      FieldName = 'F4'
      Size = 100
    end
    object ADODataSet1F5: TStringField
      FieldName = 'F5'
      Size = 100
    end
  end
  object kmtData: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'F1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F3'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'F4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F6'
        DataType = ftString
        Size = 100
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
    Left = 758
    Top = 339
    object kmtDataF1: TStringField
      FieldName = 'F1'
      Size = 100
    end
    object kmtDataF2: TStringField
      FieldName = 'F2'
      Size = 100
    end
    object kmtDataF3: TStringField
      FieldName = 'F3'
      Size = 255
    end
    object kmtDataF4: TStringField
      FieldName = 'F4'
      Size = 100
    end
    object kmtDataF5: TStringField
      FieldName = 'F5'
      Size = 100
    end
  end
  object dskmtData: TDataSource
    DataSet = kmtData
    Left = 786
    Top = 343
  end
end

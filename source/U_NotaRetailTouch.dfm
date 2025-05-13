object NotaRetailTouchFrm: TNotaRetailTouchFrm
  Left = 127
  Top = 29
  Width = 1238
  Height = 683
  Caption = 'Penjualan Retail'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RzSplitter1: TRzSplitter
    Left = 0
    Top = 0
    Width = 1222
    Height = 586
    Position = 915
    Percent = 75
    UsePercent = True
    Align = alClient
    TabOrder = 1
    BarSize = (
      915
      0
      919
      586)
    UpperLeftControls = (
      RzSplitter2)
    LowerRightControls = ()
    object RzSplitter2: TRzSplitter
      Left = 0
      Top = 0
      Width = 915
      Height = 586
      Orientation = orVertical
      Position = 234
      Percent = 40
      UsePercent = True
      Align = alClient
      TabOrder = 0
      BarSize = (
        0
        234
        915
        238)
      UpperLeftControls = (
        RzSplitter3)
      LowerRightControls = (
        grdFP_Detail)
      object RzSplitter3: TRzSplitter
        Left = 0
        Top = 0
        Width = 915
        Height = 234
        Orientation = orVertical
        Position = 116
        UsePercent = True
        Align = alClient
        TabOrder = 0
        BarSize = (
          0
          116
          915
          120)
        UpperLeftControls = (
          RzPanel2)
        LowerRightControls = (
          RzPanel1)
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 915
          Height = 116
          Align = alClient
          AutoSize = True
          TabOrder = 0
          VisualStyle = vsGradient
        end
        object RzPanel1: TRzPanel
          Left = 0
          Top = -31
          Width = 915
          Height = 145
          Align = alBottom
          TabOrder = 0
          VisualStyle = vsGradient
          object btnCariItem: TRzShapeButton
            Left = 10
            Top = 34
            Width = 98
            Height = 103
            BevelHighlightColor = clHighlight
            Caption = 'CARI ITEM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 118
            Top = 42
            Width = 64
            Height = 17
            Caption = 'BARCODE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 118
            Top = 80
            Width = 27
            Height = 17
            Caption = 'QTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label3: TLabel
            Left = 118
            Top = 117
            Width = 76
            Height = 17
            Caption = 'NAMA ITEM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblNamaItem: TLabel
            Left = 220
            Top = 117
            Width = 82
            Height = 18
            Caption = 'NAMA ITEM'
            Color = clBtnShadow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 730
            Top = 38
            Width = 83
            Height = 17
            Caption = 'HRG RETAIL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblHargaRetail: TLabel
            Left = 936
            Top = 38
            Width = 51
            Height = 18
            Alignment = taRightJustify
            Caption = 'RETAIL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 730
            Top = 64
            Width = 105
            Height = 17
            Caption = 'HRG SM GROSIR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblHargaSemiGrosir: TLabel
            Left = 892
            Top = 64
            Width = 95
            Height = 18
            Alignment = taRightJustify
            Caption = 'SEMI GROSIR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 730
            Top = 91
            Width = 84
            Height = 17
            Caption = 'HRG GROSIR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblHargaGrosir: TLabel
            Left = 931
            Top = 91
            Width = 56
            Height = 18
            Alignment = taRightJustify
            Caption = 'GROSIR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label8: TLabel
            Left = 730
            Top = 118
            Width = 113
            Height = 17
            Caption = 'HRG GROSIR BSR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Bodoni MT'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblHargaGrosirBesar: TLabel
            Left = 879
            Top = 118
            Width = 108
            Height = 18
            Alignment = taRightJustify
            Caption = 'GROSIR BESAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object edtBarcode: TRzEdit
            Left = 220
            Top = 35
            Width = 301
            Height = 21
            TabOrder = 0
            OnKeyPress = edtBarcodeKeyPress
          end
          object edtQTY: TRzEdit
            Left = 220
            Top = 76
            Width = 52
            Height = 21
            TabOrder = 1
          end
        end
      end
      object grdFP_Detail: TcxGrid
        Left = 0
        Top = 0
        Width = 915
        Height = 348
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object grddbtvFP_Detail: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'sub_total'
              Column = grddbtvFP_Detailsub_total
            end
            item
              Kind = skCount
              FieldName = 'kd_item'
              Column = grddbtvFP_Detailkd_item
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 25
          Styles.Content = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          Bands = <
            item
              Caption = 'ITEM'
              Width = 310
            end
            item
              Width = 211
            end
            item
              Width = 483
            end>
          object grddbtvFP_Detailnomor: TcxGridDBBandedColumn
            Caption = 'No.'
            DataBinding.FieldName = 'nomor'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grddbtvFP_Detailkd_item: TcxGridDBBandedColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'kd_item'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 102
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grddbtvFP_Detailnama_item: TcxGridDBBandedColumn
            Caption = 'Diskripsi'
            DataBinding.FieldName = 'diskripsi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 205
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grddbtvFP_Detailqty_ot_biji: TcxGridDBBandedColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty_biji'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 41
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grddbtvFP_Detailhrg_jual_lusin: TcxGridDBBandedColumn
            Caption = 'Harga Jual'
            DataBinding.FieldName = 'hrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 85
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grddbtvFP_Detailsub_total: TcxGridDBBandedColumn
            Caption = 'Sub Total'
            DataBinding.FieldName = 'sub_total'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 105
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grddbtvFP_DetailColumn2: TcxGridDBBandedColumn
            Caption = 'Discount Rp.'
            DataBinding.FieldName = 'disc_rp'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 92
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grddbtvFP_DetailColumn1: TcxGridDBBandedColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan_beli'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 47
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grddbtvFP_DetailColumn3: TcxGridDBBandedColumn
            Caption = 'Promo'
            DataBinding.FieldName = 'ispromo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 49
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grddbtvFP_DetailColumn4: TcxGridDBBandedColumn
            Caption = 'Keterangan Promo'
            DataBinding.FieldName = 'keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 240
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object grdlvlFP_Detail: TcxGridLevel
          GridView = grddbtvFP_Detail
        end
      end
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 586
    Width = 1222
    Height = 58
    Align = alBottom
    TabOrder = 2
    VisualStyle = vsGradient
    object btnClose: TRzShapeButton
      Left = 10
      Top = 11
      Width = 98
      Height = 37
      BevelHighlightColor = clHighlight
      Caption = 'CLOSE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Bodoni MT'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCloseClick
    end
  end
  object Master: TZQuery
    Connection = DM.conn
    BeforeOpen = MasterBeforeOpen
    SQL.Strings = (
      
        'select b.kd_item as id_item, b.nama_item as item_name, b.satuan_' +
        'jual as satuan, b.hrg_jual, b.hrg_jual_sm_grosir, b.hrg_jual_gro' +
        'sir, b.hrg_jual_grosir_besar,'
      
        'b.qty_min_retail, b.qty_max_retail, b.qty_min_sm_grosir, b.qty_m' +
        'ax_sm_grosir, b.qty_min_grosir, b.qty_max_grosir, b.qty_min_gros' +
        'ir_besar, b.qty_max_grosir_besar,'
      
        '(select a.* from inventory.fn_get_stok_item(:pid_item,'#39'GDU'#39',:ptg' +
        'l0) a) as stok_gdu,'
      
        '(select c.* from inventory.fn_get_stok_item(:pid_item,'#39'RAK'#39',:ptg' +
        'l0) c) as stok_rak'
      'from master.item b'
      'where b.kd_item=:pid_item')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_item'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end>
    Left = 17
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_item'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end>
    object Masterid_item: TStringField
      FieldName = 'id_item'
      ReadOnly = True
      Size = 252
    end
    object Masteritem_name: TStringField
      Alignment = taCenter
      FieldName = 'item_name'
      ReadOnly = True
      Size = 252
    end
    object Mastersatuan: TStringField
      FieldName = 'satuan'
      ReadOnly = True
      Size = 252
    end
    object Masterhrg_jual: TFloatField
      FieldName = 'hrg_jual'
      Required = True
      DisplayFormat = ',0'
    end
    object Masterhrg_jual_sm_grosir: TFloatField
      FieldName = 'hrg_jual_sm_grosir'
      DisplayFormat = ',0'
    end
    object Masterhrg_jual_grosir: TFloatField
      FieldName = 'hrg_jual_grosir'
      DisplayFormat = ',0'
    end
    object Masterhrg_jual_grosir_besar: TFloatField
      FieldName = 'hrg_jual_grosir_besar'
      DisplayFormat = ',0'
    end
    object Masterqty_min_retail: TFloatField
      FieldName = 'qty_min_retail'
      Required = True
    end
    object Masterqty_max_retail: TFloatField
      FieldName = 'qty_max_retail'
      Required = True
    end
    object Masterqty_min_sm_grosir: TFloatField
      FieldName = 'qty_min_sm_grosir'
      Required = True
    end
    object Masterqty_max_sm_grosir: TFloatField
      FieldName = 'qty_max_sm_grosir'
      Required = True
    end
    object Masterqty_min_grosir: TFloatField
      FieldName = 'qty_min_grosir'
      Required = True
    end
    object Masterqty_max_grosir: TFloatField
      FieldName = 'qty_max_grosir'
      Required = True
    end
    object Masterqty_min_grosir_besar: TFloatField
      FieldName = 'qty_min_grosir_besar'
      Required = True
    end
    object Masterqty_max_grosir_besar: TFloatField
      FieldName = 'qty_max_grosir_besar'
      Required = True
    end
    object Masterstok_gdu: TFloatField
      FieldName = 'stok_gdu'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object Masterstok_rak: TFloatField
      FieldName = 'stok_rak'
      ReadOnly = True
      DisplayFormat = ',0'
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 19
    Top = 48
  end
  object SR: TcxStyleRepository
    Left = 200
    Top = 32
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
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clActiveBorder
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = 15587527
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clActiveCaption
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 260
    Top = 32
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
    Left = 332
    Top = 32
  end
  object aclFrm: TActionList
    Left = 230
    Top = 30
    object actClose: TAction
      Caption = 'Tutup'
    end
    object actAdd: TAction
      Caption = 'Tambah'
    end
    object actEdit: TAction
      Caption = 'Ubah'
    end
    object actDelete: TAction
      Caption = 'Hapus'
    end
    object actRefresh: TAction
      Caption = 'Refresh'
    end
    object actSave: TAction
      Caption = 'Simpan'
    end
    object actCancel: TAction
      Caption = 'Batal'
    end
    object actSearch: TAction
      Caption = 'Cari'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 384
    Top = 32
    PixelsPerInch = 96
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = cl3DLight
    end
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
    end
  end
  object TimerRT: TTimer
    Interval = 2
    Left = 428
    Top = 28
  end
end

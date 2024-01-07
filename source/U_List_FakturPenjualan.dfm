object ListFakturPenjualanFrm: TListFakturPenjualanFrm
  Left = 192
  Top = 95
  Width = 1291
  Height = 749
  Caption = 'Import Faktur Keluaran'
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
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SCPanel1: TSCPanel
    Left = 0
    Top = 40
    Width = 1275
    Height = 58
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientEnd = 15845560
    GradientMid = 15845560
    ParentColor = False
    TabOrder = 0
    object btnOK: TcxButton
      Left = 175
      Top = 14
      Width = 63
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
      Colors.Normal = clGradientActiveCaption
      Colors.Hot = clMenuHighlight
    end
    object RzGroupBox1: TRzGroupBox
      Left = 14
      Top = 3
      Width = 147
      Height = 43
      Caption = 'Tanggal Faktur Penjualan'
      TabOrder = 0
      Transparent = True
      object edtDate: TwwDBDateTimePicker
        Left = 8
        Top = 16
        Width = 129
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
        DisplayFormat = 'dd/mm/yyyy'
      end
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 1275
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
    CollapsColor = clHighlight
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
    FullHeight = 40
    object lblHeader: TLabel
      Left = 17
      Top = 9
      Width = 256
      Height = 23
      Caption = 'Import Faktur Keluaran'
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 670
    Width = 1275
    Height = 40
    Align = alBottom
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
    CollapsColor = clHighlight
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
    FullHeight = 40
    object btnClose: TSCButton
      Left = 15
      Top = 7
      Width = 72
      Height = 25
      Caption = 'T&utup'
      Images = DM.ImageList1
      ImageIndex = 6
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object dbnBrowse: TRzDBNavigator
      Left = 104
      Top = 7
      Width = 120
      Height = 24
      DataSource = dsMaster
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BorderOuter = fsNone
      Color = 14869218
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      TabStop = True
    end
    object btnRefresh: TSCButton
      Left = 242
      Top = 7
      Width = 72
      Height = 25
      Caption = '&Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnRefreshClick
    end
    object btnPrint: TSCButton
      Left = 315
      Top = 8
      Width = 118
      Height = 24
      Caption = '&Eksport All [.csv]'
      Images = DM.ImageList1
      ImageIndex = 23
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 3
      OnClick = btnPrintClick
    end
  end
  object grdItem: TcxGrid
    Left = 0
    Top = 98
    Width = 1275
    Height = 572
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
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
    object grd_DBTV_Item: TcxGridDBTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMaster
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skCount
          FieldName = 'no_nota'
          Column = grd_DBTV_Itemno_nota
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.DataRowHeight = 25
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle4
      object grd_DBTV_Itemid_nota: TcxGridDBColumn
        Caption = 'ID #'
        DataBinding.FieldName = 'id_nota'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 60
      end
      object grd_DBTV_Itemno_nota: TcxGridDBColumn
        Caption = 'NO NOTA'
        DataBinding.FieldName = 'no_nota'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemdt_nota: TcxGridDBColumn
        Caption = 'TGL NOTA'
        DataBinding.FieldName = 'dt_nota'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemno_faktur_pajak: TcxGridDBColumn
        Caption = 'NO FAKTUR PAJAK'
        DataBinding.FieldName = 'no_faktur_pajak'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemno_bukti: TcxGridDBColumn
        Caption = 'NO BUKTI'
        DataBinding.FieldName = 'no_bukti'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemid_division: TcxGridDBColumn
        Caption = 'ID SALES'
        DataBinding.FieldName = 'id_division'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemkd_rekanan: TcxGridDBColumn
        Caption = 'ID OUTLET'
        DataBinding.FieldName = 'kd_rekanan'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemcara_bayar: TcxGridDBColumn
        Caption = 'CARA BAYAR'
        DataBinding.FieldName = 'cara_bayar'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemdt_jth_tempo: TcxGridDBColumn
        Caption = 'TGL JTH TEMPO'
        DataBinding.FieldName = 'dt_jth_tempo'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemsub_total: TcxGridDBColumn
        Caption = 'SUB TOTAL'
        DataBinding.FieldName = 'sub_total'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemdisc_rp: TcxGridDBColumn
        Caption = 'DISC [Rp]'
        DataBinding.FieldName = 'disc_rp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemtotal: TcxGridDBColumn
        Caption = 'TOTAL'
        DataBinding.FieldName = 'total'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemdpp: TcxGridDBColumn
        Caption = 'DPP'
        DataBinding.FieldName = 'dpp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
      object grd_DBTV_Itemppn: TcxGridDBColumn
        Caption = 'PPN'
        DataBinding.FieldName = 'ppn'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Sorting = False
        Width = 100
      end
    end
    object grdItemDBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail
      DataController.DetailKeyFieldNames = 'id_nota'
      DataController.MasterKeyFieldNames = 'id_nota'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'sub_total'
          Column = grdItemDBBandedTableView1sub_total
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'disc_rp'
          Column = grdItemDBBandedTableView1disc_rp
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'total'
          Column = grdItemDBBandedTableView1total
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'dpp'
          Column = grdItemDBBandedTableView1dpp
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'ppn'
          Column = grdItemDBBandedTableView1ppn
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'dpp_n_ppn'
          Column = grdItemDBBandedTableView1dpp_n_ppn
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'selisih'
          Column = grdItemDBBandedTableView1selisih
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'dpp_baru'
          Column = grdItemDBBandedTableView1dpp_baru
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'dppbaru_n_ppn'
          Column = grdItemDBBandedTableView1dppbaru_n_ppn
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 25
      Styles.OnGetContentStyle = grdItemDBBandedTableView1StylesGetContentStyle
      Styles.Header = cxStyle4
      Bands = <
        item
        end>
      object grdItemDBBandedTableView1nomor: TcxGridDBBandedColumn
        Caption = 'No'
        DataBinding.FieldName = 'nomor'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1kd_item: TcxGridDBBandedColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kd_item'
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
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1qty: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1harga: TcxGridDBBandedColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'harga'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1disc_rp: TcxGridDBBandedColumn
        Caption = 'Disc [Rp.]'
        DataBinding.FieldName = 'disc_rp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1sub_total: TcxGridDBBandedColumn
        Caption = 'Sub Total'
        DataBinding.FieldName = 'sub_total'
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
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1total: TcxGridDBBandedColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total'
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
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1dpp: TcxGridDBBandedColumn
        Caption = 'Dpp'
        DataBinding.FieldName = 'dpp'
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
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1ppn: TcxGridDBBandedColumn
        Caption = 'PPn'
        DataBinding.FieldName = 'ppn'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1dpp_n_ppn: TcxGridDBBandedColumn
        Caption = 'Dpp + PPn'
        DataBinding.FieldName = 'dpp_n_ppn'
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
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1selisih: TcxGridDBBandedColumn
        Caption = 'Selisih'
        DataBinding.FieldName = 'selisih'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1dpp_baru: TcxGridDBBandedColumn
        Caption = 'Dpp Baru'
        DataBinding.FieldName = 'dpp_baru'
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
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdItemDBBandedTableView1dppbaru_n_ppn: TcxGridDBBandedColumn
        Caption = 'Dpp Baru + PPn'
        DataBinding.FieldName = 'dppbaru_n_ppn'
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
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object grdItemLevel1: TcxGridLevel
      GridView = grd_DBTV_Item
      object grdItemLevel2: TcxGridLevel
        GridView = grdItemDBBandedTableView1
      end
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 250
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
    Left = 778
    Top = 52
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 808
    Top = 48
  end
  object SR: TcxStyleRepository
    Left = 842
    Top = 50
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
    object cxRedStyle: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
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
  object ATBos: TAdvToolBarOfficeStyler
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
    Left = 884
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 364
    Top = 16
    object Exportcsv1: TMenuItem
      Caption = 'Export Faktur [.csv]'
      OnClick = Exportcsv1Click
    end
    object ExportFakturcsv1: TMenuItem
      Caption = 'Export Faktur [.csv] - ('#39#39')'
      OnClick = ExportFakturcsv1Click
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'csv'
    Filter = '.csv'
    Left = 400
    Top = 15
  end
  object qData: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select *'
      'from pajak.fn_gen_pajak_keluaran(:pno_nota)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pno_nota'
        ParamType = ptUnknown
      end>
    Left = 280
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pno_nota'
        ParamType = ptUnknown
      end>
    object qDatak1: TMemoField
      FieldName = 'k1'
      BlobType = ftMemo
    end
    object qDatak2: TMemoField
      FieldName = 'k2'
      BlobType = ftMemo
    end
    object qDatak3: TMemoField
      FieldName = 'k3'
      BlobType = ftMemo
    end
    object qDatak4: TMemoField
      FieldName = 'k4'
      BlobType = ftMemo
    end
    object qDatak5: TMemoField
      FieldName = 'k5'
      BlobType = ftMemo
    end
    object qDatak6: TMemoField
      FieldName = 'k6'
      BlobType = ftMemo
    end
    object qDatak7: TMemoField
      FieldName = 'k7'
      BlobType = ftMemo
    end
    object qDatak8: TMemoField
      FieldName = 'k8'
      BlobType = ftMemo
    end
    object qDatak9: TMemoField
      FieldName = 'k9'
      BlobType = ftMemo
    end
    object qDatak10: TMemoField
      FieldName = 'k10'
      BlobType = ftMemo
    end
    object qDatak11: TMemoField
      FieldName = 'k11'
      BlobType = ftMemo
    end
    object qDatak12: TMemoField
      FieldName = 'k12'
      BlobType = ftMemo
    end
    object qDatak13: TMemoField
      FieldName = 'k13'
      BlobType = ftMemo
    end
    object qDatak14: TMemoField
      FieldName = 'k14'
      BlobType = ftMemo
    end
    object qDatak15: TMemoField
      FieldName = 'k15'
      BlobType = ftMemo
    end
    object qDatak16: TMemoField
      FieldName = 'k16'
      BlobType = ftMemo
    end
    object qDatak17: TMemoField
      FieldName = 'k17'
      BlobType = ftMemo
    end
    object qDatak18: TMemoField
      FieldName = 'k18'
      BlobType = ftMemo
    end
    object qDatak19: TMemoField
      FieldName = 'k19'
      BlobType = ftMemo
    end
  end
  object qSlot_NoFaktur: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select cast(pajak.fn_get_slot_no_faktur_keluaran() as int) as si' +
        'sa')
    Params = <>
    Left = 392
    Top = 56
    object qSlot_NoFaktursisa: TIntegerField
      FieldName = 'sisa'
    end
  end
  object MasterNull: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select count(*) as tot_data'
      'from transaksi.nota'
      
        'where dt_nota between to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39') and to_ti' +
        'mestamp(:ptgl,'#39'dd/mm/yyyy'#39') '
      #9#9#9'+ interval '#39'23 hours 59 mins 59 sec'#39
      'and (no_faktur_pajak is null or no_faktur_pajak='#39#39')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end>
    object MasterNulltot_data: TLargeintField
      FieldName = 'tot_data'
      ReadOnly = True
    end
  end
  object qDataAll: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select *'
      'from pajak.fn_gen_pajak_keluaran_all(:ptgl, :plimit)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'plimit'
        ParamType = ptUnknown
      end>
    Left = 312
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'plimit'
        ParamType = ptUnknown
      end>
    object MemoField1: TMemoField
      FieldName = 'k1'
      BlobType = ftMemo
    end
    object MemoField2: TMemoField
      FieldName = 'k2'
      BlobType = ftMemo
    end
    object MemoField3: TMemoField
      FieldName = 'k3'
      BlobType = ftMemo
    end
    object MemoField4: TMemoField
      FieldName = 'k4'
      BlobType = ftMemo
    end
    object MemoField5: TMemoField
      FieldName = 'k5'
      BlobType = ftMemo
    end
    object MemoField6: TMemoField
      FieldName = 'k6'
      BlobType = ftMemo
    end
    object MemoField7: TMemoField
      FieldName = 'k7'
      BlobType = ftMemo
    end
    object MemoField8: TMemoField
      FieldName = 'k8'
      BlobType = ftMemo
    end
    object MemoField9: TMemoField
      FieldName = 'k9'
      BlobType = ftMemo
    end
    object MemoField10: TMemoField
      FieldName = 'k10'
      BlobType = ftMemo
    end
    object MemoField11: TMemoField
      FieldName = 'k11'
      BlobType = ftMemo
    end
    object MemoField12: TMemoField
      FieldName = 'k12'
      BlobType = ftMemo
    end
    object MemoField13: TMemoField
      FieldName = 'k13'
      BlobType = ftMemo
    end
    object MemoField14: TMemoField
      FieldName = 'k14'
      BlobType = ftMemo
    end
    object MemoField15: TMemoField
      FieldName = 'k15'
      BlobType = ftMemo
    end
    object MemoField16: TMemoField
      FieldName = 'k16'
      BlobType = ftMemo
    end
    object MemoField17: TMemoField
      FieldName = 'k17'
      BlobType = ftMemo
    end
    object MemoField18: TMemoField
      FieldName = 'k18'
      BlobType = ftMemo
    end
    object MemoField19: TMemoField
      FieldName = 'k19'
      BlobType = ftMemo
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 322
    Top = 24
  end
  object Detail: TZQuery
    Connection = DM.conn
    BeforeOpen = DetailBeforeOpen
    OnCalcFields = DetailCalcFields
    SQL.Strings = (
      'select *'
      'from pajak.fn_get_faktur_penjualan_periode(:ptgl)'
      'where id_nota=:id_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_nota'
        ParamType = ptUnknown
      end>
    DataSource = dsMaster
    MasterFields = 'id_nota'
    MasterSource = dsMaster
    Left = 288
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_nota'
        ParamType = ptUnknown
      end>
    object Detailnomor: TIntegerField
      FieldName = 'nomor'
    end
    object Detailkd_item: TStringField
      FieldName = 'kd_item'
      Size = 252
    end
    object Detailqty: TFloatField
      FieldName = 'qty'
      DisplayFormat = ',0'
    end
    object Detailharga: TFloatField
      FieldName = 'harga'
      DisplayFormat = ',0'
    end
    object Detaildisc_rp: TFloatField
      FieldName = 'disc_rp'
      DisplayFormat = ',0'
    end
    object Detailsub_total: TFloatField
      FieldName = 'sub_total'
      DisplayFormat = ',0'
    end
    object Detailtotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
    object Detaildpp: TFloatField
      FieldName = 'dpp'
      DisplayFormat = ',0'
    end
    object Detailppn: TFloatField
      FieldName = 'ppn'
      DisplayFormat = ',0'
    end
    object Detaildpp_n_ppn: TFloatField
      FieldName = 'dpp_n_ppn'
      DisplayFormat = ',0'
    end
    object Detailselisih: TFloatField
      FieldName = 'selisih'
      DisplayFormat = ',0'
    end
    object Detaildpp_baru: TFloatField
      FieldName = 'dpp_baru'
      DisplayFormat = ',0'
    end
    object Detailid_nota: TLargeintField
      FieldName = 'id_nota'
    end
    object Detaildppbaru_n_ppn: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dppbaru_n_ppn'
      DisplayFormat = ',0'
      Calculated = True
    end
  end
  object Master: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select *'
      'from pajak.fn_list_faktur_penjualan(:ptgl)')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '09/12/2020'
      end>
    Left = 216
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '09/12/2020'
      end>
    object Masterno_nota: TStringField
      FieldName = 'no_nota'
      Size = 252
    end
    object Masterdt_nota: TDateTimeField
      FieldName = 'dt_nota'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Masterno_faktur_pajak: TStringField
      FieldName = 'no_faktur_pajak'
      Size = 252
    end
    object Masterno_bukti: TStringField
      FieldName = 'no_bukti'
      Size = 252
    end
    object Masterid_division: TStringField
      FieldName = 'id_division'
      Size = 252
    end
    object Masterkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Size = 252
    end
    object Mastercara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 252
    end
    object Masterdt_jth_tempo: TDateTimeField
      FieldName = 'dt_jth_tempo'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Mastersub_total: TFloatField
      FieldName = 'sub_total'
      DisplayFormat = ',0'
    end
    object Masterdisc_rp: TFloatField
      FieldName = 'disc_rp'
      DisplayFormat = ',0'
    end
    object Mastertotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
    object Masterdpp: TFloatField
      FieldName = 'dpp'
      DisplayFormat = ',0'
    end
    object Masterppn: TFloatField
      FieldName = 'ppn'
      DisplayFormat = ',0'
    end
    object Masterid_nota: TLargeintField
      FieldName = 'id_nota'
    end
  end
end

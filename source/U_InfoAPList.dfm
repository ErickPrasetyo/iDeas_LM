object InfoAPListFrm: TInfoAPListFrm
  Left = 131
  Top = 99
  Width = 996
  Height = 554
  Caption = 'Buku Hutang'
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
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 980
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
    TabOrder = 0
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
    object lblHeader1: TLabel
      Left = 16
      Top = 8
      Width = 293
      Height = 23
      Caption = 'Account Payable Billed List'
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
    Top = 475
    Width = 980
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
    object dbnBrowse: TRzDBNavigator
      Left = 116
      Top = 8
      Width = 108
      Height = 24
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BorderOuter = fsNone
      Color = 14869218
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      TabStop = True
    end
    object btnClose: TSCButton
      Left = 20
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Tutup'
      Images = DM.ImageList1
      ImageIndex = 6
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnCloseClick
    end
    object btnRefresh: TSCButton
      Left = 231
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnRefreshClick
    end
    object btnPrint: TSCButton
      Left = 307
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 3
      OnClick = btnPrintClick
    end
    object btnExport: TSCButton
      Left = 381
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Export To Excel'
      Images = DM.ImageList1
      ImageIndex = 23
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 4
      OnClick = btnExportClick
    end
  end
  object SCPanel3: TSCPanel
    Left = 0
    Top = 40
    Width = 980
    Height = 40
    Align = alTop
    Bevel = sccbSoftRaised
    Color = 15986925
    ParentColor = False
    TabOrder = 2
    object Label21: TLabel
      Left = 211
      Top = 17
      Width = 13
      Height = 13
      Caption = 'To'
    end
    object dtpEnd: TwwDBDateTimePicker
      Left = 233
      Top = 7
      Width = 121
      Height = 22
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.StartYear = 2010
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 0
      DisplayFormat = 'dd mmm yyyy'
      OnCloseUp = dtpEndCloseUp
    end
    object cxLabel30: TcxLabel
      Left = 17
      Top = 12
      Caption = 'Date Filter'
      ParentColor = False
      ParentFont = False
      Style.HotTrack = True
      Style.Shadow = False
      Style.TextStyle = []
      StyleFocused.BorderStyle = ebsNone
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextStyle = [fsUnderline]
      Transparent = True
    end
    object SCButton1: TSCButton
      Left = 360
      Top = 4
      Width = 72
      Height = 25
      Caption = '&Ok'
      Images = DM.ImageList1
      ImageIndex = 19
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnOKClick
    end
    object dtpStart: TwwDBDateTimePicker
      Left = 79
      Top = 10
      Width = 121
      Height = 22
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.StartYear = 2010
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 3
      DisplayFormat = 'dd mmm yyyy'
      OnCloseUp = dtpStartCloseUp
    end
  end
  object pgcMaster: TcxPageControl
    Left = 0
    Top = 80
    Width = 980
    Height = 395
    ActivePage = tabAP
    Align = alClient
    TabOrder = 5
    ClientRectBottom = 395
    ClientRectRight = 980
    ClientRectTop = 24
    object tabAP: TcxTabSheet
      Caption = 'Daftar Hutang'
      ImageIndex = 0
      OnShow = tabAPShow
      object grdAP_List: TcxGrid
        Left = 0
        Top = 0
        Width = 980
        Height = 371
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object grddbtvAP_List: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'total'
              Column = grddbtvAP_Listtotal_in
            end
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'sisa_hutang'
              Column = grddbtvAP_Listsisa
            end
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'dibayar'
              Column = grddbtvAP_Listpembayaran
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.Footer = True
          OptionsView.HeaderHeight = 25
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtvAP_Listno_nota: TcxGridDBColumn
            Caption = 'No. Faktur'
            DataBinding.FieldName = 'no_nota'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 77
          end
          object grddbtvAP_Listdt_nota: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_nota'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 88
          end
          object grddbtvAP_Listno_bukti: TcxGridDBColumn
            Caption = 'No. Faktur'
            DataBinding.FieldName = 'no_bukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 96
          end
          object grddbtvAP_Listdt_jth_tempo: TcxGridDBColumn
            Caption = 'Tgl. Jth. Tempo'
            DataBinding.FieldName = 'dt_jth_tempo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 124
          end
          object grddbtvAP_Listnama_rekanan: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'nama_rekanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 163
          end
          object grddbtvAP_Listtotal_in: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'total'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 132
          end
          object grddbtvAP_Listpembayaran: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'dibayar'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 132
          end
          object grddbtvAP_Listsisa: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'sisa_hutang'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 132
          end
        end
        object grddbtvAP_ListDetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetail
          DataController.DetailKeyFieldNames = 'no_reff'
          DataController.MasterKeyFieldNames = 'no_nota'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtvAP_ListDetailno_payment: TcxGridDBColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'no_payment'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 150
          end
          object grddbtvAP_ListDetaildt_payment: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_payment'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
          object grddbtvAP_ListDetailpembayaran: TcxGridDBColumn
            Caption = 'Pembayaran/Retur'
            DataBinding.FieldName = 'pembayaran'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 150
          end
        end
        object grdAP_ListLevel: TcxGridLevel
          GridView = grddbtvAP_List
          object grdAP_ListLevel1: TcxGridLevel
            GridView = grddbtvAP_ListDetail
          end
        end
      end
    end
    object tabSupplier: TcxTabSheet
      Caption = 'Rekap Per Supplier'
      ImageIndex = 1
      OnShow = tabSupplierShow
      object grdOutlet: TcxGrid
        Left = 0
        Top = 0
        Width = 980
        Height = 372
        Align = alClient
        TabOrder = 0
        object grddbtvOutlet: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqrySUM_OUTLET
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'total'
              Column = grddbtvOutlettotal
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'pembayaran'
              Column = grddbtvOutletpembayaran
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'sisa'
              Column = grddbtvOutletsisa
            end
            item
              Kind = skCount
              FieldName = 'kd_rekanan'
              Column = grddbtvOutletkd_rekanan
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtvOutletkd_rekanan: TcxGridDBColumn
            Caption = 'Kode Supplier'
            DataBinding.FieldName = 'kd_rekanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 180
          end
          object grddbtvOutletnama_rekanan: TcxGridDBColumn
            Caption = 'Nama Supplier'
            DataBinding.FieldName = 'nama_rekanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 240
          end
          object grddbtvOutlettotal: TcxGridDBColumn
            Caption = 'Total Hutang'
            DataBinding.FieldName = 'total'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 182
          end
          object grddbtvOutletpembayaran: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'pembayaran'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 188
          end
          object grddbtvOutletsisa: TcxGridDBColumn
            Caption = 'Saldo Hutang'
            DataBinding.FieldName = 'sisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 188
          end
        end
        object grdlvlOutlet: TcxGridLevel
          GridView = grddbtvOutlet
        end
      end
    end
    object tabPeriode: TcxTabSheet
      Caption = 'Faktur+Pembayaran Per Periode'
      ImageIndex = 2
      OnShow = tabPeriodeShow
      object grdPeriode: TcxGrid
        Left = 0
        Top = 0
        Width = 980
        Height = 372
        Align = alClient
        TabOrder = 0
        object grdDBTVPeriode: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqryPeriode
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'total'
              Column = grdDBTVPeriodetotal
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'pembayaran'
              Column = grdDBTVPeriodepembayaran
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'sisa'
              Column = grdDBTVPeriodesisa
            end
            item
              Kind = skCount
              FieldName = 'no_nota'
              Column = grdDBTVPeriodeno_nota
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.HeaderHeight = 25
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grdDBTVPeriodeno_nota: TcxGridDBColumn
            Caption = 'No. Faktur'
            DataBinding.FieldName = 'no_nota'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 99
          end
          object grdDBTVPeriodedt_nota: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_nota'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 83
          end
          object grdDBTVPeriodedt_jth_tempo: TcxGridDBColumn
            Caption = 'Tgl. Jatuh Tempo'
            DataBinding.FieldName = 'dt_jth_tempo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 122
          end
          object grdDBTVPeriodenama_rekanan: TcxGridDBColumn
            Caption = 'Nama Supplier'
            DataBinding.FieldName = 'nama_rekanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 187
          end
          object grdDBTVPeriodecara_bayar: TcxGridDBColumn
            Caption = 'Cara Bayar'
            DataBinding.FieldName = 'cara_bayar'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 103
          end
          object grdDBTVPeriodetotal: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'total'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 125
          end
          object grdDBTVPeriodepembayaran: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'pembayaran'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 125
          end
          object grdDBTVPeriodesisa: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'sisa'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 125
          end
        end
        object grdLvlPeriode: TcxGridLevel
          GridView = grdDBTVPeriode
        end
      end
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 140
    Top = 12
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 110
    Top = 12
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 78
    Top = 12
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 42
    Top = 12
  end
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_nota=no_nota'
      'dt_nota=dt_nota'
      'kd_rekanan=kd_rekanan'
      'nama_rekanan=nama_rekanan'
      'no_bukti=no_bukti'
      'dt_jth_tempo=dt_jth_tempo'
      'cara_bayar=cara_bayar'
      'total=total'
      'pembayaran=pembayaran'
      'sisa=sisa'
      'dibayar=dibayar'
      'sisa_hutang=sisa_hutang')
    DataSet = qryPrint
    BCDToCurrency = False
    Left = 471
    Top = 44
  end
  object frxAPList: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39216.970913981500000000
    ReportOptions.LastChange = 39353.868761030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 535
    Top = 49
    Datasets = <
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBInfo'
      end
      item
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 5.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 551.811380000000000000
        Width = 699.213050000000000000
        object Memo1: TfrxMemoView
          Left = 487.559370000000000000
          Width = 211.653557950000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Width = 268.346483540000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Printed By : [frxDBInfo."user_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 268.346630000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 245.669450000000000000
        Width = 699.213050000000000000
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 302.362400000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 207.874150000000000000
          Width = 94.488188980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'dt_jth_tempo'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."dt_jth_tempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Width = 86.929128980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'dt_nota'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."dt_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 37.795300000000000000
          Width = 83.149598980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'no_nota'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."no_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."dibayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."sisa_hutang"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 80.929190000000000000
        Top = 18.897650000000000000
        Width = 699.213050000000000000
        object Memo51: TfrxMemoView
          Top = 41.574830000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          DataField = 'pnamamenu'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."pnamamenu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 60.472480000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'periode'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBInfo."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 18.897650000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 37.795300000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'fax_telp'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."fax_telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 56.692949999999990000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DataField = 'kota_negara'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."kota_negara"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 154.960730000000000000
        Top = 374.173470000000000000
        Width = 699.213050000000000000
        object Memo12: TfrxMemoView
          Left = 302.362400000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Style = fsDouble
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Width = 302.362363390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.TopLine.Style = fsDouble
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'T O T A L    H U T A N G ')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 56.692949999999990000
          Width = 268.346630000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoPreparedName: TfrxMemoView
          Top = 98.267780000000010000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataField = 'prepared_name'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."prepared_name"]')
          ParentFont = False
        end
        object MemoPreparedBy: TfrxMemoView
          Top = 37.795300000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIBUAT OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 268.346630000000000000
          Top = 56.692949999999990000
          Width = 219.212740000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object MemoDateReviewedBy: TfrxMemoView
          Left = 268.346630000000000000
          Top = 113.385900000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          Memo.UTF8 = (
            'TGL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedBy: TfrxMemoView
          Left = 268.346630000000000000
          Top = 37.795300000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIPERIKSA OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 487.559370000000000000
          Top = 56.692949999999990000
          Width = 211.653680000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoDateApprovedBy: TfrxMemoView
          Left = 487.559370000000000000
          Top = 113.385900000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TGL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 113.385900000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 487.559370000000000000
          Top = 37.795300000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DISETUJUI OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Style = fsDouble
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."dibayar">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 566.929500000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Style = fsDouble
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."sisa_hutang">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 158.740260000000000000
        Width = 699.213050000000000000
        Condition = 'frxDBMaster."kd_rekanan"'
        object Memo5: TfrxMemoView
          Top = 30.236240000000010000
          Width = 37.795275590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 30.236240000000010000
          Width = 132.283476770000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.236240000000010000
          Width = 83.149635590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 120.944960000000000000
          Top = 30.236240000000010000
          Width = 86.929165590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 207.874150000000000000
          Top = 30.236240000000010000
          Width = 94.488225590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TGL. JTH TEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 434.645950000000000000
          Top = 30.236240000000010000
          Width = 132.283464570000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMBAYARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 566.929500000000000000
          Top = 30.236240000000010000
          Width = 132.283464570000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SISA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 3.779529999999994000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'nama_rekanan'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBMaster."nama_rekanan"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 699.213050000000000000
        object Memo6: TfrxMemoView
          Left = 302.362400000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Width = 302.362363390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'T O T A L  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."dibayar">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 566.929500000000000000
          Width = 132.283513390000000000
          Height = 22.677165350000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."sisa_hutang">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object kmtInfo: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'user_id'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'user_name'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dt_now'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'pnamamenu'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'periode'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'nama_perusahaan'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'fax_telp'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'kota_negara'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'filter'
        DataType = ftString
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
    Top = 172
    object kmtInfouser_id: TStringField
      FieldName = 'user_id'
      Size = 10
    end
    object kmtInfouser_name: TStringField
      FieldName = 'user_name'
      Size = 30
    end
    object kmtInfodt_now: TStringField
      FieldName = 'dt_now'
    end
    object kmtInfopnamamenu: TStringField
      FieldName = 'pnamamenu'
      Size = 50
    end
    object kmtInfoperiode: TStringField
      FieldName = 'periode'
      Size = 255
    end
    object kmtInfonama_perusahaan: TStringField
      FieldName = 'nama_perusahaan'
      Size = 255
    end
    object kmtInfoalamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object kmtInfofax_telp: TStringField
      FieldName = 'fax_telp'
      Size = 255
    end
    object kmtInfokota_negara: TStringField
      FieldName = 'kota_negara'
      Size = 255
    end
    object kmtInfofilter: TStringField
      FieldName = 'filter'
      Size = 255
    end
    object kmtInfoprepared_name: TStringField
      FieldKind = fkLookup
      FieldName = 'prepared_name'
      LookupDataSet = DM.L_User
      LookupKeyFields = 'vuser'
      LookupResultField = 'full_name'
      KeyFields = 'user_id'
      Size = 100
      Lookup = True
    end
  end
  object frxDBInfo: TfrxDBDataset
    UserName = 'frxDBInfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'user_id=user_id'
      'user_name=user_name'
      'dt_now=dt_now'
      'pnamamenu=pnamamenu'
      'periode=periode'
      'nama_perusahaan=nama_perusahaan'
      'alamat=alamat'
      'fax_telp=fax_telp'
      'kota_negara=kota_negara'
      'filter=filter'
      'prepared_name=prepared_name')
    DataSet = kmtInfo
    BCDToCurrency = False
    Left = 434
    Top = 172
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
    Left = 281
    Top = 6
  end
  object SR: TcxStyleRepository
    Left = 239
    Top = 8
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
    Left = 205
    Top = 6
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
    Left = 175
    Top = 10
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 14
    Top = 14
  end
  object Master: TZReadOnlyQuery
    Connection = DM.conn
    BeforeOpen = MasterBeforeOpen
    SQL.Strings = (
      '/*SELECT  a.*'
      'FROM transaksi.fn_rep_ap_list_2(:ptgl0,:ptgl1) a'
      'ORDER BY a.no_nota'
      '*/'
      
        'SELECT  a.*, sum(b.dibayar) as dibayar, a.total-sum(b.dibayar) a' +
        's sisa_hutang'
      'FROM transaksi.fn_rep_ap_list_2(:ptgl0,:ptgl1) a'
      'left join accfin.payment_detail b on b.no_bukti=a.no_bukti'
      
        'group by a.no_nota, a.dt_nota, a.kd_rekanan, a.nama_rekanan, a.n' +
        'o_bukti, a.dt_jth_tempo, a.cara_bayar,'
      'a.total, a.pembayaran, a.sisa'
      'ORDER BY a.no_nota')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2014'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2015'
      end>
    Left = 325
    Top = 7
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2014'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2015'
      end>
    object Masterno_nota: TStringField
      FieldName = 'no_nota'
      ReadOnly = True
      Size = 255
    end
    object Masterdt_nota: TDateTimeField
      FieldName = 'dt_nota'
      ReadOnly = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object Masterkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      ReadOnly = True
      Size = 255
    end
    object Masternama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      ReadOnly = True
      Size = 255
    end
    object Masterno_bukti: TStringField
      FieldName = 'no_bukti'
      ReadOnly = True
      Size = 255
    end
    object Masterdt_jth_tempo: TDateTimeField
      FieldName = 'dt_jth_tempo'
      ReadOnly = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object Mastercara_bayar: TStringField
      FieldName = 'cara_bayar'
      ReadOnly = True
      Size = 255
    end
    object Mastertotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Masterpembayaran: TFloatField
      FieldName = 'pembayaran'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Mastersisa: TFloatField
      FieldName = 'sisa'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Masterdibayar: TFloatField
      FieldName = 'dibayar'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Mastersisa_hutang: TFloatField
      FieldName = 'sisa_hutang'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 327
    Top = 30
  end
  object frxAPListdetail: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39216.970913981500000000
    ReportOptions.LastChange = 39353.868761030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 502
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
      end
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBInfo'
      end
      item
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 5.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 536.693260000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 529.134200000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Width = 264.566953540000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Printed By : [frxDBInfo."user_name"] ([frxDBInfo."user_id"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 264.567100000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 128.504020000000000000
          Width = 71.811008980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'no_bukti'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Width = 90.708658980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'no_nota'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."no_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 200.315090000000000000
          Width = 75.590538980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'dt_nota'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."dt_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 275.905690000000000000
          Width = 79.370068980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'dt_jth_tempo'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."dt_jth_tempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 355.275820000000000000
          Width = 120.944923390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'total'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 476.220780000000000000
          Width = 120.944923390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'pembayaran'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."pembayaran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 597.165740000000000000
          Width = 120.944923390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'sisa'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."sisa"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 77.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo51: TfrxMemoView
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'pnamamenu'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."pnamamenu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'periode'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBInfo."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 18.897650000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 34.015770000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'fax_telp'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."fax_telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 52.913420000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'kota_negara'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."kota_negara"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Width = 355.275820000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 355.275820000000000000
          Width = 120.944911180000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 60.472480000000000000
          Width = 230.551330000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoPreparedName: TfrxMemoView
          Top = 102.047310000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DataField = 'prepared_name'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."prepared_name"]')
          ParentFont = False
        end
        object MemoPreparedBy: TfrxMemoView
          Top = 41.574830000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIBUAT :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 117.165430000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 230.551330000000000000
          Top = 60.472480000000000000
          Width = 226.771800000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoDateReviewedBy: TfrxMemoView
          Left = 230.551330000000000000
          Top = 117.165430000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TGL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedBy: TfrxMemoView
          Left = 230.551330000000000000
          Top = 41.574830000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIPERIKSA :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 457.323130000000000000
          Top = 60.472480000000000000
          Width = 260.787570000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoDateApprovedBy: TfrxMemoView
          Left = 457.323130000000000000
          Top = 117.165430000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TGL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 457.323130000000000000
          Top = 41.574830000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DISETUJUI :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 476.220780000000000000
          Width = 120.944911180000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."pembayaran">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 597.165740000000000000
          Width = 120.944911180000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."sisa">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBMaster."kd_rekanan"'
        object Memo5: TfrxMemoView
          Top = 26.456710000000000000
          Width = 37.795275590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 71.811045590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'INVOICE #')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 275.905690000000000000
          Top = 26.456710000000000000
          Width = 79.370105590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JTH TEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 90.708695590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 200.315090000000000000
          Top = 26.456710000000000000
          Width = 75.590575590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 355.275820000000000000
          Top = 26.456710000000000000
          Width = 120.944886770000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 476.220780000000000000
          Top = 26.456710000000000000
          Width = 120.944886770000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DIBAYAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 597.165740000000000000
          Top = 26.456710000000000000
          Width = 120.944886770000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SALDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 718.110638980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            'SUPPLIER : [frxDBMaster."nama_rekanan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
        RowCount = 0
        object Memo17: TfrxMemoView
          Left = 355.275820000000000000
          Width = 120.944923390000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'pembayaran'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetail."pembayaran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 200.315090000000000000
          Width = 154.960668980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'dt_payment'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."dt_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 75.590600000000000000
          Width = 124.724428980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'no_payment'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."no_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxSUM: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39216.970913981500000000
    ReportOptions.LastChange = 39353.868761030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 676
    Top = 16
    Datasets = <
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBInfo'
      end
      item
        DataSet = frxDBSUM
        DataSetName = 'frxDBSUM'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 5.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 468.661720000000000000
        Width = 699.213050000000000000
        object Memo1: TfrxMemoView
          Left = 510.236550000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Width = 264.566953540000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Printed By : [frxDBInfo."user_name"] ([frxDBInfo."user_id"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 264.567100000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 699.213050000000000000
        DataSet = frxDBSUM
        DataSetName = 'frxDBSUM'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 22.677165350000000000
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 275.905628980000000000
          Height = 22.677165350000000000
          DataField = 'nama_rekanan'
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBSUM."nama_rekanan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 313.700990000000000000
          Width = 151.181163390000000000
          Height = 22.677165350000000000
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 464.882190000000000000
          Width = 117.165393390000000000
          Height = 22.677165350000000000
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."pembayaran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 582.047620000000000000
          Width = 117.165393390000000000
          Height = 22.677165350000000000
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."sisa"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 158.740260000000000000
        Width = 699.213050000000000000
        ReprintOnNewPage = True
        object Memo5: TfrxMemoView
          Width = 37.795275590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 37.795300000000000000
          Width = 275.905665590000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA SUPPLIER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 313.700990000000000000
          Width = 151.181138980000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL HUTANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 582.047620000000000000
          Width = 117.165368980000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SALDO HUTANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 464.882190000000000000
          Width = 117.165368980000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMBAYARAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 699.213050000000000000
        object Memo51: TfrxMemoView
          Top = 37.795300000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'pnamamenu'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."pnamamenu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 56.692950000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'periode'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBInfo."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 18.897650000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 37.795300000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'fax_telp'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."fax_telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 56.692950000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'kota_negara'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."kota_negara"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 298.582870000000000000
        Width = 699.213050000000000000
        object Memo14: TfrxMemoView
          Width = 313.700990000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 60.472480000000000000
          Width = 230.551330000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoPreparedName: TfrxMemoView
          Top = 102.047310000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DataField = 'prepared_name'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."prepared_name"]')
          ParentFont = False
        end
        object MemoPreparedBy: TfrxMemoView
          Top = 41.574830000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIBUAT :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 117.165430000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 230.551330000000000000
          Top = 60.472480000000000000
          Width = 226.771800000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoDateReviewedBy: TfrxMemoView
          Left = 230.551330000000000000
          Top = 117.165430000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TGL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedBy: TfrxMemoView
          Left = 230.551330000000000000
          Top = 41.574830000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIPERIKSA :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 457.323130000000000000
          Top = 60.472480000000000000
          Width = 241.889920000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoDateApprovedBy: TfrxMemoView
          Left = 457.323130000000000000
          Top = 117.165430000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TGL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 457.323130000000000000
          Top = 41.574830000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DISETUJUI :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 582.047620000000000000
          Width = 117.165381180000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."sisa">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 464.882190000000000000
          Width = 117.165381180000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."pembayaran">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 313.700990000000000000
          Width = 151.181151180000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBSUM: TfrxDBDataset
    UserName = 'frxDBSUM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kd_rekanan=kd_rekanan'
      'nama_rekanan=nama_rekanan'
      'total=total'
      'pembayaran=pembayaran'
      'sisa=sisa')
    DataSet = qrySUM_SUP
    BCDToCurrency = False
    Left = 706
    Top = 14
  end
  object Detail: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.no_reff, a.pembayaran, a.dt_payment, a.no_payment'
      'from accfin.vpembayaran_ap a'
      'where a.no_reff=:no_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_nota'
        ParamType = ptUnknown
      end>
    DataSource = dsMaster
    MasterFields = 'no_nota'
    MasterSource = dsMaster
    Left = 361
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_nota'
        ParamType = ptUnknown
      end>
    object Detailno_reff: TStringField
      FieldName = 'no_reff'
      Size = 32
    end
    object Detailno_payment: TStringField
      FieldName = 'no_payment'
    end
    object Detaildt_payment: TDateTimeField
      FieldName = 'dt_payment'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object Detailpembayaran: TFloatField
      FieldName = 'pembayaran'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 370
    Top = 38
  end
  object qrySUM_SUP: TZReadOnlyQuery
    Connection = DM.conn
    BeforeOpen = qrySUM_SUPBeforeOpen
    SQL.Strings = (
      'SELECT  '
      'z.kd_rekanan, '
      'x.nama_rekanan, '
      'sum(z.total) as total, '
      'sum(z.pembayaran) as pembayaran,'
      'sum(z.sisa)  as sisa'
      ''
      'FROM '
      '(SELECT a.* FROM  transaksi.fn_rep_ap_list(:ptgl1) a)  z'
      
        'LEFT JOIN master.mrekanan x ON x.kd_rekanan=z.kd_rekanan and x.j' +
        'enis='#39'SUPPLIER'#39
      'GROUP BY  z.kd_rekanan, x.nama_rekanan'
      'ORDER BY  x.nama_rekanan')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    Left = 738
    Top = 17
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    object qrySUM_SUPkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Required = True
      Size = 255
    end
    object qrySUM_SUPnama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 255
    end
    object qrySUM_SUPtotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySUM_SUPpembayaran: TFloatField
      FieldName = 'pembayaran'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySUM_SUPsisa: TFloatField
      FieldName = 'sisa'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
  end
  object dsqrySUM_OUTLET: TDataSource
    DataSet = qrySUM_SUP
    Left = 753
    Top = 25
  end
  object qryPrint: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      '/*'
      'SELECT  a.*'
      'FROM transaksi.fn_rep_ap_list_2(:ptgl0,:ptgl1) a'
      '*/'
      
        'SELECT  a.*, sum(b.dibayar) as dibayar, a.total-sum(b.dibayar) a' +
        's sisa_hutang'
      'FROM transaksi.fn_rep_ap_list_2(:ptgl0,:ptgl1) a'
      'left join accfin.payment_detail b on b.no_bukti=a.no_bukti'
      
        'group by a.no_nota, a.dt_nota, a.kd_rekanan, a.nama_rekanan, a.n' +
        'o_bukti, a.dt_jth_tempo, a.cara_bayar,'
      'a.total, a.pembayaran, a.sisa'
      'ORDER BY a.no_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2011'
      end>
    Left = 444
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2011'
      end>
    object qryPrintno_nota: TStringField
      DisplayWidth = 255
      FieldName = 'no_nota'
      ReadOnly = True
      Size = 255
    end
    object qryPrintdt_nota: TDateTimeField
      DisplayWidth = 18
      FieldName = 'dt_nota'
      ReadOnly = True
    end
    object qryPrintkd_rekanan: TStringField
      DisplayWidth = 255
      FieldName = 'kd_rekanan'
      ReadOnly = True
      Size = 255
    end
    object qryPrintnama_rekanan: TStringField
      DisplayWidth = 255
      FieldName = 'nama_rekanan'
      ReadOnly = True
      Size = 255
    end
    object qryPrintno_bukti: TStringField
      DisplayWidth = 255
      FieldName = 'no_bukti'
      ReadOnly = True
      Size = 255
    end
    object qryPrintdt_jth_tempo: TDateTimeField
      DisplayWidth = 18
      FieldName = 'dt_jth_tempo'
      ReadOnly = True
    end
    object qryPrintcara_bayar: TStringField
      DisplayWidth = 255
      FieldName = 'cara_bayar'
      ReadOnly = True
      Size = 255
    end
    object qryPrinttotal: TFloatField
      DisplayWidth = 10
      FieldName = 'total'
      ReadOnly = True
    end
    object qryPrintpembayaran: TFloatField
      DisplayWidth = 10
      FieldName = 'pembayaran'
      ReadOnly = True
    end
    object qryPrintsisa: TFloatField
      DisplayWidth = 10
      FieldName = 'sisa'
      ReadOnly = True
    end
    object qryPrintdibayar: TFloatField
      FieldName = 'dibayar'
      ReadOnly = True
    end
    object qryPrintsisa_hutang: TFloatField
      FieldName = 'sisa_hutang'
      ReadOnly = True
    end
  end
  object frxDBDetail: TfrxDBDataset
    UserName = 'frxDBDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_reff=no_reff'
      'pembayaran=pembayaran'
      'dt_payment=dt_payment'
      'no_payment=no_payment')
    DataSet = qryPrintDetail
    BCDToCurrency = False
    Left = 477
    Top = 77
  end
  object qryPrintDetail: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.no_reff, a.pembayaran, a.dt_payment, a.no_payment'
      'from accfin.vpembayaran_ap a'
      'where a.no_reff=:no_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_nota'
        ParamType = ptUnknown
      end>
    DataSource = dsqryPrint
    MasterFields = 'no_nota'
    MasterSource = dsqryPrint
    Left = 444
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_nota'
        ParamType = ptUnknown
      end>
    object qryPrintDetailno_reff: TStringField
      FieldName = 'no_reff'
      Size = 32
    end
    object qryPrintDetailpembayaran: TFloatField
      FieldName = 'pembayaran'
    end
    object qryPrintDetaildt_payment: TDateTimeField
      FieldName = 'dt_payment'
    end
    object qryPrintDetailno_payment: TStringField
      FieldName = 'no_payment'
    end
  end
  object dsqryPrint: TDataSource
    DataSet = qryPrint
    Left = 422
    Top = 51
  end
  object qryPeriode: TZReadOnlyQuery
    Connection = DM.conn
    BeforeOpen = qryPeriodeBeforeOpen
    SQL.Strings = (
      'select * from transaksi.fn_rep_ap_list_4(:ptgl0, :ptgl1)')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2014'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2015'
      end>
    Left = 810
    Top = 11
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2014'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2015'
      end>
    object qryPeriodeno_nota: TStringField
      FieldName = 'no_nota'
      ReadOnly = True
      Size = 255
    end
    object qryPeriodedt_nota: TDateTimeField
      FieldName = 'dt_nota'
      ReadOnly = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qryPeriodekd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      ReadOnly = True
      Size = 255
    end
    object qryPeriodenama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      ReadOnly = True
      Size = 255
    end
    object qryPeriodeno_bukti: TStringField
      FieldName = 'no_bukti'
      ReadOnly = True
      Size = 255
    end
    object qryPeriodedt_jth_tempo: TDateTimeField
      FieldName = 'dt_jth_tempo'
      ReadOnly = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qryPeriodecara_bayar: TStringField
      FieldName = 'cara_bayar'
      ReadOnly = True
      Size = 255
    end
    object qryPeriodetotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryPeriodepembayaran: TFloatField
      FieldName = 'pembayaran'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryPeriodesisa: TFloatField
      FieldName = 'sisa'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
  end
  object dsqryPeriode: TDataSource
    DataSet = qryPeriode
    Left = 822
    Top = 19
  end
end

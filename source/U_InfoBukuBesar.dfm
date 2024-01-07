object InfoBukuBesarFrm: TInfoBukuBesarFrm
  Left = 221
  Top = 64
  Width = 917
  Height = 683
  Caption = 'Buku Besar'
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
    Width = 909
    Height = 55
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientEnd = 15845560
    GradientMid = 15845560
    ParentColor = False
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 6
      Width = 7
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnOK: TcxButton
      Left = 345
      Top = 18
      Width = 63
      Height = 21
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
      Colors.Normal = clGradientActiveCaption
      Colors.Hot = clMenuHighlight
    end
    object RzGroupBox1: TRzGroupBox
      Left = 15
      Top = -1
      Width = 315
      Height = 45
      Caption = 'Date Filter'
      TabOrder = 0
      Transparent = True
      object edtDatePicker1: TwwDBDateTimePicker
        Left = 21
        Top = 18
        Width = 112
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
        DisplayFormat = 'DD MMM YYYY'
        OnCloseUp = edtDatePicker1CloseUp
      end
      object cxLabel1: TcxLabel
        Left = 146
        Top = 18
        Caption = 'to'
        Transparent = True
      end
      object edtDatePicker2: TwwDBDateTimePicker
        Left = 171
        Top = 16
        Width = 112
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
        TabOrder = 1
        UnboundDataType = wwDTEdtDate
        DisplayFormat = 'DD MMM YYYY'
        OnCloseUp = edtDatePicker2CloseUp
      end
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 909
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
    Version = '1.7.7.5'
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
      Left = 17
      Top = 9
      Width = 122
      Height = 23
      Caption = 'Buku Besar'
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
    Top = 608
    Width = 909
    Height = 48
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
    Version = '1.7.7.5'
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
    object Label3: TLabel
      Left = 580
      Top = 5
      Width = 52
      Height = 16
      Caption = 'Mutasi :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LblMutasi: TLabel
      Left = 767
      Top = 5
      Width = 43
      Height = 16
      Caption = 'Mutasi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 580
      Top = 27
      Width = 82
      Height = 16
      Caption = 'Saldo Akhir :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LblSaldoAkhir: TLabel
      Left = 737
      Top = 26
      Width = 73
      Height = 16
      Caption = 'Saldo Akhir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbnBrowse: TRzDBNavigator
      Left = 116
      Top = 8
      Width = 108
      Height = 24
      DataSource = dsMaster
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      TabStop = True
      Color = 14869218
    end
    object btnClose: TSCButton
      Left = 20
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Close'
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 1
      OnClick = btnCloseClick
    end
    object btnRefresh: TSCButton
      Left = 231
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Refresh'
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 2
      OnClick = btnRefreshClick
    end
    object btnPrint: TSCButton
      Left = 308
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Print'
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 3
      OnClick = btnPrintClick
    end
    object RadioGroup1: TRadioGroup
      Left = 391
      Top = 6
      Width = 169
      Height = 29
      Caption = 'Filter'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Per Rekening')
      ParentFont = False
      TabOrder = 4
    end
  end
  object pgcMaster: TcxPageControl
    Left = 0
    Top = 95
    Width = 909
    Height = 513
    ActivePage = tabBukuBesar
    Align = alClient
    Color = clGray
    ParentColor = False
    Style = 2
    TabOrder = 5
    ClientRectBottom = 513
    ClientRectRight = 909
    ClientRectTop = 23
    object tabBukuBesar: TcxTabSheet
      Caption = 'BUKU BESAR'
      ImageIndex = 0
      object grdMaster: TcxGrid
        Left = 0
        Top = 0
        Width = 909
        Height = 227
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object grdDBTVMaster: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'awal'
              Column = grdDBTVMasterawal
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'berjalan'
              Column = grdDBTVMasterberjalan
            end
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'akhir'
              Column = grdDBTVMasterakhir
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.HeaderHeight = 25
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grdDBTVMasterid_rek_gl: TcxGridDBColumn
            Caption = 'ID ACCOUNT'
            DataBinding.FieldName = 'id_rek_gl'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
          object grdDBTVMasterdescriptions: TcxGridDBColumn
            Caption = 'DESCRIPTIONS'
            DataBinding.FieldName = 'descriptions'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 282
          end
          object grdDBTVMasterawal: TcxGridDBColumn
            Caption = 'AWAL'
            DataBinding.FieldName = 'awal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
          object grdDBTVMasterberjalan: TcxGridDBColumn
            Caption = 'BERJALAN'
            DataBinding.FieldName = 'berjalan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
          object grdDBTVMasterakhir: TcxGridDBColumn
            Caption = 'AKHIR'
            DataBinding.FieldName = 'akhir'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
        end
        object grddbtvBrowse_PR_Project_Detail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetail
          DataController.DetailKeyFieldNames = 'id_po'
          DataController.MasterKeyFieldNames = 'id_po'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object grddbtvBrowse_PR_Project_Detailid_item: TcxGridDBColumn
            Caption = 'Item ID'
            DataBinding.FieldName = 'id_item'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 129
          end
          object grddbtvBrowse_PR_Project_Detaildescription: TcxGridDBColumn
            Caption = 'Item Name'
            DataBinding.FieldName = 'description'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 213
          end
          object grddbtvBrowse_PR_Project_Detailqty: TcxGridDBColumn
            Caption = 'QTY PO'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            GroupSummaryAlignment = taRightJustify
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
          object grddbtvBrowse_PR_Project_Detailid_unit: TcxGridDBColumn
            Caption = 'Unit'
            DataBinding.FieldName = 'id_unit'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 49
          end
        end
        object grdLvlMaster: TcxGridLevel
          GridView = grdDBTVMaster
        end
      end
      object grdDetail: TcxGrid
        Left = 0
        Top = 252
        Width = 909
        Height = 238
        Align = alClient
        TabOrder = 1
        object grddbtvDetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dsDetail
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
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 35
          OptionsView.Indicator = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtvDetailno_bukti: TcxGridDBColumn
            Caption = 'NO. BUKTI'
            DataBinding.FieldName = 'no_bukti'
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
          object grddbtvDetailid_cc_project: TcxGridDBColumn
            Caption = 'Cost Center/ Project'
            DataBinding.FieldName = 'id_cc_project'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 87
          end
          object grddbtvDetaildt_memorial: TcxGridDBColumn
            Caption = 'DATE'
            DataBinding.FieldName = 'dt_memorial'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 96
          end
          object grddbtvDetaildescriptions: TcxGridDBColumn
            Caption = 'Descriptions'
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
            Width = 286
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
            Width = 125
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
            Width = 125
          end
        end
        object grdlvlDetail: TcxGridLevel
          GridView = grddbtvDetail
        end
      end
      object adpDetailNavigator: TAdvDockPanel
        Left = 0
        Top = 227
        Width = 909
        Height = 25
        MinimumSize = 25
        LockHeight = False
        Persistence.Location = plRegistry
        Persistence.Enabled = False
        ToolBarStyler = ATBos
        UseRunTimeHeight = True
        Version = '3.0.7.2'
        object Label1: TLabel
          Left = 579
          Top = 5
          Width = 80
          Height = 16
          Caption = 'Saldo Awal :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object LblSaldoAwal: TLabel
          Left = 738
          Top = 5
          Width = 71
          Height = 16
          Caption = 'Saldo Awal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
    end
    object tabNeracaSaldo: TcxTabSheet
      Caption = 'NERACA SALDO'
      ImageIndex = 1
      object pgcNeracaSaldo: TcxPageControl
        Left = 0
        Top = 0
        Width = 909
        Height = 490
        ActivePage = tabAktiva
        Align = alClient
        Color = clGray
        ParentColor = False
        TabOrder = 0
        ClientRectBottom = 490
        ClientRectRight = 909
        ClientRectTop = 24
        object tabAktiva: TcxTabSheet
          Caption = 'AKTIVA'
          ImageIndex = 0
          object grdAkitva: TcxGrid
            Left = 0
            Top = 0
            Width = 909
            Height = 466
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object grdDBTVAkitva: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsqryAktiva
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'akhir'
                  Column = grdDBTVAkitvaakhir
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'awal'
                  Column = grdDBTVAkitvaawal
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'debet'
                  Column = grdDBTVAkitvadebet
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'kredit'
                  Column = grdDBTVAkitvakredit
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.Footer = True
              OptionsView.HeaderHeight = 25
              Styles.ContentEven = cxStyle3
              Styles.Selection = cxStyle2
              Styles.Header = cxStyle1
              Styles.Indicator = cxStyle4
              object grdDBTVAkitvaid_rek_gl: TcxGridDBColumn
                Caption = 'ACCOUNT ID'
                DataBinding.FieldName = 'id_rek_gl'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 140
              end
              object grdDBTVAkitvadescriptions: TcxGridDBColumn
                Caption = 'DESCIPTIONS'
                DataBinding.FieldName = 'descriptions'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 236
              end
              object grdDBTVAkitvaawal: TcxGridDBColumn
                Caption = 'AWAL'
                DataBinding.FieldName = 'awal'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 125
              end
              object grdDBTVAkitvadebet: TcxGridDBColumn
                Caption = 'DEBET'
                DataBinding.FieldName = 'debet'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 125
              end
              object grdDBTVAkitvakredit: TcxGridDBColumn
                Caption = 'KREDIT'
                DataBinding.FieldName = 'kredit'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 125
              end
              object grdDBTVAkitvaakhir: TcxGridDBColumn
                Caption = 'AKHIR'
                DataBinding.FieldName = 'akhir'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 125
              end
            end
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDetail
              DataController.DetailKeyFieldNames = 'id_po'
              DataController.MasterKeyFieldNames = 'id_po'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Item ID'
                DataBinding.FieldName = 'id_item'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 129
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Item Name'
                DataBinding.FieldName = 'description'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 213
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'QTY PO'
                DataBinding.FieldName = 'qty'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                GroupSummaryAlignment = taRightJustify
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
              object cxGridDBColumn9: TcxGridDBColumn
                Caption = 'Unit'
                DataBinding.FieldName = 'id_unit'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 49
              end
            end
            object grdLvlAkitva: TcxGridLevel
              GridView = grdDBTVAkitva
            end
          end
        end
        object tabPasiva: TcxTabSheet
          Caption = 'PASIVA'
          ImageIndex = 1
          object grdPasiva: TcxGrid
            Left = 0
            Top = 0
            Width = 909
            Height = 466
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object grdDBTVPasiva: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsqryPasiva
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'awal'
                  Column = grdDBTVPasivaawal
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'debet'
                  Column = grdDBTVPasivadebet
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'akhir'
                  Column = grdDBTVPasivaakhir
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'kredit'
                  Column = grdDBTVPasivakredit
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.Footer = True
              OptionsView.HeaderHeight = 25
              Styles.ContentEven = cxStyle3
              Styles.Selection = cxStyle2
              Styles.Header = cxStyle1
              Styles.Indicator = cxStyle4
              object grdDBTVPasivaid_rek_gl: TcxGridDBColumn
                Caption = 'ACCOUNT ID'
                DataBinding.FieldName = 'id_rek_gl'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 149
              end
              object grdDBTVPasivadescriptions: TcxGridDBColumn
                Caption = 'DESCRIPTIONS'
                DataBinding.FieldName = 'descriptions'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 214
              end
              object grdDBTVPasivaawal: TcxGridDBColumn
                Caption = 'AWAL'
                DataBinding.FieldName = 'awal'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTVPasivadebet: TcxGridDBColumn
                Caption = 'DEBET'
                DataBinding.FieldName = 'debet'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTVPasivakredit: TcxGridDBColumn
                Caption = 'KREDIT'
                DataBinding.FieldName = 'kredit'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTVPasivaakhir: TcxGridDBColumn
                Caption = 'AKHIR'
                DataBinding.FieldName = 'akhir'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
            end
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDetail
              DataController.DetailKeyFieldNames = 'id_po'
              DataController.MasterKeyFieldNames = 'id_po'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGridDBColumn15: TcxGridDBColumn
                Caption = 'Item ID'
                DataBinding.FieldName = 'id_item'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 129
              end
              object cxGridDBColumn16: TcxGridDBColumn
                Caption = 'Item Name'
                DataBinding.FieldName = 'description'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 213
              end
              object cxGridDBColumn17: TcxGridDBColumn
                Caption = 'QTY PO'
                DataBinding.FieldName = 'qty'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                GroupSummaryAlignment = taRightJustify
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
              object cxGridDBColumn18: TcxGridDBColumn
                Caption = 'Unit'
                DataBinding.FieldName = 'id_unit'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 49
              end
            end
            object grdLvlPasiva: TcxGridLevel
              GridView = grdDBTVPasiva
            end
          end
        end
        object tabRugiLaba: TcxTabSheet
          Caption = 'RUGI-LABA'
          ImageIndex = 2
          object grdRL: TcxGrid
            Left = 0
            Top = 0
            Width = 909
            Height = 466
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object grdDBTV_RL: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsRL
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'awal'
                  Column = grdDBTV_RLawal
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'debet'
                  Column = grdDBTV_RLdebet
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'akhir'
                  Column = grdDBTV_RLakhir
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'kredit'
                  Column = grdDBTV_RLkredit
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.Footer = True
              OptionsView.HeaderHeight = 25
              Styles.ContentEven = cxStyle3
              Styles.Selection = cxStyle2
              Styles.Header = cxStyle1
              Styles.Indicator = cxStyle4
              object grdDBTV_RLid_rek_gl: TcxGridDBColumn
                Caption = 'ACCOUNT ID'
                DataBinding.FieldName = 'id_rek_gl'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 140
              end
              object grdDBTV_RLdescriptions: TcxGridDBColumn
                Caption = 'DESCRIPTIONS'
                DataBinding.FieldName = 'descriptions'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 222
              end
              object grdDBTV_RLawal: TcxGridDBColumn
                Caption = 'AWAL'
                DataBinding.FieldName = 'awal'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTV_RLdebet: TcxGridDBColumn
                Caption = 'DEBET'
                DataBinding.FieldName = 'debet'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTV_RLkredit: TcxGridDBColumn
                Caption = 'KREDIT'
                DataBinding.FieldName = 'kredit'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTV_RLakhir: TcxGridDBColumn
                Caption = 'AKHIR'
                DataBinding.FieldName = 'akhir'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
            end
            object cxGridDBTableView4: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDetail
              DataController.DetailKeyFieldNames = 'id_po'
              DataController.MasterKeyFieldNames = 'id_po'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGridDBColumn24: TcxGridDBColumn
                Caption = 'Item ID'
                DataBinding.FieldName = 'id_item'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 129
              end
              object cxGridDBColumn25: TcxGridDBColumn
                Caption = 'Item Name'
                DataBinding.FieldName = 'description'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 213
              end
              object cxGridDBColumn26: TcxGridDBColumn
                Caption = 'QTY PO'
                DataBinding.FieldName = 'qty'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                GroupSummaryAlignment = taRightJustify
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
              object cxGridDBColumn27: TcxGridDBColumn
                Caption = 'Unit'
                DataBinding.FieldName = 'id_unit'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 49
              end
            end
            object grdLvlRL: TcxGridLevel
              GridView = grdDBTV_RL
            end
          end
        end
        object tabSemua: TcxTabSheet
          Caption = 'SEMUA'
          ImageIndex = 3
          object grdSemua: TcxGrid
            Left = 0
            Top = 0
            Width = 909
            Height = 466
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object grdDBTVSemua: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsqrySemua
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'awal'
                  Column = grdDBTVSemuaawal
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'debet'
                  Column = grdDBTVSemuadebet
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'akhir'
                  Column = grdDBTVSemuaakhir
                end
                item
                  Format = '0.0,0'
                  Kind = skSum
                  FieldName = 'kredit'
                  Column = grdDBTVSemuakredit
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.Footer = True
              OptionsView.HeaderHeight = 25
              Styles.ContentEven = cxStyle3
              Styles.Selection = cxStyle2
              Styles.Header = cxStyle1
              Styles.Indicator = cxStyle4
              object grdDBTVSemuaid_rek_gl: TcxGridDBColumn
                Caption = 'ACCOUNT ID'
                DataBinding.FieldName = 'id_rek_gl'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 138
              end
              object grdDBTVSemuadescriptions: TcxGridDBColumn
                Caption = 'DESCRIPTIONS'
                DataBinding.FieldName = 'descriptions'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 227
              end
              object grdDBTVSemuaawal: TcxGridDBColumn
                Caption = 'AWAL'
                DataBinding.FieldName = 'awal'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTVSemuadebet: TcxGridDBColumn
                Caption = 'DEBET'
                DataBinding.FieldName = 'debet'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTVSemuakredit: TcxGridDBColumn
                Caption = 'KREDIT'
                DataBinding.FieldName = 'kredit'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
              object grdDBTVSemuaakhir: TcxGridDBColumn
                Caption = 'AKHIR'
                DataBinding.FieldName = 'akhir'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 125
              end
            end
            object cxGridDBTableView5: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDetail
              DataController.DetailKeyFieldNames = 'id_po'
              DataController.MasterKeyFieldNames = 'id_po'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGridDBColumn33: TcxGridDBColumn
                Caption = 'Item ID'
                DataBinding.FieldName = 'id_item'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 129
              end
              object cxGridDBColumn34: TcxGridDBColumn
                Caption = 'Item Name'
                DataBinding.FieldName = 'description'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 213
              end
              object cxGridDBColumn35: TcxGridDBColumn
                Caption = 'QTY PO'
                DataBinding.FieldName = 'qty'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                GroupSummaryAlignment = taRightJustify
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
              object cxGridDBColumn36: TcxGridDBColumn
                Caption = 'Unit'
                DataBinding.FieldName = 'id_unit'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.Sorting = False
                Width = 49
              end
            end
            object grdLvlSemua: TcxGridLevel
              GridView = grdDBTVSemua
            end
          end
        end
      end
    end
  end
  object Master: TZReadOnlyQuery
    Connection = DM.conn
    OnCalcFields = MasterCalcFields
    SQL.Strings = (
      'select a.id_rek_gl, a.id_parent, a.descriptions, a.isdetail,'
      
        '(select coalesce(sum(b.debet-b.kredit),0)  from accfin.memorial ' +
        'b where b.id_rek_gl=a.id_rek_gl and b.dt_memorial<to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39')) as awal,'
      
        '(select coalesce(sum(b.debet-b.kredit),0)  from accfin.memorial ' +
        'b where b.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_tim' +
        'estamp(:ptgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39 +
        ') +  interval '#39'23 hours 59 min'#39') as berjalan'
      'from master.mrek_gl a'
      'where a.isdetail='#39'1'#39
      'order by a.id_rek_gl')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    Left = 313
    Top = 5
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    object Masterid_parent: TStringField
      FieldName = 'id_parent'
    end
    object Masterdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object Masterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
    end
    object Masterisdetail: TStringField
      FieldName = 'isdetail'
      Required = True
      Size = 1
    end
    object Masterawal: TFloatField
      FieldName = 'awal'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Masterberjalan: TFloatField
      FieldName = 'berjalan'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Masterakhir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'akhir'
      DisplayFormat = '0.0,0'
      Calculated = True
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 328
    Top = 24
  end
  object frxRichObject1: TfrxRichObject
    Left = 792
    Top = 8
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 762
    Top = 8
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 730
    Top = 8
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 694
    Top = 8
  end
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rek_gl=id_rek_gl'
      'id_parent=id_parent'
      'descriptions=descriptions'
      'isdetail=isdetail'
      'awal=awal'
      'berjalan=berjalan'
      'akhir=akhir'
      'dt_print=dt_print'
      'user_print=user_print'
      'nama_menu=nama_menu'
      'periode=periode')
    DataSet = kmtMaster
    Left = 455
    Top = 16
  end
  object rptBukuBesarPerRekening: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39216.9709139815
    ReportOptions.LastChange = 39353.8687610301
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 423
    Top = 14
    Datasets = <
      item
        DataSet = frxDBdETAIL
        DataSetName = 'frxDBDetail'
      end
      item
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 15
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 5
      object PageFooter1: TfrxPageFooter
        Height = 18.89765
        Top = 419.52783
        Width = 699.21305
        object Memo1: TfrxMemoView
          Left = 510.23655
          Width = 188.97637795
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Width = 264.56695354
          Height = 18.89765
          DataField = 'user_print'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."user_print"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 264.5671
          Width = 245.66945
          Height = 18.89765
          DataField = 'dt_print'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."dt_print"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.67718
        ParentFont = False
        Top = 253.22851
        Width = 699.21305
        DataSet = frxDBdETAIL
        DataSetName = 'frxDBDetail'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 37.7953
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 37.7953
          Width = 75.59053898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'no_bukti'
          DataSet = frxDBdETAIL
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4
          Memo.UTF8 = (
            '[frxDBDetail."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 113.3859
          Width = 75.59053898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'dt_memorial'
          DataSet = frxDBdETAIL
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          Memo.UTF8 = (
            '[frxDBDetail."dt_memorial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 188.9765
          Width = 71.81103339
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'id_cc_project'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."id_cc_project"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 260.78757
          Width = 211.65364339
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'descriptions'
          DataSet = frxDBdETAIL
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          Memo.UTF8 = (
            '[frxDBDetail."descriptions"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 472.44125
          Width = 113.38586339
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'debet'
          DataSet = frxDBdETAIL
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetail."debet"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 585.82715
          Width = 113.38586339
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'kredit'
          DataSet = frxDBdETAIL
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetail."kredit"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 34.01577
        Top = 192.75603
        Width = 699.21305
        object Memo5: TfrxMemoView
          Width = 37.79527559
          Height = 34.01577
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 37.7953
          Width = 75.59057559
          Height = 34.01577
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO. BUKTI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 113.3859
          Width = 75.59057559
          Height = 34.01577
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 188.9765
          Width = 71.81104559
          Height = 34.01577
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CC/ Project #')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 585.82715
          Width = 113.38587559
          Height = 34.01577
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KREDIT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 260.78757
          Width = 211.65365559
          Height = 34.01577
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPTIONS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 472.44125
          Width = 113.38587559
          Height = 34.01577
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DEBET')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 145.1812
        Top = 18.89765
        Width = 699.21305
        object Rich4: TfrxRichView
          Left = 461.10266
          Width = 238.11039
          Height = 56.69295
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C204D532053616E732053
            657269663B7D7D0D0A5C766965776B696E64345C7563315C706172645C71725C
            6673313420426C756520446F742043656E74657220426C6F6B20485C7061720D
            0A4A6C2E2047656C6F6E672042617275205574617261204E6F2E20352D365C70
            61720D0A4A616B617274612042617261742031313434305C7061720D0A54656C
            2E203A202B36322032312035363032203131315C7061720D0A466178203A202B
            3632203231203536393430203131315C66315C667331365C7061720D0A7D0D0A
            00}
        end
        object Rich5: TfrxRichView
          Width = 702.99258
          Height = 30.23624
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C204D532053616E732053
            657269663B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C
            625C667331382050542E204D6574726F74656368204A617961204B6F6D756E69
            6B615C667331345C7061720D0A7777772E6D6574726F746563682E636F2E6964
            5C62305C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo51: TfrxMemoView
          Top = 52.91342
          Width = 699.21305
          Height = 18.89765
          DataField = 'nama_menu'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."nama_menu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 11.33859
          Top = 3.77953
          Width = 102.04731
          Height = 90.70872
          Picture.Data = {
            0A544A504547496D616765E40A0000FFD8FFE000104A46494600010200006400
            640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
            64C000000001FFDB0084000604040405040605050609060506090B080606080B
            0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
            1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1FFFC0001108004E004E03011100021101031101FF
            C4009E0000020203010100000000000000000000000504060102030708010100
            0203010000000000000000000000000103020405061000010303030202060803
            0900000000000102030400110521120631415113619122321407718152627223
            2415423316A1B1C1D192A2538308110002020102030605030305000000000001
            020003112112311304516181B122054171A1C1149132624272C28292B23306FF
            DA000C03010002110311003F00FAA6910A442910A442910A442910A442910A44
            2910A442910A44E1267428A2F21F6D9FC6A03FBE91173BCBB8F37D65836FB295
            91EB029130C72FE3AFFB93122FD0A92A03D76B542B061907224B295382306301
            21E71A0F452D496CEA36AAD7FA15ED0A9913487958D29D5C7F69A94D7F323B82
            CB03C475047A45224CA442913575D6DA46F714129E973E27B0A445D92CEC5C7B
            614FDFCD5FF263275715F576A448096793E57DA79C18B887A36DEAF11E93DBFB
            3E8A44F3CE57F3078B712E47270F2B0CFE4A4470D95CA71F165798DA57EE91F7
            AD5D6E97DADAD40E1B199C8EABDD969B0A15CE27083F3D78C4B90CE3D3C68B69
            96B4B05416D8B070ECBE8807BD5967B19DA72DA625557BF2EE18539CCB2FC348
            83C8C62138D4278D32BD64AD9276B651BD4A320EBA289D6F5E1EBB2DA2EE5AAE
            281F1C1C76F19EF6CAE9BE8E6B36EEA08E1919CE703D3F28EF0F1930390B6CE3
            9FF3F1931953C2CA0B4802E2E08D0FB42D7AEEAB0619072279F642A70460CD79
            1C8DBCAB18231FD4A4A52E5BECA97EE9FAAF594C65BAA24CC2D49424AD46C948
            2544F602911144C87C546959C746E6580E084CF60940D567EF28FA85225772B0
            5C5F06CF67652CAF21220C95B4BFF8D21B55B6781F0F0AD9E93FEE5FEE135BAC
            38A5FF00B4CF14F959C96763797C6C8486E7E463328752E31152B7D64AD0529F
            62F6EA6BD3FB8501EA2A36A9EFD2794F6EBD92D0C7730EED61F353F73CC72C9B
            9C4623210E0C84B41066465B4A1E5B4941BF51D53E34F6FDA9584DCA48EC31EE
            3B9ED2FB5803DA251C120DC7515D09CE9EC1FF009E9B54BC8E7599295C88EEC3
            4B6B6C9363B97629BDF4B8AE07BF22B5614F033D17FE7AC65B0B03A8C79CF589
            391C5F1E68B111297679486DB6504A90D205CA5173AD8137F126BCDD75AA2855
            D009E9ADB59D8B31CB19D38CE065092ACBE4EE65BB72DA15D53BBF88F81B6807
            6AB2572CF512647C8C75C881263A0D96EB4B424FA549205225338F679AC6B6F6
            272ADA92CEE50248BEDDDA292A1E06A644791A36324631EC587D99F899085365
            82E6D7036E5C29B241D46BE8352AE548238890E818153C0C678E818AC6444C68
            11D9871902C969A4A509D3F0D4BD8CC72C7264256A830A30266465B16C03E74A
            693E20AD37F556133955CA4EE02E3A567111B2122FA28C66CDCFE25A6F572DF6
            0E0C7F594B74F59D4AA9F0132C35C9720D08F0633787C71E896D21AD0FD002BD
            40556CC49C939962A80300623BC3716C7E348748F3E5752F2FB1FBA3B563328E
            6910A4429120E47078CC8EB2980A58160E0F6563EB148891DF97F8E5125A90EA
            0781DAAFF015399189A0F97D13F8A63847A1207F9D331892D8E0B846EC5CF35E
            3F79561FED09A664E2368788C643D63466DB57DA02EAFF0051D6A224BA442910
            A442913CAF15C9E441C67CC1694A529E873E5BB06E4924C9714CB694FA03C8AE
            D59D3866A4F6A8CF86BE53835752556F1F10CD8F138F39AE22041CA1E0F132C3
            CE8CAC3487168716A482E24B16512149B91734B5D939A578EF1F7914D6B67243
            EA3967ED1C738E2D801FD3C511400BC843824A5C705E310BFCBD15A8AA3A4EA1
            FD7AFF00493E3363ADE96BF469FD4ABE1AE931278EE024F3B5E3E730158E8586
            8DF0ACADC5A5083F10F274B286B61DE8B7B8A7703EA2E7C84374F5B751B587A5
            6B18FD4C4D83871F2D078241C86E930DE6B245C694E2ECA2D5BCBDC4104EDED5
            B173146B59743E99AD420B16956D461FE91842C0625CC7731C72D82A858D98B7
            20B256E59A5884855D2775FAA89EB553DCC1AB6CEAC35FF74B92842B6AE3D2AD
            A777A448CBC2E29AE11C4501AD8DE526631792FCC5FE697183BCA8955FDAEF6A
            CC5AC6EB3F886C776B3034A0A2AD3F73267BF48DB9460B0CC37C6B1115ADB8A9
            596B3F1D0E2F6AC18EF2882775FDE483D6A8E9EE73BDCFEE09F71363AAA100AD
            00F417FB19039171E7B0180E4A63FE9F17225639CC7B6875676252E3297BDE37
            4EE5DFBD5B45E2D74CEAC0367EB894F51D39AABB31A2964C6BDE331EAF21195F
            32185264A0C74E19F2B21C1B02BE2D902FADAFAD6B043F8E74D778F2336CD83F
            246BA72CFF00C84A8C4C14A9D994C86527E0FF007BCB232B61705B8F20CA8E15
            FF006A2DF5D6F35C153078EC4C788C1FA4E725059F23F6F31F7781DC3EB36C34
            1C34F3C198CBB4CBF13F6692AD9236946F058B1F6B4BD45AEEBCD2990778E1E3
            269447E487008E59E3FE996CE60DC56A37176A2842633798848612DDB604252B
            0909B69602B4BA52497278EC69D0EB0002B0387317EF12734C32B31C933B09B4
            25C9030519F8C8500A05E625BAEB6920F6514ED3E835B1D25BB2B43F0E61FAA8
            9ABD6D3CCB5D471E5823E618992C64712F66782CE861A898F7A2CD7196D3B5B6
            D016C367601A0163A561B1825AA756CAF99967310BD2CB80A55BC84DF14E36E3
            7CF56DAC2D0A90E59492083FA16FB8A8B06395F2FF002326A208BB1DBFE2240C
            9310E4702E0CC4D4A1C88EC8C5A5F43B6D85058370ABE96AB2B245F691C70FE7
            2AB154F4F486E194F28CB90C7C2E3DDE26D6392C4680D65EE12C94A5A49319F2
            AE9A7535550CEC2C2D92DB3EE25DD42A21A82E02EFFB190B9AE79395C1F26C71
            436A8D8E938D690EA15BC3A97DC65C56EEDA6EDB567494EC746F8B06FA6657D6
            DFCCAEC5F8294F1C9124FF004C71B6BE60A20358B88883270AF2A4454B2D869C
            2898C1495A00DAAB11A5EB0FC8B0D1B8B1C871AE7F8999FE3543A8DA15769ACE
            98FE4B2ECCC48AC25C4B2CA1A4BAB538EA509090A5ACDD6A5586AA51EA7BD73C
            B13C4CE984038090E4F1CE3D299619938B88FB3193B2336E30D2D2DA4DBD9405
            24848D3B566B7D8092188CF7CADBA7AD80055481C34124271B8E4B0C474C5643
            115495C568369086948F74B69B592537D2D58F31B24E4E4CCF96B80303038774
            EA22C6124CA0CA04A52034A7F68F30A012A082AEBB4124DAB1DC718F849DA339
            C6B21BFC7B012233515FC6447A2B24A9961C61B53682A37514A4A6C2E4EB6AB0
            5EE0E431CFCE56DD3D6460AA903B84EB0F118A85197161C26234572E5C619690
            DB6ADC2C772520037158B5ACC7249266495228C28007CA1230F899309B832614
            77E135B43515C690B693B0593B50A052368D06952B6B03B8139ED86A51976900
            AF66349C4F1CE3C6088071713E042FCC113C86BCADFD37797B76EEF4DAA79F66
            776E39EDCCC7F1EBDBB76AEDECC0C4D98C060A3C55C48F8D8ACC575416E476D9
            6D2DA94920A54A404ED24102C686E727258E7E72568AC0C05007CA4B31631922
            51691F12941683FB47981B2428A3775DA4806D55EE38C7C267B46738D674A899
            42910A442910A442910A442910A442913FFFD9}
          HightQuality = False
        end
        object Memo16: TfrxMemoView
          Top = 71.81107
          Width = 699.21305
          Height = 18.89765
          DataField = 'periode'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 472.44125
          Top = 120.94496
          Width = 226.7718
          Height = 18.89765
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."awal"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 377.953
          Top = 120.94496
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Saldo Awal :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 98.26778
          Width = 68.03154
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Account ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 109.60637
          Top = 98.26778
          Width = 204.09462
          Height = 18.89765
          DataField = 'id_rek_gl'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBMaster."id_rek_gl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Top = 120.94496
          Width = 90.70872
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Account Name')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 109.60637
          Top = 120.94496
          Width = 264.5671
          Height = 18.89765
          DataField = 'descriptions'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBMaster."descriptions"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 94.48825
          Top = 98.26778
          Width = 11.33859
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 94.48825
          Top = 120.94496
          Width = 11.33859
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 79.37013
        Top = 313.70099
        Width = 699.21305
        object Memo11: TfrxMemoView
          Left = 585.82715
          Width = 113.3859
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDetail."kredit">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 472.44125
          Width = 113.3859
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxDBDetail."debet">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 472.44125
          Top = 29.45671
          Width = 226.7718
          Height = 18.89765
          DataField = 'berjalan'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."berjalan"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 377.953
          Top = 29.45671
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Mutasi :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 377.953
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'T O T A L :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 472.44125
          Top = 52.91342
          Width = 226.7718
          Height = 18.89765
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."akhir"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 377.953
          Top = 52.91342
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Saldo Akhir :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object kmtMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_rek_gl'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 20
        Size = 20
      end
      item
        Name = 'id_parent'
        DataType = ftString
        Precision = 20
        Size = 20
      end
      item
        Name = 'descriptions'
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'isdetail'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 1
        Size = 1
      end
      item
        Name = 'awal'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'berjalan'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'akhir'
        DataType = ftString
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
    Left = 390
    Top = 13
    object kmtMasterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
    end
    object kmtMasterid_parent: TStringField
      FieldName = 'id_parent'
    end
    object kmtMasterdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object kmtMasterisdetail: TStringField
      FieldName = 'isdetail'
      Size = 1
    end
    object kmtMasterawal: TStringField
      FieldName = 'awal'
      Size = 50
    end
    object kmtMasterberjalan: TStringField
      FieldName = 'berjalan'
      Size = 50
    end
    object kmtMasterakhir: TStringField
      FieldName = 'akhir'
      Size = 50
    end
    object kmtMasterdt_print: TStringField
      FieldName = 'dt_print'
      Size = 50
    end
    object kmtMasteruser_print: TStringField
      FieldName = 'user_print'
      Size = 50
    end
    object kmtMasternama_menu: TStringField
      FieldName = 'nama_menu'
      Size = 100
    end
    object kmtMasterperiode: TStringField
      FieldName = 'periode'
      Size = 100
    end
  end
  object kmtDetail: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'no_payment'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'no_bukti'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'no_nota'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_cc_project'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'descriptions'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'debet'
        DataType = ftFloat
      end
      item
        Name = 'kredit'
        DataType = ftFloat
      end
      item
        Name = 'dt_memorial'
        DataType = ftString
        Size = 20
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
    Left = 391
    Top = 44
    object kmtDetailno_payment: TStringField
      FieldName = 'no_payment'
      Size = 50
    end
    object kmtDetailno_bukti: TStringField
      FieldName = 'no_bukti'
      Size = 50
    end
    object kmtDetailno_nota: TStringField
      FieldName = 'no_nota'
      Size = 50
    end
    object kmtDetailid_cc_project: TStringField
      FieldName = 'id_cc_project'
      Size = 10
    end
    object kmtDetaildescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object kmtDetaildebet: TFloatField
      FieldName = 'debet'
    end
    object kmtDetailkredit: TFloatField
      FieldName = 'kredit'
    end
    object kmtDetaildt_memorial: TStringField
      FieldName = 'dt_memorial'
    end
  end
  object frxDBdETAIL: TfrxDBDataset
    UserName = 'frxDBDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_payment=no_payment'
      'no_bukti=no_bukti'
      'no_nota=no_nota'
      'dt_memorial=dt_memorial'
      'descriptions=descriptions'
      'debet=debet'
      'kredit=kredit')
    DataSet = kmtDetail
    Left = 451
    Top = 48
  end
  object Detail: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.no_payment, a.no_bukti, a.no_nota, a.id_cc_project, a.d' +
        't_memorial, descriptions, a.debet, a.kredit '
      'from accfin.memorial a'
      'where a.id_rek_gl=:pid_rek_gl'
      
        'and a.dt_memorial between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') and ' +
        'to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 min'#39
      'order by a.dt_memorial, a.no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_rek_gl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    Left = 303
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_rek_gl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    object Detailno_payment: TStringField
      FieldName = 'no_payment'
      Size = 50
    end
    object Detailno_bukti: TStringField
      FieldName = 'no_bukti'
      Size = 50
    end
    object Detailno_nota: TStringField
      FieldName = 'no_nota'
      Size = 50
    end
    object Detaildt_memorial: TDateTimeField
      FieldName = 'dt_memorial'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object Detaildescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object Detaildebet: TFloatField
      FieldName = 'debet'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Detailkredit: TFloatField
      FieldName = 'kredit'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Detailid_cc_project: TStringField
      FieldName = 'id_cc_project'
      Size = 10
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 322
    Top = 52
  end
  object ATBos: TAdvToolBarOfficeStyler
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
    Left = 834
    Top = 50
  end
  object SR: TcxStyleRepository
    Left = 792
    Top = 52
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
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 758
    Top = 50
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
    Left = 728
    Top = 54
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 666
    Top = 10
  end
  object qryAktiva: TZReadOnlyQuery
    Connection = DM.conn
    OnCalcFields = qryAktivaCalcFields
    SQL.Strings = (
      'select a.id_rek_gl, a.descriptions,'
      
        '(select coalesce(sum(b.debet-b.kredit),0)  from accfin.memorial ' +
        'b where b.id_rek_gl=a.id_rek_gl and b.dt_memorial<to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39')) as awal,'
      
        '(select coalesce(sum(b.debet),0)  from accfin.memorial b where b' +
        '.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:p' +
        'tgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  inte' +
        'rval '#39'23 hours 59 min'#39') as debet,'
      
        '(select coalesce(sum(b.kredit),0)  from accfin.memorial b where ' +
        'b.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  int' +
        'erval '#39'23 hours 59 min'#39') as kredit'
      'from master.mrek_gl a'
      'where a.isdetail='#39'1'#39' and a.id_parent like '#39'1%'#39
      'order by a.id_rek_gl')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    Left = 554
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    object qryAktivaid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
    end
    object qryAktivadescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object qryAktivaawal: TFloatField
      FieldName = 'awal'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryAktivadebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryAktivakredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryAktivaakhir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'akhir'
      DisplayFormat = '0.0,0'
      Calculated = True
    end
  end
  object dsqryAktiva: TDataSource
    DataSet = qryAktiva
    Left = 569
    Top = 65
  end
  object qryPasiva: TZReadOnlyQuery
    Connection = DM.conn
    OnCalcFields = qryPasivaCalcFields
    SQL.Strings = (
      'select a.id_rek_gl, a.descriptions,'
      
        '(select coalesce(sum(b.debet-b.kredit),0)  from accfin.memorial ' +
        'b where b.id_rek_gl=a.id_rek_gl and b.dt_memorial<to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39')) as awal,'
      
        '(select coalesce(sum(b.debet),0)  from accfin.memorial b where b' +
        '.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:p' +
        'tgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  inte' +
        'rval '#39'23 hours 59 min'#39') as debet,'
      
        '(select coalesce(sum(b.kredit),0)  from accfin.memorial b where ' +
        'b.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  int' +
        'erval '#39'23 hours 59 min'#39') as kredit'
      'from master.mrek_gl a'
      'where a.isdetail='#39'1'#39' and a.id_parent like '#39'2%'#39
      'order by a.id_rek_gl')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    Left = 607
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    object qryPasivaid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
    end
    object qryPasivadescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object qryPasivaawal: TFloatField
      FieldName = 'awal'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryPasivadebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryPasivakredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryPasivaakhir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'akhir'
      DisplayFormat = '0.0,0'
      Calculated = True
    end
  end
  object dsqryPasiva: TDataSource
    DataSet = qryPasiva
    Left = 621
    Top = 65
  end
  object qryRL: TZReadOnlyQuery
    Connection = DM.conn
    OnCalcFields = qryRLCalcFields
    SQL.Strings = (
      'select a.id_rek_gl, a.descriptions,'
      
        '(select coalesce(sum(b.debet-b.kredit),0)  from accfin.memorial ' +
        'b where b.id_rek_gl=a.id_rek_gl and b.dt_memorial<to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39')) as awal,'
      
        '(select coalesce(sum(b.debet),0)  from accfin.memorial b where b' +
        '.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:p' +
        'tgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  inte' +
        'rval '#39'23 hours 59 min'#39') as debet,'
      
        '(select coalesce(sum(b.kredit),0)  from accfin.memorial b where ' +
        'b.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  int' +
        'erval '#39'23 hours 59 min'#39') as kredit'
      'from master.mrek_gl a'
      'where a.isdetail='#39'1'#39' and a.id_parent>'#39'4'#39
      'order by a.id_rek_gl')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    Left = 648
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    object qryRLid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
    end
    object qryRLdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object qryRLawal: TFloatField
      FieldName = 'awal'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryRLdebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryRLkredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryRLakhir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'akhir'
      DisplayFormat = '0.0,0'
      Calculated = True
    end
  end
  object dsRL: TDataSource
    DataSet = qryRL
    Left = 664
    Top = 65
  end
  object qrySemua: TZReadOnlyQuery
    Connection = DM.conn
    OnCalcFields = qrySemuaCalcFields
    SQL.Strings = (
      'select a.id_rek_gl, a.descriptions,'
      
        '(select coalesce(sum(b.debet-b.kredit),0)  from accfin.memorial ' +
        'b where b.id_rek_gl=a.id_rek_gl and b.dt_memorial<to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39')) as awal,'
      
        '(select coalesce(sum(b.debet),0)  from accfin.memorial b where b' +
        '.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:p' +
        'tgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  inte' +
        'rval '#39'23 hours 59 min'#39') as debet,'
      
        '(select coalesce(sum(b.kredit),0)  from accfin.memorial b where ' +
        'b.id_rek_gl=a.id_rek_gl and b.dt_memorial between to_timestamp(:' +
        'ptgl0,'#39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  int' +
        'erval '#39'23 hours 59 min'#39') as kredit'
      'from master.mrek_gl a'
      'where a.isdetail='#39'1'#39' '
      'order by a.id_rek_gl')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    Left = 688
    Top = 43
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/05/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/05/2009'
      end>
    object qrySemuaid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
    end
    object qrySemuadescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object qrySemuaawal: TFloatField
      FieldName = 'awal'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySemuadebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySemuakredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySemuaakhir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'akhir'
      DisplayFormat = '0.0,0'
      Calculated = True
    end
  end
  object dsqrySemua: TDataSource
    DataSet = qrySemua
    Left = 705
    Top = 61
  end
end

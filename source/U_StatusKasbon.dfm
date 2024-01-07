object StatusKasbonFrm: TStatusKasbonFrm
  Left = 314
  Top = 37
  Width = 1105
  Height = 639
  Caption = 'Rekap Status Kasbon'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 1089
    Height = 40
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    object lblHeader: TLabel
      Left = 14
      Top = 5
      Width = 252
      Height = 29
      Caption = 'Rekap Status Kasbon'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pgcMaster: TcxPageControl
    Left = 0
    Top = 40
    Width = 1089
    Height = 520
    ActivePage = tabStatus
    Align = alClient
    Style = 8
    TabOrder = 2
    ClientRectBottom = 520
    ClientRectRight = 1089
    ClientRectTop = 24
    object tabStatus: TcxTabSheet
      Caption = 'Status Kasbon'
      ImageIndex = 0
      object pnlMain: TSCPanel
        Left = 0
        Top = 83
        Width = 1089
        Height = 413
        Align = alClient
        Bevel = sccbColor
        BevelEdges = [scbeBottom]
        BevelWidth = 4
        TabOrder = 0
        Transparent = True
        object grdMaster: TcxGrid
          Left = 0
          Top = 0
          Width = 1089
          Height = 408
          Align = alClient
          TabOrder = 0
          object grdDBTV_CA: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCA
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.0,0'
                Kind = skSum
                FieldName = 'ca_total_payment'
                Column = grdDBTV_CAca_total_payment
              end
              item
                Format = '0.0,0'
                Kind = skSum
                FieldName = 'total_settlement'
                Column = grdDBTV_CAtotal_settlement
              end
              item
                Format = '0.0,0'
                Kind = skSum
                FieldName = 'total_diff'
                Column = grdDBTV_CAtotal_diff
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 35
            Styles.ContentEven = EvenRow
            Styles.ContentOdd = OddRow
            Styles.Header = Header
            object grdDBTV_CAno_kasbon: TcxGridDBColumn
              Caption = 'No. Kasbon'
              DataBinding.FieldName = 'no_kasbon'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 70
            end
            object grdDBTV_CAnk: TcxGridDBColumn
              Caption = 'No. Pegawai'
              DataBinding.FieldName = 'nk'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 96
            end
            object grdDBTV_CAfull_name: TcxGridDBColumn
              Caption = 'Nama Pegawai'
              DataBinding.FieldName = 'full_name'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 128
            end
            object grdDBTV_CAdt_purposed: TcxGridDBColumn
              Caption = 'Tgl. Pengajuan'
              DataBinding.FieldName = 'dt_purposed'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 108
            end
            object grdDBTV_CAkasbon_untuk: TcxGridDBColumn
              Caption = 'Keterangan Kasbon'
              DataBinding.FieldName = 'kasbon_untuk'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 223
            end
            object grdDBTV_CAkasbon_proposed: TcxGridDBColumn
              Caption = 'Jumlah Yg Diajukan'
              DataBinding.FieldName = 'kasbon_proposed'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 115
            end
            object grdDBTV_CAca_total_payment: TcxGridDBColumn
              Caption = 'Realisasi Kasbon'
              DataBinding.FieldName = 'ca_total_payment'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 116
            end
            object grdDBTV_CAtotal_settlement: TcxGridDBColumn
              Caption = 'Total Angsuran'
              DataBinding.FieldName = 'total_settlement'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 115
            end
            object grdDBTV_CAtotal_diff: TcxGridDBColumn
              Caption = 'Saldo Kasbon'
              DataBinding.FieldName = 'total_diff'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 116
            end
          end
          object grdLvlMaster: TcxGridLevel
            GridView = grdDBTV_CA
          end
        end
      end
      object SCPanel3: TSCPanel
        Left = 0
        Top = 0
        Width = 1089
        Height = 83
        Align = alTop
        Bevel = sccbColor
        BevelWidth = 3
        TabOrder = 1
        Transparent = True
        object cxGroupBox3: TcxGroupBox
          Left = 4
          Top = 4
          Align = alClient
          Caption = 'Filter Kriteria'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.Shadow = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          Height = 75
          Width = 1081
          object Label1: TLabel
            Left = 12
            Top = 22
            Width = 72
            Height = 13
            Caption = 'Tgl. Pengajuan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label3: TLabel
            Left = 215
            Top = 22
            Width = 10
            Height = 13
            Caption = 'to'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 12
            Top = 46
            Width = 76
            Height = 13
            Caption = 'Status Kasbon :'
            FocusControl = cboCAStatus
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object SCPanel4: TSCPanel
            Left = 355
            Top = 15
            Width = 95
            Height = 57
            TabOrder = 0
            Transparent = True
            object btnFilter: TSCButton
              Left = 10
              Top = 9
              Width = 72
              Height = 25
              Caption = 'Filter'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Images = DM.ImageList1
              ImageIndex = 19
              ParentFont = False
              RoundColor = 16640730
              RoundWithParentColor = False
              Style = scbsCorel
              TabOrder = 0
              OnClick = btnFilterClick
            end
          end
          object cboCAStatus: TcxComboBox
            Left = 95
            Top = 42
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Semua'
              'Kasbon Belum Di-Angsur'
              'Kasbon Belum Lunas'
              'Saldo Kasbon Belum Lunas')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 249
          end
          object edtDateFrom: TcxDateEdit
            Left = 95
            Top = 19
            ParentFont = False
            Properties.ClearKey = 46
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 114
          end
          object edtDateTo: TcxDateEdit
            Left = 230
            Top = 19
            ParentFont = False
            Properties.ClearKey = 46
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 114
          end
        end
      end
    end
    object tabPayment: TcxTabSheet
      Caption = 'Status Realisasi Kasbon'
      ImageIndex = 1
      object SCPanel1: TSCPanel
        Left = 0
        Top = 0
        Width = 1089
        Height = 83
        Align = alTop
        Bevel = sccbColor
        BevelWidth = 3
        TabOrder = 0
        Transparent = True
        object cxGroupBox1: TcxGroupBox
          Left = 4
          Top = 4
          Align = alClient
          Caption = 'Filter Criteria'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.Shadow = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          Height = 75
          Width = 1081
          object Label4: TLabel
            Left = 12
            Top = 22
            Width = 79
            Height = 13
            Caption = 'Tgl. Pengajuan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 215
            Top = 22
            Width = 10
            Height = 13
            Caption = 'to'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 12
            Top = 46
            Width = 82
            Height = 13
            Caption = 'Status Realisasi :'
            FocusControl = cboCAPayment
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object SCPanel5: TSCPanel
            Left = 355
            Top = 15
            Width = 95
            Height = 57
            TabOrder = 0
            Transparent = True
            object btnFilter2: TSCButton
              Left = 10
              Top = 9
              Width = 72
              Height = 25
              Caption = 'Filter'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Images = DM.ImageList1
              ImageIndex = 19
              ParentFont = False
              RoundColor = 16640730
              RoundWithParentColor = False
              Style = scbsCorel
              TabOrder = 0
              OnClick = btnFilter2Click
            end
          end
          object cboCAPayment: TcxComboBox
            Left = 95
            Top = 43
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Semua'
              'Kasbon Belum Realisasi  '
              'Kasbon Belum Realisasi Penuh'
              'Saldo Kasbon Belum Realisasi')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 249
          end
          object edtDateFrom1: TcxDateEdit
            Left = 95
            Top = 19
            ParentFont = False
            Properties.ClearKey = 46
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 114
          end
          object edtDateTo1: TcxDateEdit
            Left = 230
            Top = 19
            ParentFont = False
            Properties.ClearKey = 46
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 114
          end
        end
      end
      object RzSplitter2: TRzSplitter
        Left = 0
        Top = 83
        Width = 1089
        Height = 413
        Orientation = orVertical
        Position = 209
        Percent = 51
        SplitterStyle = ssBump
        SplitterWidth = 6
        Align = alClient
        TabOrder = 1
        BarSize = (
          0
          209
          1089
          215)
        UpperLeftControls = (
          grdSUM)
        LowerRightControls = (
          grdCashBook
          SCPanel2)
        object grdSUM: TcxGrid
          Left = 0
          Top = 0
          Width = 1089
          Height = 209
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object grddbtvSUM: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsqRealisasi
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'jumlah'
                Column = grddbtvSUMjumlah
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'ca_total_payment'
                Column = grddbtvSUMca_total_payment
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'total_diff'
                Column = grddbtvSUMtotal_diff
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = EvenRow
            Styles.ContentOdd = OddRow
            Styles.Header = Header
            Styles.Indicator = cxStyle4
            object grddbtvSUMno_kasbon: TcxGridDBColumn
              Caption = 'No. Kasbon'
              DataBinding.FieldName = 'no_kasbon'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 98
            end
            object grddbtvSUMdt_purposed: TcxGridDBColumn
              Caption = 'Tgl. Pengajuan'
              DataBinding.FieldName = 'dt_purposed'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 103
            end
            object grddbtvSUMfull_name: TcxGridDBColumn
              Caption = 'Nama Pegawai'
              DataBinding.FieldName = 'full_name'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 167
            end
            object grddbtvSUMkasbon_untuk: TcxGridDBColumn
              Caption = 'Keterangan Kasbon'
              DataBinding.FieldName = 'kasbon_untuk'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 243
            end
            object grddbtvSUMjumlah: TcxGridDBColumn
              Caption = 'Jumlah Yg Diajukan'
              DataBinding.FieldName = 'jumlah'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 131
            end
            object grddbtvSUMca_total_payment: TcxGridDBColumn
              Caption = 'Total Realisasi'
              DataBinding.FieldName = 'ca_total_payment'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 132
            end
            object grddbtvSUMtotal_diff: TcxGridDBColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'total_diff'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 131
            end
          end
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
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
            object cxGridDBColumn9: TcxGridDBColumn
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
            object cxGridDBColumn10: TcxGridDBColumn
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
            object cxGridDBColumn11: TcxGridDBColumn
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
            object cxGridDBColumn12: TcxGridDBColumn
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
          object grdSUMLevel1: TcxGridLevel
            GridView = grddbtvSUM
          end
        end
        object grdCashBook: TcxGrid
          Left = 0
          Top = 32
          Width = 1089
          Height = 167
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object grddbtvCashBook: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsqDRealisasi
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.0,0'
                Kind = skSum
                FieldName = 'dibayar'
                Column = grddbtvCashBookdibayar
              end
              item
                Format = '0.0,0'
                Kind = skSum
                FieldName = 'total'
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = EvenRow
            Styles.ContentOdd = OddRow
            Styles.Header = Header
            Styles.Indicator = cxStyle4
            object grddbtvCashBookpaid_from: TcxGridDBColumn
              Caption = 'Sumber Bukti Bayar'
              DataBinding.FieldName = 'paid_from'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 137
            end
            object grddbtvCashBookno_payment: TcxGridDBColumn
              Caption = 'No. Pembayaran'
              DataBinding.FieldName = 'no_payment'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 142
            end
            object grddbtvCashBookdt_payment: TcxGridDBColumn
              Caption = 'Tgl. Pembayaran'
              DataBinding.FieldName = 'dt_payment'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 123
            end
            object grddbtvCashBooknama_rekening: TcxGridDBColumn
              Caption = 'Nama Rekening'
              DataBinding.FieldName = 'nama_rekening'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 180
            end
            object grddbtvCashBookdibayar: TcxGridDBColumn
              Caption = 'Realisasi Pembayaran'
              DataBinding.FieldName = 'pembayaran_idr'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 145
            end
          end
          object grddbtvBrowse_PR_Project_Detail: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
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
          object grdCashBookLevel: TcxGridLevel
            GridView = grddbtvCashBook
          end
        end
        object SCPanel2: TSCPanel
          Left = 0
          Top = 0
          Width = 1089
          Height = 32
          Align = alTop
          Color = 16511984
          GradientMid = clGray
          ParentColor = False
          TabOrder = 1
          object Label2: TLabel
            Left = 13
            Top = 10
            Width = 76
            Height = 14
            Caption = 'Detail Relisasi'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Status Angsuran Kasbon'
      ImageIndex = 2
      object SCPanel7: TSCPanel
        Left = 0
        Top = 0
        Width = 1089
        Height = 83
        Align = alTop
        Bevel = sccbColor
        BevelWidth = 3
        TabOrder = 0
        Transparent = True
        object cxGroupBox2: TcxGroupBox
          Left = 4
          Top = 4
          Align = alClient
          Caption = 'Filter Criteria'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.Shadow = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          Height = 75
          Width = 1081
          object Label9: TLabel
            Left = 6
            Top = 22
            Width = 79
            Height = 13
            Caption = 'Tgl. Pengajuan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 215
            Top = 22
            Width = 10
            Height = 13
            Caption = 'to'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 6
            Top = 46
            Width = 87
            Height = 13
            Caption = 'Status Angsuran :'
            FocusControl = cboCASettlement
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object SCPanel8: TSCPanel
            Left = 355
            Top = 15
            Width = 95
            Height = 57
            TabOrder = 0
            Transparent = True
            object btnFilter3: TSCButton
              Left = 10
              Top = 9
              Width = 72
              Height = 25
              Caption = 'Filter'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Images = DM.ImageList1
              ImageIndex = 19
              ParentFont = False
              RoundColor = 16640730
              RoundWithParentColor = False
              Style = scbsCorel
              TabOrder = 0
              OnClick = btnFilter3Click
            end
          end
          object cboCASettlement: TcxComboBox
            Left = 95
            Top = 42
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Semua'
              'Belum Diangsur'
              'Belum Lunas'
              'Saldo Belum Lunas')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 249
          end
          object edtDateFrom2: TcxDateEdit
            Left = 95
            Top = 19
            ParentFont = False
            Properties.ClearKey = 46
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 114
          end
          object edtDateTo2: TcxDateEdit
            Left = 230
            Top = 19
            ParentFont = False
            Properties.ClearKey = 46
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 114
          end
        end
      end
      object RzSplitter1: TRzSplitter
        Left = 0
        Top = 83
        Width = 1089
        Height = 413
        Orientation = orVertical
        Position = 196
        Percent = 48
        SplitterStyle = ssBump
        SplitterWidth = 6
        Align = alClient
        TabOrder = 1
        BarSize = (
          0
          196
          1089
          202)
        UpperLeftControls = (
          grdANGSUR)
        LowerRightControls = (
          grdDetailANGSUR
          SCPanel6)
        object grdANGSUR: TcxGrid
          Left = 0
          Top = 0
          Width = 1089
          Height = 196
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object grdDBTV_ANGSUR: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsqAngsuran
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'ca_total_payment'
                Column = cxGridDBColumn5
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'total_settlement'
                Column = cxGridDBColumn6
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'total_diff'
                Column = cxGridDBColumn7
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = EvenRow
            Styles.ContentOdd = OddRow
            Styles.Header = Header
            Styles.Indicator = cxStyle4
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'No. Kasbon'
              DataBinding.FieldName = 'no_kasbon'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Tgl. Pengajuan'
              DataBinding.FieldName = 'dt_purposed'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 104
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Nama Pegawai'
              DataBinding.FieldName = 'full_name'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 170
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Keterangan Kasbon'
              DataBinding.FieldName = 'kasbon_untuk'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 205
            end
            object grdDBTV_ANGSURkasbon_proposed: TcxGridDBColumn
              Caption = 'Jml. Pengajuan'
              DataBinding.FieldName = 'kasbon_proposed'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 107
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Total Realisasi'
              DataBinding.FieldName = 'ca_total_payment'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Total Angsuran'
              DataBinding.FieldName = 'total_settlement'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'total_diff'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
            end
          end
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
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
            object cxGridDBColumn8: TcxGridDBColumn
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
            object cxGridDBColumn13: TcxGridDBColumn
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
            object cxGridDBColumn14: TcxGridDBColumn
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
            object cxGridDBColumn15: TcxGridDBColumn
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
          object grdLvlANGSUR: TcxGridLevel
            GridView = grdDBTV_ANGSUR
          end
        end
        object grdDetailANGSUR: TcxGrid
          Left = 0
          Top = 32
          Width = 1089
          Height = 180
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object grdDBTV_DetailANGSUR: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsqDetailAngsuran
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.0,0'
                Kind = skSum
                FieldName = 'jumlah'
                Column = cxGridDBColumn22
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = EvenRow
            Styles.ContentOdd = OddRow
            Styles.Header = Header
            Styles.Indicator = cxStyle4
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = 'No. Bukti Angsuran'
              DataBinding.FieldName = 'no_settlement'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 121
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = 'Tgl. Pembayaran'
              DataBinding.FieldName = 'dt_settlement'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 160
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = 'Nama Rekening'
              DataBinding.FieldName = 'diskripsi'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 314
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = 'Jumlah Angsuran'
              DataBinding.FieldName = 'jumlah'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 146
            end
          end
          object cxGridDBTableView5: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
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
            object cxGridDBColumn23: TcxGridDBColumn
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
            object cxGridDBColumn24: TcxGridDBColumn
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
            object cxGridDBColumn25: TcxGridDBColumn
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
            object cxGridDBColumn26: TcxGridDBColumn
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
          object grdLvlDetailANGSUR: TcxGridLevel
            GridView = grdDBTV_DetailANGSUR
          end
        end
        object SCPanel6: TSCPanel
          Left = 0
          Top = 0
          Width = 1089
          Height = 32
          Align = alTop
          Color = 16511984
          GradientMid = clGray
          ParentColor = False
          TabOrder = 1
          object Label8: TLabel
            Left = 13
            Top = 10
            Width = 87
            Height = 14
            Caption = 'Detail Angsuran'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  object pnlBottom: TAdvPanel
    Left = 0
    Top = 560
    Width = 1089
    Height = 40
    Align = alBottom
    Color = 13616833
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.3.0.7'
    BorderColor = 16765615
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    ColorTo = 12958644
    ColorMirror = 12958644
    ColorMirrorTo = 15527141
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 40
    object lblRowCount: TLabel
      Left = 1105
      Top = 14
      Width = 101
      Height = 13
      Caption = 'No data to display'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnClose: TSCButton
      Left = 20
      Top = 8
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
      Left = 107
      Top = 8
      Width = 120
      Height = 24
      DataSource = dsCA
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BorderOuter = fsNone
      Color = 14869218
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      TabStop = True
    end
    object btnRefresh: TSCButton
      Left = 231
      Top = 8
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
      Left = 307
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 3
      OnClick = btnPrintClick
    end
  end
  object SR: TcxStyleRepository
    Left = 662
    Top = 7
    PixelsPerInch = 96
    object Header: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7039851
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object OddRow: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15587527
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object EvenRow: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
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
    object UrgentStyle: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object DoneStyle: TcxStyle
      AssignedValues = [svColor]
      Color = clLime
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Styles.ContentEven = EvenRow
      Styles.Selection = OddRow
      Styles.Header = Header
      Styles.Indicator = cxStyle4
      BuiltIn = True
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Styles.ContentEven = EvenRow
      Styles.Selection = OddRow
      Styles.Indicator = cxStyle4
      Styles.BandHeader = Header
      BuiltIn = True
    end
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
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 495
    Top = 37
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 433
    Top = 6
  end
  object frxODTExport1: TfrxODTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 465
    Top = 6
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 465
    Top = 37
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 433
    Top = 37
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Separator = ';'
    OEMCodepage = False
    Left = 495
    Top = 6
  end
  object qryCA: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select  a.*'
      'FROM accfin.v_ca_status a')
    Params = <>
    MasterFields = 'kd_pr'
    Left = 536
    Top = 8
    object qryCAnk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qryCAfull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
    object qryCAkasbon_untuk: TStringField
      FieldName = 'kasbon_untuk'
      Size = 255
    end
    object qryCAno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qryCAdt_purposed: TDateTimeField
      FieldName = 'dt_purposed'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qryCAkasbon_proposed: TFloatField
      FieldName = 'kasbon_proposed'
      DisplayFormat = '0.0,0'
    end
    object qryCAca_total_payment: TFloatField
      FieldName = 'ca_total_payment'
      DisplayFormat = '0.0,0'
    end
    object qryCAtotal_settlement: TFloatField
      FieldName = 'total_settlement'
      DisplayFormat = '0.0,0'
    end
    object qryCAtotal_diff: TFloatField
      FieldName = 'total_diff'
      DisplayFormat = '0.0,0'
    end
  end
  object dsCA: TDataSource
    DataSet = qryCA
    Left = 570
    Top = 7
  end
  object PopCA: TPopupMenu
    Images = DM.ImageList1
    Left = 600
    Top = 7
    object Summary1: TMenuItem
      Caption = 'Summary'
      ImageIndex = 15
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
      ImageIndex = 14
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
    Left = 516
    Top = 83
  end
  object kmtInfo: TkbmMemTable
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
    Left = 491
    Top = 82
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
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBKBStatus'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nk=nk'
      'full_name=full_name'
      'kasbon_untuk=kasbon_untuk'
      'no_kasbon=no_kasbon'
      'dt_purposed=dt_purposed'
      'kasbon_proposed=kasbon_proposed'
      'ca_total_payment=ca_total_payment'
      'total_settlement=total_settlement'
      'total_diff=total_diff')
    DataSet = qryPrintKBStatus
    Left = 224
    Top = 253
  end
  object frxCAStatus: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39216.970913981500000000
    ReportOptions.LastChange = 40329.648919097200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 255
    Top = 289
    Datasets = <
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBInfo'
      end
      item
        DataSet = frxDBMaster
        DataSetName = 'frxDBKBStatus'
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
        Height = 124.724490000000000000
        Top = 309.921460000000000000
        Width = 699.213050000000000000
        object Memo1: TfrxMemoView
          Left = 491.338900000000000000
          Top = 105.826840000000000000
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
          Top = 105.826840000000000000
          Width = 264.566953540000000000
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
          Left = 264.567100000000000000
          Top = 105.826840000000000000
          Width = 226.771800000000000000
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
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 18.897650000000000000
          Width = 226.771800000000000000
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
        object MemoPreparedBy: TfrxMemoView
          Width = 226.771800000000000000
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
            'DISIAPKAN OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 75.590600000000000000
          Width = 226.771800000000000000
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
        object MemoPreparedName: TfrxMemoView
          Top = 60.472480000000000000
          Width = 226.771800000000000000
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
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 226.771800000000000000
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
          Left = 226.771800000000000000
          Top = 75.590600000000000000
          Width = 226.771800000000000000
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
          Left = 226.771800000000000000
          Width = 226.771690160000000000
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
        object MemoApprovedBy: TfrxMemoView
          Left = 453.543600000000000000
          Width = 245.669450000000000000
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
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 245.669450000000000000
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
          Left = 453.543600000000000000
          Top = 75.590600000000000000
          Width = 245.669450000000000000
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
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 699.213050000000000000
        DataSet = frxDBMaster
        DataSetName = 'frxDBKBStatus'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 26.456710000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
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
          Left = 249.448980000000000000
          Width = 147.401608980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'kasbon_untuk'
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBKBStatus."kasbon_untuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 102.047310000000000000
          Width = 68.031478980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBKBStatus."dt_purposed"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 26.456710000000000000
          Width = 75.590538980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'no_kasbon'
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBKBStatus."no_kasbon"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 396.850650000000000000
          Width = 75.590538980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBKBStatus."kasbon_proposed"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 170.078850000000000000
          Width = 79.370068980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'full_name'
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBKBStatus."full_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 472.441250000000000000
          Width = 75.590538980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBKBStatus."ca_total_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 548.031850000000000000
          Width = 75.590538980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'total_settlement'
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBKBStatus."total_settlement"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 623.622450000000000000
          Width = 75.590538980000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'total_diff'
          DataSet = frxDBMaster
          DataSetName = 'frxDBKBStatus'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBKBStatus."total_diff"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 45.354360000000000000
        Top = 158.740260000000000000
        Width = 699.213050000000000000
        ReprintOnNewPage = True
        object Memo5: TfrxMemoView
          Width = 26.456685590000000000
          Height = 45.354360000000000000
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
          Left = 249.448980000000000000
          Width = 147.401645590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keperluan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 26.456710000000000000
          Width = 75.590575590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Kasbon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 102.047310000000000000
          Width = 68.031515590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl. Pengajuan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 170.078850000000000000
          Width = 79.370105590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Pegawai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 396.850650000000000000
          Width = 75.590575590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Yg Diajukan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 472.441250000000000000
          Width = 75.590575590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Yg Dibayarkan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Width = 75.590575590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Angsuran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 623.622450000000000000
          Width = 75.590575590000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Saldo Kasbon')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 80.929190000000000000
        Top = 18.897650000000000000
        Width = 699.213050000000000000
        object Memo51: TfrxMemoView
          Top = 41.574830000000000000
          Width = 608.504330000000000000
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
          Width = 608.504330000000000000
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
          Width = 302.362400000000000000
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
          Width = 302.362400000000000000
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
          Width = 241.889920000000000000
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
          Width = 302.362400000000000000
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
    end
  end
  object qryPrintKBStatus: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select  a.*'
      'FROM accfin.v_ca_status a')
    Params = <>
    MasterFields = 'kd_pr'
    Left = 223
    Top = 289
    object qryPrintKBStatusnk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qryPrintKBStatusfull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
    object qryPrintKBStatuskasbon_untuk: TStringField
      FieldName = 'kasbon_untuk'
      Size = 255
    end
    object qryPrintKBStatusno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qryPrintKBStatusdt_purposed: TDateTimeField
      FieldName = 'dt_purposed'
    end
    object qryPrintKBStatuskasbon_proposed: TFloatField
      FieldName = 'kasbon_proposed'
    end
    object qryPrintKBStatusca_total_payment: TFloatField
      FieldName = 'ca_total_payment'
    end
    object qryPrintKBStatustotal_settlement: TFloatField
      FieldName = 'total_settlement'
    end
    object qryPrintKBStatustotal_diff: TFloatField
      FieldName = 'total_diff'
    end
  end
  object LookEmployee: TwwLookupDialog
    Selected.Strings = (
      'full_name'#9'35'#9'Full Name'#9'F'
      'nk'#9'15'#9'ID'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DM.L_Pegawai
    Caption = 'Lookup Employee'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 632
    Top = 7
  end
  object frxRepCAPayment: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38721.620727534700000000
    ReportOptions.LastChange = 40325.010651574100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 794
    Top = 114
    Datasets = <
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBInfo'
      end
      item
        DataSet = frxDBPayment
        DataSetName = 'frxDBPayment'
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
      BottomMargin = 10.000000000000000000
      object Band5: TfrxGroupHeader
        Height = 68.031540000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBPayment."no_kasbon">'
        object Memo8: TfrxMemoView
          Left = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'no_kasbon'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBPayment."no_kasbon"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 196.535560000000000000
          Top = 22.677180000000000000
          Width = 521.575140000000000000
          Height = 22.677180000000000000
          DataField = 'kasbon_untuk'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxDBPayment."kasbon_untuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 491.338900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            'Jumlah Kasbon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 185.196970000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBPayment."full_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            ' No :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Keterangan :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 117.165430000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            'Pegawai :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 226.771800000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Bukti Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 336.378170000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl. Pembayaran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 117.165430000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dibayar Dengan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 612.283860000000000000
          Top = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dibayar (IDR)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 600.945270000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataField = 'dt_purposed'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxDBPayment."dt_purposed"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Tgl :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 45.354360000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 445.984540000000000000
          Top = 45.354360000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Rekening')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Band6: TfrxMasterData
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'Band6OnAfterPrint'
        OnBeforePrint = 'Band6OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDBPayment
        DataSetName = 'frxDBPayment'
        RowCount = 0
        object Memo54: TfrxMemoView
          Left = 226.771800000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'no_payment'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Memo.UTF8 = (
            '[frxDBPayment."no_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 336.378170000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'dt_payment'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPayment."dt_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'paid_from'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPayment."paid_from"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826778980000000000
          Height = 22.677180000000000000
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."pembayaran_idr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 445.984540000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Memo.UTF8 = (
            '[frxDBPayment."dt_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 117.165430000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 41.574830000000000000
          Width = 226.771800000000000000
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
          Top = 83.149660000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataField = 'prepared_name'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
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
          Top = 22.677180000000000000
          Width = 226.771800000000000000
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
            'DISIAPKAN OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 226.771800000000000000
          Top = 41.574830000000000000
          Width = 245.669450000000000000
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
          Left = 226.771800000000000000
          Top = 98.267780000000000000
          Width = 245.669450000000000000
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
          Left = 226.771800000000000000
          Top = 22.677180000000000000
          Width = 245.669450000000000000
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
          Left = 472.441250000000000000
          Top = 41.574830000000000000
          Width = 245.669450000000000000
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
          Left = 472.441250000000000000
          Top = 98.267780000000000000
          Width = 245.669450000000000000
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
          Top = 98.267780000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TGL : [frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 472.441250000000000000
          Top = 22.677180000000000000
          Width = 245.669450000000000000
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
      end
      object ReportTitle1: TfrxReportTitle
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo51: TfrxMemoView
          Top = 75.590600000000000000
          Width = 699.213050000000000000
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
        object Memo1: TfrxMemoView
          Top = 94.488250000000000000
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
        object Memo4: TfrxMemoView
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
        object Memo5: TfrxMemoView
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
        object Memo14: TfrxMemoView
          Top = 34.015770000000000000
          Width = 699.213050000000000000
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
        object Memo39: TfrxMemoView
          Top = 52.913420000000000000
          Width = 718.110700000000000000
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
        object Memo42: TfrxMemoView
          Top = 113.385900000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'filter'
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
            '[frxDBInfo."filter"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
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
        object Memo16: TfrxMemoView
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
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
        object Memo18: TfrxMemoView
          Left = 226.771800000000000000
          Width = 226.771800000000000000
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
      object GroupFooter1: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          Left = 608.504330000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'total_diff'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."total_diff"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 540.472790000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            'Sisa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 600.945270000000000000
          Top = 26.456710000000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 540.472790000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            'Dibayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          DataField = 'ca_total_payment'
          DataSet = frxDBPayment
          DataSetName = 'frxDBPayment'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."ca_total_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 600.945270000000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Top = 26.456710000000000000
          Width = 540.472790000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Width = 540.472790000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBPayment: TfrxDBDataset
    UserName = 'frxDBPayment'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nk=nk'
      'full_name=full_name'
      'kasbon_untuk=kasbon_untuk'
      'no_kasbon=no_kasbon'
      'dt_purposed=dt_purposed'
      'id_curr=id_curr'
      'kurs=kurs'
      'jumlah=jumlah'
      'ca_total_payment=ca_total_payment'
      'total_diff=total_diff'
      'no_payment=no_payment'
      'dt_payment=dt_payment'
      'pembayaran=pembayaran'
      'pembayaran_idr=pembayaran_idr'
      'paid_from=paid_from'
      'nama_rekening=nama_rekening')
    DataSet = qryPrintPayment
    Left = 742
    Top = 113
  end
  object qryPrintPayment: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'SELECT ca.*, pc.paid_from, pc.no_payment, pc.dt_payment, pc.nama' +
        '_rekening,  pc.pembayaran, pc.pembayaran_idr'
      'FROM accfin.v_ca_paid_status ca'
      'LEFT JOIN accfin.vpembayaran_ca pc ON pc.no_reff=ca.no_kasbon'
      
        'WHERE ca.dt_purposed between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') a' +
        'nd to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 mi' +
        'n'#39
      'ORDER BY ca.no_kasbon'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2012'
      end>
    Left = 768
    Top = 113
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2012'
      end>
    object qryPrintPaymentnk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qryPrintPaymentfull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
    object qryPrintPaymentkasbon_untuk: TStringField
      FieldName = 'kasbon_untuk'
      Size = 255
    end
    object qryPrintPaymentno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qryPrintPaymentdt_purposed: TDateTimeField
      FieldName = 'dt_purposed'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qryPrintPaymentid_curr: TStringField
      FieldName = 'id_curr'
      Size = 3
    end
    object qryPrintPaymentkurs: TFloatField
      FieldName = 'kurs'
      DisplayFormat = '0.0,0'
    end
    object qryPrintPaymentjumlah: TFloatField
      FieldName = 'jumlah'
      DisplayFormat = '0.0,0'
    end
    object qryPrintPaymentca_total_payment: TFloatField
      FieldName = 'ca_total_payment'
      DisplayFormat = '0.0,0'
    end
    object qryPrintPaymenttotal_diff: TFloatField
      FieldName = 'total_diff'
      DisplayFormat = '0.0,0'
    end
    object qryPrintPaymentno_payment: TStringField
      FieldName = 'no_payment'
    end
    object qryPrintPaymentdt_payment: TDateTimeField
      FieldName = 'dt_payment'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qryPrintPaymentpembayaran: TFloatField
      FieldName = 'pembayaran'
    end
    object qryPrintPaymentpembayaran_idr: TFloatField
      FieldName = 'pembayaran_idr'
    end
    object qryPrintPaymentpaid_from: TStringField
      FieldName = 'paid_from'
      Size = 255
    end
    object qryPrintPaymentnama_rekening: TStringField
      FieldName = 'nama_rekening'
      Size = 255
    end
  end
  object dsqDRealisasi: TDataSource
    DataSet = qDRealisasi
    Left = 751
    Top = 42
  end
  object qDRealisasi: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * '
      'from accfin.vpembayaran_ca'
      'where no_reff=:no_kasbon'
      'order by no_payment')
    Params = <
      item
        DataType = ftString
        Name = 'no_kasbon'
        ParamType = ptUnknown
        Value = 'CA-1301-00001'
      end>
    DataSource = dsqRealisasi
    MasterFields = 'no_kasbon'
    LinkedFields = 'no_reff'
    Left = 752
    Top = 13
    ParamData = <
      item
        DataType = ftString
        Name = 'no_kasbon'
        ParamType = ptUnknown
        Value = 'CA-1301-00001'
      end>
    object qDRealisasino_payment: TStringField
      FieldName = 'no_payment'
    end
    object qDRealisasino_reff: TStringField
      FieldName = 'no_reff'
      Size = 32
    end
    object qDRealisasidt_payment: TDateTimeField
      FieldName = 'dt_payment'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qDRealisasikurs: TFloatField
      FieldName = 'kurs'
      DisplayFormat = '0.0,0'
    end
    object qDRealisasiid_curr: TStringField
      FieldName = 'id_curr'
      ReadOnly = True
      Size = 3
    end
    object qDRealisasiid_payment: TLargeintField
      FieldName = 'id_payment'
    end
    object qDRealisasipembayaran: TFloatField
      FieldName = 'pembayaran'
      DisplayFormat = '0.0,0'
    end
    object qDRealisasipembayaran_idr: TFloatField
      FieldName = 'pembayaran_idr'
      DisplayFormat = '0.0,0'
    end
    object qDRealisasipaid_from: TStringField
      FieldName = 'paid_from'
      Size = 255
    end
    object qDRealisasinama_rekening: TStringField
      FieldName = 'nama_rekening'
      ReadOnly = True
      Size = 255
    end
  end
  object dsqRealisasi: TDataSource
    DataSet = qRealisasi
    Left = 718
    Top = 44
  end
  object qRealisasi: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select  a.*'
      'FROM accfin.v_ca_paid_status a'
      
        'where a.dt_purposed between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') an' +
        'd to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 min' +
        #39
      'order by a.no_kasbon'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2014'
      end>
    Left = 721
    Top = 15
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2014'
      end>
    object qRealisasink: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qRealisasifull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
    object qRealisasikasbon_untuk: TStringField
      FieldName = 'kasbon_untuk'
      Size = 255
    end
    object qRealisasino_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qRealisasidt_purposed: TDateTimeField
      FieldName = 'dt_purposed'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qRealisasiid_curr: TStringField
      FieldName = 'id_curr'
      Size = 3
    end
    object qRealisasikurs: TFloatField
      FieldName = 'kurs'
      DisplayFormat = '0.0,0'
    end
    object qRealisasijumlah: TFloatField
      FieldName = 'jumlah'
      DisplayFormat = '0.0,0'
    end
    object qRealisasica_total_payment: TFloatField
      FieldName = 'ca_total_payment'
      DisplayFormat = '0.0,0'
    end
    object qRealisasitotal_diff: TFloatField
      FieldName = 'total_diff'
      DisplayFormat = '0.0,0'
    end
  end
  object qAngsuran: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select  a.*'
      'FROM accfin.v_ca_status a'
      'order by a.no_kasbon'
      '')
    Params = <>
    Left = 804
    Top = 23
    object qAngsurannk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qAngsuranfull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
    object qAngsurankasbon_untuk: TStringField
      FieldName = 'kasbon_untuk'
      Size = 255
    end
    object qAngsuranno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qAngsurandt_purposed: TDateTimeField
      FieldName = 'dt_purposed'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qAngsurankasbon_proposed: TFloatField
      FieldName = 'kasbon_proposed'
      DisplayFormat = '0.0,0'
    end
    object qAngsuranca_total_payment: TFloatField
      FieldName = 'ca_total_payment'
      DisplayFormat = '0.0,0'
    end
    object qAngsurantotal_settlement: TFloatField
      FieldName = 'total_settlement'
      DisplayFormat = '0.0,0'
    end
    object qAngsurantotal_diff: TFloatField
      FieldName = 'total_diff'
      DisplayFormat = '0.0,0'
    end
  end
  object qDAngsuran: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * '
      'from accfin.v_ca_settlement'
      'where no_kasbon=:no_kasbon'
      'order by no_settlement')
    Params = <
      item
        DataType = ftString
        Name = 'no_kasbon'
        ParamType = ptUnknown
        Value = 'CA-1301-00001'
      end>
    DataSource = dsqAngsuran
    MasterFields = 'no_kasbon'
    LinkedFields = 'no_kasbon'
    Left = 835
    Top = 18
    ParamData = <
      item
        DataType = ftString
        Name = 'no_kasbon'
        ParamType = ptUnknown
        Value = 'CA-1301-00001'
      end>
    object qDAngsuranno_settlement: TStringField
      FieldName = 'no_settlement'
      Size = 30
    end
    object qDAngsurandt_settlement: TDateTimeField
      FieldName = 'dt_settlement'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qDAngsuranid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object qDAngsurannama_rekening: TStringField
      FieldName = 'nama_rekening'
      Size = 255
    end
    object qDAngsuranno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qDAngsuranjumlah: TFloatField
      FieldName = 'jumlah'
      DisplayFormat = '0.0,0'
    end
    object qDAngsurandiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
  end
  object dsqAngsuran: TDataSource
    DataSet = qAngsuran
    Left = 803
    Top = 51
  end
  object dsqDetailAngsuran: TDataSource
    DataSet = qDAngsuran
    Left = 836
    Top = 49
  end
  object frxDBSettlement: TfrxDBDataset
    UserName = 'frxDBSettlement'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nk=nk'
      'full_name=full_name'
      'kasbon_untuk=kasbon_untuk'
      'no_kasbon=no_kasbon'
      'dt_purposed=dt_purposed'
      'kasbon_proposed=kasbon_proposed'
      'ca_total_payment=ca_total_payment'
      'total_settlement=total_settlement'
      'total_diff=total_diff'
      'no_settlement=no_settlement'
      'dt_settlement=dt_settlement'
      'nama_rekening=nama_rekening'
      'jumlah=jumlah')
    DataSet = qryPrintSettlement
    Left = 867
    Top = 115
  end
  object qryPrintSettlement: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'SELECT ca.*, cs.no_settlement, cs.dt_settlement, cs.nama_rekenin' +
        'g,  cs.jumlah'
      'FROM accfin.v_ca_status ca'
      'LEFT JOIN accfin.v_ca_settlement cs ON cs.no_kasbon=ca.no_kasbon'
      
        'WHERE ca.dt_purposed between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') a' +
        'nd to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 mi' +
        'n'#39
      'ORDER BY ca.no_kasbon'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2012'
      end>
    Left = 893
    Top = 115
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2012'
      end>
    object qryPrintSettlementnk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qryPrintSettlementfull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
    object qryPrintSettlementkasbon_untuk: TStringField
      FieldName = 'kasbon_untuk'
      Size = 255
    end
    object qryPrintSettlementno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qryPrintSettlementdt_purposed: TDateTimeField
      FieldName = 'dt_purposed'
    end
    object qryPrintSettlementkasbon_proposed: TFloatField
      FieldName = 'kasbon_proposed'
    end
    object qryPrintSettlementca_total_payment: TFloatField
      FieldName = 'ca_total_payment'
    end
    object qryPrintSettlementtotal_settlement: TFloatField
      FieldName = 'total_settlement'
    end
    object qryPrintSettlementtotal_diff: TFloatField
      FieldName = 'total_diff'
    end
    object qryPrintSettlementno_settlement: TStringField
      FieldName = 'no_settlement'
      Size = 30
    end
    object qryPrintSettlementdt_settlement: TDateTimeField
      FieldName = 'dt_settlement'
    end
    object qryPrintSettlementnama_rekening: TStringField
      FieldName = 'nama_rekening'
      Size = 255
    end
    object qryPrintSettlementjumlah: TFloatField
      FieldName = 'jumlah'
    end
  end
  object frxRepCASettlement: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38721.620727534700000000
    ReportOptions.LastChange = 40325.010651574100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 919
    Top = 116
    Datasets = <
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBInfo'
      end
      item
        DataSet = frxDBSettlement
        DataSetName = 'frxDBSettlement'
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
      BottomMargin = 10.000000000000000000
      object Band5: TfrxGroupHeader
        Height = 68.031540000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBPayment."no_kasbon">'
        object Memo8: TfrxMemoView
          Left = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'no_kasbon'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBPayment."no_kasbon"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 196.535560000000000000
          Top = 22.677180000000000000
          Width = 521.575140000000000000
          Height = 22.677180000000000000
          DataField = 'kasbon_untuk'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxDBPayment."kasbon_untuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 491.338900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            'Jumlah Kasbon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 185.196970000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[frxDBPayment."full_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            ' No :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Keterangan :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 117.165430000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            'Pegawai :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 226.771800000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Bukti Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 336.378170000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl. Pembayaran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 117.165430000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dibayar Dengan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 612.283860000000000000
          Top = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dibayar (IDR)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 600.945270000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataField = 'dt_purposed'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxDBPayment."dt_purposed"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Tgl :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 45.354360000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 445.984540000000000000
          Top = 45.354360000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Rekening')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Band6: TfrxMasterData
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'Band6OnAfterPrint'
        OnBeforePrint = 'Band6OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDBSettlement
        DataSetName = 'frxDBSettlement'
        RowCount = 0
        object Memo54: TfrxMemoView
          Left = 226.771800000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'no_payment'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Memo.UTF8 = (
            '[frxDBPayment."no_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 336.378170000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'dt_payment'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPayment."dt_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'paid_from'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPayment."paid_from"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826778980000000000
          Height = 22.677180000000000000
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."pembayaran_idr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 445.984540000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Memo.UTF8 = (
            '[frxDBPayment."dt_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 117.165430000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 41.574830000000000000
          Width = 226.771800000000000000
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
          Top = 83.149660000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataField = 'prepared_name'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
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
          Top = 22.677180000000000000
          Width = 226.771800000000000000
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
            'DISIAPKAN OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 226.771800000000000000
          Top = 41.574830000000000000
          Width = 245.669450000000000000
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
          Left = 226.771800000000000000
          Top = 98.267780000000000000
          Width = 245.669450000000000000
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
          Left = 226.771800000000000000
          Top = 22.677180000000000000
          Width = 245.669450000000000000
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
          Left = 472.441250000000000000
          Top = 41.574830000000000000
          Width = 245.669450000000000000
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
          Left = 472.441250000000000000
          Top = 98.267780000000000000
          Width = 245.669450000000000000
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
          Top = 98.267780000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TGL : [frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 472.441250000000000000
          Top = 22.677180000000000000
          Width = 245.669450000000000000
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
      end
      object ReportTitle1: TfrxReportTitle
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo51: TfrxMemoView
          Top = 75.590600000000000000
          Width = 699.213050000000000000
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
        object Memo1: TfrxMemoView
          Top = 94.488250000000000000
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
        object Memo4: TfrxMemoView
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
        object Memo5: TfrxMemoView
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
        object Memo14: TfrxMemoView
          Top = 34.015770000000000000
          Width = 699.213050000000000000
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
        object Memo39: TfrxMemoView
          Top = 52.913420000000000000
          Width = 718.110700000000000000
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
        object Memo42: TfrxMemoView
          Top = 113.385900000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'filter'
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
            '[frxDBInfo."filter"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
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
        object Memo16: TfrxMemoView
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
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
        object Memo18: TfrxMemoView
          Left = 226.771800000000000000
          Width = 226.771800000000000000
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
      object GroupFooter1: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          Left = 608.504330000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'total_diff'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."total_diff"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 540.472790000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            'Sisa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 600.945270000000000000
          Top = 26.456710000000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 540.472790000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            'Dibayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          DataField = 'ca_total_payment'
          DataSet = frxDBSettlement
          DataSetName = 'frxDBSettlement'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPayment."ca_total_payment"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 600.945270000000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Top = 26.456710000000000000
          Width = 540.472790000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapX = 4.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Width = 540.472790000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapX = 4.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end

object SettlementFrm: TSettlementFrm
  Left = 190
  Top = 177
  Width = 1029
  Height = 662
  Caption = 'Reimbursement/Settlement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMinimized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 420
    Top = 86
    Width = 42
    Height = 13
    Caption = 'Currency'
  end
  object pnlBottom: TSCPanel
    Left = 0
    Top = 579
    Width = 1013
    Height = 44
    Align = alBottom
    Color = 11507049
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 1
    object btnSubmit: TAdvGlowButton
      Left = 632
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Submit'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Spacing = 4
      TabOrder = 3
      TabStop = True
      OnClick = btnSubmitClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 11918331
      Appearance.ColorCheckedTo = 7915518
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
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
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnCloseClick
    end
    object btnRefresh: TSCButton
      Left = 523
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 0
      OnClick = btnRefreshClick
    end
    object btnPrint: TSCButton
      Left = 705
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnPrintClick
    end
    object btnSave: TSCButton
      Left = 300
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Simpan'
      Images = DM.ImageList1
      ImageIndex = 3
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 4
      OnClick = btnSaveClick
    end
    object btnCancel: TSCButton
      Left = 375
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 5
      OnClick = btnCancelClick
    end
    object btnDelete: TSCButton
      Left = 449
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Hapus'
      Images = DM.ImageList1
      ImageIndex = 4
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 6
      OnClick = btnDeleteClick
    end
    object btnAdd: TSCButton
      Left = 300
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Tambah'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 7
      OnClick = btnAddClick
    end
    object btnEdit: TSCButton
      Left = 375
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Koreksi'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 8
      OnClick = btnEditClick
    end
    object btnCari: TSCButton
      Left = 632
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Cari'
      Images = DM.ImageList1
      ImageIndex = 7
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 9
      OnClick = btnCariClick
    end
    object dbnMaster: TRzDBNavigator
      Left = 146
      Top = 9
      Width = 108
      Height = 25
      DataSource = dsqBrowse
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BorderOuter = fsNone
      TabOrder = 10
    end
    object RGModeCetak: TRadioGroup
      Left = 786
      Top = 2
      Width = 209
      Height = 36
      Caption = 'Mode Cetak'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Bukti Angsuran'
        'Rekap Angsuran')
      TabOrder = 11
    end
  end
  object pgcMaster: TcxPageControl
    Left = 0
    Top = 68
    Width = 1013
    Height = 511
    ActivePage = tabBrowse
    Align = alClient
    Color = clWhite
    ParentColor = False
    Style = 8
    TabOrder = 2
    OnChange = pgcMasterChange
    OnPageChanging = pgcMasterPageChanging
    ClientRectBottom = 511
    ClientRectRight = 1013
    ClientRectTop = 24
    object tabBrowse: TcxTabSheet
      Caption = 'Browse'
      ImageIndex = 0
      object grdBrowse: TcxGrid
        Left = 0
        Top = 40
        Width = 1013
        Height = 408
        Align = alClient
        TabOrder = 0
        object grddbtvBrowse_PO: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = grddbtvBrowse_POCellDblClick
          DataController.DataSource = dsqBrowse
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.0,0'
              Kind = skSum
              FieldName = 'total'
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                end
                item
                end>
              SummaryItems = <
                item
                  FieldName = 'kd_rekanan'
                  DisplayText = 'Number'
                end
                item
                  FieldName = 'supplier'
                  DisplayText = 'Name'
                end>
            end>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtvBrowse_POstok_no: TcxGridDBColumn
            Caption = 'Index #'
            DataBinding.FieldName = 'id_settlement'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 62
          end
          object grddbtvBrowse_POdoc_no: TcxGridDBColumn
            Caption = 'No. Angsuran'
            DataBinding.FieldName = 'no_settlement'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 113
          end
          object grddbtvBrowse_POdt_settlement: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_settlement'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 92
          end
          object grddbtvBrowse_POremarks: TcxGridDBColumn
            Caption = 'Nama Pegawai'
            DataBinding.FieldName = 'full_name'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 155
          end
          object grddbtvBrowse_POtotal: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'total'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
          end
          object grddbtvBrowse_POprepared_by: TcxGridDBColumn
            Caption = 'Prepared By'
            DataBinding.FieldName = 'prepared_by'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object grddbtvBrowse_POusr_ins: TcxGridDBColumn
            Caption = 'User Insert'
            DataBinding.FieldName = 'usr_ins'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 82
          end
          object grddbtvBrowse_POispost: TcxGridDBColumn
            Caption = 'Posted'
            DataBinding.FieldName = 'ispost'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssInactive
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 56
          end
          object grddbtvBrowse_POiscancel: TcxGridDBColumn
            Caption = 'Canceled'
            DataBinding.FieldName = 'iscancel'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssInactive
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 62
          end
        end
        object grdBrowseLevel1: TcxGridLevel
          GridView = grddbtvBrowse_PO
        end
      end
      object pnlSearch: TSCPanel
        Left = 0
        Top = 448
        Width = 1013
        Height = 39
        Align = alBottom
        Color = 15986925
        GradientMid = 15845560
        GradientUsesMid = True
        ParentColor = False
        TabOrder = 1
        Visible = False
        object Shape12: TShape
          Left = 11
          Top = 5
          Width = 97
          Height = 29
        end
        object Label40: TLabel
          Left = 19
          Top = 13
          Width = 75
          Height = 13
          Caption = 'Column Name : '
          Transparent = True
        end
        object Shape13: TShape
          Left = 107
          Top = 5
          Width = 507
          Height = 29
        end
        object edtSearch: TwwIncrementalSearch
          Left = 240
          Top = 10
          Width = 364
          Height = 19
          DataSource = dsMaster
          ShowMatchText = True
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object cbFieldName: TcxComboBox
          Left = 113
          Top = 9
          Properties.OnChange = cbFieldNamePropertiesChange
          TabOrder = 1
          Width = 121
        end
      end
      object SCPanel3: TSCPanel
        Left = 0
        Top = 0
        Width = 1013
        Height = 40
        Align = alTop
        Bevel = sccbSoftRaised
        Color = 15986925
        ParentColor = False
        TabOrder = 2
        object Label28: TLabel
          Left = 211
          Top = 17
          Width = 13
          Height = 13
          Caption = 'To'
        end
        object dtpStart: TwwDBDateTimePicker
          Left = 78
          Top = 11
          Width = 121
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.StartYear = 2000
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
          OnCloseUp = dtpStartCloseUp
        end
        object dtpEnd: TwwDBDateTimePicker
          Left = 233
          Top = 11
          Width = 121
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.StartYear = 2000
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 1
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
        object btnOK: TSCButton
          Left = 360
          Top = 7
          Width = 72
          Height = 25
          Caption = '&Ok'
          Images = DM.ImageList1
          ImageIndex = 19
          RoundColor = 11507049
          RoundWithParentColor = False
          Style = scbsCorel
          TabOrder = 3
          OnClick = btnOKClick
        end
      end
    end
    object tabDetail: TcxTabSheet
      Caption = 'Input'
      ImageIndex = 1
      OnShow = tabDetailShow
      object grdDetail: TcxGrid
        Left = 0
        Top = 147
        Width = 1013
        Height = 251
        Align = alClient
        TabOrder = 0
        OnEnter = grdDetailEnter
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
              FieldName = 'jumlah'
              Column = grddbtvDetailjumlah
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.DataRowHeight = 35
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
          object grddbtvDetailnomor: TcxGridDBColumn
            Caption = 'NO'
            DataBinding.FieldName = 'nomor'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 45
          end
          object grddbtvDetailno_kasbon: TcxGridDBColumn
            Caption = 'NO. KASBON'
            DataBinding.FieldName = 'no_kasbon'
            OnGetPropertiesForEdit = grddbtvDetailno_kasbonGetPropertiesForEdit
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 116
          end
          object grddbtvDetaildiskripsi: TcxGridDBColumn
            Caption = 'DISKRIPSI'
            DataBinding.FieldName = 'diskripsi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 169
          end
          object grddbtvDetailid_rek_gl: TcxGridDBColumn
            Caption = 'KODE REK'
            DataBinding.FieldName = 'id_rek_gl'
            OnGetPropertiesForEdit = grddbtvDetailid_rek_glGetPropertiesForEdit
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 115
          end
          object grddbtvDetailnama_rekening: TcxGridDBColumn
            Caption = 'NAMA REKENING'
            DataBinding.FieldName = 'nama_rekening'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 124
          end
          object grddbtvDetailjumlah: TcxGridDBColumn
            Caption = 'NOMINAL'
            DataBinding.FieldName = 'jumlah'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 98
          end
        end
        object grdLvlDetail: TcxGridLevel
          GridView = grddbtvDetail
        end
      end
      object SCPanel1: TSCPanel
        Left = 0
        Top = 0
        Width = 1013
        Height = 119
        Align = alTop
        Color = 15986925
        GradientMid = 15845560
        GradientUsesMid = True
        ParentColor = False
        TabOrder = 1
        object Shape9: TShape
          Left = 14
          Top = 83
          Width = 88
          Height = 25
        end
        object Shape6: TShape
          Left = 101
          Top = 59
          Width = 152
          Height = 25
        end
        object Shape5: TShape
          Left = 14
          Top = 59
          Width = 88
          Height = 25
        end
        object Shape3: TShape
          Left = 101
          Top = 35
          Width = 152
          Height = 25
        end
        object Shape4: TShape
          Left = 14
          Top = 35
          Width = 88
          Height = 25
        end
        object Shape2: TShape
          Left = 112
          Top = 5
          Width = 111
          Height = 25
          Brush.Style = bsClear
        end
        object Label2: TLabel
          Left = 19
          Top = 90
          Width = 39
          Height = 13
          Caption = 'Tanggal'
          Transparent = True
        end
        object Label17: TLabel
          Left = 19
          Top = 64
          Width = 45
          Height = 13
          Caption = 'Index NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 19
          Top = 41
          Width = 17
          Height = 13
          Caption = 'No.'
          FocusControl = edtMRIRNo
          Transparent = True
        end
        object Shape1: TShape
          Left = 14
          Top = 5
          Width = 99
          Height = 25
          Brush.Style = bsClear
        end
        object Shape10: TShape
          Left = 101
          Top = 83
          Width = 152
          Height = 25
        end
        object edtOrdering: TcxDBTextEdit
          Left = 109
          Top = 63
          DataBinding.DataField = 'id_settlement'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          StyleFocused.BorderStyle = ebsThick
          StyleHot.BorderStyle = ebsThick
          TabOrder = 1
          OnKeyPress = EditKeyPress
          Width = 135
        end
        object RzGroupBox3: TRzGroupBox
          Left = 528
          Top = 30
          Width = 342
          Height = 78
          Caption = 'Remarks'
          GroupStyle = gsStandard
          TabOrder = 3
          Transparent = True
          object edtDescription: TcxDBMemo
            Left = 11
            Top = 18
            DataBinding.DataField = 'remarks'
            DataBinding.DataSource = dsMaster
            Style.BorderStyle = ebsOffice11
            StyleFocused.BorderStyle = ebsThick
            StyleHot.BorderStyle = ebsThick
            TabOrder = 0
            Height = 48
            Width = 322
          end
        end
        object edtMRIRNo: TcxDBTextEdit
          Left = 109
          Top = 38
          DataBinding.DataField = 'no_settlement'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = False
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          StyleFocused.BorderStyle = ebsThick
          StyleHot.BorderStyle = ebsThick
          TabOrder = 0
          OnKeyPress = EditKeyPress
          Width = 135
        end
        object edtPosted: TcxDBCheckBox
          Left = 30
          Top = 7
          Caption = 'Posted'
          DataBinding.DataField = 'ispost'
          DataBinding.DataSource = dsMaster
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = True
          Style.IsFontAssigned = True
          TabOrder = 4
          Transparent = True
          Width = 62
        end
        object edtCanceled: TcxDBCheckBox
          Left = 119
          Top = 7
          Caption = 'Canceled'
          DataBinding.DataField = 'iscancel'
          DataBinding.DataSource = dsMaster
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = True
          Style.IsFontAssigned = True
          TabOrder = 5
          Transparent = True
          Width = 84
        end
        object edtDateEdit: TcxDBDateEdit
          Left = 109
          Top = 86
          DataBinding.DataField = 'dt_settlement'
          DataBinding.DataSource = dsMaster
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          StyleFocused.BorderStyle = ebsThick
          StyleHot.BorderStyle = ebsThick
          TabOrder = 2
          OnKeyPress = EditKeyPress
          Width = 135
        end
        object RzGroupBox1: TRzGroupBox
          Left = 259
          Top = 31
          Width = 261
          Height = 78
          Caption = 'Informasi Pegawai'
          TabOrder = 6
          object Label1: TLabel
            Left = 11
            Top = 24
            Width = 61
            Height = 13
            Caption = 'No. Pegawai'
            Transparent = True
          end
          object Label4: TLabel
            Left = 10
            Top = 51
            Width = 72
            Height = 13
            Caption = 'Nama Pegawai'
            Transparent = True
          end
          object edtKodeRek: TcxDBButtonEdit
            Left = 96
            Top = 20
            DataBinding.DataField = 'nk'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edtKodeRekPropertiesButtonClick
            TabOrder = 0
            OnKeyPress = EditKeyPress
            Width = 135
          end
          object cxDBLabel1: TcxDBLabel
            Left = 95
            Top = 47
            DataBinding.DataField = 'nama_pegawai'
            DataBinding.DataSource = dsMaster
            Height = 21
            Width = 121
          end
        end
      end
      object SCPanel2: TSCPanel
        Left = 0
        Top = 398
        Width = 1013
        Height = 89
        Align = alBottom
        Color = 16511984
        GradientMid = 15845560
        ParentColor = False
        TabOrder = 2
        object Panel1: TPanel
          Left = 4
          Top = 3
          Width = 150
          Height = 82
          Color = 14600382
          TabOrder = 0
          object LblMC_Inspector: TLabel
            Left = 0
            Top = 2
            Width = 150
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'DIBUAT OLEH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbt_UserPrepared: TDBText
            Left = 0
            Top = 17
            Width = 150
            Height = 17
            Alignment = taCenter
            DataField = 'prepared_by'
            DataSource = dsMaster
          end
          object _DB_TGL_1: TDBText
            Left = 0
            Top = 29
            Width = 150
            Height = 17
            Alignment = taCenter
            DataField = 'dt_prepared'
            DataSource = dsMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object _Lnk_Klik1: TLabel
            Tag = 1
            Left = 0
            Top = 54
            Width = 150
            Height = 11
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'Click here to inspect'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object _DB_Name_1: TDBText
            Left = 0
            Top = 64
            Width = 150
            Height = 17
            Alignment = taCenter
            DataField = 'prepared_name'
            DataSource = dsMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
        end
        object Panel2: TPanel
          Left = 162
          Top = 3
          Width = 150
          Height = 82
          Color = 14600382
          TabOrder = 1
          object LblDisetujui: TLabel
            Left = 3
            Top = 3
            Width = 145
            Height = 16
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'DIPERIKSA OLEH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = LblDisetujuiClick
          end
          object dbt_UserApproved: TDBText
            Left = 3
            Top = 17
            Width = 144
            Height = 17
            Alignment = taCenter
            DataField = 'reviewed_by'
            DataSource = dsMaster
          end
          object _DB_TGL_3: TDBText
            Left = 3
            Top = 31
            Width = 144
            Height = 17
            Alignment = taCenter
            DataField = 'dt_reviewed'
            DataSource = dsMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblInspector: TLabel
            Tag = 1
            Left = 3
            Top = 53
            Width = 144
            Height = 11
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'Click here to inspect'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = True
          end
          object _DB_Name_3: TDBText
            Left = 3
            Top = 63
            Width = 144
            Height = 17
            Alignment = taCenter
            DataField = 'reviewed_name'
            DataSource = dsMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
        end
        object Panel3: TPanel
          Left = 323
          Top = 3
          Width = 150
          Height = 82
          Color = 14600382
          TabOrder = 2
          object LbLDiterima: TLabel
            Left = 2
            Top = 3
            Width = 145
            Height = 16
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'DISETUJUI OLEH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = LbLDiterimaClick
          end
          object dbt_UserReviewed: TDBText
            Left = 3
            Top = 18
            Width = 145
            Height = 17
            Alignment = taCenter
            DataField = 'approved_by'
            DataSource = dsMaster
          end
          object _DB_TGL_2: TDBText
            Left = 3
            Top = 32
            Width = 144
            Height = 17
            Alignment = taCenter
            DataField = 'dt_approved'
            DataSource = dsMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblReviewer: TLabel
            Tag = 1
            Left = 4
            Top = 54
            Width = 143
            Height = 11
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'Click here to review'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = True
          end
          object _DB_Name_2: TDBText
            Left = 4
            Top = 64
            Width = 144
            Height = 17
            Alignment = taCenter
            DataField = 'approved_name'
            DataSource = dsMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
        end
      end
      object adpDetail: TAdvDockPanel
        Left = 0
        Top = 119
        Width = 1013
        Height = 28
        MinimumSize = 25
        LockHeight = False
        Persistence.Location = plRegistry
        Persistence.Enabled = False
        UseRunTimeHeight = True
        Version = '6.0.4.5'
        object atbPR_Item_Detail: TAdvToolBar
          Left = 3
          Top = 1
          Width = 393
          Height = 26
          AllowFloating = False
          Caption = 'Untitled'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -11
          CaptionFont.Name = 'MS Sans Serif'
          CaptionFont.Style = []
          CompactImageIndex = -1
          ShowRightHandle = False
          ShowClose = False
          ShowOptionIndicator = False
          TextAutoOptionMenu = 'Add or Remove Buttons'
          TextOptionMenu = 'Options'
          ParentOptionPicture = False
          ShowHint = False
          ToolBarIndex = -1
          object dbagbAddPR_Item_Detail: TDBAdvGlowButton
            Left = 9
            Top = 2
            Width = 60
            Height = 22
            Hint = 'Insert record'
            Caption = 'Tambah'
            ImageIndex = 0
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            AutoDisable = True
            ConfirmAction = True
            DataSource = dsDetail
            DBButtonType = dbAppend
            DisableControl = [drReadonly, drEditing]
          end
          object dbagbDeletePR_Item_Detail: TDBAdvGlowButton
            Left = 129
            Top = 2
            Width = 60
            Height = 22
            Hint = 'Delete record'
            Caption = 'Hapus'
            ImageIndex = 0
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            AutoDisable = True
            ConfirmAction = True
            ConfirmActionString = 'Delete record?'
            DataSource = dsDetail
            DBButtonType = dbDelete
            DisableControl = [drReadonly, drEditing, drEmpty]
          end
          object dbagbEditPR_Item_Detail: TDBAdvGlowButton
            Left = 69
            Top = 2
            Width = 60
            Height = 22
            Hint = 'Edit record'
            Caption = 'Koreksi'
            ImageIndex = 0
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 2
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            AutoDisable = True
            ConfirmAction = False
            DBButtonType = dbEdit
            DisableControl = [drReadonly, drEditing, drEmpty]
          end
          object dbagbSavePR_Item_Detail: TDBAdvGlowButton
            Left = 189
            Top = 2
            Width = 60
            Height = 22
            Hint = 'Post edit'
            Caption = 'Simpan'
            ImageIndex = 0
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 3
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            AutoDisable = True
            ConfirmAction = False
            DataSource = dsDetail
            DBButtonType = dbPost
            DisableControl = [drNotEditing]
          end
          object dbagbCancelPR_Item_Detail: TDBAdvGlowButton
            Left = 249
            Top = 2
            Width = 70
            Height = 22
            Hint = 'Cancel edit'
            Caption = 'Batal'
            ImageIndex = 0
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 4
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            AutoDisable = True
            ConfirmAction = False
            DataSource = dsDetail
            DBButtonType = dbCancel
            DisableControl = [drNotEditing]
          end
          object dbagbRefreshPR_Item_Detail: TDBAdvGlowButton
            Left = 319
            Top = 2
            Width = 70
            Height = 22
            Hint = 'Refresh data'
            Caption = 'Refresh'
            ImageIndex = 0
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 5
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            AutoDisable = True
            ConfirmAction = False
            DataSource = dsDetail
            DBButtonType = dbRefresh
            DisableControl = [drEditing]
          end
        end
      end
    end
  end
  object pnlTop: TAdvPanel
    Left = 0
    Top = 0
    Width = 1013
    Height = 68
    Align = alTop
    Color = 16511984
    TabOrder = 0
    UseDockManager = True
    Version = '2.3.0.7'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 40
    object lblHeader: TLabel
      Left = 85
      Top = 7
      Width = 352
      Height = 25
      Caption = 'Reimbursement/Settlement Form'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ariHeader: TAdvReflectionImage
      Left = 17
      Top = 10
      Width = 53
      Height = 51
      AutoSize = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        870000000467414D410000AFC837058AE900000006624B4744000000000000F9
        43BB7F000000097048597300000048000000480046C96B3E0000000976704167
        000000300000003000CEEE8C5700000F4F4944415468DED59A6BB09D5579C7FF
        EBF2DEF77D9F7D6E494EAE278110082088226A2DF67EA123C5F1934E4B6B6B1D
        996AC74B5B0729ED68D18E7468A75A156D3B23A2A3D33A6A1590203781841884
        10E0242109E7B6EF97F77E5B6BF5C33E11531462A7278ECFCCDA7BED2F7BFEBF
        B59E77BDCFFF795F02000F3D760000A8AE69ECF24BF666719CC2B20CFC220401
        800FDCF8B70070A1EFFBEF4BD26C9131B6A8EB5AD334F4B6635BBD52A9389C99
        6A04AFBBE2F264F3DC16A9940221E4E7ADFD4580EBDE7E3D08D4B556A17AE795
        AFB9927B4180D1C84DFD20889224F684C80704B2C31869EA9CAFEA3A5F36747D
        D9348DA6651A5DDB7606D54AD99BDFBE3DBE78CFEE5C4A09C6D8B903F8B56BAE
        856198EFDD73E1A59FFCE0FB6E409A2BB84182BE1BA137F4D0ED8FD01D8C3018
        0EE1792344A18F3C8B851269CC88F43586A1C169D7D07853D7F98AA1F3254DD3
        9715C80BAD9595438C33FF969B6F5C1700FEA11B6FC6276EFD675C77ED359B27
        27A7202441924B487068A68352D502771A284E0AD463815198611824708388B9
        61E80481E784A13F9546DE2EE1052022824E15A64C5F5AC20F87FDC1BB7543FF
        8FF5DA015EABD570C7BF7D8A3FFCD8A14D3333B3C884429C49C499449249F483
        1CC7DB098EB71334DD0C6E2291484080419112142983D88072002105D23C07A7
        02BCB38F16DC7E21CBB3B25A2FF50078A3D18010D29E9DDDB0A15E6F20CE24D2
        4CA1E3E5B8FF19178F1E0FE02712259BA1E470344A1A24011201444221CC14C2
        5C21960AA9A210C440CD9048471D445198134A57A494EB073031310146504995
        3EE9144B883389832702DCF9480F71AE70D1661B1BEB062805C24CC14F258254
        C1CF2458A640B902130A2C1F7F478A80CA086930808CFC482AD5546AFDF68097
        4B25308A4606BDC23503F73C39C29D8FF4B0778B8DCBB7174028819F488C6201
        3F957013892053087389280762A1100B855401190041000D0974E4F083C073DD
        519752BA7E008E6381513213E5CC79ECF9045F793CC0AF5F5CC1059B6C8C2281
        A5418A13BD0CAB6E86612C1109851C8022048A128092B53990031084C02219AA
        451B7E470E02DF1B1886B97E000605344E37ADF412FD6B077B78F3DE295C3867
        E3B9568C478E0738D649E16712928CC58211104A008AB5A100460045010A3046
        503614A61B13F007BD4EA55C0ABF7AE71D046B47F6CF1012C02BDE30791445E0
        0567F381851E764C6FC3EE4D16EE39E2E2FE051F6E2241D60453BAB6E26C0DE4
        270E803282C902C7ECCC142C439B7FD5E5977DFEDBFBBE77D657F19A5C6959D6
        E7E324FEEE2BEEC0D6CD33ECE88995395082CBE62BF8C6A1211E3C164002A08C
        020C2F23F84CF18A123046305D3230654EA0D96C16EFBAE7DED7FD2C658794D2
        684C4CD4AF78F565075CD77B6580C5C5157BB9D5DB305D2FE2E0628A078E0550
        04E334F931F1EA65C45346A069049C11944C8AD9B20127B050B4CD5BEF7F78FF
        ED8E6DF1B311AF94CA3967579B86793B00723687175F6D77AA232F9CEA26353C
        7032802204849DCEF19759F1B554D23941C164B0740ACE08266C8A299B02BECC
        4D8D1F7EDBEFFECAE27BDE73C359ADFE356F7B3BF23C6F81E0ACCF5DDEEF0FA6
        9A7D517DB49922920061E313652C94BE08723AF7C999E22B3643C11803E89C60
        CA2128728915CF8DFBFDC1AAA66B679D3EFF97E0ABADCE5CDBE7C5293B41CDCC
        E04A1D81E0882441AA140400450090D3A7CF8B695330198A6BA3A053983AC194
        2541458276B7EFAEB45A1DDBB6D717E0C8C2F16D69968B9A791C865D0677AA90
        F60452AB8E8057E0D2025C65C297A7A10001807302DBA0700C8A92495132281C
        9DA1C2438CFA3DBCB0B8D45F5C5A19D4EBB5F505585E5AFEA250F220E7FC028D
        AF5EA469FC7C43D7B718A63951B41CA3EE94C09C1AA45D47624DC0D7C750B966
        C3B6381C83A16C32944D8AA24161C631DAAD269696579A4F1F79C6DF39BF637D
        01EEFEE67FAE0058D975E1A5FBC23020B31B36162CCB9AD1346D07D7F81ECEF9
        053AE7BB4CD3D86E9A56BD623B64D22981176AE0A53AB4720306A9C336CA2869
        4560E8C11DB9A855CB4BCB278FC5575D79C5FA029C9E3CF7D40F00402D1E7FCE
        03E0DDF2F18F2F40A9BB19D72E904AFD5614276F596AB6EBBD5E0FE87640C9F3
        D0340D8661C0720AB08A2578F52AF86C8E3C1D81821EBFE9EF3EAA8A95DAE4F9
        175DB23389A3E552D1196EDFBA39FCA5AB5E9BF6070375DEAE0BFEFF004EC797
        BEFA35544B25C469BA4B63EC2F3863BF23A59CF47D9FD66A35ACB6BBF0831051
        1C234D330C46239C3A750A9665C199B012BB819C7B0E5A8BAB0BFF74DBADFC1D
        7FF2EED74BF0CF94CA15AF3FEAF58EBFD06E7FF7FEFD4DC6E9CA0D1FFAF092A1
        6BAB9669B66DCBEC6EDC30DBFDC67FDF6D52424108392BDFFD12005D33E005D1
        8E72A9F8EFA562F18A4AA50C8D33F4FB03704D836D99F03C0FAEEBC10F23F8B6
        0991C4D03901F1F3F0B9CF2D7D2609D2A585C34F2F01D879F4D9672FB9EC356F
        A8FDE91F5F5F73FD6873BB3B40BB37406F30C4C81D210C82DC77E3480E87DEA9
        D541BFDE98260A843DF1C3C3BF1946A1FAD8ADB7AD9ABADE340CB3635966BF58
        2C793BB66F8FDEFA473788E7BEFF9D33013EFA0F9F846D9B180E47BF1784E115
        799E432A09C77690090109408140374C944A049C335048D0A906E2388610A26A
        483EFBC083F7DEB1B638A61062ABA973544A454C34A631BD610E412CE1C739DC
        30C5D08FF9D00D8A03D72B0E47EEACEBB9E8861E565AFED52A675733154B8D06
        B1C1E09B3A1BD806EF1E7AEAF0F36F7CD5EEBF7FD77B3F70E40C0029048E1E3D
        86300CC3898909A5691AE9F6FBE08C414A89384990E602B994C89502E51A0AA5
        3298A6818E46F03C0F711CA5181721C4B22C56ABD7A737CD6D81A21AC2244790
        484489449C294439859BE9E8E5147DD8F0AC06622E919624923C439A6588D388
        C67168A77160B33C9FDC122DEC2A269DD7C5717C3F63FC4C800F7FF0FD78E7BB
        FE0C61187DEDD5975FF6E60D1B375EC339A75996234953503ACE4D058032060E
        020502CB760010D5EDF51E3E76ECD897B1660D76CCCFB3F376EFA9CCEF3C1F8A
        70C4598E3497581D65387822C0534B113A7E0E8171ED45188100902B821C0402
        3A143500B30665016543205938041AFAB9547220458697346F0E3E7E00AF7FC3
        1B8243877E70AF10A227F2BC21A4284B2135292594525052224B53244982344D
        93D16878B4B5BAFAAF4B4B8B7F75F8C91F3E0DC003D0F9C4ADFFA817CAF5776E
        D9365F33AD02FA7E8EBB9E1CE14B8FF4F0422FC55455C3AE0D16764C99D85833
        D02871541C8E82C560EA145CA3509420570A8922B010819F7800488340E4E2D3
        59962DFED4CBDCB66D846148DEF4CB5737B66CD9BAB7582A5C44299B07485548
        41D23473E3383E1E84C193ED56FB89EF3FFCE0EAC4C4846CAEAC0000EEBEEF41
        508A4B7B6E72CF8E9D7B6A5E6EE3F6FBDA58ECA7B87257115B270D48007E22E1
        A512DE9A550DB2D3965521120AB1C0B861008A49D54561FFA79007C395388ADE
        0442167E6A991B862100A8FBF6DDDB0670CFDA2018977700D6AEE91F8BD3E201
        A0582C8051329B29B3D0F5093E737F138402EF7863039641318A047AA140C717
        E847025E32B6ABA9047205646B1E3B5340AA809C003A12383A47AB1B0D7ADDEE
        50D7759C559DFE63A1302E855E312C4303677453DB55FA171FEAC1D074BCE5D5
        356452E1D96682C32B1116071946A94426017946F94E7FE404C1C6FE9B328212
        1598A85530EAB53B5996FAB66DFDCC006715C78E1DC568E8C272ACB9479EE9A2
        1734F007574FA11BE4B8E78887A7572344B902280161F425CE0EF474058CF107
        21609460C266989D9942E08D569F38F878BC6BE74EAC4BBF4308893DE76DA341
        9CCEADF423FCEADE3A4EF5527CE1A11E1E3F15201600E51494AFAD3423203F6A
        12BCD43C8DAD2A305D36303D3585D99999E58FDD728BDCB071E3FAECC070E4E2
        8448ACD5CE60E3CC84834432DC79A08F412441397D89B897EEC08BBF091B3714
        2C9D62A66CA2CA4AA856CACBBE37C2A76EBB757D00FAC321A29096BB036FCAB0
        37E01B4FBA18C41294935710BFE6C3D772DED0294C8D42E3140D8762A6A48125
        5CE89C2E51356E74AC0BC060388247557DE465B583DD1C4BA37CCD679F390825
        50ECCCDC3FC3ED1914A64EA1318A6987A0AA2B7493280AC3B0A9716DFD00FA83
        01748699933D565C0D188A3647A2805C2928326EBF90337A4C58F3DFE3B96330
        94AD3180AD53181AC5B4A3A02B816EAFEF355BAD8E6559EB03F0E71FFC6B1C3D
        7E029CD1F93067E6A54E0A380D445A151E2DC353163CC911488A448E6B0E79FA
        EE42019D5314D6DC5DD964281814964E51D713C4818B66BBD35B5E6DF56BD5EA
        FA00B4DB6D3C79F869EC9CDFB19C67D9D775EDF9795D37660DCB2A4DD945BAD1
        A9803875E4D60442BD0A8F953122363CA92150E37CB70D06DBA028AC41140D0A
        5B2668369B387AECF9D633CF3EEB6FDFB66D7D00EEF8C267613B253CB5FFE1FF
        DA7BF96BBF552A576ABAAECF691A3F9F737EA1A6697B745DDB611AC6946159CE
        8C5DA4734E15A450476AD721B43A9851816616E1D8161C8BA36830F05E807EAF
        07A5E4F2911F1E8AE736CDAD0F000084817BDA4D65005A005AB5C6CC8161AF87
        DD175F6272C3A8562B951DB56AE58D76185D2B5AAB17134A60E83A0CD382E614
        61142BD02A13E0D50678BD81C46FC10F7C54CBE5931FF99B9BD5D2D2F2FA01FC
        A4E87756F1A52F7F050AC889C23642709D90E2AA308CB69E5C5C46ABDB4792A4
        88462ED46008254F813202DBB2614D5AB0AE5220C210911F2D54B66FC7CD377D
        E4DC027CFD5BDF8610C22E38F6FB2DD3BCC1B6AC9A5212BD7E1F8661A05EABC2
        F53C78418838C9E0BA2E56164FC1B16D98A1D111243DCC970D71F8D127963F77
        FBA737625CB207E704E05F3EFB7930C690A6E95BF25C7C088498966DC3340D10
        CA1027298494300D1D8E69C0753D6890D0366D00A48410A274F4AE13FBF6EFDF
        7FB790B9003005A00EC03F2700FD411F175FB407479ACDBD699A9A23D7457F30
        84659A48B30CAEE7234E33E44282720D4EB100CA2808147CDF8352CAD04D633E
        17D937811F99300D80734E1EA79F77FE6EB4DA2DB45A4DBD542CFD866D595692
        A6F07D7FECA3930442482805280508A54008856198E01AC7C87547C71616BED8
        E9741631AE5133002300ABE704E0C0638FC2B62C7C6FDFBE1373739B564CC3D8
        6D99668D734E28A3206B0F01851410B900211400419665CAF783859595E51B1F
        7EE8C16F0148000C313ED9BA00A273FAC6C6D4F4345ACD26F9FDEBDEBA75CBD6
        ADBF5DA954AED60D63274026A452669EE748D2340EC3A81BC7F1C26838B8B7B9
        BAF2CDEFDEF59D13189B2982FFE5027F6EAF9C7407235CB8FB3C73E7AEF3260B
        C5C206CEB592520A499ABABEE72D9F3A79B2FD9737DD14BFFBFA3F7CD9FFF91F
        FAA181EAB2F94626000000227A545874536F667477617265000078DA734CC94F
        4A55F0CC4D4C4F0D4A4D4CA904002F9C05D4AE0CA94D0000000049454E44AE42
        6082}
      Version = '1.5.0.2'
    end
    object lblHeader2: TLabel
      Left = 87
      Top = 36
      Width = 310
      Height = 27
      AutoSize = False
      Caption = 'Form ini berisi Pertanggung Jawaban/Penyelesaian Kasbon Pegawai'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
  end
  object Master: TZQuery
    Connection = DM.conn
    BeforeOpen = MasterBeforeOpen
    CachedUpdates = True
    BeforeEdit = MasterBeforeEdit
    BeforePost = MasterBeforePost
    BeforeDelete = MasterBeforeDelete
    OnNewRecord = MasterNewRecord
    SQL.Strings = (
      'select * '
      'from accfin.settlement'
      'where id_settlement=:id_settlement')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_settlement'
        ParamType = ptUnknown
      end>
    Left = 408
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_settlement'
        ParamType = ptUnknown
      end>
    object Masterid_settlement: TLargeintField
      FieldName = 'id_settlement'
      Required = True
    end
    object Masterno_settlement: TStringField
      FieldName = 'no_settlement'
      Size = 30
    end
    object Masterdt_settlement: TDateTimeField
      FieldName = 'dt_settlement'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Masterremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object Masterissettlement: TStringField
      FieldName = 'issettlement'
      Required = True
      Size = 1
    end
    object Mastertotal: TFloatField
      FieldName = 'total'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object Masterusr_ins: TStringField
      FieldName = 'usr_ins'
    end
    object Masterusr_upd: TStringField
      FieldName = 'usr_upd'
    end
    object Masterprepared_by: TStringField
      FieldName = 'prepared_by'
      Size = 30
    end
    object Masterreviewed_by: TStringField
      FieldName = 'reviewed_by'
      Size = 30
    end
    object Masterapproved_by: TStringField
      FieldName = 'approved_by'
      Size = 30
    end
    object Masterdt_prepared: TDateTimeField
      FieldName = 'dt_prepared'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Masterdt_reviewed: TDateTimeField
      FieldName = 'dt_reviewed'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Masterdt_approved: TDateTimeField
      FieldName = 'dt_approved'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Masterispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object Masteriscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object Masterisdelete: TStringField
      FieldName = 'isdelete'
      Required = True
      Size = 1
    end
    object Masterprepared_name: TStringField
      FieldKind = fkLookup
      FieldName = 'prepared_name'
      LookupDataSet = DM.L_User
      LookupKeyFields = 'vuser'
      LookupResultField = 'full_name'
      KeyFields = 'prepared_by'
      Size = 100
      Lookup = True
    end
    object Masterreviewed_name: TStringField
      FieldKind = fkLookup
      FieldName = 'reviewed_name'
      LookupDataSet = DM.L_User
      LookupKeyFields = 'vuser'
      LookupResultField = 'full_name'
      KeyFields = 'reviewed_by'
      Size = 100
      Lookup = True
    end
    object Masterapproved_name: TStringField
      FieldKind = fkLookup
      FieldName = 'approved_name'
      LookupDataSet = DM.L_User
      LookupKeyFields = 'vuser'
      LookupResultField = 'full_name'
      KeyFields = 'approved_by'
      Size = 100
      Lookup = True
    end
    object Masterid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object Masterid_curr: TStringField
      FieldName = 'id_curr'
      Size = 3
    end
    object Masterkurs: TFloatField
      FieldName = 'kurs'
      Required = True
    end
    object Masterusr_post: TStringField
      FieldName = 'usr_post'
      Size = 10
    end
    object Masterdt_post: TDateTimeField
      FieldName = 'dt_post'
    end
    object Masterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object Masternk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object Masternama_pegawai: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_pegawai'
      LookupDataSet = DM.L_Pegawai
      LookupKeyFields = 'nk'
      LookupResultField = 'full_name'
      KeyFields = 'nk'
      Size = 255
      Lookup = True
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 411
    Top = 35
  end
  object Sq_SETTLE: TZSequence
    Connection = DM.conn
    SequenceName = 'accfin.sq_settlement'
    Left = 294
    Top = 17
  end
  object Detail: TZQuery
    Connection = DM.conn
    CachedUpdates = True
    BeforeInsert = DetailBeforeEdit
    BeforeEdit = DetailBeforeEdit
    BeforePost = DetailBeforePost
    AfterPost = DetailAfterPost
    BeforeDelete = DetailBeforeDelete
    AfterDelete = DetailAfterPost
    OnNewRecord = DetailNewRecord
    SQL.Strings = (
      'select * '
      'from accfin.settlement_detail'
      'where id_settlement=:id_settlement'
      'order by nomor')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_settlement'
        ParamType = ptUnknown
      end>
    Left = 439
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_settlement'
        ParamType = ptUnknown
      end>
    object Detailid_settlement: TLargeintField
      FieldName = 'id_settlement'
      Required = True
    end
    object Detailid_settlement_detail: TLargeintField
      FieldName = 'id_settlement_detail'
      Required = True
    end
    object Detaildiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object Detailnomor: TIntegerField
      FieldName = 'nomor'
    end
    object Detailid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 15
    end
    object Detailnama_rekening: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_rekening'
      LookupDataSet = DM.L_Rek_GL
      LookupKeyFields = 'id_rek_gl'
      LookupResultField = 'descriptions'
      KeyFields = 'id_rek_gl'
      Size = 255
      Lookup = True
    end
    object Detailno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object Detailnk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object Detailjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Detailnama_pegawai: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_pegawai'
      LookupDataSet = DM.L_Pegawai
      LookupKeyFields = 'nk'
      LookupResultField = 'full_name'
      KeyFields = 'nk'
      Size = 200
      Lookup = True
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 441
    Top = 35
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
    Left = 649
    Top = 8
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
    Left = 679
    Top = 7
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 709
    Top = 7
  end
  object qryGet_SETTLE_number: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select accfin.fn_gen_settlement_number(:pid_trans)  as settle_nu' +
        'mber')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end>
    Left = 481
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end>
    object qryGet_SETTLE_numbersettle_number: TStringField
      FieldName = 'settle_number'
      ReadOnly = True
      Size = 255
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 809
    Top = 12
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
    Left = 812
    Top = 42
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
    Left = 843
    Top = 41
  end
  object SR: TcxStyleRepository
    Left = 842
    Top = 12
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
  object LookReviewer: TwwLookupDialog
    Selected.Strings = (
      'vuser'#9'30'#9'User ID'#9'F'
      'full_name'#9'50'#9'Full Name'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DM.LReviewer
    Caption = 'Lookup  Reviewer'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 532
    Top = 41
  end
  object LookApprover: TwwLookupDialog
    Selected.Strings = (
      'vuser'#9'30'#9'User ID'#9'F'
      'full_name'#9'50'#9'Full Name'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DM.LApprover
    Caption = 'Lookup  Approver'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 559
    Top = 41
  end
  object kmtCheckDetail: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_item'
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
    Version = '7.10.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 476
    Top = 44
    object kmtCheckDetailid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
  end
  object qryPegawai: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT nk, initial, full_name'
      'FROM master.mpegawai'
      'where isactive='#39'1'#39)
    Params = <>
    Left = 234
    Top = 15
    object qryPegawaink: TStringField
      DisplayLabel = 'NK'
      DisplayWidth = 20
      FieldName = 'nk'
      Required = True
    end
    object qryPegawaifull_name: TStringField
      DisplayLabel = 'Nama Lengkap'
      DisplayWidth = 50
      FieldName = 'full_name'
      Size = 100
    end
    object qryPegawaiinitial: TStringField
      FieldName = 'initial'
      Visible = False
      Size = 10
    end
  end
  object qryKasBon: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * FROM accfin.fn_gen_look_ca_to_settle(:pnk)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pnk'
        ParamType = ptUnknown
      end>
    Left = 763
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pnk'
        ParamType = ptUnknown
      end>
    object qryKasBonno_kasbon: TStringField
      FieldName = 'no_kasbon'
      ReadOnly = True
      Size = 255
    end
    object qryKasBondt_purposed: TDateTimeField
      FieldName = 'dt_purposed'
      ReadOnly = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qryKasBonkasbon_untuk: TStringField
      FieldName = 'kasbon_untuk'
      ReadOnly = True
      Size = 255
    end
    object qryKasBonid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      ReadOnly = True
      Size = 255
    end
    object qryKasBonjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryKasBonpembayaran: TFloatField
      FieldName = 'pembayaran'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qryKasBonsisa: TFloatField
      FieldName = 'sisa'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
  end
  object sq_Detail: TZSequence
    Connection = DM.conn
    SequenceName = 'accfin.sq_settlement_detail'
    Left = 518
    Top = 10
  end
  object qrySubTotal: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select sum(jumlah) as sub_total '
      'from accfin.settlement_detail'
      'where id_settlement=:pid_settlement')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_settlement'
        ParamType = ptUnknown
      end>
    Left = 323
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_settlement'
        ParamType = ptUnknown
      end>
    object qrySubTotalsub_total: TFloatField
      FieldName = 'sub_total'
      ReadOnly = True
    end
  end
  object qBrowse: TZQuery
    Connection = DM.conn
    BeforeOpen = qBrowseBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      
        'select a.id_settlement, a.no_settlement, a.dt_settlement,  a.usr' +
        '_ins, a.ispost, a.iscancel, a.remarks, a.prepared_by, a.usr_post' +
        ', a.dt_post, a.total, a.nk, b.full_name'
      'from accfin.settlement a'
      'left join master.mpegawai b on b.nk=a.nk'
      'where a.isdelete='#39'0'#39' AND a.id_trans=:pid_trans'
      
        #9'and a.dt_settlement between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') a' +
        'nd to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 mi' +
        'n'#39
      'order by a.id_settlement')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2011'
      end>
    Left = 371
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2011'
      end>
    object qBrowseid_settlement: TLargeintField
      FieldName = 'id_settlement'
      Required = True
    end
    object qBrowseno_settlement: TStringField
      FieldName = 'no_settlement'
      Size = 30
    end
    object qBrowsedt_settlement: TDateTimeField
      FieldName = 'dt_settlement'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qBrowseusr_ins: TStringField
      FieldName = 'usr_ins'
    end
    object qBrowseispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object qBrowseiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object qBrowseremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object qBrowseprepared_by: TStringField
      FieldName = 'prepared_by'
      Size = 30
    end
    object qBrowseusr_post: TStringField
      FieldName = 'usr_post'
      Size = 10
    end
    object qBrowsedt_post: TDateTimeField
      FieldName = 'dt_post'
    end
    object qBrowsetotal: TFloatField
      FieldName = 'total'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object qBrowsenk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qBrowsefull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
  end
  object dsqBrowse: TDataSource
    DataSet = qBrowse
    Left = 372
    Top = 36
  end
  object frxRepMaster: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38721.620727534700000000
    ReportOptions.LastChange = 38721.620727534700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 890
    Top = 123
    Datasets = <
      item
        DataSet = frxDBInfoPerusahaan
        DataSetName = 'frxDBInfoPerusahaan'
      end
      item
        DataSet = frxDBRekap
        DataSetName = 'frxDBRekap'
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
      object PageHeader1: TfrxPageHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 79.370130000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = NotaPiutangFrm.frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'REKAP ANGSURAN KASBON')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          HightQuality = False
        end
        object Memo4: TfrxMemoView
          Left = 114.165430000000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 114.165430000000000000
          Top = 22.677180000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'alamat_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."alamat_perusahaan"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 114.165430000000000000
          Top = 52.913420000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'fax_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."fax_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 114.165430000000000000
          Top = 68.031540000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'kota_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."kota_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 114.141593150000000000
          Top = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'telp_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."telp_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'periode'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."periode"]')
          ParentFont = False
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
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRekap
        DataSetName = 'frxDBRekap'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 264.567100000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'diskripsi'
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBRekap."diskripsi"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'no_kasbon'
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBRekap."no_kasbon"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'jumlah'
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBRekap."jumlah"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 517.795610000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBRekap."id_rek_gl"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 49.133890000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'full_name'
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBRekap."full_name"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'nomor'
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBRekap."nomor"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 98.267780000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        object MemoApprovedName: TfrxMemoView
          Left = 495.118430000000000000
          Top = 60.472480000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          DataSet = NotaPiutangFrm.frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '(                                                               ' +
              '             )')
          ParentFont = False
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 495.118430000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DITERIMA OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          Left = 521.575140000000000000
          Top = 83.149660000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
        end
        object MemoPreparedBy: TfrxMemoView
          Left = 30.236240000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DICETAK OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 22.677180000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DataSet = NotaPiutangFrm.frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '(')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 234.330860000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DataSet = NotaPiutangFrm.frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ')')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Top = 83.149660000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataField = 'printed_by'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."printed_by"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Width = 604.724800000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBRekap."jumlah">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBRekap."no_settlement"'
        object Memo22: TfrxMemoView
          Left = 49.133890000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PEGAWAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 18.897650000000000000
          Top = 22.677180000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 151.181200000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. KASBON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677180000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DISKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 517.795610000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KODE REK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Width = 245.669450000000000000
          Height = 22.677180000000000000
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. Angsuran : [frxDBRekap."no_settlement"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 18.897650000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataSet = frxDBRekap
          DataSetName = 'frxDBRekap'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBRekap."jumlah">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object ER: TcxEditRepository
    Left = 803
    Top = 90
    object ER_EDT: TcxEditRepositoryTextItem
    end
    object ER_LCB_REK_GL: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'id_rek_gl'
      Properties.ListColumns = <
        item
          Caption = 'ID'
          Width = 100
          FieldName = 'id_rek_gl'
        end
        item
          Caption = 'Diskripsi'
          Width = 350
          FieldName = 'descriptions'
        end>
      Properties.ListSource = dsqryRekGL
      Properties.PostPopupValueOnTab = True
      Properties.OnCloseUp = ER_LCB_REK_GLPropertiesCloseUp
    end
    object ER_LCB_NO_KASBON: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'no_kasbon'
      Properties.ListColumns = <
        item
          Caption = 'No. Kasbon'
          Width = 100
          FieldName = 'no_kasbon'
        end
        item
          Caption = 'Tanggal'
          Width = 75
          FieldName = 'dt_purposed'
        end
        item
          Caption = 'Keterangan'
          Width = 200
          FieldName = 'kasbon_untuk'
        end
        item
          Caption = 'Jumlah'
          Width = 75
          FieldName = 'jumlah'
        end
        item
          Caption = 'Pembayaran'
          Width = 75
          FieldName = 'pembayaran'
        end
        item
          Caption = 'Saldo'
          Width = 75
          FieldName = 'sisa'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsqryKasBon
      Properties.PostPopupValueOnTab = True
      Properties.OnCloseUp = ER_LCB_NO_KASBONPropertiesCloseUp
    end
    object ER_LCB_NOPEG: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'nk'
      Properties.ListColumns = <
        item
          Caption = 'NK'
          FieldName = 'nk'
        end
        item
          Caption = 'NAMA ITEM'
          Width = 200
          FieldName = 'full_name'
        end
        item
          Caption = 'INITIAL'
          FieldName = 'initial'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.PostPopupValueOnTab = True
    end
  end
  object qryRekGL: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select id_rek_gl, descriptions'
      'from master.mrek_gl'
      'where isdetail='#39'1'#39
      'order by id_rek_gl')
    Params = <>
    Left = 590
    Top = 15
    object qryRekGLid_rek_gl: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 10
      FieldName = 'id_rek_gl'
      Required = True
      Size = 30
    end
    object qryRekGLdescriptions: TStringField
      DisplayLabel = 'NAMA REKENING'
      DisplayWidth = 25
      FieldName = 'descriptions'
      Size = 255
    end
  end
  object dsqryRekGL: TDataSource
    DataSet = qryRekGL
    Left = 588
    Top = 46
  end
  object dsqryKasBon: TDataSource
    DataSet = qryKasBon
    Left = 766
    Top = 41
  end
  object MemMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_settlement'
        DataType = ftLargeint
      end
      item
        Name = 'no_settlement'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dt_settlement'
        DataType = ftDateTime
      end
      item
        Name = 'remarks'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'issettlement'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'total'
        DataType = ftFloat
      end
      item
        Name = 'usr_ins'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'usr_upd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dt_ins'
        DataType = ftDateTime
      end
      item
        Name = 'dt_upd'
        DataType = ftDateTime
      end
      item
        Name = 'prepared_by'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'reviewed_by'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'approved_by'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ispost'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'iscancel'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'isdelete'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'id_trans'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'id_curr'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'kurs'
        DataType = ftFloat
      end
      item
        Name = 'usr_post'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dt_post'
        DataType = ftDateTime
      end
      item
        Name = 'id_rek_gl'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'terbilang'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'dt_prepared'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'dt_reviewed'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'dt_approved'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'posted'
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
    Version = '7.10.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 818
    Top = 137
    object MemMasterid_settlement: TLargeintField
      FieldName = 'id_settlement'
    end
    object MemMasterno_settlement: TStringField
      FieldName = 'no_settlement'
      Size = 30
    end
    object MemMasterremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object MemMasterissettlement: TStringField
      FieldName = 'issettlement'
      Size = 1
    end
    object MemMastertotal: TFloatField
      FieldName = 'total'
    end
    object MemMasterusr_ins: TStringField
      FieldName = 'usr_ins'
    end
    object MemMasterusr_upd: TStringField
      FieldName = 'usr_upd'
    end
    object MemMasterdt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object MemMasterdt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
    object MemMasterprepared_by: TStringField
      FieldName = 'prepared_by'
      Size = 100
    end
    object MemMasterreviewed_by: TStringField
      FieldName = 'reviewed_by'
      Size = 100
    end
    object MemMasterapproved_by: TStringField
      FieldName = 'approved_by'
      Size = 100
    end
    object MemMasterispost: TStringField
      FieldName = 'ispost'
      Size = 1
    end
    object MemMasteriscancel: TStringField
      FieldName = 'iscancel'
      Size = 1
    end
    object MemMasterisdelete: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object MemMasterid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object MemMasterid_curr: TStringField
      FieldName = 'id_curr'
      Size = 3
    end
    object MemMasterkurs: TFloatField
      FieldName = 'kurs'
    end
    object MemMasterusr_post: TStringField
      FieldName = 'usr_post'
      Size = 10
    end
    object MemMasterdt_post: TDateTimeField
      FieldName = 'dt_post'
    end
    object MemMasterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object MemMasterterbilang: TStringField
      FieldName = 'terbilang'
      Size = 100
    end
    object MemMasterdt_prepared: TStringField
      FieldName = 'dt_prepared'
      Size = 100
    end
    object MemMasterdt_reviewed: TStringField
      FieldName = 'dt_reviewed'
      Size = 100
    end
    object MemMasterdt_approved: TStringField
      FieldName = 'dt_approved'
      Size = 100
    end
    object MemMasterposted: TStringField
      FieldName = 'posted'
    end
    object MemMasterdt_settlement: TStringField
      FieldName = 'dt_settlement'
      Size = 50
    end
  end
  object MemDetail: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_settlement'
        DataType = ftLargeint
      end
      item
        Name = 'nomor'
        DataType = ftInteger
      end
      item
        Name = 'id_settlement_detail'
        DataType = ftLargeint
      end
      item
        Name = 'diskripsi'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'id_rek_gl'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'no_kasbon'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nk'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'jumlah'
        DataType = ftFloat
      end
      item
        Name = 'jumlah_str'
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
    Version = '7.10.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 850
    Top = 137
    object MemDetailid_settlement: TLargeintField
      FieldName = 'id_settlement'
    end
    object MemDetailnomor: TIntegerField
      FieldName = 'nomor'
    end
    object MemDetailid_settlement_detail: TLargeintField
      FieldName = 'id_settlement_detail'
    end
    object MemDetaildiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object MemDetailid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object MemDetailno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object MemDetailnk: TStringField
      FieldName = 'nk'
      Size = 100
    end
    object MemDetailjumlah: TFloatField
      FieldName = 'jumlah'
    end
    object MemDetailjumlah_str: TStringField
      FieldName = 'jumlah_str'
      Size = 50
    end
  end
  object frxDBMemMaster: TfrxDBDataset
    UserName = 'frxDBMemMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_settlement=id_settlement'
      'no_settlement=no_settlement'
      'remarks=remarks'
      'issettlement=issettlement'
      'total=total'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'prepared_by=prepared_by'
      'reviewed_by=reviewed_by'
      'approved_by=approved_by'
      'ispost=ispost'
      'iscancel=iscancel'
      'isdelete=isdelete'
      'id_trans=id_trans'
      'id_curr=id_curr'
      'kurs=kurs'
      'usr_post=usr_post'
      'dt_post=dt_post'
      'id_rek_gl=id_rek_gl'
      'terbilang=terbilang'
      'dt_prepared=dt_prepared'
      'dt_reviewed=dt_reviewed'
      'dt_approved=dt_approved'
      'posted=posted'
      'dt_settlement=dt_settlement')
    DataSet = MemMaster
    Left = 822
    Top = 166
  end
  object frxDBMemDetail: TfrxDBDataset
    UserName = 'frxDBMemDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_settlement=id_settlement'
      'nomor=nomor'
      'id_settlement_detail=id_settlement_detail'
      'diskripsi=diskripsi'
      'id_rek_gl=id_rek_gl'
      'no_kasbon=no_kasbon'
      'nk=nk'
      'jumlah=jumlah'
      'jumlah_str=jumlah_str')
    DataSet = MemDetail
    Left = 852
    Top = 166
  end
  object MemInfoPerusahaan: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'logo'
        DataType = ftBlob
      end
      item
        Name = 'nama_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat_perusahaan'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'telp_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'fax_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'kota_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'judul'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'periode'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'printed_by'
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
    Left = 789
    Top = 138
    object MemInfoPerusahaanlogo: TBlobField
      FieldName = 'logo'
    end
    object MemInfoPerusahaannama_perusahaan: TStringField
      FieldName = 'nama_perusahaan'
      Size = 100
    end
    object MemInfoPerusahaanalamat_perusahaan: TStringField
      FieldName = 'alamat_perusahaan'
      Size = 255
    end
    object MemInfoPerusahaantelp_perusahaan: TStringField
      FieldName = 'telp_perusahaan'
      Size = 100
    end
    object MemInfoPerusahaanfax_perusahaan: TStringField
      FieldName = 'fax_perusahaan'
      Size = 100
    end
    object MemInfoPerusahaankota_perusahaan: TStringField
      FieldName = 'kota_perusahaan'
      Size = 100
    end
    object MemInfoPerusahaanjudul: TStringField
      FieldName = 'judul'
      Size = 100
    end
    object MemInfoPerusahaanperiode: TStringField
      FieldName = 'periode'
      Size = 100
    end
    object MemInfoPerusahaanprinted_by: TStringField
      FieldName = 'printed_by'
      Size = 100
    end
  end
  object frxDBInfoPerusahaan: TfrxDBDataset
    UserName = 'frxDBInfoPerusahaan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'logo=logo'
      'nama_perusahaan=nama_perusahaan'
      'alamat_perusahaan=alamat_perusahaan'
      'telp_perusahaan=telp_perusahaan'
      'fax_perusahaan=fax_perusahaan'
      'kota_perusahaan=kota_perusahaan'
      'judul=judul'
      'periode=periode'
      'printed_by=printed_by')
    DataSet = MemInfoPerusahaan
    Left = 788
    Top = 171
  end
  object frPR: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39213.076118148200000000
    ReportOptions.LastChange = 39613.888330798600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 885
    Top = 170
    Datasets = <
      item
        DataSet = frxDBInfoPerusahaan
        DataSetName = 'frxDBInfoPerusahaan'
      end
      item
        DataSet = frxDBMemDetail
        DataSetName = 'frxDBMemDetail'
      end
      item
        DataSet = frxDBMemMaster
        DataSetName = 'frxDBMemMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 11
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      BottomMargin = 15.000000000000000000
      ColumnWidth = 200.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object PageHeader1: TfrxPageHeader
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Memo1: TfrxMemoView
          Left = 275.905690000000000000
          Top = 42.472480000000000000
          Width = 196.535560000000000000
          Height = 37.795300000000000000
          DataField = 'judul'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."judul"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 82.141620000000000000
          Height = 75.763760000000000000
          DataField = 'logo'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          HightQuality = False
        end
        object Memo27: TfrxMemoView
          Left = 83.149660000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 83.149660000000000000
          Top = 15.118120000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'alamat_perusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."alamat_perusahaan"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 83.149660000000000000
          Top = 45.354360000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'fax_perusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."fax_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 83.149660000000000000
          Top = 60.472480000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'kota_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."kota_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 83.149660000000000000
          Top = 30.236240000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'telp_perusahaan'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."telp_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 563.149970000000000000
          Top = 79.370130000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          DataField = 'no_settlement'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBMemMaster."no_settlement"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 555.590910000000000000
          Top = 79.370130000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 495.118430000000000000
          Top = 79.370130000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'Nomor.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 495.118430000000000000
          Top = 98.267780000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 563.149970000000000000
          Top = 98.267780000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBMemMaster."dt_settlement"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 555.590910000000000000
          Top = 98.267780000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 83.149660000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 68.031540000000000000
          Top = 83.149660000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 79.370130000000000000
          Top = 83.149660000000000000
          Width = 385.512060000000000000
          Height = 30.236240000000000000
          DataField = 'remarks'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemMaster."remarks"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 142.842610000000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 680.315400000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 226.771800000000000000
          Top = 45.354360000000000000
          Width = 226.771800000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.BottomLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 453.543600000000000000
          Top = 45.354360000000000000
          Width = 226.771800000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.BottomLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 45.354360000000000000
          Width = 226.771800000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.LeftLine.Width = 2.000000000000000000
          ParentFont = False
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          Left = 491.338900000000000000
          Top = 105.047310000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
        end
        object MemoLblDateReviewedBy: TfrxMemoView
          Left = 226.771800000000000000
          Top = 83.149660000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'dt_reviewed'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBMemMaster."dt_reviewed"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblDateApprovedBy: TfrxMemoView
          Left = 453.543600000000000000
          Top = 83.149660000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataField = 'dt_approved'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBMemMaster."dt_approved"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoPreparedName: TfrxMemoView
          Top = 68.031540000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataField = 'prepared_by'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemMaster."prepared_by"]')
          ParentFont = False
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 83.149660000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'dt_prepared'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBMemMaster."dt_prepared"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedName: TfrxMemoView
          Left = 226.771800000000000000
          Top = 68.031540000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataField = 'reviewed_by'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemMaster."reviewed_by"]')
          ParentFont = False
        end
        object MemoApprovedName: TfrxMemoView
          Left = 453.543600000000000000
          Top = 68.031540000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DataField = 'approved_by'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemMaster."approved_by"]')
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
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIBUAT OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedBy: TfrxMemoView
          Left = 226.771800000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIPERIKSA OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 453.543600000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DISETUJUI OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 105.047310000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'printed_by'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfoPerusahaan."printed_by"]')
          ParentFont = False
        end
      end
      object HeaderPRDetail: TfrxHeader
        Height = 26.795300000000000000
        Top = 200.315090000000000000
        Width = 680.315400000000000000
        object Memo7: TfrxMemoView
          Left = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PEGAWAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 117.165430000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No. KASBON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 230.551330000000000000
          Width = 268.346630000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DISKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 498.897960000000000000
          Width = 86.929190000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KODE REK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataPRDetail: TfrxMasterData
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 680.315400000000000000
        DataSet = frxDBMemDetail
        DataSetName = 'frxDBMemDetail'
        RowCount = 0
        Stretched = True
        object Memo37: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nomor'
          DataSet = frxDBMemDetail
          DataSetName = 'frxDBMemDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.LeftLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMemDetail."nomor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 117.165430000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'no_kasbon'
          DataSet = frxDBMemDetail
          DataSetName = 'frxDBMemDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMemDetail."no_kasbon"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 230.551330000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'diskripsi'
          DataSet = frxDBMemDetail
          DataSetName = 'frxDBMemDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemDetail."diskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 498.897960000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'id_rek_gl'
          DataSet = frxDBMemDetail
          DataSetName = 'frxDBMemDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMemDetail."id_rek_gl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBMemDetail
          DataSetName = 'frxDBMemDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMemDetail."jumlah_str"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nk'
          DataSet = frxDBMemDetail
          DataSetName = 'frxDBMemDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMemDetail."nk"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 328.819110000000000000
        Width = 680.315400000000000000
        object Memo3: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMemMaster."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 495.118430000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          Memo.UTF8 = (
            'TERBILANG :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 117.165430000000000000
          Width = 377.953000000000000000
          Height = 30.236240000000000000
          DataField = 'terbilang'
          DataSet = frxDBMemMaster
          DataSetName = 'frxDBMemMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          Frame.BottomLine.Width = 1.500000000000000000
          Memo.UTF8 = (
            '[frxDBMemMaster."terbilang"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qryRekap: TZQuery
    Connection = DM.conn
    BeforeOpen = qBrowseBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT a.id_settlement, a.no_settlement, a.dt_settlement,  a.usr' +
        '_ins, a.ispost, a.iscancel, a.remarks, a.prepared_by, a.usr_post' +
        ', a.dt_post, a.total,  b.*, c.full_name'
      'FROM accfin.settlement a'
      
        'INNER JOIN accfin.settlement_detail b ON b.id_settlement=a.id_se' +
        'ttlement'
      'LEFT JOIN master.mpegawai c ON c.nk=b.nk'
      'WHERE a.isdelete='#39'0'#39' AND a.iscancel='#39'0'#39
      
        #9'and a.dt_settlement between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') a' +
        'nd to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 mi' +
        'n'#39
      'ORDER BY a.id_settlement')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2011'
      end>
    Left = 930
    Top = 130
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2000'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/01/2011'
      end>
    object qryRekapid_settlement: TLargeintField
      FieldName = 'id_settlement'
      Required = True
    end
    object qryRekapno_settlement: TStringField
      FieldName = 'no_settlement'
      Size = 30
    end
    object qryRekapdt_settlement: TDateTimeField
      FieldName = 'dt_settlement'
    end
    object qryRekapusr_ins: TStringField
      FieldName = 'usr_ins'
    end
    object qryRekapispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object qryRekapiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object qryRekapremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object qryRekapprepared_by: TStringField
      FieldName = 'prepared_by'
      Size = 30
    end
    object qryRekapusr_post: TStringField
      FieldName = 'usr_post'
      Size = 10
    end
    object qryRekapdt_post: TDateTimeField
      FieldName = 'dt_post'
    end
    object qryRekaptotal: TFloatField
      FieldName = 'total'
      Required = True
    end
    object qryRekapid_settlement_1: TLargeintField
      FieldName = 'id_settlement_1'
      Required = True
    end
    object qryRekapnomor: TIntegerField
      FieldName = 'nomor'
    end
    object qryRekapid_settlement_detail: TLargeintField
      FieldName = 'id_settlement_detail'
      Required = True
    end
    object qryRekapdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object qryRekapid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object qryRekapno_kasbon: TStringField
      FieldName = 'no_kasbon'
      Size = 100
    end
    object qryRekapnk: TStringField
      FieldName = 'nk'
      Size = 30
    end
    object qryRekapjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
    end
    object qryRekapfull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
  end
  object frxDBRekap: TfrxDBDataset
    UserName = 'frxDBRekap'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_settlement=id_settlement'
      'no_settlement=no_settlement'
      'dt_settlement=dt_settlement'
      'usr_ins=usr_ins'
      'ispost=ispost'
      'iscancel=iscancel'
      'remarks=remarks'
      'prepared_by=prepared_by'
      'usr_post=usr_post'
      'dt_post=dt_post'
      'total=total'
      'id_settlement_1=id_settlement_1'
      'nomor=nomor'
      'id_settlement_detail=id_settlement_detail'
      'diskripsi=diskripsi'
      'id_rek_gl=id_rek_gl'
      'no_kasbon=no_kasbon'
      'nk=nk'
      'jumlah=jumlah'
      'full_name=full_name')
    DataSet = qryRekap
    Left = 934
    Top = 160
  end
  object LookPegawai: TwwLookupDialog
    Selected.Strings = (
      'nk'#9'20'#9'NK'#9'F'
      'full_name'#9'50'#9'Nama Lengkap'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = qryPegawai
    Caption = 'Lookup  Pegawai'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 266
    Top = 50
  end
end

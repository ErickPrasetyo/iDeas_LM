object LapSetoranFrm: TLapSetoranFrm
  Left = 441
  Top = 164
  Width = 1112
  Height = 646
  Caption = 'Laporan Setoran'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 1096
    Height = 41
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
    FullHeight = 41
    object lblHeader1: TLabel
      Left = 13
      Top = 7
      Width = 179
      Height = 23
      Caption = 'Laporan Setoran'
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
  object pnlNavigator: TAdvPanel
    Left = 0
    Top = 565
    Width = 1096
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
    object btnSave: TSCButton
      Left = 265
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Simpan'
      Images = DM.ImageList1
      ImageIndex = 3
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 9
      TabStop = False
      OnClick = actSaveExecute
    end
    object btnCancel: TSCButton
      Left = 337
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 10
      TabStop = False
      OnClick = actCancelExecute
    end
    object btnFirst: TDBAdvGlowButton
      Left = 95
      Top = 7
      Width = 40
      Height = 25
      Caption = 'btnFirst'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ShowCaption = False
      TabOrder = 1
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsMaster
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object btnPrior: TDBAdvGlowButton
      Left = 135
      Top = 7
      Width = 40
      Height = 25
      Caption = 'DBAdvGlowButton1'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ShowCaption = False
      TabOrder = 2
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsMaster
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object btnNext: TDBAdvGlowButton
      Left = 175
      Top = 7
      Width = 40
      Height = 25
      Caption = 'DBAdvGlowButton1'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ShowCaption = False
      TabOrder = 3
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsMaster
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object btnLast: TDBAdvGlowButton
      Left = 215
      Top = 7
      Width = 40
      Height = 25
      Caption = 'DBAdvGlowButton1'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ShowCaption = False
      TabOrder = 4
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsMaster
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object btnClose: TSCButton
      Left = 15
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Tutup'
      Images = DM.ImageList1
      ImageIndex = 6
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 0
      TabStop = False
      OnClick = actCloseExecute
    end
    object btnAdd: TSCButton
      Left = 265
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Tambah'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 5
      TabStop = False
      OnClick = actAddExecute
    end
    object btnEdit: TSCButton
      Left = 337
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Koreksi'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 6
      TabStop = False
      OnClick = actEditExecute
    end
    object btnDelete: TSCButton
      Left = 409
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Hapus'
      Images = DM.ImageList1
      ImageIndex = 4
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 7
      TabStop = False
      OnClick = actDeleteExecute
    end
    object btnRefresh: TSCButton
      Left = 481
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 8
      TabStop = False
      OnClick = actRefreshExecute
    end
    object btnPrint: TSCButton
      Left = 566
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 11
      TabStop = False
      OnClick = actPrintExecute
    end
  end
  object pgTransaction: TcxPageControl
    Left = 0
    Top = 41
    Width = 1096
    Height = 524
    ActivePage = tsDetail
    Align = alClient
    Style = 8
    TabOrder = 2
    OnChange = pgTransactionChange
    OnPageChanging = pgTransactionPageChanging
    ClientRectBottom = 524
    ClientRectRight = 1096
    ClientRectTop = 24
    object tsBrowse: TcxTabSheet
      Caption = 'Browse'
      ImageIndex = 0
      object grdMaster: TcxGrid
        Left = 0
        Top = 40
        Width = 1096
        Height = 460
        Align = alClient
        TabOrder = 0
        object grddbtvMaster: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = grddbtvMasterCellDblClick
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'total'
              Column = grddbtvMastertotal
            end
            item
              Format = ',0'
              Kind = skSum
              Column = grddbtvMastertunai
            end
            item
              Format = ',0'
              Kind = skSum
              Column = grddbtvMasterklaim
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.Indicator = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtvMasterid_purchase_receive: TcxGridDBColumn
            Caption = 'Index #'
            DataBinding.FieldName = 'id'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 59
          end
          object grddbtvMasterreq_number: TcxGridDBColumn
            Caption = 'No Setoran'
            DataBinding.FieldName = 'no_setoran'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 120
          end
          object grddbtvMasterdt_req: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_setoran'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 167
          end
          object grddbtvMasterusr_upd: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'an'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 147
          end
          object grddbtvMastertotal: TcxGridDBColumn
            Caption = 'Modal Awal'
            DataBinding.FieldName = 'total_awal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
          end
          object grddbtvMastertunai: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'pembayaran'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 142
          end
          object grddbtvMasterklaim: TcxGridDBColumn
            Caption = 'Modal Akhir'
            DataBinding.FieldName = 'total_akhir'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 145
          end
          object grddbtvMasterispost: TcxGridDBColumn
            Caption = 'Posted'
            DataBinding.FieldName = 'ispost'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Sorting = False
            Width = 65
          end
          object grddbtvMasteriscancel: TcxGridDBColumn
            Caption = 'Canceled'
            DataBinding.FieldName = 'iscancel'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Sorting = False
            Width = 65
          end
        end
        object grdlvlMaster: TcxGridLevel
          GridView = grddbtvMaster
        end
      end
      object SCPanel1: TSCPanel
        Left = 0
        Top = 0
        Width = 1096
        Height = 40
        Align = alTop
        Color = 16511984
        Gradient = scgLeftToRight
        GradientEnd = 15845560
        GradientMid = 15845560
        ParentColor = False
        TabOrder = 1
        object Label8: TLabel
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
        object cxLabel1: TcxLabel
          Left = 9
          Top = 12
          Caption = 'Filter Tanggal :'
        end
        object cxLabel2: TcxLabel
          Left = 201
          Top = 12
          Caption = 'S/D'
          Transparent = True
        end
        object btnOK: TcxButton
          Left = 347
          Top = 11
          Width = 63
          Height = 21
          Caption = 'OK'
          TabOrder = 2
          OnClick = btnOKClick
          Colors.Normal = clGradientActiveCaption
          Colors.Hot = clMenuHighlight
        end
        object edtDatePicker1: TwwDBDateTimePicker
          Left = 85
          Top = 12
          Width = 112
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.StartYear = 2000
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 3
          UnboundDataType = wwDTEdtDate
          DisplayFormat = 'DD MMM YYYY'
          OnCloseUp = edtDatePicker1CloseUp
        end
        object edtDatePicker2: TwwDBDateTimePicker
          Left = 230
          Top = 12
          Width = 112
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.PopupYearOptions.StartYear = 2000
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 4
          UnboundDataType = wwDTEdtDate
          DisplayFormat = 'DD MMM YYYY'
        end
      end
    end
    object tsDetail: TcxTabSheet
      Caption = 'Detail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      object pnlMaster: TSCPanel
        Left = 0
        Top = 0
        Width = 1096
        Height = 113
        Align = alTop
        Color = 15986925
        GradientMid = 15845560
        GradientUsesMid = True
        ParentColor = False
        TabOrder = 0
        object Shape4: TShape
          Left = 6
          Top = 58
          Width = 65
          Height = 25
        end
        object Shape1: TShape
          Left = 6
          Top = 34
          Width = 65
          Height = 25
        end
        object Label1: TLabel
          Left = 10
          Top = 40
          Width = 43
          Height = 13
          Caption = 'No. Kasir'
          Transparent = True
        end
        object Shape2: TShape
          Left = 70
          Top = 34
          Width = 175
          Height = 25
        end
        object Label3: TLabel
          Left = 10
          Top = 63
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
        object Shape3: TShape
          Left = 70
          Top = 58
          Width = 175
          Height = 25
        end
        object Shape8: TShape
          Left = 6
          Top = 82
          Width = 65
          Height = 25
        end
        object Label2: TLabel
          Left = 10
          Top = 87
          Width = 39
          Height = 13
          Caption = 'Tanggal'
          Transparent = True
        end
        object Shape7: TShape
          Left = 70
          Top = 82
          Width = 175
          Height = 25
        end
        object RzGroupBox2: TRzGroupBox
          Left = 7
          Top = 5
          Width = 209
          Height = 25
          GroupStyle = gsStandard
          TabOrder = 0
          Transparent = True
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 17
            Top = 4
            Caption = 'Posted'
            DataBinding.DataField = 'ispost'
            DataBinding.DataSource = dsMaster
            ParentFont = False
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            TabOrder = 0
            Transparent = True
            Width = 72
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 102
            Top = 4
            Caption = 'Canceled'
            DataBinding.DataField = 'iscancel'
            DataBinding.DataSource = dsMaster
            ParentFont = False
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            TabOrder = 1
            Transparent = True
            Width = 85
          end
        end
        object GroupBox1: TGroupBox
          Left = 475
          Top = 29
          Width = 234
          Height = 78
          Caption = 'Keterangan'
          TabOrder = 5
          object MemRemarks: TcxDBMemo
            Left = 5
            Top = 14
            DataBinding.DataField = 'keterangan'
            DataBinding.DataSource = dsMaster
            TabOrder = 0
            Height = 59
            Width = 224
          end
        end
        object edtKode: TcxDBTextEdit
          Left = 73
          Top = 36
          DataBinding.DataField = 'no_setoran'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          Style.Edges = []
          StyleFocused.BorderStyle = ebsThick
          StyleHot.BorderStyle = ebsThick
          TabOrder = 1
          Width = 169
        end
        object edtOrdering: TcxDBTextEdit
          Left = 73
          Top = 61
          DataBinding.DataField = 'id'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          Style.BorderStyle = ebsOffice11
          Style.Edges = []
          Style.Shadow = False
          StyleFocused.BorderStyle = ebsThick
          StyleHot.BorderStyle = ebsThick
          TabOrder = 2
          Width = 169
        end
        object edtDateEdit: TcxDBDateEdit
          Left = 73
          Top = 84
          DataBinding.DataField = 'dt_setoran'
          DataBinding.DataSource = dsMaster
          Style.BorderStyle = ebsNone
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Shadow = False
          StyleFocused.BorderStyle = ebsThick
          StyleHot.BorderStyle = ebsFlat
          TabOrder = 3
          Width = 169
        end
        object cxGroupBox3: TcxGroupBox
          Left = 248
          Top = 28
          Caption = 'Informasi Transaksi'
          TabOrder = 4
          Transparent = True
          Height = 80
          Width = 224
          object Label5: TLabel
            Left = 7
            Top = 17
            Width = 29
            Height = 13
            Caption = 'Modal'
            Transparent = True
          end
          object Label6: TLabel
            Left = 7
            Top = 58
            Width = 45
            Height = 13
            Caption = 'Petugas :'
            Transparent = True
          end
          object edtPetugas: TcxDBButtonEdit
            Left = 71
            Top = 55
            DataBinding.DataField = 'an'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edtPetugasPropertiesButtonClick
            TabOrder = 1
            Width = 145
          end
          object edtmodal: TcxDBTextEdit
            Left = 71
            Top = 13
            DataBinding.DataField = 'total_awal'
            DataBinding.DataSource = dsMaster
            Style.BorderStyle = ebsUltraFlat
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Shadow = False
            TabOrder = 0
            Width = 145
          end
        end
      end
      object adpDetailNavigator: TAdvDockPanel
        Left = 0
        Top = 113
        Width = 1096
        Height = 44
        MinimumSize = 25
        LockHeight = False
        Persistence.Location = plRegistry
        Persistence.Enabled = False
        ToolBarStyler = ATBOS
        UseRunTimeHeight = True
        Version = '6.0.4.5'
        object atbDetailNavigator: TAdvToolBar
          Left = 3
          Top = 1
          Width = 1090
          Height = 42
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
          FullSize = True
          TextAutoOptionMenu = 'Add or Remove Buttons'
          TextOptionMenu = 'Options'
          ToolBarStyler = ATBOS
          ParentOptionPicture = False
          ShowHint = False
          ToolBarIndex = -1
          object btnGetItems: TSCButton
            Left = 2
            Top = 2
            Width = 107
            Height = 35
            Caption = 'Ambil Data'
            Color = 13303760
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Images = DM.ImageList1
            ImageIndex = 19
            ParentFont = False
            RoundColor = 11507049
            RoundWithParentColor = False
            Style = scbsXP
            TabOrder = 0
            OnClick = btnGetItemsClick
          end
        end
      end
      object grdDetail: TcxGrid
        Left = 0
        Top = 157
        Width = 1096
        Height = 343
        Align = alClient
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
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
              Format = ',0'
              Kind = skSum
              FieldName = 'total_bayar'
              Column = grddbtvDetailtotal_tagihan
            end
            item
              Format = '0.0,0'
              Kind = skSum
            end
            item
              Format = '0.0,0'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
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
          object grddbtvDetailurut: TcxGridDBColumn
            Caption = 'No.'
            DataBinding.FieldName = 'urut'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 32
          end
          object grddbtvDetailno_nota: TcxGridDBColumn
            Caption = 'No. Faktur'
            DataBinding.FieldName = 'no_nota'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 87
          end
          object grddbtvDetaildt_nota: TcxGridDBColumn
            Caption = 'Tgl. Faktur'
            DataBinding.FieldName = 'dt_nota'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 97
          end
          object grddbtvDetailnama_pasien: TcxGridDBColumn
            Caption = 'Nama Supplier'
            DataBinding.FieldName = 'nama_supplier'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 257
          end
          object grddbtvDetailtotal_tagihan: TcxGridDBColumn
            Caption = 'Total Pembayaran'
            DataBinding.FieldName = 'total_bayar'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 124
          end
        end
        object grdlvlDetail: TcxGridLevel
          GridView = grddbtvDetail
        end
      end
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 376
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
    Left = 376
    Top = 38
  end
  object SR: TcxStyleRepository
    Left = 409
    Top = 6
    PixelsPerInch = 106
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
  object aclFrm: TActionList
    Left = 412
    Top = 38
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
    object actAdd: TAction
      Caption = 'Add'
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = 'Edit'
      OnExecute = actEditExecute
    end
    object actDelete: TAction
      Caption = 'Delete'
      OnExecute = actDeleteExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
    end
    object actSave: TAction
      Caption = 'Save'
      OnExecute = actSaveExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      OnExecute = actCancelExecute
    end
    object actPrint: TAction
      Caption = 'Print'
      OnExecute = actPrintExecute
    end
    object actPosting: TAction
      Caption = 'Posting'
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 476
    Top = 8
  end
  object Master: TZQuery
    Connection = DM.conn
    BeforeOpen = MasterBeforeOpen
    OnCalcFields = MasterCalcFields
    CachedUpdates = True
    BeforeEdit = MasterBeforeEdit
    BeforePost = MasterBeforePost
    BeforeDelete = MasterBeforeDelete
    OnNewRecord = MasterNewRecord
    SQL.Strings = (
      'select * '
      'from accfin.setoran'
      'where isdelete='#39'0'#39' and'
      
        'dt_setoran between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') and to_time' +
        'stamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 min'#39
      'order by dt_setoran')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2009'
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    Left = 444
    Top = 6
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/01/2009'
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    object Masterid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object Masterno_setoran: TStringField
      FieldName = 'no_setoran'
      Size = 120
    end
    object Masteran: TStringField
      FieldName = 'an'
      Size = 400
    end
    object Masterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 120
    end
    object Masterusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object Masterusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object Masterdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object Masterdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object Masterispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 4
    end
    object Masteriscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 4
    end
    object Masterisdelete: TStringField
      FieldName = 'isdelete'
      Required = True
      Size = 4
    end
    object Masterisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 4
    end
    object Mastertotal_awal: TFloatField
      FieldName = 'total_awal'
      Required = True
      DisplayFormat = '#,##;0,00'
    end
    object Mastertotal_akhir: TFloatField
      FieldName = 'total_akhir'
      Required = True
      DisplayFormat = '#,##;0,00'
    end
    object Masterdt_setoran: TDateTimeField
      FieldName = 'dt_setoran'
      Required = True
    end
    object Masterketerangan: TStringField
      FieldName = 'keterangan'
      Size = 1020
    end
    object Mastershift: TIntegerField
      FieldName = 'shift'
      Required = True
    end
    object Masterpembayaran: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pembayaran'
      DisplayFormat = '#,##;0,00'
      Calculated = True
    end
  end
  object Detail: TZQuery
    Connection = DM.conn
    CachedUpdates = True
    BeforeInsert = DetailBeforeInsert
    BeforeEdit = DetailBeforeEdit
    OnNewRecord = DetailNewRecord
    SQL.Strings = (
      'select a.*'
      'from accfin.setoran_detail a'
      'where a.id_setoran=:id_setoran'
      'order by urut')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_setoran'
        ParamType = ptUnknown
      end>
    Left = 441
    Top = 39
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_setoran'
        ParamType = ptUnknown
      end>
    object Detailid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object Detailid_setoran: TLargeintField
      FieldName = 'id_setoran'
      Required = True
    end
    object Detailurut: TIntegerField
      FieldName = 'urut'
    end
    object Detailno_nota: TStringField
      Alignment = taCenter
      FieldName = 'no_nota'
      Required = True
      Size = 120
    end
    object Detaildt_nota: TDateTimeField
      Alignment = taCenter
      FieldName = 'dt_nota'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detailcara_bayar: TStringField
      Alignment = taCenter
      FieldName = 'cara_bayar'
      Size = 80
    end
    object Detailnama_supplier: TStringField
      FieldName = 'nama_supplier'
      Size = 120
    end
    object Detailkd_supplier: TStringField
      Alignment = taCenter
      FieldName = 'kd_supplier'
      Size = 1020
    end
    object Detailketerangan: TStringField
      FieldName = 'keterangan'
      Size = 1020
    end
    object Detailtotal_bayar: TFloatField
      FieldName = 'total_bayar'
      DisplayFormat = '#,##;0,00'
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 476
    Top = 38
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
    Left = 378
    Top = 70
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 218
    Top = 16
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
    Left = 218
    Top = 46
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
    Left = 247
    Top = 46
  end
  object qryGet_Kasir_Number: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select accfin.fn_gen_setoran_number()')
    Params = <>
    Left = 508
    Top = 40
    object qryGet_Kasir_Numberfn_gen_setoran_number: TStringField
      FieldName = 'fn_gen_setoran_number'
      ReadOnly = True
      Size = 252
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
      'email=email')
    DataSet = MemInfoPerusahaan
    BCDToCurrency = False
    Left = 661
    Top = 44
  end
  object MemInfoPerusahaan: TkbmMemTable
    Active = True
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
    Left = 659
    Top = 14
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
    object MemInfoPerusahaanemail: TStringField
      FieldKind = fkLookup
      FieldName = 'email'
      LookupDataSet = DM.L_Perusahaan
      LookupKeyFields = 'address'
      LookupResultField = 'email'
      KeyFields = 'nama_perusahaan'
      Size = 100
      Lookup = True
    end
  end
  object qUser: TZQuery
    Connection = DM.conn
    CachedUpdates = True
    SQL.Strings = (
      'select *'
      'from master.mpegawai'
      'where isactive='#39'1'#39)
    Params = <>
    Left = 757
    Top = 125
    object qUserfull_name: TStringField
      DisplayWidth = 60
      FieldName = 'full_name'
      Size = 400
    end
    object qUsernk: TStringField
      DisplayWidth = 30
      FieldName = 'nk'
      Required = True
      Size = 80
    end
  end
  object LookupUser: TwwLookupDialog
    Selected.Strings = (
      'full_name'#9'60'#9'full_name'#9'F'
      'nk'#9'30'#9'nk'#9'F')
    GridTitleAlignment = taCenter
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = qUser
    Caption = 'Lookup  User Kasir'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 759
    Top = 156
  end
  object qNota: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.*, b.no_bukti as no_reff'
      'from accfin.payment a'
      'left join accfin.payment_detail b on b.id_payment=a.id_payment'
      
        'where a.dt_payment between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') an' +
        'd to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') + interval '#39'23 hours 59 min' +
        'utes'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end>
    Left = 556
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end>
    object qNotaid_payment: TLargeintField
      FieldName = 'id_payment'
      Required = True
    end
    object qNotadt_payment: TDateTimeField
      FieldName = 'dt_payment'
      Required = True
    end
    object qNotadue_date: TDateTimeField
      FieldName = 'due_date'
    end
    object qNotaid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 40
    end
    object qNotausr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 40
    end
    object qNotausr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 40
    end
    object qNotadt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qNotadt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qNotaispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 4
    end
    object qNotaiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 4
    end
    object qNotaisdelete: TStringField
      FieldName = 'isdelete'
      Required = True
      Size = 4
    end
    object qNotano_payment: TStringField
      FieldName = 'no_payment'
      Size = 80
    end
    object qNotanominal: TFloatField
      FieldName = 'nominal'
      Required = True
    end
    object qNotaiscair: TStringField
      FieldName = 'iscair'
      Required = True
      Size = 4
    end
    object qNotadt_cair: TDateTimeField
      FieldName = 'dt_cair'
    end
    object qNotaistolak: TStringField
      FieldName = 'istolak'
      Required = True
      Size = 4
    end
    object qNotaremarks: TStringField
      FieldName = 'remarks'
      Size = 1020
    end
    object qNotabank: TStringField
      FieldName = 'bank'
      Size = 400
    end
    object qNotano_cek_bg_tt: TStringField
      FieldName = 'no_cek_bg_tt'
      Size = 128
    end
    object qNotaan: TStringField
      FieldName = 'an'
      Size = 200
    end
    object qNotanama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Size = 200
    end
    object qNotano_bkbb: TStringField
      FieldName = 'no_bkbb'
      Size = 128
    end
    object qNotaid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 120
    end
    object qNotajns_ttbg: TStringField
      FieldName = 'jns_ttbg'
      Size = 200
    end
    object qNotaid_curr: TStringField
      FieldName = 'id_curr'
      Size = 12
    end
    object qNotakurs: TFloatField
      FieldName = 'kurs'
      Required = True
    end
    object qNotano_bukti: TStringField
      FieldName = 'no_bukti'
      Size = 128
    end
    object qNotaid_cc_project: TStringField
      FieldName = 'id_cc_project'
      Size = 40
    end
    object qNotaprepared_by: TStringField
      FieldName = 'prepared_by'
      Size = 40
    end
    object qNotadt_prepared: TDateTimeField
      FieldName = 'dt_prepared'
    end
    object qNotareviewed_by_1: TStringField
      FieldName = 'reviewed_by_1'
      Size = 40
    end
    object qNotareviewed_by_2: TStringField
      FieldName = 'reviewed_by_2'
      Size = 40
    end
    object qNotaapproved_by_1: TStringField
      FieldName = 'approved_by_1'
      Size = 40
    end
    object qNotakd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Size = 80
    end
    object qNotausr_post: TStringField
      FieldName = 'usr_post'
      Size = 40
    end
    object qNotadt_post: TDateTimeField
      FieldName = 'dt_post'
    end
    object qNotajns_rekanan: TStringField
      FieldName = 'jns_rekanan'
      Size = 80
    end
    object qNotaemployee: TStringField
      FieldName = 'employee'
      Size = 1020
    end
    object qNotasubtotal: TFloatField
      FieldName = 'subtotal'
      Required = True
    end
    object qNotano_reff: TStringField
      FieldName = 'no_reff'
      Required = True
      Size = 128
    end
  end
  object qExec: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      '')
    Params = <>
    Left = 620
    Top = 104
  end
  object sq_kasir: TZSequence
    Connection = DM.conn
    SequenceName = 'accfin.sq_setoran'
    Left = 504
    Top = 9
  end
  object frxTT: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38721.620727534690000000
    ReportOptions.LastChange = 38721.620727534690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 789
    Top = 42
    Datasets = <
      item
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
      end
      item
        DataSet = frxDBInfoPerusahaan
        DataSetName = 'frxDBInfoPerusahaan'
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
      PaperHeight = 170.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 131.616883330000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 63.929190000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANDA TERIMA SETORAN MODAL HARIAN')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 3.779530000000001000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 114.165430000000000000
          Top = 7.559059999999999000
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
          Top = 68.031540000000010000
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
        object Memo8: TfrxMemoView
          Left = 3.000000000000000000
          Top = 94.102350000000000000
          Width = 93.921460000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 100.000000000000000000
          Top = 94.102350000000000000
          Width = 18.905690000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 119.000000000000000000
          Top = 94.102350000000000000
          Width = 162.905690000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."dt_setoran"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.000000000000000000
          Top = 113.102350000000000000
          Width = 93.921460000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Modal Awal')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 100.000000000000000000
          Top = 113.102350000000000000
          Width = 18.905690000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 142.000000000000000000
          Top = 113.102350000000000000
          Width = 182.136459230000000000
          Height = 15.118110240000000000
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."total_awal"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 120.000000000000000000
          Top = 113.102350000000000000
          Width = 18.905690000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
        RowCount = 0
        Stretched = True
        object Memo30: TfrxMemoView
          Left = 528.494030770000000000
          Width = 190.385900000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '#,##;0,00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetail."total"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 56.819110000000000000
          Width = 470.905690000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDetail."deskripsi"]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Width = 56.692913385826800000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 21.564304470000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Width = 56.692913390000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 527.724800000000000000
          Width = 190.385900000000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 56.819110000000000000
          Width = 470.905690000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 89.267780000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object MemoApprovedName: TfrxMemoView
          Left = 495.118430000000000000
          Top = 60.472480000000010000
          Width = 204.094620000000000000
          Height = 15.118110236220500000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Height = 15.118110236220500000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Top = 74.149659999999920000
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
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIBUAT OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 22.677180000000000000
          Top = 60.472480000000010000
          Width = 7.559060000000000000
          Height = 15.118110236220500000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '(')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 234.330860000000000000
          Top = 60.472480000000010000
          Width = 7.559060000000000000
          Height = 15.118110236220500000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ')')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Top = 74.149659999999920000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 33.000000000000000000
          Top = 60.354330710000000000
          Width = 197.559060000000000000
          Height = 15.118110240000000000
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."an"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 83.604529210000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 527.572356670000000000
          Top = 6.178726659999995000
          Width = 190.385900000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '#,##;0,00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."pembayaran"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 56.666666670000000000
          Top = 6.178726659999995000
          Width = 470.905690000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PEMBAYARAN     :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.666666670000000000
          Width = 714.252320000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 527.828766920000000000
          Top = 23.016744620000000000
          Width = 190.385900000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '#,##;0,00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."total_awal"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 56.923076920000000000
          Top = 23.016744620000000000
          Width = 470.905690000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'MODAL AWAL    :')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 527.597997690000000000
          Top = 39.478283079999980000
          Width = 190.385900000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '#,##;0,00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."total_akhir"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 56.923076920000000000
          Top = 39.478283079999980000
          Width = 470.905690000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'SISA MODAL     :')
          ParentFont = False
        end
      end
    end
  end
  object qTotal: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select sum(a.nominal) as total'
      'from accfin.payment a'
      
        'where a.dt_payment between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') an' +
        'd to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') + interval '#39'23 hours 59 min' +
        'utes'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end>
    Left = 588
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end>
    object qTotaltotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object memMaster: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'no_setoran'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'an'
        DataType = ftString
        Size = 400
      end
      item
        Name = 'total_awal'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'total_akhir'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'dt_setoran'
        Attributes = [faRequired]
        DataType = ftDateTime
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
    Left = 691
    Top = 14
    object memMasterno_setoran: TStringField
      FieldName = 'no_setoran'
      Size = 120
    end
    object memMasteran: TStringField
      FieldName = 'an'
      Size = 400
    end
    object memMastertotal_awal: TFloatField
      FieldName = 'total_awal'
      Required = True
      DisplayFormat = '#,##;0,00'
    end
    object memMastertotal_akhir: TFloatField
      FieldName = 'total_akhir'
      Required = True
      DisplayFormat = '#,##;0,00'
    end
    object memMasterdt_setoran: TDateTimeField
      FieldName = 'dt_setoran'
      Required = True
    end
    object memMasterpembayaran: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pembayaran'
      DisplayFormat = '#,##;0,00'
      Calculated = True
    end
  end
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_setoran=no_setoran'
      'an=an'
      'total_awal=total_awal'
      'total_akhir=total_akhir'
      'dt_setoran=dt_setoran'
      'pembayaran=pembayaran')
    DataSet = memMaster
    BCDToCurrency = False
    Left = 693
    Top = 44
  end
  object memDetail: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nomor'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'deskripsi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'total'
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
    Left = 723
    Top = 14
    object memDetailnomor: TStringField
      FieldName = 'nomor'
    end
    object memDetaildeskripsi: TStringField
      FieldName = 'deskripsi'
      Size = 255
    end
    object memDetailtotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
  end
  object frxDBDetail: TfrxDBDataset
    UserName = 'frxDBDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nomor=nomor'
      'deskripsi=deskripsi'
      'total=total')
    DataSet = memDetail
    BCDToCurrency = False
    Left = 725
    Top = 44
  end
end
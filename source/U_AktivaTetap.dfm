object AktivaTetapFrm: TAktivaTetapFrm
  Left = 281
  Top = 48
  Width = 972
  Height = 646
  Caption = 'Data Pegawai'
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
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 956
    Height = 46
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
    Styler = APS
    FullHeight = 41
    object lblHeader1: TLabel
      Left = 11
      Top = 9
      Width = 150
      Height = 23
      Caption = 'Data Pegawai'
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
    Top = 568
    Width = 956
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
    Styler = APS
    FullHeight = 40
    object btnFirst: TDBAdvGlowButton
      Left = 105
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
      Left = 145
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
      Left = 185
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
      Left = 225
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
    object btnSave: TSCButton
      Left = 280
      Top = 6
      Width = 72
      Height = 25
      Caption = '&Simpan'
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
      Left = 356
      Top = 6
      Width = 72
      Height = 25
      Caption = '&Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 10
      TabStop = False
      OnClick = actCancelExecute
    end
    object btnClose: TSCButton
      Left = 14
      Top = 7
      Width = 72
      Height = 25
      Caption = 'T&utup'
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
      Left = 282
      Top = 6
      Width = 72
      Height = 25
      Caption = '&Tambah'
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
      Left = 356
      Top = 6
      Width = 72
      Height = 25
      Caption = '&Koreksi'
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
      Left = 431
      Top = 6
      Width = 72
      Height = 25
      Caption = '&Hapus'
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
      Left = 506
      Top = 6
      Width = 72
      Height = 25
      Caption = '&Refresh'
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
      Left = 607
      Top = 7
      Width = 72
      Height = 25
      Caption = '&Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 11
      TabStop = False
      OnClick = btnPrintClick
    end
  end
  object pgMaster: TcxPageControl
    Left = 0
    Top = 46
    Width = 956
    Height = 522
    ActivePage = tsBrowse
    Align = alClient
    Style = 8
    TabOrder = 3
    OnPageChanging = pgMasterPageChanging
    ClientRectBottom = 522
    ClientRectRight = 956
    ClientRectTop = 24
    object tsBrowse: TcxTabSheet
      Caption = 'Browse'
      ImageIndex = 0
      object grdMaster: TcxGrid
        Left = 0
        Top = 0
        Width = 956
        Height = 498
        Align = alClient
        TabOrder = 0
        object grddbtvMaster: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          Styles.ContentEven = cxStyle2
          Styles.Selection = cxStyle4
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle3
          Bands = <
            item
              Width = 424
            end
            item
              Caption = 'PEROLEHAN'
              Width = 303
            end
            item
              Width = 227
            end>
          object grddbtvMasterkd_aset: TcxGridDBBandedColumn
            Caption = 'No. Aset'
            DataBinding.FieldName = 'kd_aset'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grddbtvMasterdiskripsi: TcxGridDBBandedColumn
            Caption = 'Diskripsi'
            DataBinding.FieldName = 'diskripsi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 220
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grddbtvMasterdt_perolehan: TcxGridDBBandedColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dt_perolehan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 77
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grddbtvMasterqty: TcxGridDBBandedColumn
            Caption = 'Unit'
            DataBinding.FieldName = 'qty'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grddbtvMasternilai_perolehan: TcxGridDBBandedColumn
            Caption = 'Nilai'
            DataBinding.FieldName = 'nilai_perolehan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 95
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grddbtvMasterjml_perolehan: TcxGridDBBandedColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'jml_perolehan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 91
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grddbtvMasterkurang: TcxGridDBBandedColumn
            Caption = 'Perubahan'
            DataBinding.FieldName = 'perubahan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 126
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grddbtvMasternilai_buku: TcxGridDBBandedColumn
            Caption = 'Nilai Buku'
            DataBinding.FieldName = 'nilai_buku'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 118
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grddbtvMasterjenis_aset: TcxGridDBBandedColumn
            Caption = 'Jenis Aset'
            DataBinding.FieldName = 'jenis_aset'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 108
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grddbtvMasterispost: TcxGridDBBandedColumn
            Caption = 'Posted'
            DataBinding.FieldName = 'ispost'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 72
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grddbtvMasterishapus: TcxGridDBBandedColumn
            Caption = 'Hapus'
            DataBinding.FieldName = 'ishapus'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 60
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object grdlvlMaster: TcxGridLevel
          GridView = grddbtvMaster
        end
      end
    end
    object tsDetail: TcxTabSheet
      Caption = 'Detail'
      ImageIndex = 1
      object pnlDetailSupplier: TRzPanel
        Left = 22
        Top = 6
        Width = 410
        Height = 305
        Color = 15919073
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object lblDBNamaRekanan: TRzDBLabel
          Left = 12
          Top = 8
          Width = 301
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7879740
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          BlinkIntervalOff = 600
          BlinkIntervalOn = 600
          DataField = 'diskripsi'
          DataSource = dsMaster
        end
        object RzLabel2: TRzLabel
          Left = 11
          Top = 81
          Width = 45
          Height = 13
          Caption = 'Kelompok'
          FocusControl = edtKelompok
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 600
          BlinkIntervalOn = 600
          BevelWidth = 0
        end
        object RzLabel4: TRzLabel
          Left = 11
          Top = 123
          Width = 38
          Height = 13
          Caption = 'Diskripsi'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 600
          BlinkIntervalOn = 600
          BevelWidth = 0
        end
        object RzLabel5: TRzLabel
          Left = 11
          Top = 166
          Width = 19
          Height = 13
          Caption = 'Unit'
          FocusControl = edtUnit
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 600
          BlinkIntervalOn = 600
          BevelWidth = 0
        end
        object RzLabel7: TRzLabel
          Left = 14
          Top = 35
          Width = 89
          Height = 13
          Caption = 'Tanggal Perolehan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 600
          BlinkIntervalOn = 600
          BevelWidth = 0
        end
        object RzLabel8: TRzLabel
          Left = 11
          Top = 211
          Width = 70
          Height = 13
          Caption = 'Nilai Perolehan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 600
          BlinkIntervalOn = 600
          BevelWidth = 0
        end
        object Label2: TLabel
          Left = 63
          Top = 46
          Width = 12
          Height = 19
          AutoSize = False
          Caption = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RzLabel13: TRzLabel
          Left = 258
          Top = 80
          Width = 42
          Height = 13
          Caption = 'No. Aset'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 600
          BlinkIntervalOn = 600
          BevelWidth = 0
        end
        object edtDiskripsi: TRzDBEdit
          Left = 12
          Top = 138
          Width = 386
          Height = 19
          DataSource = dsMaster
          DataField = 'diskripsi'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 7879740
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object edtUnit: TRzDBEdit
          Left = 12
          Top = 182
          Width = 213
          Height = 19
          DataSource = dsMaster
          DataField = 'qty'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 7879740
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object edtNilaiPerolehan: TRzDBEdit
          Left = 12
          Top = 227
          Width = 213
          Height = 19
          DataSource = dsMaster
          DataField = 'nilai_perolehan'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 7879740
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object edtTglLahir: TcxDBDateEdit
          Left = 12
          Top = 50
          DataBinding.DataField = 'dt_perolehan'
          DataBinding.DataSource = dsMaster
          TabOrder = 5
          Width = 213
        end
        object edtNK: TRzDBEdit
          Left = 254
          Top = 98
          Width = 143
          Height = 19
          DataSource = dsMaster
          DataField = 'kd_aset'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 7879740
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object edtKelompok: TcxDBButtonEdit
          Left = 12
          Top = 97
          DataBinding.DataField = 'jenis_aset'
          DataBinding.DataSource = dsMaster
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtKelompokPropertiesButtonClick
          TabOrder = 1
          Width = 244
        end
      end
    end
  end
  object AFS: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 158
    Top = 22
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
    Left = 348
    Top = 20
  end
  object SR: TcxStyleRepository
    Left = 192
    Top = 26
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
  object dsMaster: TDataSource
    DataSet = Master
    Left = 131
    Top = 42
  end
  object Master: TZQuery
    Connection = DM.conn
    OnCalcFields = MasterCalcFields
    BeforePost = MasterBeforePost
    OnNewRecord = MasterNewRecord
    SQL.Strings = (
      'select * from aset.maset'
      'order by kd_jenis, kd_aset'
      '')
    Params = <>
    Left = 120
    Top = 21
    object Masterkd_aset: TStringField
      FieldName = 'kd_aset'
      Required = True
      Size = 100
    end
    object Masterdiskripsi: TStringField
      FieldName = 'diskripsi'
      Required = True
      Size = 255
    end
    object Masterdt_perolehan: TDateField
      FieldName = 'dt_perolehan'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object Masternilai_perolehan: TFloatField
      FieldName = 'nilai_perolehan'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Masterqty: TIntegerField
      FieldName = 'qty'
      Required = True
    end
    object Masterjml_perolehan: TFloatField
      FieldName = 'jml_perolehan'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Mastertambah: TFloatField
      FieldName = 'tambah'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Masterkurang: TFloatField
      FieldName = 'kurang'
      Required = True
      DisplayFormat = '0.0,0'
    end
    object Masterumur_thn: TFloatField
      FieldName = 'umur_thn'
      Required = True
    end
    object Masterpsn_susut: TFloatField
      FieldName = 'psn_susut'
      Required = True
    end
    object Masterkd_jenis: TStringField
      FieldName = 'kd_jenis'
    end
    object Masterusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object Masterusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object Masterispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object Masterishapus: TStringField
      FieldName = 'ishapus'
      Required = True
      Size = 1
    end
    object Masterisdelete: TStringField
      FieldName = 'isdelete'
      Required = True
      Size = 1
    end
    object Masterjenis_aset: TStringField
      FieldKind = fkLookup
      FieldName = 'jenis_aset'
      LookupDataSet = DM.L_JenisAset
      LookupKeyFields = 'kd_jenis'
      LookupResultField = 'diskripsi'
      KeyFields = 'kd_jenis'
      Size = 255
      Lookup = True
    end
    object Masterperubahan: TFloatField
      FieldKind = fkLookup
      FieldName = 'perubahan'
      LookupDataSet = qryPerubahan
      LookupKeyFields = 'kd_aset'
      LookupResultField = 'perubahan'
      KeyFields = 'kd_aset'
      DisplayFormat = '0.0,0'
      Lookup = True
    end
    object Masternilai_buku: TFloatField
      FieldKind = fkCalculated
      FieldName = 'nilai_buku'
      DisplayFormat = '0.0,0'
      Calculated = True
    end
  end
  object aclFrm: TActionList
    Left = 234
    Top = 26
    object actClose: TAction
      Caption = 'Tutup'
      OnExecute = actCloseExecute
    end
    object actAdd: TAction
      Caption = 'Tambah'
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = 'Koreksi'
      OnExecute = actEditExecute
    end
    object actDelete: TAction
      Caption = 'Hapus'
      OnExecute = actDeleteExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
    end
    object actSave: TAction
      Caption = 'Simpan'
      OnExecute = actSaveExecute
    end
    object actCancel: TAction
      Caption = 'Batal'
      OnExecute = actCancelExecute
    end
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
    Version = '5.60'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 518
    Top = 11
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
      'kota_perusahaan=kota_perusahaan')
    DataSet = MemInfoPerusahaan
    Left = 546
    Top = 11
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
    Left = 533
    Top = 174
    Datasets = <
      item
        DataSet = frxDBmaster
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
      object PageHeader1: TfrxPageHeader
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 264.567100000000000000
          Top = 34.015770000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'MASTER KARYAWAN')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          HightQuality = False
        end
        object Line1: TfrxLineView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 763.465060000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Height = 124.724490000000000000
          Frame.Typ = [ftLeft]
          Frame.Width = 2.000000000000000000
        end
        object Line3: TfrxLineView
          Left = 778.583180000000000000
          Top = 18.897650000000000000
          Height = 124.724490000000000000
          Frame.Typ = [ftLeft]
          Frame.Width = 2.000000000000000000
        end
        object Line4: TfrxLineView
          Left = 15.118120000000000000
          Top = 143.622140000000000000
          Width = 763.465060000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo4: TfrxMemoView
          Left = 117.944960000000000000
          Top = 64.252010000000000000
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
          Left = 117.944960000000000000
          Top = 79.370130000000000000
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
          Left = 117.944960000000000000
          Top = 109.606370000000000000
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
          Left = 117.944960000000000000
          Top = 124.724490000000000000
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
          Left = 117.921123150000000000
          Top = 94.488250000000000000
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
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 793.701300000000000000
        DataSet = frxDBmaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 49.133890000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          DataField = 'id_karyawan'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBMaster."id_karyawan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 105.826840000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          DataField = 'nama_karyawan'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBMaster."nama_karyawan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 347.716760000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          DataField = 'telepon'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBMaster."telepon"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 464.882190000000000000
          Width = 173.858380000000000000
          Height = 22.677180000000000000
          DataField = 'bagian'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."bagian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 638.740570000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DataField = 'jabatan'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."jabatan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 15.118120000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          DataField = 'no'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."no"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 26.456710000000000000
        Top = 192.756030000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Width = 56.692950000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 105.826840000000000000
          Width = 241.889920000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Karyawan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 347.716760000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telepon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 464.882190000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bagian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 638.740570000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jabatan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 15.118120000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 385.512060000000000000
        Width = 793.701300000000000000
        object Memo16: TfrxMemoView
          Left = 15.118120000000000000
          Top = 7.559059999999990000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dicetak')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 64.252010000000000000
          Top = 7.559059999999990000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 64.252010000000000000
          Top = 26.456710000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 75.590600000000000000
          Top = 7.559059999999990000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataField = 'usr_print'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."usr_print"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 75.590600000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataField = 'dt_print'
          DataSet = frxDBmaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."dt_print"]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        Top = 362.834880000000000000
        Width = 793.701300000000000000
        object Line5: TfrxLineView
          Left = 15.118120000000000000
          Width = 763.465060000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBmaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_karyawan=id_karyawan'
      'nama_karyawan=nama_karyawan'
      'telepon=telepon'
      'no=no'
      'bagian=bagian'
      'jabatan=jabatan'
      'usr_print=usr_print'
      'dt_print=dt_print')
    DataSet = MemMaster
    Left = 562
    Top = 174
  end
  object MemMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_karyawan'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'nama_karyawan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tmp_lahir'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'kota'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'telepon'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sts_kawin'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'usr_ins'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'usr_upd'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'jns_kel'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dt_lahir'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'dt_masuk'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'no'
        DataType = ftInteger
      end
      item
        Name = 'bagian'
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
    Version = '5.60'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 593
    Top = 174
    object MemMasterid_karyawan: TStringField
      FieldName = 'id_karyawan'
      Size = 10
    end
    object MemMasternama_karyawan: TStringField
      FieldName = 'nama_karyawan'
      Size = 100
    end
    object MemMastertelepon: TStringField
      FieldName = 'telepon'
      Size = 50
    end
    object MemMasterno: TIntegerField
      FieldName = 'no'
    end
    object MemMasterbagian: TStringField
      FieldName = 'bagian'
      Size = 100
    end
    object MemMasterjabatan: TStringField
      FieldName = 'jabatan'
      Size = 100
    end
    object MemMasterusr_print: TStringField
      FieldName = 'usr_print'
      Size = 100
    end
    object MemMasterdt_print: TStringField
      FieldName = 'dt_print'
      Size = 100
    end
  end
  object qryPerubahan: TZQuery
    Connection = DM.conn
    Active = True
    SQL.Strings = (
      
        'SELECT d.kd_aset, CAST(COaLESCE(SUM(COALESCE(d.tambah,0)-COALESC' +
        'E(d.kurang,0)),0) AS numeric(17,0)) AS perubahan '
      'FROM aset.ubah_aset d '
      'WHERE d.ispost='#39'1'#39' AND d.isdelete='#39'0'#39
      'group by d.kd_aset')
    Params = <>
    Left = 378
    Top = 16
    object qryPerubahankd_aset: TStringField
      FieldName = 'kd_aset'
      Required = True
      Size = 100
    end
    object qryPerubahanperubahan: TFloatField
      FieldName = 'perubahan'
      ReadOnly = True
    end
  end
  object qryJenisAset: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'SELECT a.kd_jenis, a.diskripsi, a.id_rek_aktiva, a.id_rek_akum, ' +
        'a.id_rek_biaya, a.psn_susut, a.umur_thn'
      'from aset.mjenis a'
      'where  a.isdetail='#39'1'#39' ')
    Params = <>
    Left = 416
    Top = 17
    object qryJenisAsetkd_jenis: TStringField
      DisplayLabel = 'Kode'
      DisplayWidth = 20
      FieldName = 'kd_jenis'
      Required = True
    end
    object qryJenisAsetdiskripsi: TStringField
      DisplayLabel = 'Diskripsi'
      DisplayWidth = 35
      FieldName = 'diskripsi'
      Size = 255
    end
    object qryJenisAsetid_rek_aktiva: TStringField
      FieldName = 'id_rek_aktiva'
      Visible = False
      Size = 30
    end
    object qryJenisAsetid_rek_akum: TStringField
      FieldName = 'id_rek_akum'
      Visible = False
      Size = 30
    end
    object qryJenisAsetid_rek_biaya: TStringField
      FieldName = 'id_rek_biaya'
      Visible = False
      Size = 30
    end
    object qryJenisAsetpsn_susut: TFloatField
      FieldName = 'psn_susut'
      Required = True
      Visible = False
    end
    object qryJenisAsetumur_thn: TFloatField
      FieldName = 'umur_thn'
      Required = True
      Visible = False
    end
  end
  object LookKelompok: TwwLookupDialog
    Selected.Strings = (
      'kd_jenis'#9'20'#9'Kode'#9'F'
      'diskripsi'#9'35'#9'Diskripsi'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = qryJenisAset
    Caption = 'Lookup Kelompok'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 505
    Top = 87
  end
  object qry_Get_No_Aset: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT aset.fn_gen_aset_number(:pkd_jenis, :pdt) as new_kode')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pkd_jenis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdt'
        ParamType = ptUnknown
      end>
    Left = 449
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pkd_jenis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdt'
        ParamType = ptUnknown
      end>
    object qry_Get_No_Asetnew_kode: TStringField
      FieldName = 'new_kode'
      ReadOnly = True
      Size = 255
    end
  end
end

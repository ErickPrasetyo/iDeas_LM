object PencarianFrm: TPencarianFrm
  Left = 460
  Top = 204
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form Pencarian'
  ClientHeight = 301
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 261
    Width = 559
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
    object btnCancel: TSCButton
      Left = 85
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      ModalResult = 2
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
    end
    object btnSave: TSCButton
      Left = 11
      Top = 7
      Width = 72
      Height = 25
      Caption = 'OK'
      Images = DM.ImageList1
      ImageIndex = 1
      ModalResult = 1
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 0
      OnClick = btnSaveClick
    end
  end
  object pgcKelompok: TcxPageControl
    Left = 0
    Top = 0
    Width = 559
    Height = 261
    ActivePage = tabItem
    Align = alClient
    Style = 8
    TabOrder = 1
    ClientRectBottom = 261
    ClientRectRight = 559
    ClientRectTop = 24
    object tabRekanan: TcxTabSheet
      Caption = 'Rekanan'
      ImageIndex = 0
      object grdDokter: TcxGrid
        Left = 0
        Top = 40
        Width = 559
        Height = 197
        Align = alClient
        TabOrder = 1
        object grddbtvDokter: TcxGridDBTableView
          OnDblClick = btnSaveClick
          OnKeyPress = grddbtvDokterKeyPress
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqRekanan
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
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object grddbtvDokternama_dokter: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama_rekanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 355
          end
        end
        object grdDokterLevel1: TcxGridLevel
          GridView = grddbtvDokter
        end
      end
      object pnlHeader: TAdvPanel
        Left = 0
        Top = 0
        Width = 559
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
        object edtDokter: TcxTextEdit
          Left = 92
          Top = 10
          TabOrder = 0
          OnKeyPress = edtDokterKeyPress
          Width = 230
        end
        object lblNama: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Nama Dokter  :'
          Transparent = True
        end
        object btnCariRekanan: TSCButton
          Left = 326
          Top = 9
          Width = 72
          Height = 25
          Caption = 'Cari'
          Images = DM.ImageList1
          ImageIndex = 19
          RoundColor = clWhite
          RoundWithParentColor = False
          Style = scbsCorel
          TabOrder = 1
          OnClick = btnCariRekananClick
        end
      end
    end
    object tabPasien: TcxTabSheet
      Caption = 'Pasien'
      ImageIndex = 1
      object AdvPanel2: TAdvPanel
        Left = 0
        Top = 0
        Width = 559
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
        object lblPasien: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Nama Pasien  :'
          Transparent = True
        end
        object edtPasien: TcxTextEdit
          Left = 92
          Top = 10
          TabOrder = 1
          OnKeyPress = grddbtvDokterKeyPress
          Width = 230
        end
        object btnCariPasien: TSCButton
          Left = 326
          Top = 9
          Width = 72
          Height = 25
          Caption = 'Cari'
          Images = DM.ImageList1
          ImageIndex = 19
          RoundColor = clWhite
          RoundWithParentColor = False
          Style = scbsCorel
          TabOrder = 2
          OnClick = btnCariPasienClick
        end
      end
      object grdPasien: TcxGrid
        Left = 0
        Top = 40
        Width = 559
        Height = 197
        Align = alClient
        TabOrder = 1
        object grdDBTVPasien: TcxGridDBTableView
          OnDblClick = btnSaveClick
          OnKeyPress = grddbtvDokterKeyPress
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqPasien
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object grdDBTVPasiennama_pasien: TcxGridDBColumn
            Caption = 'Nama Pasien'
            DataBinding.FieldName = 'nama_pasien'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 243
          end
          object grdDBTVPasiennama_dokter: TcxGridDBColumn
            Caption = 'Nama Dokter'
            DataBinding.FieldName = 'nama_dokter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 182
          end
          object grdDBTVPasienno_register: TcxGridDBColumn
            Caption = 'No. Register'
            DataBinding.FieldName = 'no_register'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 132
          end
        end
        object grdLvlPasien: TcxGridLevel
          GridView = grdDBTVPasien
        end
      end
    end
    object tabItem: TcxTabSheet
      Caption = 'Item'
      ImageIndex = 2
      object AdvPanel3: TAdvPanel
        Left = 0
        Top = 0
        Width = 559
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
        object LblItem: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Nama Item  :'
          Transparent = True
        end
        object edtItemName: TcxTextEdit
          Left = 92
          Top = 10
          TabOrder = 1
          OnKeyPress = grddbtvDokterKeyPress
          Width = 230
        end
        object btnCariItem: TSCButton
          Left = 325
          Top = 9
          Width = 72
          Height = 25
          Caption = 'Cari'
          Images = DM.ImageList1
          ImageIndex = 19
          RoundColor = clWhite
          RoundWithParentColor = False
          Style = scbsCorel
          TabOrder = 2
          OnClick = btnCariItemClick
        end
      end
      object grdItem: TcxGrid
        Left = 0
        Top = 40
        Width = 559
        Height = 197
        Align = alClient
        TabOrder = 1
        object grdDBTV_Item: TcxGridDBTableView
          OnDblClick = btnSaveClick
          OnKeyPress = grddbtvDokterKeyPress
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqItem
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
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Nama Item'
            DataBinding.FieldName = 'nama_item'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 275
          end
          object cxGridDBColumn2: TcxGridDBColumn
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
            Width = 120
          end
          object grdDBTV_Itemsatuan: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan_jual'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 66
          end
        end
        object grdLvlItem: TcxGridLevel
          GridView = grdDBTV_Item
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Item Paket'
      ImageIndex = 3
      object AdvPanel4: TAdvPanel
        Left = 0
        Top = 0
        Width = 559
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
        object cxLabel1: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Nama Item  :'
          Transparent = True
        end
        object edtItemPaket: TcxTextEdit
          Left = 92
          Top = 10
          TabOrder = 1
          OnKeyPress = grddbtvDokterKeyPress
          Width = 230
        end
        object btnCariItemPaket: TSCButton
          Left = 325
          Top = 9
          Width = 72
          Height = 25
          Caption = 'Cari'
          Images = DM.ImageList1
          ImageIndex = 19
          RoundColor = clWhite
          RoundWithParentColor = False
          Style = scbsCorel
          TabOrder = 2
          OnClick = btnCariItemPaketClick
        end
      end
      object grdItemPaket: TcxGrid
        Left = 0
        Top = 40
        Width = 559
        Height = 197
        Align = alClient
        TabOrder = 1
        object grdDBTVItemPaket: TcxGridDBTableView
          OnDblClick = btnSaveClick
          OnKeyPress = grddbtvDokterKeyPress
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqItemPaket
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
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Nama Item'
            DataBinding.FieldName = 'item_name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 225
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'id_item'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 141
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 80
          end
          object grdDBTVItemPakethrg_jual: TcxGridDBColumn
            Caption = 'Tarif'
            DataBinding.FieldName = 'hrg_jual'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 94
          end
        end
        object grdLvlItemPaket: TcxGridLevel
          GridView = grdDBTVItemPaket
        end
      end
    end
    object tabRekanan2: TcxTabSheet
      Caption = 'tabRekanan2'
      ImageIndex = 4
      object gridRekanan2: TcxGrid
        Left = 0
        Top = 40
        Width = 559
        Height = 197
        Align = alClient
        TabOrder = 0
        object grdDBTVRekanan2: TcxGridDBTableView
          OnDblClick = btnSaveClick
          OnKeyPress = grddbtvDokterKeyPress
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqRekanan
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
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama_rekanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 355
          end
        end
        object grdLvlRekanan2: TcxGridLevel
          GridView = grdDBTVRekanan2
        end
      end
      object AdvPanel5: TAdvPanel
        Left = 0
        Top = 0
        Width = 559
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
        object edtRekanan2: TcxTextEdit
          Left = 92
          Top = 10
          TabOrder = 0
          Width = 230
        end
        object cxLabel2: TcxLabel
          Left = 26
          Top = 12
          Caption = 'Nama  :'
          Transparent = True
        end
        object btnRekanan2: TSCButton
          Left = 326
          Top = 9
          Width = 72
          Height = 25
          Caption = 'Cari'
          Images = DM.ImageList1
          ImageIndex = 19
          RoundColor = clWhite
          RoundWithParentColor = False
          Style = scbsCorel
          TabOrder = 1
          OnClick = btnRekanan2Click
        end
      end
    end
    object tabDokter: TcxTabSheet
      Caption = 'Dokter'
      ImageIndex = 5
      object grdDokter2: TcxGrid
        Left = 0
        Top = 40
        Width = 559
        Height = 197
        Align = alClient
        TabOrder = 0
        object grdDBTVgrdDokter2: TcxGridDBTableView
          OnDblClick = btnSaveClick
          OnKeyPress = grddbtvDokterKeyPress
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqryDokter
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
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama_dokter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 355
          end
        end
        object grdLvlgrdDokter2: TcxGridLevel
          GridView = grdDBTVgrdDokter2
        end
      end
      object AdvPanel6: TAdvPanel
        Left = 0
        Top = 0
        Width = 559
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
        object edtDokter2: TcxTextEdit
          Left = 92
          Top = 10
          TabOrder = 0
          OnKeyPress = edtDokterKeyPress
          Width = 230
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Nama Dokter  :'
          Transparent = True
        end
        object btnCariDokter: TSCButton
          Left = 326
          Top = 9
          Width = 72
          Height = 25
          Caption = 'Cari'
          Images = DM.ImageList1
          ImageIndex = 19
          RoundColor = clWhite
          RoundWithParentColor = False
          Style = scbsCorel
          TabOrder = 1
          OnClick = btnCariDokterClick
        end
      end
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 329
    Top = 104
  end
  object qRekanan: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'SELECT id_rekanan, nama_rekanan, coalesce(disc_psn,0) as disc_ps' +
        'n'
      'FROM master.mrekanan'
      'ORDER BY nama_rekanan')
    Params = <>
    Left = 358
    Top = 102
    object qRekananid_rekanan: TStringField
      FieldName = 'id_rekanan'
      Required = True
      Size = 10
    end
    object qRekanannama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 100
    end
    object qRekanandisc_psn: TFloatField
      FieldName = 'disc_psn'
      ReadOnly = True
    end
  end
  object dsqRekanan: TDataSource
    DataSet = qRekanan
    Left = 386
    Top = 103
  end
  object SR: TcxStyleRepository
    Left = 270
    Top = 100
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15269887
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 16704433
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 16704433
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16704433
      TextColor = clBlack
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object qPasien: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'SELECT a.no_register, a.id_pasien, b.nama_pasien , a.kelas, a.id' +
        '_dokter, d.nama_dokter'
      'FROM transaksi.register_pasien a'
      'LEFT JOIN master.mpasien b ON b.id_pasien=a.id_pasien'
      'LEFT JOIN master.mdokter d ON d.id_dokter=a.id_dokter'
      'ORDER BY b.nama_pasien')
    Params = <>
    Left = 358
    Top = 136
    object qPasienno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object qPasienid_pasien: TStringField
      FieldName = 'id_pasien'
      Size = 10
    end
    object qPasiennama_pasien: TStringField
      FieldName = 'nama_pasien'
      Required = True
      Size = 100
    end
    object qPasienid_dokter: TStringField
      FieldName = 'id_dokter'
      Size = 10
    end
    object qPasienkelas: TStringField
      FieldName = 'kelas'
      Size = 10
    end
    object qPasiennama_dokter: TStringField
      FieldName = 'nama_dokter'
      Required = True
      Size = 50
    end
  end
  object dsqPasien: TDataSource
    DataSet = qPasien
    Left = 386
    Top = 137
  end
  object qItem: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT a.kd_item, a.nama_item,  a.satuan_jual'
      ''
      'FROM master.item a'
      'WHERE a.isdetail='#39'1'#39
      'ORDER BY a.nama_item')
    Params = <>
    Left = 358
    Top = 168
    object qItemkd_item: TStringField
      FieldName = 'kd_item'
      Required = True
      Size = 50
    end
    object qItemnama_item: TStringField
      FieldName = 'nama_item'
      Size = 255
    end
    object qItemsatuan_jual: TStringField
      FieldName = 'satuan_jual'
      Size = 80
    end
  end
  object dsqItem: TDataSource
    DataSet = qItem
    Left = 386
    Top = 169
  end
  object MasterItem: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT a.* '
      'FROM master.item a'
      'WHERE a.isdetail='#39'1'#39' AND a.kd_item=:pid_item')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_item'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_item'
        ParamType = ptUnknown
      end>
    object MasterItemkd_item: TStringField
      FieldName = 'kd_item'
      Required = True
      Size = 200
    end
    object MasterItemkd_parent: TStringField
      FieldName = 'kd_parent'
      Size = 200
    end
    object MasterItemlvl: TIntegerField
      FieldName = 'lvl'
    end
    object MasterItemisdetail: TStringField
      FieldName = 'isdetail'
      Size = 4
    end
    object MasterItemnama_item: TStringField
      FieldName = 'nama_item'
      Size = 1020
    end
    object MasterItemhrg_jual_karton: TFloatField
      FieldName = 'hrg_jual_karton'
      Required = True
    end
    object MasterItemhrg_jual_lusin: TFloatField
      FieldName = 'hrg_jual_lusin'
      Required = True
    end
    object MasterItemhrg_beli_karton: TFloatField
      FieldName = 'hrg_beli_karton'
      Required = True
    end
    object MasterItembiji_per_karton: TFloatField
      FieldName = 'biji_per_karton'
      Required = True
    end
    object MasterItemhpp: TFloatField
      FieldName = 'hpp'
      Required = True
    end
    object MasterItemusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object MasterItemusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object MasterItemdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object MasterItemdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object MasterItemisinventory: TStringField
      FieldName = 'isinventory'
      Required = True
      Size = 4
    end
    object MasterItemisbarang_jadi: TStringField
      FieldName = 'isbarang_jadi'
      Required = True
      Size = 4
    end
    object MasterItemrasio: TFloatField
      FieldName = 'rasio'
      Required = True
    end
    object MasterItemid_rek_persediaan: TStringField
      FieldName = 'id_rek_persediaan'
      Size = 120
    end
    object MasterItemid_rek_hpp: TStringField
      FieldName = 'id_rek_hpp'
      Size = 120
    end
    object MasterItemid_cat_item: TStringField
      FieldName = 'id_cat_item'
      Size = 80
    end
    object MasterItemrasio_lusin: TFloatField
      FieldName = 'rasio_lusin'
      Required = True
    end
    object MasterItemhrg_jual: TFloatField
      FieldName = 'hrg_jual'
      Required = True
    end
    object MasterItemhrg_beli: TFloatField
      FieldName = 'hrg_beli'
      Required = True
    end
    object MasterItemsatuan_jual: TStringField
      FieldName = 'satuan_jual'
      Size = 80
    end
    object MasterItemsatuan_beli: TStringField
      FieldName = 'satuan_beli'
      Size = 80
    end
    object MasterItembrand: TStringField
      FieldName = 'brand'
      Size = 1020
    end
    object MasterItemhrg_jual_sm_grosir: TFloatField
      FieldName = 'hrg_jual_sm_grosir'
    end
    object MasterItemhrg_jual_grosir: TFloatField
      FieldName = 'hrg_jual_grosir'
    end
    object MasterItemhrg_jual_grosir_besar: TFloatField
      FieldName = 'hrg_jual_grosir_besar'
    end
    object MasterItemqty_min_retail: TFloatField
      FieldName = 'qty_min_retail'
      Required = True
    end
    object MasterItemqty_max_retail: TFloatField
      FieldName = 'qty_max_retail'
      Required = True
    end
    object MasterItemqty_min_sm_grosir: TFloatField
      FieldName = 'qty_min_sm_grosir'
      Required = True
    end
    object MasterItemqty_max_sm_grosir: TFloatField
      FieldName = 'qty_max_sm_grosir'
      Required = True
    end
    object MasterItemqty_min_grosir: TFloatField
      FieldName = 'qty_min_grosir'
      Required = True
    end
    object MasterItemqty_max_grosir: TFloatField
      FieldName = 'qty_max_grosir'
      Required = True
    end
    object MasterItemqty_min_grosir_besar: TFloatField
      FieldName = 'qty_min_grosir_besar'
      Required = True
    end
    object MasterItemqty_max_grosir_besar: TFloatField
      FieldName = 'qty_max_grosir_besar'
      Required = True
    end
  end
  object qItemPaket: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'select id_item, item_name, satuan, hrg_jual'
      'from master.mitem'
      'where id_cat_item='#39'PK'#39' AND isdetail='#39'1'#39
      'order by item_name')
    Params = <>
    Left = 389
    Top = 232
    object qItemPaketid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object qItemPaketitem_name: TStringField
      FieldName = 'item_name'
      Size = 255
    end
    object qItemPaketsatuan: TStringField
      FieldName = 'satuan'
      Size = 10
    end
    object qItemPakethrg_jual: TFloatField
      FieldName = 'hrg_jual'
      Required = True
      DisplayFormat = '0.0,0'
    end
  end
  object dsqItemPaket: TDataSource
    DataSet = qItemPaket
    Left = 361
    Top = 229
  end
  object qryDokter: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT *'
      'FROM master.mdokter'
      'ORDER BY nama_dokter')
    Params = <>
    Left = 356
    Top = 74
    object qryDokterid_dokter: TStringField
      FieldName = 'id_dokter'
      Required = True
      Size = 10
    end
    object qryDokternama_dokter: TStringField
      FieldName = 'nama_dokter'
      Required = True
      Size = 50
    end
    object qryDoktertmp_lahir: TStringField
      FieldName = 'tmp_lahir'
      Size = 50
    end
    object qryDoktertgl_lahir: TDateTimeField
      FieldName = 'tgl_lahir'
    end
    object qryDokteralamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object qryDokterkota: TStringField
      FieldName = 'kota'
      Size = 50
    end
    object qryDoktertelepon: TStringField
      FieldName = 'telepon'
      Size = 50
    end
    object qryDokterfax: TStringField
      FieldName = 'fax'
      Size = 50
    end
    object qryDoktertgl_masuk: TDateTimeField
      FieldName = 'tgl_masuk'
    end
    object qryDokterid_spesialisasi: TStringField
      FieldName = 'id_spesialisasi'
      Size = 10
    end
    object qryDokterid_bagian: TStringField
      FieldName = 'id_bagian'
      Size = 10
    end
    object qryDokteristamu: TStringField
      FieldName = 'istamu'
      Required = True
      Size = 1
    end
    object qryDokterstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object qryDokterisbidper: TStringField
      FieldName = 'isbidper'
      Required = True
      Size = 1
    end
    object qryDokterdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qryDokterdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qryDokterusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object qryDokterusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qryDokterjns_dokter: TStringField
      FieldName = 'jns_dokter'
      Size = 30
    end
    object qryDoktermargin_dokter: TFloatField
      FieldName = 'margin_dokter'
    end
    object qryDokterdisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object qryDokterfee_pengirim_lab: TFloatField
      FieldName = 'fee_pengirim_lab'
    end
    object qryDokterfee_pengirim_photo: TFloatField
      FieldName = 'fee_pengirim_photo'
    end
    object qryDokterfee_baca_photo: TFloatField
      FieldName = 'fee_baca_photo'
    end
    object qryDokterfee_pengirim_usg: TFloatField
      FieldName = 'fee_pengirim_usg'
    end
    object qryDokterfee_baca_usg: TFloatField
      FieldName = 'fee_baca_usg'
    end
    object qryDokterfee_pengirim_ecg: TFloatField
      FieldName = 'fee_pengirim_ecg'
    end
    object qryDokterfee_baca_ecg: TFloatField
      FieldName = 'fee_baca_ecg'
    end
    object qryDokterfee_tm: TFloatField
      FieldName = 'fee_tm'
    end
    object qryDokterfee_visite: TFloatField
      FieldName = 'fee_visite'
    end
    object qryDokterfee_pengirim_lab_rujukan: TFloatField
      FieldName = 'fee_pengirim_lab_rujukan'
    end
  end
  object dsqryDokter: TDataSource
    DataSet = qryDokter
    Left = 384
    Top = 75
  end
end

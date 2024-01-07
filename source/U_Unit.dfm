object UnitFrm: TUnitFrm
  Left = 460
  Top = 204
  Width = 479
  Height = 360
  Caption = 'Master Satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 293
    Width = 471
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
    object btnCancel: TSCButton
      Left = 211
      Top = 9
      Width = 72
      Height = 25
      Caption = 'Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 6
      OnClick = btnCancelClick
    end
    object btnSave: TSCButton
      Left = 135
      Top = 9
      Width = 72
      Height = 25
      Caption = 'Simpan'
      Images = DM.ImageList1
      ImageIndex = 3
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 5
      OnClick = btnSaveClick
    end
    object dbnKelompok: TRzDBNavigator
      Left = 12
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
    object btnAdd: TSCButton
      Left = 135
      Top = 9
      Width = 72
      Height = 25
      Caption = 'Tambah'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnEdit: TSCButton
      Left = 211
      Top = 9
      Width = 72
      Height = 25
      Caption = 'Koreksi'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnDelete: TSCButton
      Left = 286
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Hapus'
      Images = DM.ImageList1
      ImageIndex = 4
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 3
      OnClick = btnDeleteClick
    end
    object btnRefresh: TSCButton
      Left = 362
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 4
      OnClick = btnRefreshClick
    end
  end
  object pgcKelompok: TcxPageControl
    Left = 0
    Top = 40
    Width = 471
    Height = 253
    ActivePage = cxTabSheet2
    Align = alClient
    Style = 8
    TabOrder = 1
    OnPageChanging = pgcKelompokPageChanging
    ClientRectBottom = 253
    ClientRectRight = 471
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Browse'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 471
        Height = 229
        Align = alClient
        TabOrder = 0
        object grddbtv_Kelompok: TcxGridDBTableView
          OnDblClick = grddbtv_KelompokDblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object grddbtv_Kelompokid_unit: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'kd_satuan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = grddbtv_Kelompok
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Detail'
      ImageIndex = 1
      object grdDBV_Kelompok: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 471
        Height = 229
        Align = alClient
        OptionsView.RowHeaderWidth = 97
        OptionsBehavior.AllowChangeRecord = False
        TabOrder = 0
        DataController.DataSource = dsMaster
        object grdDBV_Kelompoksatuan: TcxDBEditorRow
          Properties.Caption = 'Satuan'
          Properties.DataBinding.FieldName = 'kd_satuan'
        end
      end
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 471
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
    object lblHeader1: TLabel
      Left = 17
      Top = 9
      Width = 135
      Height = 23
      Caption = 'Data Satuan'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 10901530
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Visible = False
    end
  end
  object AFS: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 132
    Top = 92
  end
  object Master: TZQuery
    Connection = DM.conn
    BeforePost = MasterBeforePost
    SQL.Strings = (
      'select * from master.satuan')
    Params = <>
    Left = 177
    Top = 96
    object Masterkd_satuan: TStringField
      FieldName = 'kd_satuan'
      Required = True
      Size = 12
    end
    object Masterdeskripsi: TStringField
      FieldName = 'deskripsi'
      Required = True
      Size = 50
    end
    object Masterusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object Masterusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    OnStateChange = dsMasterStateChange
    Left = 219
    Top = 94
  end
  object SR: TcxStyleRepository
    Left = 270
    Top = 100
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
end

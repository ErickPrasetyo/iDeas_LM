object CariRekananFrm: TCariRekananFrm
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
    Color = 12318971
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
    ColorTo = 9628149
    ColorMirror = 9628149
    ColorMirrorTo = 12318971
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
      Left = 97
      Top = 6
      Width = 72
      Height = 25
      Caption = 'Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      ModalResult = 2
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsOffice2003
      TabOrder = 1
    end
    object btnSave: TSCButton
      Left = 18
      Top = 6
      Width = 72
      Height = 25
      Caption = 'OK'
      Images = DM.ImageList1
      ImageIndex = 1
      ModalResult = 1
      RoundColor = clWhite
      RoundWithParentColor = False
      Style = scbsOffice2003
      TabOrder = 0
      OnClick = btnSaveClick
    end
  end
  object pgcKelompok: TcxPageControl
    Left = 0
    Top = 0
    Width = 559
    Height = 261
    ActivePage = tabRekanan
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
        Top = 48
        Width = 559
        Height = 189
        Align = alClient
        TabOrder = 1
        object grddbtvDokter: TcxGridDBTableView
          OnDblClick = btnSaveClick
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
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle5
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
          object grddbtvDokterkd_rekanan: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'kd_rekanan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
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
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        Color = 12318971
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
        ColorTo = 9628149
        ColorMirror = 9628149
        ColorMirrorTo = 12318971
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
        object edtRekanan: TcxTextEdit
          Left = 58
          Top = 25
          TabOrder = 0
          OnKeyPress = edtRekananKeyPress
          Width = 230
        end
        object lblNama: TcxLabel
          Left = 9
          Top = 27
          Caption = 'Nama  :'
          Transparent = True
        end
        object btnCariRekanan: TSCButton
          Left = 292
          Top = 9
          Width = 72
          Height = 25
          Caption = 'Cari'
          Images = DM.ImageList1
          ImageIndex = 7
          RoundColor = clWhite
          RoundWithParentColor = False
          Style = scbsOffice2003
          TabOrder = 1
          OnClick = btnCariRekananClick
        end
        object edtKode: TcxTextEdit
          Left = 57
          Top = 2
          TabOrder = 3
          OnKeyPress = edtRekananKeyPress
          Width = 230
        end
        object cxLabel1: TcxLabel
          Left = 9
          Top = 4
          Caption = 'Kode  :'
          Transparent = True
        end
      end
    end
  end
  object AFS: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 329
    Top = 104
  end
  object qRekanan: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT kd_rekanan, nama_rekanan'
      'FROM master.mrekanan'
      'WHERE jenis=:pjenis'
      'ORDER BY nama_rekanan')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pjenis'
        ParamType = ptUnknown
      end>
    Left = 358
    Top = 102
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pjenis'
        ParamType = ptUnknown
      end>
    object qRekanankd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Required = True
    end
    object qRekanannama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 255
    end
  end
  object dsqRekanan: TDataSource
    DataSet = qRekanan
    Left = 386
    Top = 103
  end
  object SR: TcxStyleRepository
    Left = 300
    Top = 104
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7039851
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12318971
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13041606
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
end

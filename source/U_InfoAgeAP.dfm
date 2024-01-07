object InfoAgeAPFrm: TInfoAgeAPFrm
  Left = 169
  Top = 131
  Width = 955
  Height = 589
  Caption = 'AP Aging Schedule'
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
    Width = 947
    Height = 58
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientEnd = 15845560
    GradientMid = 15845560
    ParentColor = False
    TabOrder = 0
    object btnOK: TcxButton
      Left = 159
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
      Left = 14
      Top = 3
      Width = 137
      Height = 43
      Caption = 'End Periode'
      TabOrder = 0
      Transparent = True
      object edtDatePicker2: TwwDBDateTimePicker
        Left = 11
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
        TabOrder = 0
        UnboundDataType = wwDTEdtDate
        DisplayFormat = 'DD MMM YYYY'
      end
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 947
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
    object lblHeader: TLabel
      Left = 17
      Top = 9
      Width = 204
      Height = 23
      Caption = 'AP Aging Schedule'
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
    Top = 522
    Width = 947
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
    object dbnBrowse: TRzDBNavigator
      Left = 117
      Top = 6
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
    object btnRefresh: TSCButton
      Left = 242
      Top = 5
      Width = 72
      Height = 25
      Caption = 'Refresh'
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 1
      OnClick = btnRefreshClick
    end
    object btnPrint: TSCButton
      Left = 314
      Top = 5
      Width = 72
      Height = 25
      Caption = 'Print'
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 2
      OnClick = btnPrintClick
    end
    object btnClose: TSCButton
      Left = 27
      Top = 5
      Width = 72
      Height = 25
      Caption = 'Close'
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 3
      OnClick = btnCloseClick
    end
    object rgLOKASI: TRzGroupBox
      Left = 392
      Top = 1
      Width = 219
      Height = 35
      Caption = 'Supplier'
      GroupStyle = gsTopLine
      TabOrder = 4
      Transparent = True
      object RBSemua: TcxRadioButton
        Left = 3
        Top = 16
        Width = 47
        Height = 17
        Caption = 'All'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RBSemuaClick
        Transparent = True
      end
      object RBLokasi: TcxRadioButton
        Left = 51
        Top = 16
        Width = 86
        Height = 17
        Caption = 'Per Supplier'
        TabOrder = 1
        OnClick = RBLokasiClick
        Transparent = True
      end
      object RBSummary: TcxRadioButton
        Left = 130
        Top = 16
        Width = 86
        Height = 17
        Caption = 'Summary'
        TabOrder = 2
        OnClick = RBSummaryClick
        Transparent = True
      end
    end
    object ESUPPLIER: TcxButtonEdit
      Left = 618
      Top = 14
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = ESUPPLIERPropertiesButtonClick
      TabOrder = 5
      Width = 98
    end
  end
  object grdItem: TcxGrid
    Left = 0
    Top = 98
    Width = 947
    Height = 424
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
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMaster
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'current'
          Column = grd_DBTV_Itemcurrent
        end
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'enam_puluh'
          Column = grd_DBTV_Itemenam_puluh
        end
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'tiga_puluh'
          Column = grd_DBTV_Itemtiga_puluh
        end
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'lebih_sembilan_puluh'
          Column = grd_DBTV_Itemlebih_sembilan_puluh
        end
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'sembilan_puluh'
          Column = grd_DBTV_Itemsembilan_puluh
        end
        item
          Format = '0.0,0'
          Kind = skSum
          FieldName = 'total_in'
          Column = grd_DBTV_Itemtotal_in
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle4
      object grd_DBTV_Itemkd_rekanan: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'kd_rekanan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 53
      end
      object grd_DBTV_Itemnama_rekanan: TcxGridDBColumn
        Caption = 'Supplier Name'
        DataBinding.FieldName = 'nama_rekanan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 161
      end
      object grd_DBTV_Itemno_doc: TcxGridDBColumn
        Caption = 'AP Number'
        DataBinding.FieldName = 'no_doc'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 73
      end
      object grd_DBTV_Itemdt_due: TcxGridDBColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'dt_due'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 69
      end
      object grd_DBTV_Itemno_invoice: TcxGridDBColumn
        Caption = 'Invoice No.'
        DataBinding.FieldName = 'no_invoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 157
      end
      object grd_DBTV_Itemperiode: TcxGridDBColumn
        Caption = 'Periode'
        DataBinding.FieldName = 'periode'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 66
      end
      object grd_DBTV_Itemtotal_in: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'total_in'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object grd_DBTV_Itemcurrent: TcxGridDBColumn
        Caption = 'Current'
        DataBinding.FieldName = 'current'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object grd_DBTV_Itemtiga_puluh: TcxGridDBColumn
        Caption = '30 Days'
        DataBinding.FieldName = 'tiga_puluh'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object grd_DBTV_Itemenam_puluh: TcxGridDBColumn
        Caption = '60 Days'
        DataBinding.FieldName = 'enam_puluh'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object grd_DBTV_Itemsembilan_puluh: TcxGridDBColumn
        Caption = '90 Days'
        DataBinding.FieldName = 'sembilan_puluh'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object grd_DBTV_Itemlebih_sembilan_puluh: TcxGridDBColumn
        Caption = '> 90 Days'
        DataBinding.FieldName = 'lebih_sembilan_puluh'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
    end
    object grdItemLevel1: TcxGridLevel
      GridView = grd_DBTV_Item
    end
  end
  object Master: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.kd_rekanan, b.nama_rekanan, a.no_doc, a.no_bukti as no_' +
        'invoice, a.dt_due, a.total_in, ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39 +
        ')-a.dt_due)) as periode,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due))<= interval '#39'0 days'#39' then a.total_in end,0) as current,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due)) between interval '#39'1 days'#39' and interval '#39'30 days'#39' then a.' +
        'total_in end,0) as tiga_puluh,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due)) between interval '#39'31 days'#39' and interval '#39'60 days'#39' then a' +
        '.total_in end,0) as enam_puluh,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due)) between interval '#39'61 days'#39' and interval '#39'90 days'#39' then a' +
        '.total_in end,0) as sembilan_puluh,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due))> interval '#39'90 days'#39' then a.total_in end,0) as lebih_semb' +
        'ilan_puluh'
      'from accfin.vlook_ap a, master.mrekanan b'
      'where  a.kd_rekanan=b.kd_rekanan and b.jenis='#39'SUPPLIER'#39
      '')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '18/01/2010'
      end>
    Left = 228
    Top = 30
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '18/01/2010'
      end>
    object Masterkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Size = 255
    end
    object Masternama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 255
    end
    object Masterno_doc: TStringField
      FieldName = 'no_doc'
      Size = 255
    end
    object Masterno_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 255
    end
    object Masterdt_due: TDateTimeField
      FieldName = 'dt_due'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object Mastertotal_in: TFloatField
      FieldName = 'total_in'
      DisplayFormat = '0.0,0'
    end
    object Masterperiode: TStringField
      FieldName = 'periode'
      ReadOnly = True
      Size = 32
    end
    object Mastercurrent: TFloatField
      FieldName = 'current'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Mastertiga_puluh: TFloatField
      FieldName = 'tiga_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Masterenam_puluh: TFloatField
      FieldName = 'enam_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Mastersembilan_puluh: TFloatField
      FieldName = 'sembilan_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object Masterlebih_sembilan_puluh: TFloatField
      FieldName = 'lebih_sembilan_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 244
    Top = 43
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
      'kd_rekanan=kd_rekanan'
      'nama_rekanan=nama_rekanan'
      'no_doc=no_doc'
      'no_invoice=no_invoice'
      'dt_due=dt_due'
      'total_in=total_in'
      'periode=periode'
      'current=current'
      'tiga_puluh=tiga_puluh'
      'enam_puluh=enam_puluh'
      'sembilan_puluh=sembilan_puluh'
      'lebih_sembilan_puluh=lebih_sembilan_puluh')
    DataSet = qryPrint
    Left = 412
    Top = 10
  end
  object kmtMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'kd_rekanan'
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'nama_rekanan'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'no_doc'
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'no_invoice'
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'dt_due'
        DataType = ftDateTime
        Precision = 8
      end
      item
        Name = 'total_in'
        DataType = ftFloat
      end
      item
        Name = 'periode'
        Attributes = [faReadonly]
        DataType = ftString
        Precision = 32
        Size = 32
      end
      item
        Name = 'current'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'tiga_puluh'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'enam_puluh'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'sembilan_puluh'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'lebih_sembilan_puluh'
        Attributes = [faReadonly]
        DataType = ftFloat
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
    Left = 352
    Top = 6
    object kmtMasterkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Size = 255
    end
    object kmtMasternama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Size = 255
    end
    object kmtMasterno_doc: TStringField
      FieldName = 'no_doc'
      Size = 255
    end
    object kmtMasterno_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 255
    end
    object kmtMasterdt_due: TDateTimeField
      FieldName = 'dt_due'
    end
    object kmtMastertotal_in: TFloatField
      FieldName = 'total_in'
    end
    object kmtMasterperiode: TStringField
      FieldName = 'periode'
      Size = 32
    end
    object kmtMastercurrent: TFloatField
      FieldName = 'current'
    end
    object kmtMastertiga_puluh: TFloatField
      FieldName = 'tiga_puluh'
    end
    object kmtMasterenam_puluh: TFloatField
      FieldName = 'enam_puluh'
    end
    object kmtMastersembilan_puluh: TFloatField
      FieldName = 'sembilan_puluh'
    end
    object kmtMasterlebih_sembilan_puluh: TFloatField
      FieldName = 'lebih_sembilan_puluh'
    end
  end
  object kmtInfo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 444
    Top = 14
    object kmtInfouser_id: TStringField
      FieldName = 'user_id'
      Size = 10
    end
    object kmtInfouser_name: TStringField
      FieldName = 'user_name'
      Size = 100
    end
    object kmtInfodt_now: TStringField
      FieldName = 'dt_now'
    end
    object kmtInfopnamamenu: TStringField
      FieldName = 'pnamamenu'
      Size = 30
    end
    object kmtInfoperiode: TStringField
      FieldName = 'periode'
      Size = 255
    end
    object kmtInfoconsignment: TStringField
      FieldName = 'consignment'
      Size = 255
    end
    object kmtInfodt_prepared: TStringField
      FieldName = 'dt_prepared'
      Size = 50
    end
    object kmtInfoprepared_name: TStringField
      FieldKind = fkLookup
      FieldName = 'prepared_name'
      LookupDataSet = DM.Luser
      LookupKeyFields = 'user'
      LookupResultField = 'full_name'
      KeyFields = 'user_id'
      Size = 100
      Lookup = True
    end
    object kmtInfonama_perusahaan: TStringField
      FieldName = 'nama_perusahaan'
      Size = 100
    end
    object kmtInfoalamat_perusahaan: TStringField
      FieldName = 'alamat_perusahaan'
      Size = 255
    end
    object kmtInfotelp: TStringField
      FieldName = 'telp'
      Size = 100
    end
    object kmtInfokota_negara: TStringField
      FieldName = 'kota_negara'
      Size = 100
    end
    object kmtInfofilter: TStringField
      FieldName = 'filter'
      Size = 255
    end
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
    Left = 691
    Top = 42
  end
  object AFS: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    Left = 721
    Top = 38
  end
  object SR: TcxStyleRepository
    Left = 755
    Top = 40
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
    Left = 797
    Top = 38
  end
  object PopupMenu1: TPopupMenu
    Left = 292
    Top = 6
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
      'consignment=consignment'
      'dt_prepared=dt_prepared'
      'prepared_name=prepared_name'
      'nama_perusahaan=nama_perusahaan'
      'alamat_perusahaan=alamat_perusahaan'
      'telp=telp'
      'kota_negara=kota_negara'
      'filter=filter')
    DataSet = kmtInfo
    Left = 476
    Top = 16
  end
  object qryPrint: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.kd_rekanan, b.nama_rekanan, a.no_doc, a.no_bukti as no_' +
        'invoice, a.dt_due, a.total_in, ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39 +
        ')-a.dt_due)) as periode,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due))<= interval '#39'0 days'#39' then a.total_in end,0) as current,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due)) between interval '#39'1 days'#39' and interval '#39'30 days'#39' then a.' +
        'total_in end,0) as tiga_puluh,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due)) between interval '#39'31 days'#39' and interval '#39'60 days'#39' then a' +
        '.total_in end,0) as enam_puluh,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due)) between interval '#39'61 days'#39' and interval '#39'90 days'#39' then a' +
        '.total_in end,0) as sembilan_puluh,'
      
        '       coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')-a.d' +
        't_due))> interval '#39'90 days'#39' then a.total_in end,0) as lebih_semb' +
        'ilan_puluh'
      'from accfin.vlook_ap a, master.mrekanan b'
      'where  a.kd_rekanan=b.kd_rekanan and b.jenis='#39'SUPPLIER'#39
      '')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '18/01/2010'
      end>
    Left = 283
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '18/01/2010'
      end>
    object qryPrintkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Size = 255
    end
    object qryPrintnama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 255
    end
    object qryPrintno_doc: TStringField
      FieldName = 'no_doc'
      Size = 255
    end
    object qryPrintno_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 255
    end
    object qryPrintdt_due: TDateTimeField
      FieldName = 'dt_due'
    end
    object qryPrinttotal_in: TFloatField
      FieldName = 'total_in'
    end
    object qryPrintperiode: TStringField
      FieldName = 'periode'
      ReadOnly = True
      Size = 32
    end
    object qryPrintcurrent: TFloatField
      FieldName = 'current'
      ReadOnly = True
    end
    object qryPrinttiga_puluh: TFloatField
      FieldName = 'tiga_puluh'
      ReadOnly = True
    end
    object qryPrintenam_puluh: TFloatField
      FieldName = 'enam_puluh'
      ReadOnly = True
    end
    object qryPrintsembilan_puluh: TFloatField
      FieldName = 'sembilan_puluh'
      ReadOnly = True
    end
    object qryPrintlebih_sembilan_puluh: TFloatField
      FieldName = 'lebih_sembilan_puluh'
      ReadOnly = True
    end
  end
  object frxAPAging: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39216.9709139815
    ReportOptions.LastChange = 40031.7327869907
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 382
    Top = 8
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
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297
      PaperHeight = 210
      PaperSize = 9
      LeftMargin = 15
      RightMargin = 10
      TopMargin = 15
      BottomMargin = 5
      object PageFooter1: TfrxPageFooter
        Height = 24.33859
        Top = 563.14997
        Width = 1028.03216
        object Memo1: TfrxMemoView
          Left = 842.83519
          Top = 1.66141
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
          Top = 1.66141
          Width = 226.77165354
          Height = 18.89765
          DataField = 'user_name'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."user_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 400.63018
          Top = 1.66141
          Width = 283.46475
          Height = 22.67718
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
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
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.67718
        Top = 298.58287
        Width = 1028.03216
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 37.7953
          Width = 188.97643898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'nama_rekanan'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          Memo.UTF8 = (
            '[frxDBMaster."nama_rekanan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 430.86642
          Width = 52.91337118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'periode'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 574.48856
          Width = 90.70867118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'current'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."current"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 665.19728
          Width = 90.70867118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'tiga_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."tiga_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 755.906
          Width = 90.70867118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'enam_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."enam_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 846.61472
          Width = 90.70867118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'sembilan_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."sembilan_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 937.32344
          Width = 90.70864677
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'lebih_sembilan_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."lebih_sembilan_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 483.77984
          Width = 90.70867118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'total_in'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."total_in"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Width = 37.7953
          Height = 22.67718
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.5
          HAlign = haRight
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 226.7718
          Width = 128.50395898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'no_invoice'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          Memo.UTF8 = (
            '[frxDBMaster."no_invoice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 355.27582
          Width = 75.59053898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'dt_due'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          Memo.UTF8 = (
            '[frxDBMaster."dt_due"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 30.23624
        Top = 245.66945
        Width = 1028.03216
        ReprintOnNewPage = True
        object Memo5: TfrxMemoView
          Width = 37.79527559
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 37.7953
          Width = 188.97647559
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Customer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 226.7718
          Width = 128.50397118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Invoice #')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 355.27582
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Due Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 430.86642
          Width = 52.91337118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Periode')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 483.77984
          Width = 90.70866142
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Value')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 574.48856
          Width = 90.70866142
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Current')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 937.32344
          Width = 90.70866142
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '> 90 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 665.19728
          Width = 90.70866142
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '30 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 755.906
          Width = 90.70866142
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '60 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 846.61472
          Width = 90.70866142
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '90 Days')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 136.06308
        Top = 347.71676
        Width = 1028.03216
        object Memo21: TfrxMemoView
          Width = 483.77984
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 483.77984
          Width = 90.70867118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."total_in">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 574.48856
          Width = 90.70867118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."current">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 665.19728
          Width = 90.70867118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."tiga_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 755.906
          Width = 90.70867118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."enam_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 846.61472
          Width = 90.70867118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."sembilan_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 937.32344
          Width = 90.70872
          Height = 30.23624
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."lebih_sembilan_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 60.47248
          Width = 377.953
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          ParentFont = False
        end
        object MemoPreparedName: TfrxMemoView
          Top = 102.04731
          Width = 377.953
          Height = 15.11812
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
          Top = 41.57483
          Width = 377.953
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Memo.UTF8 = (
            'PREPARED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 117.16543
          Width = 377.953
          Height = 18.89765
          DataField = 'dt_prepared'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            '[frxDBInfo."dt_prepared"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 377.953
          Top = 60.47248
          Width = 340.1577
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          ParentFont = False
        end
        object MemoDateReviewedBy: TfrxMemoView
          Left = 377.953
          Top = 117.16543
          Width = 340.1577
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            'DATED :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedBy: TfrxMemoView
          Left = 377.953
          Top = 41.57483
          Width = 340.1577
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Memo.UTF8 = (
            'REVIEWED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 718.1107
          Top = 60.47248
          Width = 309.92146
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          ParentFont = False
        end
        object MemoDateApprovedBy: TfrxMemoView
          Left = 718.1107
          Top = 117.16543
          Width = 309.92146
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            'DATED :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 718.1107
          Top = 41.57483
          Width = 309.92146
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.RightLine.Width = 2
          Memo.UTF8 = (
            'APPROVED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 118.72449
        Top = 18.89765
        Width = 1028.03216
        object Memo51: TfrxMemoView
          Top = 75.5906
          Width = 1028.03216
          Height = 18.89765
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
        object Memo11: TfrxMemoView
          Top = 94.48825
          Width = 1028.03216
          Height = 18.89765
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
        object Memo30: TfrxMemoView
          Width = 699.21305
          Height = 18.89765
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
        object Memo31: TfrxMemoView
          Top = 18.89765
          Width = 699.21305
          Height = 18.89765
          DataField = 'alamat_perusahaan'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."alamat_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Top = 37.7953
          Width = 699.21305
          Height = 18.89765
          DataField = 'telp'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Top = 56.69295
          Width = 699.21305
          Height = 18.89765
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
  object LookSupplier: TwwLookupDialog
    Selected.Strings = (
      'nama_rekanan'#9'35'#9'Supplier Name'#9'F'
      'kd_rekanan'#9'15'#9'ID'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DM.LSupplier
    Caption = 'Lookup Supplier'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 462
    Top = 51
  end
  object frxRepAPAging: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39216.9709139815
    ReportOptions.LastChange = 40031.7327869907
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 382
    Top = 47
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
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 5
      TopMargin = 10
      BottomMargin = 5
      object PageFooter1: TfrxPageFooter
        Height = 24.33859
        Top = 563.14997
        Width = 737.00835
        object Memo1: TfrxMemoView
          Left = 548.03185
          Top = 1.66141
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
          Top = 1.66141
          Width = 226.77165354
          Height = 18.89765
          DataField = 'user_name'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."user_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 226.7718
          Top = 1.66141
          Width = 321.26005
          Height = 22.67718
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
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
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.67718
        Top = 275.90569
        Width = 737.00835
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 219.21274
          Width = 52.91337118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'periode'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 359.05535
          Width = 75.59055118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'current'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."current"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 434.64595
          Width = 75.59055118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'tiga_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."tiga_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 510.23655
          Width = 75.59055118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'enam_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."enam_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 585.82715
          Width = 75.59055118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'sembilan_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."sembilan_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 661.41775
          Width = 75.59052677
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'lebih_sembilan_puluh'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."lebih_sembilan_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 272.12616
          Width = 86.92914118
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'total_in'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."total_in"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Width = 26.45671
          Height = 22.67718
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.5
          HAlign = haRight
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 26.45671
          Width = 128.50395898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'no_invoice'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          Memo.UTF8 = (
            '[frxDBMaster."no_invoice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 154.96073
          Width = 64.25194898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'dt_due'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          Memo.UTF8 = (
            '[frxDBMaster."dt_due"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 30.23624
        Top = 204.09462
        Width = 737.00835
        ReprintOnNewPage = True
        object Memo5: TfrxMemoView
          Width = 26.45668559
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 26.45671
          Width = 128.50397118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Invoice #')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 154.96073
          Width = 64.25196118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Due Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 219.21274
          Width = 52.91337118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Periode')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 272.12616
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Value')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 359.05535
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'Current')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 661.41775
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '> 90 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 434.64595
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '30 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 510.23655
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '60 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 585.82715
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            '90 Days')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 136.06308
        Top = 347.71676
        Width = 737.00835
        object Memo21: TfrxMemoView
          Width = 272.12616
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 272.12616
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."total_in">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 359.05535
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."current">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 434.64595
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."tiga_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 510.23655
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."enam_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 585.82715
          Width = 75.59055118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."sembilan_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 661.41775
          Width = 75.59055118
          Height = 30.23624
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."lebih_sembilan_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 60.47248
          Width = 230.55133
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          ParentFont = False
        end
        object MemoPreparedName: TfrxMemoView
          Top = 102.04731
          Width = 230.55133
          Height = 15.11812
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
          Top = 41.57483
          Width = 230.55133
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Memo.UTF8 = (
            'PREPARED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 117.16543
          Width = 230.55133
          Height = 18.89765
          DataField = 'dt_prepared'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            '[frxDBInfo."dt_prepared"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 230.55133
          Top = 60.47248
          Width = 226.7718
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          ParentFont = False
        end
        object MemoDateReviewedBy: TfrxMemoView
          Left = 230.55133
          Top = 117.16543
          Width = 226.7718
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedBy: TfrxMemoView
          Left = 230.55133
          Top = 41.57483
          Width = 226.7718
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Memo.UTF8 = (
            'REVIEWED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 457.32313
          Top = 60.47248
          Width = 279.68522
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          ParentFont = False
        end
        object MemoDateApprovedBy: TfrxMemoView
          Left = 457.32313
          Top = 117.16543
          Width = 279.68522
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            'DATED :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 457.32313
          Top = 41.57483
          Width = 279.68522
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.RightLine.Width = 2
          Memo.UTF8 = (
            'APPROVED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 145.1812
        Top = 18.89765
        Width = 737.00835
        object Memo51: TfrxMemoView
          Top = 75.5906
          Width = 725.66976
          Height = 18.89765
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
        object Memo11: TfrxMemoView
          Top = 94.48825
          Width = 725.66976
          Height = 18.89765
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
        object Memo30: TfrxMemoView
          Width = 699.21305
          Height = 18.89765
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
        object Memo31: TfrxMemoView
          Top = 18.89765
          Width = 699.21305
          Height = 18.89765
          DataField = 'alamat_perusahaan'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."alamat_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Top = 37.7953
          Width = 699.21305
          Height = 18.89765
          DataField = 'telp'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Top = 56.69295
          Width = 699.21305
          Height = 18.89765
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
        object Memo28: TfrxMemoView
          Top = 113.3859
          Width = 725.66976
          Height = 18.89765
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
    end
  end
  object frxSUM: TfrxReport
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
    Left = 535
    Top = 25
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
        Top = 468.66172
        Width = 699.21305
        object Memo1: TfrxMemoView
          Left = 510.23655
          Width = 188.97637795
          Height = 18.89765
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
          Width = 264.56695354
          Height = 18.89765
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
          Left = 264.5671
          Width = 245.66945
          Height = 18.89765
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.67718
        ParentFont = False
        Top = 226.7718
        Width = 699.21305
        DataSet = frxDBSUM
        DataSetName = 'frxDBSUM'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 37.7953
          Height = 22.67716535
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Width = 139.84254898
          Height = 22.67716535
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
          GapX = 4
          Memo.UTF8 = (
            '[frxDBSUM."nama_rekanan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 438.42548
          Width = 86.92915339
          Height = 22.67716535
          DataField = 'enam_puluh'
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."enam_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 525.35467
          Width = 86.92915339
          Height = 22.67716535
          DataField = 'sembilan_puluh'
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."sembilan_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 612.28386
          Width = 86.92915339
          Height = 22.67716535
          DataField = 'lebih_sembilan_puluh'
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."lebih_sembilan_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 351.49629
          Width = 86.92915339
          Height = 22.67716535
          DataField = 'tiga_puluh'
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."tiga_puluh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 264.5671
          Width = 86.92915339
          Height = 22.67716535
          DataField = 'current'
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."current"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 177.63791
          Width = 86.92915339
          Height = 22.67716535
          DataField = 'total_in'
          DataSet = frxDBSUM
          DataSetName = 'frxDBSUM'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBSUM."total_in"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 34.01577
        Top = 170.07885
        Width = 699.21305
        ReprintOnNewPage = True
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
          Width = 139.84258559
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
            'SUPPLIER NAME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 438.42548
          Width = 86.92913386
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
            '60 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 612.28386
          Width = 86.9291363
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
            '> 90 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 525.35467
          Width = 86.92913386
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
            '90 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 351.49629
          Width = 86.92913386
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
            '30 Days')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 264.5671
          Width = 86.92913386
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
            'Current')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 177.63791
          Width = 86.92913386
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
            'Total Value')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 118.72449
        Top = 18.89765
        Width = 699.21305
        object Memo51: TfrxMemoView
          Top = 79.37013
          Width = 699.21305
          Height = 18.89765
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
          Top = 98.26778
          Width = 699.21305
          Height = 18.89765
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
          Width = 699.21305
          Height = 18.89765
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
          Top = 18.89765
          Width = 699.21305
          Height = 18.89765
          DataField = 'alamat_perusahaan'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."alamat_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 37.7953
          Width = 699.21305
          Height = 18.89765
          DataField = 'telp'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 56.69295
          Width = 699.21305
          Height = 18.89765
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
        Height = 147.40167
        Top = 279.68522
        Width = 699.21305
        object Memo14: TfrxMemoView
          Width = 177.63791
          Height = 30.23624
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 177.63791
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."total_in">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailPreparedBy: TfrxMemoView
          Top = 60.47248
          Width = 230.55133
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          ParentFont = False
        end
        object MemoPreparedName: TfrxMemoView
          Top = 102.04731
          Width = 230.55133
          Height = 15.11812
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
          Top = 41.57483
          Width = 230.55133
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2
          Frame.TopLine.Width = 2
          Memo.UTF8 = (
            'PREPARED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDatePreparedBy: TfrxMemoView
          Top = 117.16543
          Width = 230.55133
          Height = 18.89765
          DataField = 'dt_now'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            '[frxDBInfo."dt_now"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailReviewedBy: TfrxMemoView
          Left = 230.55133
          Top = 60.47248
          Width = 226.7718
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          ParentFont = False
        end
        object MemoDateReviewedBy: TfrxMemoView
          Left = 230.55133
          Top = 117.16543
          Width = 226.7718
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            'DATED :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoReviewedBy: TfrxMemoView
          Left = 230.55133
          Top = 41.57483
          Width = 226.7718
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Memo.UTF8 = (
            'REVIEWED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDetailApprovedBy: TfrxMemoView
          Left = 457.32313
          Top = 60.47248
          Width = 241.88992
          Height = 75.5906
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          ParentFont = False
        end
        object MemoDateApprovedBy: TfrxMemoView
          Left = 457.32313
          Top = 117.16543
          Width = 241.88992
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2
          Frame.BottomLine.Width = 2
          Memo.UTF8 = (
            'DATED :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 457.32313
          Top = 41.57483
          Width = 241.88992
          Height = 18.89765
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.RightLine.Width = 2
          Memo.UTF8 = (
            'APPROVED BY :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 438.42548
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."enam_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 612.28386
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."lebih_sembilan_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 264.5671
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."current">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 351.49629
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."tiga_puluh">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 525.35467
          Width = 86.92914118
          Height = 30.23624
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,###.#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2
          Frame.BottomLine.Width = 2
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBSUM."sembilan_puluh">,MasterData1)]')
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
      'total_in=total_in'
      'current=current'
      'tiga_puluh=tiga_puluh'
      'enam_puluh=enam_puluh'
      'sembilan_puluh=sembilan_puluh'
      'lebih_sembilan_puluh=lebih_sembilan_puluh')
    DataSet = qrySUM
    Left = 567
    Top = 25
  end
  object qrySUM: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.kd_rekanan, b.nama_rekanan, sum(a.total_in) as total_in' +
        ','
      
        '       sum(coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')' +
        '-a.dt_due))<= interval '#39'0 days'#39' then a.total_in end,0)) as curre' +
        'nt,'
      
        '       sum(coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')' +
        '-a.dt_due)) between interval '#39'1 days'#39' and interval '#39'30 days'#39' the' +
        'n a.total_in end,0)) as tiga_puluh,'
      
        '       sum(coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')' +
        '-a.dt_due)) between interval '#39'31 days'#39' and interval '#39'60 days'#39' th' +
        'en a.total_in end,0)) as enam_puluh,'
      
        '       sum(coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')' +
        '-a.dt_due)) between interval '#39'61 days'#39' and interval '#39'90 days'#39' th' +
        'en a.total_in end,0)) as sembilan_puluh,'
      
        '       sum(coalesce(case when ((to_timestamp(:ptgl,'#39'dd/mm/yyyy'#39')' +
        '-a.dt_due))> interval '#39'90 days'#39' then a.total_in end,0)) as lebih' +
        '_sembilan_puluh'
      'from accfin.vlook_ap a, master.mrekanan b'
      'where  a.kd_rekanan=b.kd_rekanan and b.jenis='#39'SUPPLIER'#39
      'group by a.kd_rekanan, b.nama_rekanan'
      'order by a.kd_rekanan')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end>
    Left = 598
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end>
    object qrySUMkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Size = 255
    end
    object qrySUMnama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 255
    end
    object qrySUMtotal_in: TFloatField
      FieldName = 'total_in'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySUMcurrent: TFloatField
      FieldName = 'current'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySUMtiga_puluh: TFloatField
      FieldName = 'tiga_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySUMenam_puluh: TFloatField
      FieldName = 'enam_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySUMsembilan_puluh: TFloatField
      FieldName = 'sembilan_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qrySUMlebih_sembilan_puluh: TFloatField
      FieldName = 'lebih_sembilan_puluh'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
  end
end

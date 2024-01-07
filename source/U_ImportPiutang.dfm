object ImportPiutangFrm: TImportPiutangFrm
  Left = 264
  Top = 91
  BorderStyle = bsToolWindow
  Caption = 'Import Data Faktur Penjualan'
  ClientHeight = 625
  ClientWidth = 1241
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TAdvPanel
    Left = 0
    Top = 0
    Width = 1241
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 16640730
    TabOrder = 0
    UseDockManager = True
    Version = '2.3.0.7'
    AutoHideChildren = False
    BorderColor = clGray
    Caption.Color = 14059353
    Caption.ColorTo = 9648131
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 14986888
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clNone
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWhite
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14716773
    StatusBar.ColorTo = 16374724
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    FullHeight = 0
    object lblHeader: TLabel
      Left = 12
      Top = 9
      Width = 317
      Height = 25
      Caption = 'Import Data Faktur Penjualan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 554
    Width = 1241
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 1
    object btnClose: TSCButton
      Left = 6
      Top = 11
      Width = 71
      Height = 25
      Caption = 'Tutup'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = clWindow
      RoundWithParentColor = False
      Spacing = 2
      Style = scbsCorel
      TabOrder = 0
      TabStop = False
    end
    object SCButton1: TSCButton
      Left = 157
      Top = 13
      Width = 71
      Height = 25
      Caption = 'jHeader'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = clWindow
      RoundWithParentColor = False
      Spacing = 2
      Style = scbsCorel
      TabOrder = 1
      TabStop = False
      Visible = False
    end
    object SCButton2: TSCButton
      Left = 232
      Top = 13
      Width = 71
      Height = 25
      Caption = 'jPcode'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = clWindow
      RoundWithParentColor = False
      Spacing = 2
      Style = scbsCorel
      TabOrder = 2
      TabStop = False
      Visible = False
    end
    object SCButton3: TSCButton
      Left = 307
      Top = 11
      Width = 71
      Height = 25
      Caption = 'jtPrb'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = clWindow
      RoundWithParentColor = False
      Spacing = 2
      Style = scbsCorel
      TabOrder = 3
      TabStop = False
      Visible = False
    end
    object SCButton4: TSCButton
      Left = 389
      Top = 12
      Width = 71
      Height = 25
      Caption = 'jtPRU'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = clWindow
      RoundWithParentColor = False
      Spacing = 2
      Style = scbsCorel
      TabOrder = 4
      TabStop = False
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 482
    Width = 1241
    Height = 72
    Align = alBottom
    BevelInner = bvLowered
    Color = 15265510
    TabOrder = 3
    object LblStatus: TLabel
      Left = 2
      Top = 55
      Width = 1237
      Height = 15
      Align = alBottom
      Alignment = taCenter
      Caption = 'status hubungan'
      Color = 15265510
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object pgrsTotal: TSCProgress
      Left = 2
      Top = -3
      Width = 1237
      Height = 58
      Align = alBottom
      BorderProps.Border = sccbFlat
      Step = 1
      Style = scpsXP
      TabOrder = 0
    end
    object pgrsProcess: TSCProgress
      Left = 2
      Top = 2
      Width = 1237
      Height = 24
      Align = alTop
      BorderProps.Border = sccbFlat
      Step = 1
      Style = scpsXP
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 599
    Width = 1241
    Height = 26
    Panels = <
      item
        Text = 'Provider :'
        Width = 60
      end
      item
        Text = 'Microsoft.Jet.OLEDB.4.0'
        Width = 300
      end
      item
        Text = 'Extended Properties :'
        Width = 120
      end
      item
        Text = 'EXCEL 8.0;HDR=YES;IMEX=1'
        Width = 50
      end>
  end
  object pgcImport: TcxPageControl
    Left = 0
    Top = 119
    Width = 1241
    Height = 363
    ActivePage = tabJHEADER
    Align = alClient
    TabOrder = 4
    ClientRectBottom = 363
    ClientRectRight = 1241
    ClientRectTop = 24
    object tabJHEADER: TcxTabSheet
      Caption = 'JHEADER'
      ImageIndex = 0
      object grdJHEADER: TcxGrid
        Left = 0
        Top = 0
        Width = 1241
        Height = 314
        Align = alClient
        TabOrder = 0
        object grdDBTV_JHEADER: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dskmtJHEADER
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'F1'
              Column = grdDBTV_JHEADER_KD_SALES
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
          OptionsView.GroupByBox = False
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grdDBTV_JHEADER_KD_SALES: TcxGridDBColumn
            Caption = 'KD SALES'
            DataBinding.FieldName = 'KD_SALES'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 66
          end
          object grdDBTV_JHEADER_NOORDER: TcxGridDBColumn
            Caption = 'NO ORDER'
            DataBinding.FieldName = 'NO_ORDER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 72
          end
          object grdDBTV_JHEADER_NO_FAKTUR: TcxGridDBColumn
            Caption = 'NO. FAKTUR'
            DataBinding.FieldName = 'NO_FAKTUR'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 58
          end
          object grdDBTV_JHEADER_TGL_ORDER: TcxGridDBColumn
            Caption = 'TGL. ORDER'
            DataBinding.FieldName = 'TGL_ORDER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 71
          end
          object grdDBTV_JHEADER_TGL_FAKTUR: TcxGridDBColumn
            Caption = 'TGL. FAKTUR'
            DataBinding.FieldName = 'TGL_FAKTUR'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 89
          end
          object grdDBTV_JHEADER_KD_OUTLET: TcxGridDBColumn
            Caption = 'KD OUTLET'
            DataBinding.FieldName = 'KD_OUTLET'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 72
          end
          object grdDBTV_JHEADER_SUB_TOTAL: TcxGridDBColumn
            Caption = 'SUB TOTAL'
            DataBinding.FieldName = 'SUB_TOTAL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object grdDBTV_JHEADER_PROMO_BRG: TcxGridDBColumn
            Caption = 'PROMO BARANG'
            DataBinding.FieldName = 'PROMO_BRG'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 88
          end
          object grdDBTV_JHEADER_PROMO_UANG: TcxGridDBColumn
            Caption = 'PROMO UANG'
            DataBinding.FieldName = 'PROMO_UANG'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 67
          end
          object grdDBTV_JHEADER_PPN: TcxGridDBColumn
            DataBinding.FieldName = 'PPN'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 49
          end
          object grdDBTV_JHEADER_NET_N_PPN: TcxGridDBColumn
            Caption = 'TOTAL+PPN'
            DataBinding.FieldName = 'NET_N_PPN'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 62
          end
          object grdDBTV_JHEADER_DISC: TcxGridDBColumn
            Caption = 'DISC [Rp]'
            DataBinding.FieldName = 'DISC'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 53
          end
          object grdDBTV_JHEADER_NO_PAJAK: TcxGridDBColumn
            Caption = 'NO. FAKTUR PAJAK'
            DataBinding.FieldName = 'NO_PAJAK'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 93
          end
          object grdDBTV_JHEADER_NO_REKAP: TcxGridDBColumn
            Caption = 'NO. REKAP'
            DataBinding.FieldName = 'NO_REKAP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
          end
          object grdDBTV_JHEADER_FAKTUR_DIRETUR: TcxGridDBColumn
            Caption = 'FAKTUR DIRETUR'
            DataBinding.FieldName = 'FAKTUR_DIRETUR'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 92
          end
        end
        object grdLvlJHEADER: TcxGridLevel
          GridView = grdDBTV_JHEADER
        end
      end
      object dbnJHEADER: TcxDBNavigator
        Left = 0
        Top = 314
        Width = 1240
        Height = 25
        Buttons.First.Hint = 'Pertama'
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Hint = 'Sebelumnya'
        Buttons.Next.Hint = 'Selanjutnya'
        Buttons.NextPage.Visible = False
        Buttons.Last.Hint = 'Terakhir'
        Buttons.Insert.Hint = 'Tambah'
        Buttons.Delete.Hint = 'Hapus'
        Buttons.Edit.Hint = 'Edit'
        Buttons.Post.Hint = 'Simpan'
        Buttons.Cancel.Hint = 'Batal'
        Buttons.Refresh.Hint = 'Refresh'
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Enabled = False
        Buttons.Filter.Visible = False
        DataSource = dskmtJHEADER
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        LookAndFeel.Kind = lfFlat
        Align = alBottom
        TabOrder = 1
      end
    end
    object tabJPCODE: TcxTabSheet
      Caption = 'JPCODE'
      ImageIndex = 2
      object grdJPCODE: TcxGrid
        Left = 0
        Top = 0
        Width = 1098
        Height = 340
        Align = alClient
        TabOrder = 0
        object grdDBTV_JPCODE: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dskmtJPCODE
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'KD_ITEM'
              Column = grdDBTV_JPCODENO_ORDER
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
          OptionsView.GroupByBox = False
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grdDBTV_JPCODENO_ORDER: TcxGridDBColumn
            Caption = 'NO ORDER'
            DataBinding.FieldName = 'NO_ORDER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 79
          end
          object grdDBTV_JPCODEKD_ITEM: TcxGridDBColumn
            Caption = 'PCCODE'
            DataBinding.FieldName = 'KD_ITEM'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 134
          end
          object grdDBTV_JPCODEQTY_KARTON: TcxGridDBColumn
            Caption = 'QTY KARTON'
            DataBinding.FieldName = 'QTY_KARTON'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object grdDBTV_JPCODEQTY_LUSIN: TcxGridDBColumn
            Caption = 'QTY LUSIN'
            DataBinding.FieldName = 'QTY_LUSIN'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object grdDBTV_JPCODEQTY_BIJI: TcxGridDBColumn
            Caption = 'QTY BIJI'
            DataBinding.FieldName = 'QTY_BIJI'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 89
          end
          object grdDBTV_JPCODEQTY_TOTAL_BIJI: TcxGridDBColumn
            Caption = 'QTY TOTAL '
            DataBinding.FieldName = 'QTY_TOTAL_BIJI'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 97
          end
          object grdDBTV_JPCODEHRG_KARTON: TcxGridDBColumn
            Caption = 'HRG JUAL KARTON'
            DataBinding.FieldName = 'HRG_KARTON'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 148
          end
          object grdDBTV_JPCODEHRG_LUSIN: TcxGridDBColumn
            Caption = 'HRG JUAL LUSIN'
            DataBinding.FieldName = 'HRG_LUSIN'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
          end
          object grdDBTV_JPCODETOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 55
          end
          object grdDBTV_JPCODESTATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 32
          end
          object grdDBTV_JPCODEJENIS: TcxGridDBColumn
            DataBinding.FieldName = 'JENIS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 114
          end
        end
        object grdLVLJPCODE: TcxGridLevel
          GridView = grdDBTV_JPCODE
        end
      end
      object dbnJPCODE: TcxDBNavigator
        Left = 0
        Top = 340
        Width = 1090
        Height = 25
        Buttons.First.Hint = 'Pertama'
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Hint = 'Sebelumnya'
        Buttons.Next.Hint = 'Selanjutnya'
        Buttons.NextPage.Visible = False
        Buttons.Last.Hint = 'Terakhir'
        Buttons.Insert.Hint = 'Tambah'
        Buttons.Delete.Hint = 'Hapus'
        Buttons.Edit.Hint = 'Edit'
        Buttons.Post.Hint = 'Simpan'
        Buttons.Cancel.Hint = 'Batal'
        Buttons.Refresh.Hint = 'Refresh'
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Enabled = False
        Buttons.Filter.Visible = False
        DataSource = dskmtJPCODE
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        LookAndFeel.Kind = lfFlat
        Align = alBottom
        TabOrder = 1
      end
    end
    object tabJTPRB: TcxTabSheet
      Caption = 'JTPRB'
      ImageIndex = 3
      object grdJTPRB: TcxGrid
        Left = 0
        Top = 0
        Width = 1098
        Height = 340
        Align = alClient
        TabOrder = 0
        object grdDBTV_JTPRB: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dskmtJTPRB
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'KD_ITEM'
              Column = cxGridDBColumn1
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
          OptionsView.GroupByBox = False
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'NO ORDER'
            DataBinding.FieldName = 'NO_ORDER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'PCCODE'
            DataBinding.FieldName = 'KD_ITEM'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 133
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'QTY KARTON'
            DataBinding.FieldName = 'QTY_KARTON'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 97
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'QTY LUSIN'
            DataBinding.FieldName = 'QTY_LUSIN'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 99
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'QTY BIJI'
            DataBinding.FieldName = 'QTY_BIJI'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 88
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'QTY TOTAL '
            DataBinding.FieldName = 'QTY_TOTAL_BIJI'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 96
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'HRG JUAL KARTON'
            DataBinding.FieldName = 'HRG_KARTON'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 146
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'HRG JUAL LUSIN'
            DataBinding.FieldName = 'HRG_LUSIN'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 149
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 109
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'JENIS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
        end
        object grdLVLJTPRB: TcxGridLevel
          GridView = grdDBTV_JTPRB
        end
      end
      object dbnJTPRB: TcxDBNavigator
        Left = 0
        Top = 340
        Width = 1090
        Height = 25
        Buttons.First.Hint = 'Pertama'
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Hint = 'Sebelumnya'
        Buttons.Next.Hint = 'Selanjutnya'
        Buttons.NextPage.Visible = False
        Buttons.Last.Hint = 'Terakhir'
        Buttons.Insert.Hint = 'Tambah'
        Buttons.Delete.Hint = 'Hapus'
        Buttons.Edit.Hint = 'Edit'
        Buttons.Post.Hint = 'Simpan'
        Buttons.Cancel.Hint = 'Batal'
        Buttons.Refresh.Hint = 'Refresh'
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Enabled = False
        Buttons.Filter.Visible = False
        DataSource = dskmtJTPRB
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        LookAndFeel.Kind = lfFlat
        Align = alBottom
        TabOrder = 1
      end
    end
    object tabJTPRU: TcxTabSheet
      Caption = 'JTPRU'
      ImageIndex = 4
      object dbnJTPRU: TcxDBNavigator
        Left = 0
        Top = 340
        Width = 1090
        Height = 25
        Buttons.First.Hint = 'Pertama'
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Hint = 'Sebelumnya'
        Buttons.Next.Hint = 'Selanjutnya'
        Buttons.NextPage.Visible = False
        Buttons.Last.Hint = 'Terakhir'
        Buttons.Insert.Hint = 'Tambah'
        Buttons.Delete.Hint = 'Hapus'
        Buttons.Edit.Hint = 'Edit'
        Buttons.Post.Hint = 'Simpan'
        Buttons.Cancel.Hint = 'Batal'
        Buttons.Refresh.Hint = 'Refresh'
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Enabled = False
        Buttons.Filter.Visible = False
        DataSource = dskmtJTPRU
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        LookAndFeel.Kind = lfFlat
        Align = alBottom
        TabOrder = 0
      end
      object grdJTPRU: TcxGrid
        Left = 0
        Top = 0
        Width = 1098
        Height = 340
        Align = alClient
        TabOrder = 1
        object grdDBTV_JTPRU: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dskmtJTPRU
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'KD_ITEM'
              Column = cxGridDBColumn11
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'NO ORDER'
            DataBinding.FieldName = 'NO_ORDER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'PCCODE'
            DataBinding.FieldName = 'KD_ITEM'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 133
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'DISC [Rp.]'
            DataBinding.FieldName = 'DISC'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 97
          end
          object cxGridDBColumn20: TcxGridDBColumn
            DataBinding.FieldName = 'JENIS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
        end
        object grdLVLJTPRU: TcxGridLevel
          GridView = grdDBTV_JTPRU
        end
      end
    end
    object tabError: TcxTabSheet
      Caption = 'Error'
      ImageIndex = 1
      OnShow = tabErrorShow
      object grdError: TcxGrid
        Left = 0
        Top = 0
        Width = 1098
        Height = 365
        Align = alClient
        TabOrder = 0
        object grddbtv_Error: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsError
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
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grddbtv_Errortable_name: TcxGridDBColumn
            Caption = 'Tabel'
            DataBinding.FieldName = 'nama_tabel'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 97
          end
          object grddbtv_Errorfield_name: TcxGridDBColumn
            Caption = 'Kolom'
            DataBinding.FieldName = 'nama_field'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 103
          end
          object grddbtv_Errordata_value: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Width = 122
          end
        end
        object grdLvlError: TcxGridLevel
          GridView = grddbtv_Error
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1241
    Height = 76
    Align = alTop
    BevelInner = bvLowered
    Color = clWindow
    TabOrder = 6
    object lblLocation: TLabel
      Left = 26
      Top = 44
      Width = 117
      Height = 16
      Caption = 'Lokasi File Extract :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnInsertError: TSCButton
      Left = 554
      Top = 41
      Width = 90
      Height = 25
      Caption = 'Perbaiki Data'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = clWindow
      Spacing = 2
      Style = scbsCorel
      TabOrder = 2
      TabStop = False
      OnClick = btnInsertErrorClick
    end
    object btnImport: TSCButton
      Left = 554
      Top = 41
      Width = 90
      Height = 25
      Caption = 'Import'
      Images = DM.ImageList1
      ImageIndex = 1
      RoundColor = clWindow
      Spacing = 2
      Style = scbsCorel
      TabOrder = 0
      TabStop = False
      OnClick = btnImportClick
    end
    object btnFetch: TSCButton
      Left = 555
      Top = 41
      Width = 90
      Height = 25
      Caption = 'Fetch Data'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnFetchClick
    end
    object dtpStart: TwwDBDateTimePicker
      Left = 146
      Top = 16
      Width = 171
      Height = 22
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.StartYear = 2000
      Epoch = 1950
      Frame.Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 4
      DisplayFormat = 'dd mmm yyyy'
    end
    object cxLabel30: TcxLabel
      Left = 26
      Top = 15
      Caption = 'Tanggal Faktur/Retur'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.Shadow = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleFocused.BorderStyle = ebsNone
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextStyle = [fsUnderline]
      Transparent = True
    end
    object edtLocation: TLMDBrowseEdit
      Left = 145
      Top = 43
      Width = 405
      Height = 21
      Cursor = crIBeam
      Bevel.Mode = bmWindows
      Caret.BlinkRate = 530
      Caret.ImageIndex = 0
      Caret.ListIndex = 0
      TabOrder = 5
    end
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2003Blue
    Left = 347
    Top = 5
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = clGray
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 14059353
    Settings.Caption.ColorTo = 9648131
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
    Settings.Color = 16640730
    Settings.ColorTo = 14986888
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = clWindowText
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
    Settings.StatusBar.BorderColor = clNone
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clWhite
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 14716773
    Settings.StatusBar.ColorTo = 16374724
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2003Blue
    Left = 313
    Top = 3
  end
  object odsCheck: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 628
    Top = 9
  end
  object oqExec: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 98
    Top = 8
  end
  object odsExport: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 134
    Top = 8
  end
  object oqJHeader: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.jheader')
    Params = <>
    Left = 163
    Top = 11
    object oqJHeaderno_nota: TStringField
      FieldName = 'no_nota'
      Required = True
      Size = 32
    end
    object oqJHeaderdt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object oqJHeaderno_bukti: TStringField
      FieldName = 'no_bukti'
      Size = 32
    end
    object oqJHeaderdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object oqJHeaderdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object oqJHeaderusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object oqJHeaderusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object oqJHeaderkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
    end
    object oqJHeaderid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object oqJHeaderid_division: TStringField
      FieldName = 'id_division'
      Size = 12
    end
    object oqJHeadercara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 10
    end
    object oqJHeaderno_rekap: TStringField
      FieldName = 'no_rekap'
      Size = 10
    end
    object oqJHeadersub_total: TFloatField
      FieldName = 'sub_total'
      Required = True
    end
    object oqJHeaderclaim: TFloatField
      FieldName = 'claim'
      Required = True
    end
    object oqJHeaderdisc_rp: TFloatField
      FieldName = 'disc_rp'
      Required = True
    end
    object oqJHeaderpromo_uang: TFloatField
      FieldName = 'promo_uang'
      Required = True
    end
    object oqJHeaderpromo_barang: TFloatField
      FieldName = 'promo_barang'
      Required = True
    end
    object oqJHeadernet_n_ppn: TFloatField
      FieldName = 'net_n_ppn'
      Required = True
    end
    object oqJHeadernretur: TFloatField
      FieldName = 'nretur'
      Required = True
    end
    object oqJHeadernota_diretur: TStringField
      FieldName = 'nota_diretur'
      Size = 16
    end
    object oqJHeaderno_pajak: TStringField
      FieldName = 'no_pajak'
      Size = 50
    end
    object oqJHeaderid_import: TLargeintField
      FieldName = 'id_import'
    end
    object oqJHeaderis_kanvas: TStringField
      FieldName = 'is_kanvas'
      Size = 4
    end
  end
  object oqJPcode: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.jpcode')
    Params = <>
    Left = 194
    Top = 11
    object oqJPcodeno_detail: TLargeintField
      FieldName = 'no_detail'
    end
    object oqJPcodeno_nota: TStringField
      FieldName = 'no_nota'
      Size = 32
    end
    object oqJPcodekd_item: TStringField
      FieldName = 'kd_item'
      Size = 50
    end
    object oqJPcodehrg_jual_karton: TFloatField
      FieldName = 'hrg_jual_karton'
    end
    object oqJPcodehrg_jual_lusin: TFloatField
      FieldName = 'hrg_jual_lusin'
    end
    object oqJPcodeqty_in_karton: TFloatField
      FieldName = 'qty_in_karton'
    end
    object oqJPcodeqty_ot_karton: TFloatField
      FieldName = 'qty_ot_karton'
    end
    object oqJPcodeqty_in_lusin: TFloatField
      FieldName = 'qty_in_lusin'
    end
    object oqJPcodeqty_ot_lusin: TFloatField
      FieldName = 'qty_ot_lusin'
    end
    object oqJPcodeqty_in_biji: TFloatField
      FieldName = 'qty_in_biji'
    end
    object oqJPcodeqty_ot_biji: TFloatField
      FieldName = 'qty_ot_biji'
    end
    object oqJPcodetotal: TFloatField
      FieldName = 'total'
    end
    object oqJPcodeqty_in_total: TFloatField
      FieldName = 'qty_in_total'
    end
    object oqJPcodeqty_ot_total: TFloatField
      FieldName = 'qty_ot_total'
    end
    object oqJPcodeid_import: TLargeintField
      FieldName = 'id_import'
    end
    object oqJPcodestatus: TStringField
      FieldName = 'status'
      Size = 1
    end
  end
  object oqJTprb: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.jtprb'
      '')
    Params = <>
    Left = 223
    Top = 11
    object oqJTprbno_detail: TLargeintField
      FieldName = 'no_detail'
    end
    object oqJTprbno_nota: TStringField
      FieldName = 'no_nota'
      Size = 32
    end
    object oqJTprbkd_item: TStringField
      FieldName = 'kd_item'
      Size = 50
    end
    object oqJTprbhrg_jual_karton: TFloatField
      FieldName = 'hrg_jual_karton'
    end
    object oqJTprbhrg_jual_lusin: TFloatField
      FieldName = 'hrg_jual_lusin'
    end
    object oqJTprbqty_ot_karton: TFloatField
      FieldName = 'qty_ot_karton'
    end
    object oqJTprbqty_ot_lusin: TFloatField
      FieldName = 'qty_ot_lusin'
    end
    object oqJTprbqty_ot_biji: TFloatField
      FieldName = 'qty_ot_biji'
    end
    object oqJTprbtotal: TFloatField
      FieldName = 'total'
    end
    object oqJTprbqty_ot_total: TFloatField
      FieldName = 'qty_ot_total'
    end
    object oqJTprbid_import: TLargeintField
      FieldName = 'id_import'
    end
  end
  object oqJTpru: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.jtpru')
    Params = <>
    Left = 265
    Top = 12
    object oqJTpruno_detail: TLargeintField
      FieldName = 'no_detail'
      Required = True
    end
    object oqJTpruno_nota: TStringField
      FieldName = 'no_nota'
      Size = 32
    end
    object oqJTprukd_item: TStringField
      FieldName = 'kd_item'
      Size = 50
    end
    object oqJTprudisc: TFloatField
      FieldName = 'disc'
      Required = True
    end
    object oqJTpruid_import: TLargeintField
      FieldName = 'id_import'
    end
  end
  object sq_JPCODE: TZSequence
    Connection = DM.conn
    SequenceName = 'transaksi.sq_jpcode'
    Left = 437
    Top = 2
  end
  object sq_JTPRB: TZSequence
    Connection = DM.conn
    SequenceName = 'transaksi.sq_jtprb'
    Left = 471
    Top = 2
  end
  object sq_JTPRU: TZSequence
    Connection = DM.conn
    SequenceName = 'transaksi.sq_jtpru'
    Left = 502
    Top = 4
  end
  object SR: TcxStyleRepository
    Left = 536
    Top = 5
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
  object QTableError: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.import_error'
      'order by id_import')
    Params = <>
    Left = 571
    Top = 2
    object QTableErrorid_import: TLargeintField
      FieldName = 'id_import'
      Required = True
    end
    object QTableErrornama_tabel: TStringField
      FieldName = 'nama_tabel'
      Size = 50
    end
    object QTableErrornama_field: TStringField
      FieldName = 'nama_field'
      Size = 50
    end
    object QTableErrorketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
  end
  object dsError: TDataSource
    DataSet = QTableError
    Left = 590
    Top = 15
  end
  object sq_IMPORT: TZSequence
    Connection = DM.conn
    SequenceName = 'transaksi.sq_import'
    Left = 394
    Top = 4
  end
  object kmtJHEADER: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'F1'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F2'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F3'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F4'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F5'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F6'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F7'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F8'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F9'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F10'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F11'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F12'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F13'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F14'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F15'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F16'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F17'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F18'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F19'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F20'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F21'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F22'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F23'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F24'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F25'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F26'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F27'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F28'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'F29'
        DataType = ftWideString
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
    Left = 852
    Top = 9
    object kmtJHEADERKD_SALES: TWideStringField
      FieldName = 'KD_SALES'
      Size = 255
    end
    object kmtJHEADERNO_ORDER: TWideStringField
      FieldName = 'NO_ORDER'
      Size = 255
    end
    object kmtJHEADERTGL_ORDER: TWideStringField
      FieldName = 'TGL_ORDER'
      Size = 255
    end
    object kmtJHEADERKD_OUTLET: TWideStringField
      FieldName = 'KD_OUTLET'
      Size = 255
    end
    object kmtJHEADERSUB_TOTAL: TWideStringField
      FieldName = 'SUB_TOTAL'
      Size = 255
    end
    object kmtJHEADERPROMO_BRG: TWideStringField
      FieldName = 'PROMO_BRG'
      Size = 255
    end
    object kmtJHEADERPROMO_UANG: TWideStringField
      FieldName = 'PROMO_UANG'
      Size = 255
    end
    object kmtJHEADERPPN: TWideStringField
      FieldName = 'PPN'
      Size = 255
    end
    object kmtJHEADERNET_N_PPN: TWideStringField
      FieldName = 'NET_N_PPN'
      Size = 255
    end
    object kmtJHEADERNO_FAKTUR: TWideStringField
      FieldName = 'NO_FAKTUR'
      Size = 255
    end
    object kmtJHEADERDISC: TWideStringField
      FieldName = 'DISC'
      Size = 255
    end
    object kmtJHEADERTGL_FAKTUR: TWideStringField
      FieldName = 'TGL_FAKTUR'
      Size = 255
    end
    object kmtJHEADERNO_PAJAK: TWideStringField
      FieldName = 'NO_PAJAK'
      Size = 255
    end
    object kmtJHEADERNO_REKAP: TWideStringField
      FieldName = 'NO_REKAP'
      Size = 255
    end
    object kmtJHEADERFAKTUR_DIRETUR: TWideStringField
      FieldName = 'FAKTUR_DIRETUR'
      Size = 255
    end
  end
  object dskmtJHEADER: TwwDataSource
    DataSet = kmtJHEADER
    Left = 861
    Top = 38
  end
  object qSettingFaktur: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * '
      'from master.mno_faktur'
      'where jns_faktur=:pjenis')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pjenis'
        ParamType = ptUnknown
      end>
    Left = 664
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pjenis'
        ParamType = ptUnknown
      end>
    object qSettingFakturjns_faktur: TStringField
      FieldName = 'jns_faktur'
      Required = True
      Size = 50
    end
    object qSettingFakturno_faktur_sales: TStringField
      FieldName = 'no_faktur_sales'
      Size = 50
    end
    object qSettingFakturno_order_faktur: TStringField
      FieldName = 'no_order_faktur'
      Size = 50
    end
    object qSettingFakturno_order_retur: TStringField
      FieldName = 'no_order_retur'
      Size = 50
    end
    object qSettingFakturno_faktur_retur: TStringField
      FieldName = 'no_faktur_retur'
      Size = 50
    end
    object qSettingFakturno_order_canvas: TStringField
      FieldName = 'no_order_canvas'
      Size = 50
    end
    object qSettingFakturno_faktur_canvas: TStringField
      FieldName = 'no_faktur_canvas'
      Size = 50
    end
  end
  object dskmtJPCODE: TwwDataSource
    DataSet = kmtJPCODE
    Left = 895
    Top = 38
  end
  object kmtJPCODE: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'NO_ORDER'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'KD_ITEM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_KARTON'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_LUSIN'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_BIJI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_TOTAL_BIJI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HRG_KARTON'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HRG_LUSIN'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TOTAL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'JENIS'
        DataType = ftString
        Size = 10
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
    Left = 886
    Top = 9
    object kmtJPCODENO_ORDER: TStringField
      FieldName = 'NO_ORDER'
      Size = 32
    end
    object kmtJPCODEKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object kmtJPCODEQTY_KARTON: TStringField
      FieldName = 'QTY_KARTON'
      Size = 50
    end
    object kmtJPCODEQTY_LUSIN: TStringField
      FieldName = 'QTY_LUSIN'
      Size = 50
    end
    object kmtJPCODEQTY_BIJI: TStringField
      FieldName = 'QTY_BIJI'
      Size = 50
    end
    object kmtJPCODEQTY_TOTAL_BIJI: TStringField
      FieldName = 'QTY_TOTAL_BIJI'
      Size = 50
    end
    object kmtJPCODEHRG_KARTON: TStringField
      FieldName = 'HRG_KARTON'
      Size = 50
    end
    object kmtJPCODEHRG_LUSIN: TStringField
      FieldName = 'HRG_LUSIN'
      Size = 50
    end
    object kmtJPCODETOTAL: TStringField
      FieldName = 'TOTAL'
      Size = 50
    end
    object kmtJPCODEJENIS: TStringField
      FieldName = 'JENIS'
      Size = 10
    end
    object kmtJPCODESTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object kmtJTPRB: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'NO_ORDER'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'KD_ITEM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_KARTON'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_LUSIN'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_BIJI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_TOTAL_BIJI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HRG_KARTON'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HRG_LUSIN'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TOTAL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'JENIS'
        DataType = ftString
        Size = 10
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
    Left = 924
    Top = 9
    object kmtJTPRBNO_ORDER: TStringField
      FieldName = 'NO_ORDER'
      Size = 32
    end
    object kmtJTPRBKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object kmtJTPRBQTY_KARTON: TStringField
      FieldName = 'QTY_KARTON'
      Size = 50
    end
    object kmtJTPRBQTY_LUSIN: TStringField
      FieldName = 'QTY_LUSIN'
      Size = 50
    end
    object kmtJTPRBQTY_BIJI: TStringField
      FieldName = 'QTY_BIJI'
      Size = 50
    end
    object kmtJTPRBQTY_TOTAL_BIJI: TStringField
      FieldName = 'QTY_TOTAL_BIJI'
      Size = 50
    end
    object kmtJTPRBHRG_KARTON: TStringField
      FieldName = 'HRG_KARTON'
      Size = 50
    end
    object kmtJTPRBHRG_LUSIN: TStringField
      FieldName = 'HRG_LUSIN'
      Size = 50
    end
    object kmtJTPRBTOTAL: TStringField
      FieldName = 'TOTAL'
      Size = 50
    end
    object kmtJTPRBJENIS: TStringField
      FieldName = 'JENIS'
      Size = 10
    end
  end
  object dskmtJTPRB: TwwDataSource
    DataSet = kmtJTPRB
    Left = 933
    Top = 38
  end
  object kmtJTPRU: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'NO_ORDER'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'KD_ITEM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_KARTON'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_LUSIN'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_BIJI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY_TOTAL_BIJI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HRG_KARTON'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HRG_LUSIN'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TOTAL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'JENIS'
        DataType = ftString
        Size = 10
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
    Left = 969
    Top = 9
    object kmtJTPRUNO_ORDER: TStringField
      FieldName = 'NO_ORDER'
      Size = 32
    end
    object kmtJTPRUKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object kmtJTPRUJENIS: TStringField
      FieldName = 'JENIS'
      Size = 10
    end
    object kmtJTPRUDISC: TStringField
      FieldName = 'DISC'
      Size = 50
    end
  end
  object dskmtJTPRU: TwwDataSource
    DataSet = kmtJTPRU
    Left = 978
    Top = 38
  end
  object qGetNo_Faktur: TZReadOnlyQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT transaksi.fn_gen_nota_number(:pid_trans)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end>
    Left = 717
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end>
  end
  object SdfDataSet1: TSdfDataSet
    FileMustExist = True
    ReadOnly = False
    FieldDefs = <>
    Delimiter = ','
    FirstLineAsSchema = False
    Left = 409
    Top = 39
  end
  object odsImport: TSdfDataSet
    FileMustExist = True
    ReadOnly = False
    FileName = '.\JHEADER.txt'
    FieldDefs = <>
    Delimiter = ','
    FirstLineAsSchema = False
    Left = 775
    Top = 2
  end
end

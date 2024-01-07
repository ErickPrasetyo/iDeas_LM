object ImportPiutangMayoraFrm: TImportPiutangMayoraFrm
  Left = 41
  Top = 32
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
      Left = 14
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
      OnClick = btnCloseClick
    end
    object SCButton1: TSCButton
      Left = 157
      Top = 11
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
      Top = 11
      Width = 71
      Height = 25
      Caption = 'jDetail'
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
              Format = ',0'
              Kind = skCount
              FieldName = 'Kode_Distributor'
              Column = grdDBTV_JHEADERKode_Distributor
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
          object grdDBTV_JHEADERKode_Distributor: TcxGridDBColumn
            DataBinding.FieldName = 'Kode_Distributor'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNo_Order: TcxGridDBColumn
            DataBinding.FieldName = 'No_Order'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADEROrder_Sales: TcxGridDBColumn
            DataBinding.FieldName = 'Order_Sales'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTipe: TcxGridDBColumn
            DataBinding.FieldName = 'Tipe'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNo_Outlet: TcxGridDBColumn
            DataBinding.FieldName = 'No_Outlet'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNo_Invoice: TcxGridDBColumn
            DataBinding.FieldName = 'No_Invoice'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNo_Rekap: TcxGridDBColumn
            DataBinding.FieldName = 'No_Rekap'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTgl_Order: TcxGridDBColumn
            DataBinding.FieldName = 'Tgl_Order'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTgl_Invoice: TcxGridDBColumn
            DataBinding.FieldName = 'Tgl_Invoice'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTgl_Jth_Tempo: TcxGridDBColumn
            DataBinding.FieldName = 'Tgl_Jth_Tempo'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERCara_Bayar: TcxGridDBColumn
            DataBinding.FieldName = 'Cara_Bayar'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNo_PO: TcxGridDBColumn
            DataBinding.FieldName = 'No_PO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNo_Mobil: TcxGridDBColumn
            DataBinding.FieldName = 'No_Mobil'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERSub_Total: TcxGridDBColumn
            DataBinding.FieldName = 'Sub_Total'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERDisc_Psn: TcxGridDBColumn
            DataBinding.FieldName = 'Disc_Psn'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTot_TPR_Barang: TcxGridDBColumn
            DataBinding.FieldName = 'Tot_TPR_Barang'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTot_TPR_Uang: TcxGridDBColumn
            DataBinding.FieldName = 'Tot_TPR_Uang'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTot_Disc_PC: TcxGridDBColumn
            DataBinding.FieldName = 'Tot_Disc_PC'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTot_Diss1: TcxGridDBColumn
            DataBinding.FieldName = 'Tot_Disc1'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTot_Disc2: TcxGridDBColumn
            DataBinding.FieldName = 'Tot_Disc2'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTotal: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNilai_Invoice: TcxGridDBColumn
            DataBinding.FieldName = 'Nilai_Invoice'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERBayar: TcxGridDBColumn
            DataBinding.FieldName = 'Bayar'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTipe_Pajak: TcxGridDBColumn
            DataBinding.FieldName = 'Tipe_Pajak'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERNo_pajak: TcxGridDBColumn
            DataBinding.FieldName = 'No_pajak'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERTgl_Pajak: TcxGridDBColumn
            DataBinding.FieldName = 'Tgl_Pajak'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERPpn: TcxGridDBColumn
            DataBinding.FieldName = 'Ppn'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JHEADERDisc_Rp: TcxGridDBColumn
            DataBinding.FieldName = 'Disc_Rp'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
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
      Caption = 'JDETAIL'
      ImageIndex = 2
      object grdJDETAIL: TcxGrid
        Left = 0
        Top = 0
        Width = 1241
        Height = 314
        Align = alClient
        TabOrder = 0
        object grdDBTV_JDETAIL: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dskmtJDETAIL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skCount
              FieldName = 'tipe_barang'
              Column = grdDBTV_JDETAILtipe_barang
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
          object grdDBTV_JDETAILtipe_barang: TcxGridDBColumn
            DataBinding.FieldName = 'tipe_barang'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILid_distributor: TcxGridDBColumn
            DataBinding.FieldName = 'id_distributor'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILno_order: TcxGridDBColumn
            DataBinding.FieldName = 'no_order'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILorder_sales: TcxGridDBColumn
            DataBinding.FieldName = 'order_sales'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILtipe: TcxGridDBColumn
            DataBinding.FieldName = 'tipe'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILid_item: TcxGridDBColumn
            DataBinding.FieldName = 'id_item'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_rp: TcxGridDBColumn
            DataBinding.FieldName = 'disc_rp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILqty_karton: TcxGridDBColumn
            DataBinding.FieldName = 'qty_karton'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILqty_lusin: TcxGridDBColumn
            DataBinding.FieldName = 'qty_lusin'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILqty_biji: TcxGridDBColumn
            DataBinding.FieldName = 'qty_biji'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILqty_jml_biji: TcxGridDBColumn
            DataBinding.FieldName = 'qty_jml_biji'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILhrg_jual_karton: TcxGridDBColumn
            DataBinding.FieldName = 'hrg_jual_karton'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILhrg_jual_lusin: TcxGridDBColumn
            DataBinding.FieldName = 'hrg_jual_lusin'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILhrg_jual_biji: TcxGridDBColumn
            DataBinding.FieldName = 'hrg_jual_biji'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILtotal_netto: TcxGridDBColumn
            DataBinding.FieldName = 'total_netto'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILkd_disc_pc: TcxGridDBColumn
            DataBinding.FieldName = 'kd_disc_pc'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILkd_disc_1: TcxGridDBColumn
            DataBinding.FieldName = 'kd_disc_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILkd_disc_2: TcxGridDBColumn
            DataBinding.FieldName = 'kd_disc_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILtotal_bruto: TcxGridDBColumn
            DataBinding.FieldName = 'total_bruto'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILppn_per_pc: TcxGridDBColumn
            DataBinding.FieldName = 'ppn_per_pc'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_psn_pc: TcxGridDBColumn
            DataBinding.FieldName = 'disc_psn_pc'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_rp_pc: TcxGridDBColumn
            DataBinding.FieldName = 'disc_rp_pc'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_psn_pc_kondisi: TcxGridDBColumn
            DataBinding.FieldName = 'disc_psn_pc_kondisi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_rp_pc_kondisi: TcxGridDBColumn
            DataBinding.FieldName = 'disc_rp_pc_kondisi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_psn_1: TcxGridDBColumn
            DataBinding.FieldName = 'disc_psn_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_rp_1: TcxGridDBColumn
            DataBinding.FieldName = 'disc_rp_1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_psn_1_kondisi: TcxGridDBColumn
            DataBinding.FieldName = 'disc_psn_1_kondisi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_rp_1_kondisi: TcxGridDBColumn
            DataBinding.FieldName = 'disc_rp_1_kondisi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_psn_2: TcxGridDBColumn
            DataBinding.FieldName = 'disc_psn_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_rp_2: TcxGridDBColumn
            DataBinding.FieldName = 'disc_rp_2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_psn_2_kondisi: TcxGridDBColumn
            DataBinding.FieldName = 'disc_psn_2_kondisi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_JDETAILdisc_rp_2_kondisi: TcxGridDBColumn
            DataBinding.FieldName = 'disc_rp_2_kondisi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
        end
        object grdLVLJDETAIL: TcxGridLevel
          GridView = grdDBTV_JDETAIL
        end
      end
      object dbnJPCODE: TcxDBNavigator
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
        DataSource = dskmtJDETAIL
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
      Left = 18
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
    object Label1: TLabel
      Left = 18
      Top = 20
      Width = 93
      Height = 16
      Caption = 'Tanggal Faktur :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 559
      Top = 45
      Width = 59
      Height = 16
      Caption = 'Delimiter :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnInsertError: TSCButton
      Left = 653
      Top = 39
      Width = 90
      Height = 27
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
      Left = 653
      Top = 39
      Width = 90
      Height = 27
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
      Left = 654
      Top = 39
      Width = 90
      Height = 27
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
      TabOrder = 3
      DisplayFormat = 'dd mmm yyyy'
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
      TabOrder = 4
      StartFolder = bfoMyComputer
    end
    object edtDelimiter: TcxTextEdit
      Left = 620
      Top = 43
      TabOrder = 5
      Text = '|'
      Width = 29
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
      'select * from transaksi.jheader_mayora')
    Params = <>
    Left = 163
    Top = 11
    object oqJHeaderid_distributor: TStringField
      FieldName = 'id_distributor'
      Size = 40
    end
    object oqJHeaderno_order: TStringField
      FieldName = 'no_order'
      Size = 120
    end
    object oqJHeaderorder_sales: TStringField
      FieldName = 'order_sales'
      Size = 120
    end
    object oqJHeadertipe: TStringField
      FieldName = 'tipe'
      Size = 40
    end
    object oqJHeaderno_outlet: TStringField
      FieldName = 'no_outlet'
      Size = 120
    end
    object oqJHeaderno_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 120
    end
    object oqJHeaderno_rekap: TStringField
      FieldName = 'no_rekap'
      Size = 120
    end
    object oqJHeadertgl_order: TDateTimeField
      FieldName = 'tgl_order'
    end
    object oqJHeadertgl_invoice: TDateTimeField
      FieldName = 'tgl_invoice'
    end
    object oqJHeadertgl_jth_tempo: TDateTimeField
      FieldName = 'tgl_jth_tempo'
    end
    object oqJHeadercara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 40
    end
    object oqJHeaderno_po: TStringField
      FieldName = 'no_po'
      Size = 120
    end
    object oqJHeaderno_mobil: TStringField
      FieldName = 'no_mobil'
      Size = 120
    end
    object oqJHeadersub_total: TFloatField
      FieldName = 'sub_total'
    end
    object oqJHeaderdisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object oqJHeadertotal_tpr_brg: TFloatField
      FieldName = 'total_tpr_brg'
    end
    object oqJHeadertotal_tpr_uang: TFloatField
      FieldName = 'total_tpr_uang'
    end
    object oqJHeaderdisc_tot_pc: TFloatField
      FieldName = 'disc_tot_pc'
    end
    object oqJHeaderdisc_tot_1: TFloatField
      FieldName = 'disc_tot_1'
    end
    object oqJHeaderdisc_tot_2: TFloatField
      FieldName = 'disc_tot_2'
    end
    object oqJHeadertotal: TFloatField
      FieldName = 'total'
    end
    object oqJHeadernilai_inv: TFloatField
      FieldName = 'nilai_inv'
    end
    object oqJHeadertot_bayar: TFloatField
      FieldName = 'tot_bayar'
    end
    object oqJHeadertipe_pajak: TStringField
      FieldName = 'tipe_pajak'
      Size = 120
    end
    object oqJHeaderno_pajak: TStringField
      FieldName = 'no_pajak'
      Size = 120
    end
    object oqJHeadertgl_pajak: TDateTimeField
      FieldName = 'tgl_pajak'
    end
    object oqJHeaderppn: TFloatField
      FieldName = 'ppn'
    end
    object oqJHeaderdisc_rp: TFloatField
      FieldName = 'disc_rp'
    end
    object oqJHeaderid_import: TLargeintField
      FieldName = 'id_import'
    end
    object oqJHeaderdt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object oqJHeaderdt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
    object oqJHeaderusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 120
    end
    object oqJHeaderusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 120
    end
    object oqJHeaderid_trans: TStringField
      FieldName = 'id_trans'
      Size = 40
    end
  end
  object oqJDetail: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from transaksi.jdetail_mayora')
    Params = <>
    Left = 194
    Top = 11
    object oqJDetailtipe_barang: TStringField
      FieldName = 'tipe_barang'
      Size = 40
    end
    object oqJDetailid_distributor: TStringField
      FieldName = 'id_distributor'
      Size = 40
    end
    object oqJDetailno_order: TStringField
      FieldName = 'no_order'
      Size = 120
    end
    object oqJDetailorder_sales: TStringField
      FieldName = 'order_sales'
      Size = 120
    end
    object oqJDetailtipe: TStringField
      FieldName = 'tipe'
      Size = 40
    end
    object oqJDetailid_item: TStringField
      FieldName = 'id_item'
      Size = 120
    end
    object oqJDetaildisc_rp: TFloatField
      FieldName = 'disc_rp'
    end
    object oqJDetailqty_karton: TFloatField
      FieldName = 'qty_karton'
    end
    object oqJDetailqty_lusin: TFloatField
      FieldName = 'qty_lusin'
    end
    object oqJDetailqty_biji: TFloatField
      FieldName = 'qty_biji'
    end
    object oqJDetailqty_jml_biji: TFloatField
      FieldName = 'qty_jml_biji'
    end
    object oqJDetailhrg_jual_karton: TFloatField
      FieldName = 'hrg_jual_karton'
    end
    object oqJDetailhrg_jual_lusin: TFloatField
      FieldName = 'hrg_jual_lusin'
    end
    object oqJDetailhrg_jual_biji: TFloatField
      FieldName = 'hrg_jual_biji'
    end
    object oqJDetailtotal_netto: TFloatField
      FieldName = 'total_netto'
    end
    object oqJDetailkd_disc_pc: TStringField
      FieldName = 'kd_disc_pc'
      Size = 120
    end
    object oqJDetailkd_disc_1: TStringField
      FieldName = 'kd_disc_1'
      Size = 120
    end
    object oqJDetailkd_disc_2: TStringField
      FieldName = 'kd_disc_2'
      Size = 120
    end
    object oqJDetailtotal_bruto: TFloatField
      FieldName = 'total_bruto'
    end
    object oqJDetailppn_per_pc: TFloatField
      FieldName = 'ppn_per_pc'
    end
    object oqJDetaildisc_psn_pc: TFloatField
      FieldName = 'disc_psn_pc'
    end
    object oqJDetaildisc_rp_pc: TFloatField
      FieldName = 'disc_rp_pc'
    end
    object oqJDetaildisc_psn_pc_kondisi: TFloatField
      FieldName = 'disc_psn_pc_kondisi'
    end
    object oqJDetaildisc_rp_pc_kondisi: TFloatField
      FieldName = 'disc_rp_pc_kondisi'
    end
    object oqJDetaildisc_psn_1: TFloatField
      FieldName = 'disc_psn_1'
    end
    object oqJDetaildisc_rp_1: TFloatField
      FieldName = 'disc_rp_1'
    end
    object oqJDetaildisc_psn_1_kondisi: TFloatField
      FieldName = 'disc_psn_1_kondisi'
    end
    object oqJDetaildisc_rp_1_kondisi: TFloatField
      FieldName = 'disc_rp_1_kondisi'
    end
    object oqJDetaildisc_psn_2: TFloatField
      FieldName = 'disc_psn_2'
    end
    object oqJDetaildisc_rp_2: TFloatField
      FieldName = 'disc_rp_2'
    end
    object oqJDetaildisc_psn_2_kondisi: TFloatField
      FieldName = 'disc_psn_2_kondisi'
    end
    object oqJDetaildisc_rp_2_kondisi: TFloatField
      FieldName = 'disc_rp_2_kondisi'
    end
    object oqJDetailno_detail: TLargeintField
      FieldName = 'no_detail'
    end
    object oqJDetailid_import: TLargeintField
      FieldName = 'id_import'
    end
  end
  object sq_JDETAIL: TZSequence
    Connection = DM.conn
    SequenceName = 'transaksi.sq_jdetail_mayora'
    Left = 437
    Top = 2
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
    SequenceName = 'transaksi.sq_import_mayora'
    Left = 394
    Top = 4
  end
  object kmtJHEADER: TkbmMemTable
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
    Version = '7.10.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 852
    Top = 9
    object kmtJHEADERKode_Distributor: TStringField
      FieldName = 'Kode_Distributor'
      Size = 255
    end
    object kmtJHEADERNo_Order: TStringField
      FieldName = 'No_Order'
      Size = 255
    end
    object kmtJHEADEROrder_Sales: TStringField
      FieldName = 'Order_Sales'
      Size = 255
    end
    object kmtJHEADERTipe: TStringField
      FieldName = 'Tipe'
      Size = 255
    end
    object kmtJHEADERNo_Outlet: TStringField
      FieldName = 'No_Outlet'
      Size = 255
    end
    object kmtJHEADERNo_Invoice: TStringField
      FieldName = 'No_Invoice'
      Size = 255
    end
    object kmtJHEADERNo_Rekap: TStringField
      FieldName = 'No_Rekap'
      Size = 255
    end
    object kmtJHEADERTgl_Order: TStringField
      FieldName = 'Tgl_Order'
      Size = 255
    end
    object kmtJHEADERTgl_Invoice: TStringField
      FieldName = 'Tgl_Invoice'
      Size = 255
    end
    object kmtJHEADERTgl_Jth_Tempo: TStringField
      FieldName = 'Tgl_Jth_Tempo'
      Size = 255
    end
    object kmtJHEADERCara_Bayar: TStringField
      FieldName = 'Cara_Bayar'
      Size = 255
    end
    object kmtJHEADERNo_PO: TStringField
      FieldName = 'No_PO'
      Size = 255
    end
    object kmtJHEADERNo_Mobil: TStringField
      FieldName = 'No_Mobil'
      Size = 255
    end
    object kmtJHEADERSub_Total: TStringField
      FieldName = 'Sub_Total'
      Size = 255
    end
    object kmtJHEADERDisc_Psn: TStringField
      FieldName = 'Disc_Psn'
      Size = 255
    end
    object kmtJHEADERTot_TPR_Barang: TStringField
      FieldName = 'Tot_TPR_Barang'
      Size = 255
    end
    object kmtJHEADERTot_TPR_Uang: TStringField
      FieldName = 'Tot_TPR_Uang'
      Size = 255
    end
    object kmtJHEADERTot_Disc_PC: TStringField
      FieldName = 'Tot_Disc_PC'
      Size = 255
    end
    object kmtJHEADERTot_Disc1: TStringField
      FieldName = 'Tot_Disc1'
      Size = 255
    end
    object kmtJHEADERTot_Disc2: TStringField
      FieldName = 'Tot_Disc2'
      Size = 255
    end
    object kmtJHEADERTotal: TStringField
      FieldName = 'Total'
      Size = 255
    end
    object kmtJHEADERNilai_Invoice: TStringField
      FieldName = 'Nilai_Invoice'
      Size = 255
    end
    object kmtJHEADERBayar: TStringField
      FieldName = 'Bayar'
      Size = 255
    end
    object kmtJHEADERTipe_Pajak: TStringField
      FieldName = 'Tipe_Pajak'
      Size = 255
    end
    object kmtJHEADERNo_pajak: TStringField
      FieldName = 'No_pajak'
      Size = 255
    end
    object kmtJHEADERTgl_Pajak: TStringField
      FieldName = 'Tgl_Pajak'
      Size = 255
    end
    object kmtJHEADERPpn: TStringField
      FieldName = 'Ppn'
      Size = 255
    end
    object kmtJHEADERDisc_Rp: TStringField
      FieldName = 'Disc_Rp'
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
  object dskmtJDETAIL: TwwDataSource
    DataSet = kmtJDETAIL
    Left = 895
    Top = 38
  end
  object kmtJDETAIL: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Tipe_Barang'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kode_Distributor'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'No_Order'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Order_Sales'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Tipe'
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
    Left = 886
    Top = 9
    object kmtJDETAILtipe_barang: TStringField
      FieldName = 'tipe_barang'
      Size = 1020
    end
    object kmtJDETAILid_distributor: TStringField
      FieldName = 'id_distributor'
      Size = 1020
    end
    object kmtJDETAILno_order: TStringField
      FieldName = 'no_order'
      Size = 1020
    end
    object kmtJDETAILorder_sales: TStringField
      FieldName = 'order_sales'
      Size = 1020
    end
    object kmtJDETAILtipe: TStringField
      FieldName = 'tipe'
      Size = 1020
    end
    object kmtJDETAILid_item: TStringField
      FieldName = 'id_item'
      Size = 1020
    end
    object kmtJDETAILdisc_rp: TStringField
      FieldName = 'disc_rp'
      Size = 1020
    end
    object kmtJDETAILqty_karton: TStringField
      FieldName = 'qty_karton'
      Size = 1020
    end
    object kmtJDETAILqty_lusin: TStringField
      FieldName = 'qty_lusin'
      Size = 1020
    end
    object kmtJDETAILqty_biji: TStringField
      FieldName = 'qty_biji'
      Size = 1020
    end
    object kmtJDETAILqty_jml_biji: TStringField
      FieldName = 'qty_jml_biji'
      Size = 1020
    end
    object kmtJDETAILhrg_jual_karton: TStringField
      FieldName = 'hrg_jual_karton'
      Size = 1020
    end
    object kmtJDETAILhrg_jual_lusin: TStringField
      FieldName = 'hrg_jual_lusin'
      Size = 1020
    end
    object kmtJDETAILhrg_jual_biji: TStringField
      FieldName = 'hrg_jual_biji'
      Size = 1020
    end
    object kmtJDETAILtotal_netto: TStringField
      FieldName = 'total_netto'
      Size = 1020
    end
    object kmtJDETAILkd_disc_pc: TStringField
      FieldName = 'kd_disc_pc'
      Size = 1020
    end
    object kmtJDETAILkd_disc_1: TStringField
      FieldName = 'kd_disc_1'
      Size = 1020
    end
    object kmtJDETAILkd_disc_2: TStringField
      FieldName = 'kd_disc_2'
      Size = 1020
    end
    object kmtJDETAILtotal_bruto: TStringField
      FieldName = 'total_bruto'
      Size = 1020
    end
    object kmtJDETAILppn_per_pc: TStringField
      FieldName = 'ppn_per_pc'
      Size = 1020
    end
    object kmtJDETAILdisc_psn_pc: TStringField
      FieldName = 'disc_psn_pc'
      Size = 1020
    end
    object kmtJDETAILdisc_rp_pc: TStringField
      FieldName = 'disc_rp_pc'
      Size = 1020
    end
    object kmtJDETAILdisc_psn_pc_kondisi: TStringField
      FieldName = 'disc_psn_pc_kondisi'
      Size = 1020
    end
    object kmtJDETAILdisc_rp_pc_kondisi: TStringField
      FieldName = 'disc_rp_pc_kondisi'
      Size = 1020
    end
    object kmtJDETAILdisc_psn_1: TStringField
      FieldName = 'disc_psn_1'
      Size = 1020
    end
    object kmtJDETAILdisc_rp_1: TStringField
      FieldName = 'disc_rp_1'
      Size = 1020
    end
    object kmtJDETAILdisc_psn_1_kondisi: TStringField
      FieldName = 'disc_psn_1_kondisi'
      Size = 1020
    end
    object kmtJDETAILdisc_rp_1_kondisi: TStringField
      FieldName = 'disc_rp_1_kondisi'
      Size = 1020
    end
    object kmtJDETAILdisc_psn_2: TStringField
      FieldName = 'disc_psn_2'
      Size = 1020
    end
    object kmtJDETAILdisc_rp_2: TStringField
      FieldName = 'disc_rp_2'
      Size = 1020
    end
    object kmtJDETAILdisc_psn_2_kondisi: TStringField
      FieldName = 'disc_psn_2_kondisi'
      Size = 1020
    end
    object kmtJDETAILdisc_rp_2_kondisi: TStringField
      FieldName = 'disc_rp_2_kondisi'
      Size = 1020
    end
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
    Left = 265
    Top = 31
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

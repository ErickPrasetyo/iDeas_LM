object frmRepairData: TfrmRepairData
  Left = 451
  Top = 265
  Width = 584
  Height = 233
  Caption = 'frmRepairData'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object scpnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 49
    Align = alTop
    Color = 16579055
    Gradient = scgLeftToRight
    GradientMid = 14731160
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      568
      49)
    object lblLblReffNo: TLabel
      Left = 9
      Top = 17
      Width = 58
      Height = 13
      Caption = 'File Import :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnFileSource: TcxButtonEdit
      Left = 67
      Top = 13
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnFileExcelPropertiesButtonClick
      TabOrder = 0
      Width = 292
    end
    object btnFetchDataFetch: TSCButton
      Left = 362
      Top = 12
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Mulai'
      Images = DM.ImageList1
      ImageIndex = 0
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnFetchDataFetchClick
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 166
    Width = 568
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 1
    DesignSize = (
      568
      28)
    object btnFetchDataClose: TSCButton
      Left = 8
      Top = 0
      Width = 72
      Height = 28
      Anchors = [akTop]
      Caption = 'T&utup'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 0
      OnClick = btnFetchDataCloseClick
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 49
    Width = 568
    Height = 117
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 15265510
    TabOrder = 2
    object lblStatus: TLabel
      Left = 0
      Top = 98
      Width = 564
      Height = 15
      Align = alBottom
      Alignment = taCenter
      Caption = 'status hubungan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object pgrsTotal: TSCProgress
      Left = 0
      Top = 20
      Width = 564
      Height = 78
      Align = alClient
      BorderProps.Border = sccbFlat
      Step = 1
      Style = scpsXP
      TabOrder = 0
    end
    object pgrsProcess: TSCProgress
      Left = 0
      Top = 0
      Width = 564
      Height = 20
      Align = alTop
      BorderProps.Border = sccbFlat
      Step = 1
      Style = scpsXP
      TabOrder = 1
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 488
    Top = 8
  end
  object kbmtblMemorialOutlet: TkbmMemTable
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
    Left = 369
    Top = 166
    object wdstrMemorialF1: TWideStringField
      FieldName = 'F1'
      Size = 255
    end
    object wdstrMemorialF2: TWideStringField
      FieldName = 'F2'
      Size = 255
    end
    object wdstrMemorialF3: TWideStringField
      FieldName = 'F3'
      Size = 255
    end
    object wdstrMemorialF4: TWideStringField
      FieldName = 'F4'
      Size = 255
    end
    object wdstrMemorialF5: TWideStringField
      FieldName = 'F5'
      Size = 255
    end
    object wdstrMemorialF6: TStringField
      FieldName = 'F6'
      Size = 255
    end
  end
  object zqryExec: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 433
    Top = 164
  end
  object zqryITEM: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from master.mrekanan_bku')
    Params = <>
    Left = 403
    Top = 163
    object strngfldITEMkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Required = True
    end
    object strngfldITEMnama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 255
    end
    object strngfldITEMalamat: TStringField
      FieldName = 'alamat'
      Required = True
      Size = 255
    end
    object strngfldITEMusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object dtmfldITEMdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object strngfldITEMtelephone: TStringField
      FieldName = 'telephone'
      Size = 100
    end
    object lrgntfldITEMid_rekanan: TLargeintField
      FieldName = 'id_rekanan'
      Required = True
    end
  end
  object sq_mrekanan_bku: TZSequence
    Connection = DM.conn
    SequenceName = 'master.sq_mrekanan_bku'
    Left = 347
    Top = 65
  end
  object qRekanan: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from master.mrekanan')
    Params = <>
    Left = 331
    Top = 163
    object qRekanankd_rekanan: TStringField
      FieldName = 'kd_rekanan'
      Required = True
      Size = 80
    end
    object qRekanannama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 1020
    end
    object qRekananalamat: TStringField
      FieldName = 'alamat'
      Required = True
      Size = 1020
    end
    object qRekananjenis: TStringField
      FieldName = 'jenis'
      Required = True
      Size = 200
    end
    object qRekanancontact: TStringField
      FieldName = 'contact'
      Required = True
      Size = 200
    end
    object qRekanankota: TStringField
      FieldName = 'kota'
      Size = 120
    end
    object qRekanankode_pos: TStringField
      FieldName = 'kode_pos'
      Size = 40
    end
    object qRekanantelephone: TStringField
      FieldName = 'telephone'
      Size = 400
    end
    object qRekananfaxcimile: TStringField
      FieldName = 'faxcimile'
      Size = 400
    end
    object qRekananalamat2: TStringField
      FieldName = 'alamat2'
      Size = 1020
    end
    object qRekananprovince: TStringField
      FieldName = 'province'
      Size = 400
    end
    object qRekanancountry: TStringField
      FieldName = 'country'
      Size = 400
    end
    object qRekananemail: TStringField
      FieldName = 'email'
      Size = 400
    end
    object qRekananremarks: TStringField
      FieldName = 'remarks'
      Size = 1020
    end
    object qRekananusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object qRekananusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object qRekanandt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qRekanandt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qRekanancontact_title: TStringField
      FieldName = 'contact_title'
      Size = 200
    end
    object qRekananmobile_no: TStringField
      FieldName = 'mobile_no'
      Size = 400
    end
    object qRekananplafon: TFloatField
      FieldName = 'plafon'
      Required = True
    end
    object qRekanannpwp: TStringField
      FieldName = 'npwp'
      Size = 200
    end
    object qRekanannppkp: TStringField
      FieldName = 'nppkp'
      Size = 200
    end
    object qRekananis_pkp: TStringField
      FieldName = 'is_pkp'
      Size = 4
    end
    object qRekananid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 120
    end
  end
  object sdfdtstImportData: TSdfDataSet
    FileMustExist = True
    ReadOnly = False
    FileName = 
      'C:\Users\ERICK\Desktop\ACP Data Export\Daftar Master Outlet M2 P' +
      'MK_.txt'
    Schema.Strings = (
      'Field1'
      'Field2'
      'Field3'
      'Field4'
      'Field5'
      'Field6'
      'Field7'
      'Field8'
      'Field9'
      'Field10'
      'Field11'
      'Field12'
      'Field13'
      'Field14'
      'Field15'
      'Field16'
      'Field17'
      'Field18'
      'Field19'
      'Field20'
      'Field21'
      'Field22'
      'Field23'
      'Field24'
      'Field25'
      'Field26'
      'Field27'
      'Field28'
      'Field29'
      'Field30'
      'Field31'
      'Field32'
      'Field33'
      'Field34'
      'Field35'
      'Field36'
      'Field37'
      'Field38'
      'Field39'
      'Field40'
      'Field41'
      'Field42'
      'Field43'
      'Field44'
      'Field45'
      'Field46'
      'Field47'
      'Field48'
      'Field49'
      'Field50'
      'Field51'
      'Field52'
      'Field53'
      'Field54'
      'Field55'
      'Field56'
      'Field57'
      'Field58'
      'Field59'
      'Field60'
      'Field61'
      'Field62'
      'Field63'
      'Field64')
    FieldDefs = <
      item
        Name = 'Field1'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field2'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field3'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field4'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field5'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field6'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field7'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field8'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field9'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field10'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field11'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field12'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field13'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field14'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field15'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field16'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field17'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field18'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field19'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field20'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field21'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field22'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field23'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field24'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field25'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field26'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field27'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field28'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field29'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field30'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field31'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field32'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field33'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field34'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field35'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field36'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field37'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field38'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field39'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field40'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field41'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field42'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field43'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field44'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field45'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field46'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field47'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field48'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field49'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field50'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field51'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field52'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field53'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field54'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field55'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field56'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field57'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field58'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field59'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field60'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field61'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field62'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field63'
        DataType = ftString
        Size = 1228
      end
      item
        Name = 'Field64'
        DataType = ftString
        Size = 1228
      end>
    Delimiter = '|'
    FirstLineAsSchema = False
    Left = 456
    Top = 8
  end
end

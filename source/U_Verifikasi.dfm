object VerifikasiFrm: TVerifikasiFrm
  Left = 163
  Top = 50
  Width = 1094
  Height = 636
  Caption = 'Verifikasi Gudang'
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TSCPanel
    Left = 0
    Top = 557
    Width = 1078
    Height = 40
    Align = alBottom
    Color = 11507049
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    object dbnItem: TRzDBNavigator
      Left = 99
      Top = 8
      Width = 108
      Height = 25
      DataSource = dsDetail
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BorderOuter = fsNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object btnRefresh: TSCButton
      Left = 298
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnRefreshClick
    end
    object btnClose: TSCButton
      Left = 9
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Tutup'
      Images = DM.ImageList1
      ImageIndex = 6
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnCloseClick
    end
    object btnSearch: TSCButton
      Left = 224
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Cari'
      Images = DM.ImageList1
      ImageIndex = 7
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 3
    end
    object btnPrint: TSCButton
      Left = 372
      Top = 8
      Width = 72
      Height = 25
      HelpType = htKeyword
      Caption = '&Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      Style = scbsCorel
      TabOrder = 4
      OnClick = btnPrintClick
    end
  end
  object SCPanel1: TSCPanel
    Left = 0
    Top = 69
    Width = 1078
    Height = 42
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientEnd = 15845560
    GradientMid = 15845560
    ParentColor = False
    TabOrder = 1
    object Label2: TLabel
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
      Left = 7
      Top = 12
      Caption = 'No. Mutasi :'
    end
    object btnOK: TSCButton
      Left = 249
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Ok'
      Images = DM.ImageList1
      ImageIndex = 19
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnOKClick
    end
    object edtNoMutasi: TcxTextEdit
      Left = 69
      Top = 10
      TabOrder = 2
      Width = 171
    end
    object btnVerifikasi: TSCButton
      Left = 325
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Verifikasi'
      Images = DM.ImageList1
      ImageIndex = 9
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 3
      OnClick = btnVerifikasiClick
    end
  end
  object pnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 1078
    Height = 69
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 2
    object ariHeader: TAdvReflectionImage
      Left = 13
      Top = 4
      Width = 56
      Height = 71
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
      Left = 79
      Top = 33
      Width = 303
      Height = 35
      AutoSize = False
      Caption = 
        'Form ini berisi daftar Bon dari bagian produksi /penjualan yang ' +
        'perlu diverifikasi'
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
    object lblHeader1: TLabel
      Left = 71
      Top = 9
      Width = 192
      Height = 23
      Caption = 'Verifikasi Gudang'
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
  object pnlSearch: TSCPanel
    Left = 0
    Top = 518
    Width = 1078
    Height = 39
    Align = alBottom
    Color = 15986925
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 3
    Visible = False
    object Shape1: TShape
      Left = 11
      Top = 5
      Width = 80
      Height = 29
    end
    object Label1: TLabel
      Left = 19
      Top = 13
      Width = 69
      Height = 13
      Caption = 'Nama Kolom : '
      Transparent = True
    end
    object Shape2: TShape
      Left = 90
      Top = 5
      Width = 472
      Height = 29
    end
    object edtSearch: TwwIncrementalSearch
      Left = 223
      Top = 10
      Width = 332
      Height = 19
      ShowMatchText = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object cbFieldName: TcxComboBox
      Left = 96
      Top = 9
      TabOrder = 1
      Width = 121
    end
  end
  object rsMaster: TRzSplitter
    Left = 0
    Top = 111
    Width = 1078
    Height = 407
    Position = 471
    Percent = 44
    Align = alClient
    TabOrder = 6
    BarSize = (
      471
      0
      475
      407)
    UpperLeftControls = (
      grdMaster)
    LowerRightControls = (
      grdDetail)
    object grdMaster: TcxGrid
      Left = 0
      Top = 0
      Width = 471
      Height = 407
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object grddbtvMaster: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = grddbtvMasterCellDblClick
        DataController.DataSource = dsMaster
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = cxStyle3
        Styles.Selection = cxStyle2
        Styles.Header = cxStyle1
        Styles.Indicator = cxStyle4
        object grddbtvMastermutasi_no: TcxGridDBColumn
          Caption = 'No. Mutasi'
          DataBinding.FieldName = 'mutasi_no'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 88
        end
        object grddbtvMasterjenis_bon: TcxGridDBColumn
          Caption = 'Jenis'
          DataBinding.FieldName = 'jenis_bon'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object grddbtvMasterdt_mutasi: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'dt_mutasi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 77
        end
        object grddbtvMasternama_rekanan: TcxGridDBColumn
          Caption = 'Petugas'
          DataBinding.FieldName = 'nama_rekanan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 100
        end
        object grddbtvMasterremarks: TcxGridDBColumn
          Caption = 'Pekerjaan'
          DataBinding.FieldName = 'remarks'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 100
        end
      end
      object TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'id_nota'
        DataController.MasterKeyFieldNames = 'id_nota'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        Styles.ContentOdd = cxStyle3
        Styles.Selection = cxStyle2
        Styles.Header = cxStyle1
        Styles.Indicator = cxStyle4
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = 'NAMA PELAYANAN'
          DataBinding.FieldName = 'description'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 135
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'JUMLAH'
          DataBinding.FieldName = 'qty_ot'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBColumn9: TcxGridDBColumn
          Caption = 'SATUAN'
          DataBinding.FieldName = 'satuan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBColumn10: TcxGridDBColumn
          Caption = 'HARGA'
          DataBinding.FieldName = 'harga'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBColumn11: TcxGridDBColumn
          Caption = 'DISC (%)'
          DataBinding.FieldName = 'disc_psn'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBColumn12: TcxGridDBColumn
          Caption = 'TOTAL'
          DataBinding.FieldName = 'sub_total'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
      end
      object TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'id_nota'
        DataController.MasterKeyFieldNames = 'id_nota'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object grdMasterLevel1: TcxGridLevel
        GridView = grddbtvMaster
      end
    end
    object grdDetail: TcxGrid
      Left = 0
      Top = 0
      Width = 603
      Height = 407
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object grddbtvDetail: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = cxStyle3
        Styles.Selection = cxStyle2
        Styles.Header = cxStyle1
        Styles.Indicator = cxStyle4
        object grddbtvDetailnomor: TcxGridDBColumn
          Caption = 'No.'
          DataBinding.FieldName = 'nomor'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 38
        end
        object grddbtvDetailid_item: TcxGridDBColumn
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
          Width = 80
        end
        object grddbtvDetaildescription: TcxGridDBColumn
          Caption = 'Diskripsi'
          DataBinding.FieldName = 'description'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 168
        end
        object grddbtvDetailqty_in: TcxGridDBColumn
          Caption = 'QTY IN'
          DataBinding.FieldName = 'qty_in'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 61
        end
        object grddbtvDetailqty_ot: TcxGridDBColumn
          Caption = 'QTY OUT'
          DataBinding.FieldName = 'qty_ot'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 70
        end
        object grddbtvDetailsatuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 92
        end
        object grddbtvDetailistambahan: TcxGridDBColumn
          Caption = 'Retur'
          DataBinding.FieldName = 'istambahan'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 92
        end
      end
      object TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'id_nota'
        DataController.MasterKeyFieldNames = 'id_nota'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        Styles.ContentOdd = cxStyle3
        Styles.Selection = cxStyle2
        Styles.Header = cxStyle1
        Styles.Indicator = cxStyle4
        object description: TcxGridDBColumn
          Caption = 'NAMA PELAYANAN'
          DataBinding.FieldName = 'description'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 135
        end
        object qty_ot: TcxGridDBColumn
          Caption = 'JUMLAH'
          DataBinding.FieldName = 'qty_ot'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object satuan: TcxGridDBColumn
          Caption = 'SATUAN'
          DataBinding.FieldName = 'satuan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object harga: TcxGridDBColumn
          Caption = 'HARGA'
          DataBinding.FieldName = 'harga'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object disc_psn: TcxGridDBColumn
          Caption = 'DISC (%)'
          DataBinding.FieldName = 'disc_psn'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object sub_total: TcxGridDBColumn
          Caption = 'TOTAL'
          DataBinding.FieldName = 'sub_total'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
      end
      object TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'id_nota'
        DataController.MasterKeyFieldNames = 'id_nota'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object grdDetailLevel1: TcxGridLevel
        GridView = grddbtvDetail
      end
    end
  end
  object SR: TcxStyleRepository
    Left = 574
    Top = 2
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
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16444638
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBtnText
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4235263
      TextColor = clWhite
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15646609
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnHighlight
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
    Left = 574
    Top = 37
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
    Left = 609
    Top = 39
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 608
    Top = 2
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 382
    Top = 12
  end
  object Detail: TZQuery
    Connection = DM.conn
    BeforeOpen = DetailBeforeOpen
    SQL.Strings = (
      'select *'
      'from inventory.mutasi_detail'
      'where id_mutasi=:id_mutasi'
      'order by nomor')
    Params = <
      item
        DataType = ftString
        Name = 'id_mutasi'
        ParamType = ptUnknown
        Value = '9'
      end>
    Left = 353
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'id_mutasi'
        ParamType = ptUnknown
        Value = '9'
      end>
    object Detailid_mutasi: TLargeintField
      FieldName = 'id_mutasi'
      Required = True
    end
    object Detailid_item: TStringField
      FieldName = 'id_item'
      Required = True
      Size = 50
    end
    object Detaildescription: TStringField
      FieldName = 'description'
      Size = 255
    end
    object Detailqty_in: TFloatField
      FieldName = 'qty_in'
      Required = True
    end
    object Detailqty_ot: TFloatField
      FieldName = 'qty_ot'
      Required = True
    end
    object Detailsatuan: TStringField
      FieldName = 'satuan'
      Size = 10
    end
    object Detailid_warehouse: TStringField
      FieldName = 'id_warehouse'
      Size = 12
    end
    object Detailid_warehouse2: TStringField
      FieldName = 'id_warehouse2'
      Size = 12
    end
    object Detailnomor: TIntegerField
      FieldName = 'nomor'
    end
    object Detailremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object Detailunit_price: TFloatField
      FieldName = 'unit_price'
      Required = True
    end
    object Detailistambahan: TStringField
      FieldName = 'istambahan'
      Required = True
      Size = 1
    end
    object Detailid_mutasi_detail: TLargeintField
      FieldName = 'id_mutasi_detail'
      Required = True
    end
    object Detailppn_rp: TFloatField
      FieldName = 'ppn_rp'
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
    Left = 678
    Top = 8
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
    Left = 648
    Top = 7
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
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <page#>=<TotalPages#> then begin'
      '      MemoPreparedBy.visible:=True;'
      '      MemoPreparer.visible:=True;'
      '      MemoApprover.visible:=True;'
      '      MemoApprovedBy.visible:=True;          '
      '      Memo16.visible:=True;'
      '      Memo18.visible:=True;'
      '      MemoLine.Visible:= False;          '
      '   end else begin'
      '      MemoPreparedBy.visible:=False;'
      '      MemoPreparer.visible:=False;'
      '      MemoApprover.visible:=False;'
      '      MemoApprovedBy.visible:=False;          '
      '      Memo16.visible:=False;'
      '      Memo18.visible:=False;'
      
        '      MemoLine.Visible:= True;                                  ' +
        '         '
      '   end;'
      
        '   MemoLblPageOfTotalPages.Visible:= True;                      ' +
        '                      '
      'end;  '
      'begin'
      ''
      'end.')
    Left = 713
    Top = 8
    Datasets = <
      item
        DataSet = frxDBInfoPerusahaan
        DataSetName = 'frxDBInfoPerusahaan'
      end
      item
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
      end
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBRepInfo'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 185.196970000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          Left = 275.905690000000000000
          Top = 102.047310000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'BUKU KAS')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxDBInfoPerusahaan
          DataSetName = 'frxDBInfoPerusahaan'
          HightQuality = False
        end
        object Memo4: TfrxMemoView
          Left = 136.842610000000000000
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
          Left = 136.842610000000000000
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
          Left = 136.842610000000000000
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
          Left = 136.842610000000000000
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
          Left = 136.818773150000000000
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
        object Memo40: TfrxMemoView
          Left = 264.567100000000000000
          Top = 124.724490000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            'PERIODE :')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 321.260050000000000000
          Top = 124.724490000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'tgl1'
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBRepInfo."tgl1"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 408.189240000000000000
          Top = 124.724490000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'tgl2'
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBRepInfo."tgl2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          Left = 385.512060000000000000
          Top = 124.724490000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'S/D')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 37.795300000000000000
          Top = 162.519790000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'KODE REK.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 105.826840000000000000
          Top = 162.519790000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'kode_rek'
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBRepInfo."kode_rek"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 94.488250000000000000
          Top = 162.519790000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 445.984540000000000000
          Top = 162.519790000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'SALDO AWAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 536.693260000000000000
          Top = 162.519790000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'sal_awal'
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBRepInfo."sal_awal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 525.354670000000000000
          Top = 162.519790000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Band6: TfrxMasterData
        Height = 26.456710000000000000
        Top = 313.700990000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'Band6OnAfterPrint'
        OnBeforePrint = 'Band6OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        Stretched = True
        object Memo34: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'no_pemb'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."no_pemb"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'no_bukti'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."no_bukti"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 226.771800000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'tgl'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."tgl"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 291.023810000000000000
          Width = 275.905690000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'diskripsi'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."diskripsi"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 566.929500000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'debet'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."debet"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'kredit'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."kredit"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 105.826840000000000000
        Top = 495.118430000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object MemoApprover: TfrxMemoView
          Left = 514.016080000000000000
          Top = 60.472480000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
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
          Left = 514.016080000000000000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'DITERIMA OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          Left = 514.016080000000000000
          Top = 90.708720000000000000
          Width = 204.094620000000000000
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
          Left = 37.795300000000000000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'DICETAK OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 37.795300000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
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
          Left = 241.889920000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
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
        object MemoPreparer: TfrxMemoView
          Left = 45.354360000000000000
          Top = 60.472480000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DataField = 'usr_print'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Memo.UTF8 = (
            '[frxDBRepInfo."usr_print"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 90.708720000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal :')
          ParentFont = False
        end
        object MemoDTPrint: TfrxMemoView
          Left = 83.149660000000000000
          Top = 90.708720000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          DataField = 'dt_print'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Memo.UTF8 = (
            '[frxDBRepInfo."dt_print"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLine: TfrxMemoView
          Left = 37.795300000000000000
          Top = 86.929189999999900000
          Width = 680.315400000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 26.456710000000000000
        Top = 226.771800000000000000
        Width = 755.906000000000000000
        object Memo19: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO. PEMBAYARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO. BUKTI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KREDIT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 291.023810000000000000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DISKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 566.929500000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DEBET')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 71.811070000000000000
        Top = 400.630180000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          Left = 445.984540000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'MUTASI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 536.693260000000000000
          Top = 34.015770000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'mutasi'
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBRepInfo."mutasi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 445.984540000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'SALDO AKHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 536.693260000000000000
          Top = 52.913420000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'sal_akir'
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBRepInfo."sal_akir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 525.354670000000000000
          Top = 34.015770000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 525.354670000000000000
          Top = 52.913420000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Color = clWhite
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 34.015770000000000000
          Top = 23.795300000000000000
          Width = 687.874460000000000000
          Height = 3.779530000000000000
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."debet">,Band6)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBInfo
          DataSetName = 'frxDBRepInfo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."kredit">,Band6)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 34.015770000000000000
          Width = 687.874460000000000000
          Height = 3.779530000000000000
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object MemMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'no_nota'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'dt_nota'
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
    Left = 771
    Top = 8
    object MemMasterno_pemb: TStringField
      FieldName = 'no_pemb'
    end
    object MemMasterno_bukti: TStringField
      FieldName = 'no_bukti'
    end
    object MemMastertgl: TStringField
      FieldName = 'tgl'
    end
    object MemMasterdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object MemMasterdebet: TFloatField
      FieldName = 'debet'
    end
    object MemMasterkredit: TFloatField
      FieldName = 'kredit'
    end
  end
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_pemb=no_pemb'
      'no_bukti=no_bukti'
      'tgl=tgl'
      'diskripsi=diskripsi'
      'debet=debet'
      'kredit=kredit')
    DataSet = MemMaster
    Left = 741
    Top = 8
  end
  object frxDBInfo: TfrxDBDataset
    UserName = 'frxDBRepInfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'judul=judul'
      'usr_print=usr_print'
      'dt_print=dt_print'
      'tgl1=tgl1'
      'tgl2=tgl2'
      'kode_rek=kode_rek'
      'sal_awal=sal_awal'
      'sal_akir=sal_akir'
      'mutasi=mutasi')
    DataSet = MemRepInfo
    Left = 899
    Top = 13
  end
  object MemRepInfo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'judul'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'usr_print'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'dt_print'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'tgl1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tgl2'
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
    Left = 924
    Top = 13
    object MemRepInfojudul: TStringField
      FieldName = 'judul'
      Size = 100
    end
    object MemRepInfousr_print: TStringField
      FieldName = 'usr_print'
      Size = 50
    end
    object MemRepInfodt_print: TStringField
      FieldName = 'dt_print'
      Size = 50
    end
    object MemRepInfotgl1: TStringField
      FieldName = 'tgl1'
    end
    object MemRepInfotgl2: TStringField
      FieldName = 'tgl2'
    end
    object MemRepInfokode_rek: TStringField
      FieldName = 'kode_rek'
    end
    object MemRepInfosal_awal: TStringField
      FieldName = 'sal_awal'
      Size = 50
    end
    object MemRepInfosal_akir: TStringField
      FieldName = 'sal_akir'
      Size = 50
    end
    object MemRepInfomutasi: TStringField
      FieldName = 'mutasi'
      Size = 50
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 304
    Top = 12
  end
  object Master: TZQuery
    Connection = DM.conn
    AfterScroll = MasterAfterScroll
    SQL.Strings = (
      
        'select a.id_mutasi, a.mutasi_no, a.dt_mutasi, a.kd_rekanan, a.re' +
        'marks, b.nama_rekanan, c.description as jenis_bon'
      'from inventory.mutasi a '
      'left join master.mrekanan b on b.kd_rekanan=a.kd_rekanan'
      'left join master.mtransaction c on c.id_trans=a.id_trans'
      'where a.isdelete='#39'0'#39' and a.iscancel='#39'0'#39' and a.ispost='#39'0'#39)
    Params = <>
    Left = 272
    Top = 12
    object Masterid_mutasi: TLargeintField
      FieldName = 'id_mutasi'
      Required = True
    end
    object Mastermutasi_no: TStringField
      FieldName = 'mutasi_no'
    end
    object Masterdt_mutasi: TDateTimeField
      FieldName = 'dt_mutasi'
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object Masterkd_rekanan: TStringField
      FieldName = 'kd_rekanan'
    end
    object Masterremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object Masternama_rekanan: TStringField
      FieldName = 'nama_rekanan'
      Required = True
      Size = 255
    end
    object Masterjenis_bon: TStringField
      FieldName = 'jenis_bon'
      Size = 255
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 808
    Top = 12
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
    Left = 838
    Top = 13
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
    Left = 869
    Top = 14
  end
  object qryExec: TZQuery
    Connection = DM.conn
    AfterScroll = MasterAfterScroll
    Params = <>
    Left = 451
    Top = 25
  end
end

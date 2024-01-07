object InfoRLFrm: TInfoRLFrm
  Left = 331
  Top = 103
  Width = 894
  Height = 628
  Caption = 'Laporan Laba Rugi'
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
  object pnlMiddle: TSCPanel
    Left = 0
    Top = 561
    Width = 886
    Height = 40
    Align = alBottom
    Color = 11769446
    GradientMid = 15845560
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 0
    object dbnWBS: TRzDBNavigator
      Left = 96
      Top = 7
      Width = 168
      Height = 25
      DataSource = dsMaster
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object btnRefresh: TSCButton
      Left = 267
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Refresh'
      Images = DM.ImageList1
      ImageIndex = 5
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 1
      OnClick = btnRefreshClick
    end
    object btnClose: TSCButton
      Left = 8
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Tutup'
      Images = DM.ImageList1
      ImageIndex = 6
      RoundColor = 11769446
      Style = scbsCorel
      TabOrder = 2
      OnClick = btnCloseClick
    end
    object btnPrint: TSCButton
      Left = 342
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 3
      OnClick = btnPrintClick
    end
  end
  object dbtlDivisi: TcxDBTreeList
    Left = 0
    Top = 115
    Width = 886
    Height = 446
    Align = alClient
    Bands = <
      item
      end>
    BufferedPaint = False
    DataController.DataSource = dsMaster
    DataController.ParentField = 'id_parent'
    DataController.KeyField = 'id_rek_gl'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    OptionsCustomizing.ColumnMoving = False
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsView.Footer = True
    OptionsView.Indicator = True
    ParentFont = False
    RootValue = 255
    Styles.Selection = cxStyle2
    Styles.ColumnHeader = cxStyle1
    Styles.ContentEven = cxStyle3
    Styles.Indicator = cxStyle4
    TabOrder = 1
    object dbtlDivisiid_arus: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.Text = 'KODE REKENING'
      DataBinding.FieldName = 'id_rek_gl'
      Options.Editing = False
      Width = 121
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
    end
    object dbtlDivisideskripsi: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.Text = 'DISKRIPSI'
      DataBinding.FieldName = 'descriptions'
      Options.Editing = False
      Width = 231
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
    end
    object dbtlDivisibulan_ini: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.Text = 'AKHIR PERIODE'
      DataBinding.FieldName = 'tahun_ini'
      Options.Footer = True
      Options.Editing = False
      Width = 135
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      SummaryFooter.Format = '#,##0.00;(#,##0.00)'
      SummaryFooter.Kind = skSum
      SummaryFooter.AlignHorz = taRightJustify
      SummaryFooter.AlignVert = vaCenter
      SummaryFooter.FieldName = 'tahun_ini'
    end
    object dbtlDivisitahun_berjalan: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.Text = 'TAHUN LALU'
      DataBinding.FieldName = 'tahun_lalu'
      Options.Footer = True
      Options.Editing = False
      Width = 135
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      SummaryFooter.Format = '#,##0.00;(#,##0.00)'
      SummaryFooter.Kind = skSum
      SummaryFooter.AlignHorz = taRightJustify
      SummaryFooter.AlignVert = vaCenter
      SummaryFooter.FieldName = 'tahun_lalu'
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 66
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
    Styler = APS
    FullHeight = 41
    object ariHeader: TAdvReflectionImage
      Left = 15
      Top = 10
      Width = 56
      Height = 71
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
      Version = '1.0.0.1'
    end
    object lblHeader2: TLabel
      Left = 79
      Top = 32
      Width = 262
      Height = 42
      AutoSize = False
      Caption = '-'
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
      Left = 69
      Top = 7
      Width = 201
      Height = 23
      Caption = 'Laporan Laba Rugi'
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
  object SCPanel1: TSCPanel
    Left = 0
    Top = 66
    Width = 886
    Height = 49
    Align = alTop
    Color = 16511984
    Gradient = scgLeftToRight
    GradientEnd = 15845560
    GradientMid = 15845560
    ParentColor = False
    TabOrder = 5
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
    object btnOK: TcxButton
      Left = 175
      Top = 14
      Width = 63
      Height = 21
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
      Colors.Normal = clGradientActiveCaption
      Colors.Hot = clMenuHighlight
    end
    object RzGroupBox1: TRzGroupBox
      Left = 21
      Top = 1
      Width = 145
      Height = 45
      Caption = 'Akhir Periode'
      TabOrder = 0
      Transparent = True
      object edtDatePicker1: TwwDBDateTimePicker
        Left = 8
        Top = 17
        Width = 120
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
  object Master: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.id_rek_gl, a.id_parent, a.descriptions,'
      
        '(select sum(b.saldo) from accfin.fn_gen_rl(:ptgl_now) b where b.' +
        'id_rek_lvl_4=a.id_rek_gl) as tahun_ini,'
      
        '(select sum(b.saldo) from accfin.fn_gen_rl(:pthn_last) b where b' +
        '.id_rek_lvl_4=a.id_rek_gl) as tahun_lalu'
      'from master.mrek_gl a'
      'where a.golongan='#39'RL'#39' and a.lvl<=4 and a.lvl>2')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl_now'
        ParamType = ptUnknown
        Value = '31/12/2010'
      end
      item
        DataType = ftString
        Name = 'pthn_last'
        ParamType = ptUnknown
        Value = '31/12/2009'
      end>
    Left = 113
    Top = 13
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl_now'
        ParamType = ptUnknown
        Value = '31/12/2010'
      end
      item
        DataType = ftString
        Name = 'pthn_last'
        ParamType = ptUnknown
        Value = '31/12/2009'
      end>
    object Masterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
      Size = 15
    end
    object Masterid_parent: TStringField
      FieldName = 'id_parent'
      Size = 15
    end
    object Masterdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object Mastertahun_ini: TFloatField
      FieldName = 'tahun_ini'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object Mastertahun_lalu: TFloatField
      FieldName = 'tahun_lalu'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 127
    Top = 37
  end
  object ATBOS: TAdvToolBarOfficeStyler
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
    Left = 470
    Top = 38
  end
  object SR: TcxStyleRepository
    Left = 472
    Top = 6
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
  object AFS: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    Left = 436
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
    Left = 437
    Top = 36
  end
  object kmtInfo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'user_id'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'user_name'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'dt_now'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'pnamamenu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'periode'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'consignment'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'dt_prepared'
        DataType = ftString
        Size = 50
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
        Name = 'telp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'kota_negara'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'filter'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'awal'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'akhir'
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
    Version = '5.60'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 532
    Top = 15
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
      LookupDataSet = DM.L_User
      LookupKeyFields = 'vuser'
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
    object kmtInfoawal: TStringField
      FieldName = 'awal'
      Size = 50
    end
    object kmtInfoakhir: TStringField
      FieldName = 'akhir'
      Size = 50
    end
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
      'filter=filter'
      'awal=awal'
      'akhir=akhir')
    DataSet = kmtInfo
    Left = 564
    Top = 16
  end
  object frxRL: TfrxReport
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
    Left = 321
    Top = 37
    Datasets = <
      item
        DataSet = frxDBDetailPrint
        DataSetName = 'frxDBDetailPrint'
      end
      item
        DataSet = frxDBInfo
        DataSetName = 'frxDBInfo'
      end
      item
        DataSet = frxDBMasterPrint
        DataSetName = 'frxDBMasterPrint'
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
        Top = 476.22078
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
        Top = 234.33086
        Width = 699.21305
        DataSet = frxDBMasterPrint
        DataSetName = 'frxDBMasterPrint'
        RowCount = 0
        object Memo3: TfrxMemoView
          Width = 699.21298898
          Height = 22.67716535
          Color = 15593713
          DataField = 'descriptions'
          DataSet = frxDBMasterPrint
          DataSetName = 'frxDBMasterPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          Memo.UTF8 = (
            '[frxDBMasterPrint."descriptions"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 45.35436
        Top = 166.29932
        Width = 699.21305
        ReprintOnNewPage = True
        object Memo10: TfrxMemoView
          Left = 548.03185
          Width = 151.18110236
          Height = 22.67718
          DataField = 'awal'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."awal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 396.85065
          Width = 151.18110236
          Height = 22.67718
          DataField = 'akhir'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBInfo."akhir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 396.85065
          Top = 22.67718
          Width = 151.18110236
          Height = 22.67718
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '(Rp)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 548.03185
          Top = 22.67718
          Width = 151.18110236
          Height = 22.67718
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '(Rp)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 88.48825
        Top = 18.89765
        Width = 699.21305
        object Memo24: TfrxMemoView
          Width = 699.21305
          Height = 18.89765
          DataField = 'nama_perusahaan'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBInfo."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 18.89765
          Width = 699.21305
          Height = 18.89765
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN LABA RUGI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 45.35436
          Width = 699.21305
          Height = 18.89765
          DataField = 'periode'
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBInfo."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Top = 68.03154
          Width = 699.21305
          Height = 18.89765
          DataSet = frxDBInfo
          DataSetName = 'frxDBInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '(Dalam Rupiah Penuh)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 37.7953
        Top = 415.7483
        Width = 699.21305
        object Memo18: TfrxMemoView
          Top = 7.55906
          Width = 396.85058898
          Height = 22.67716535
          DataSet = frxDBMasterPrint
          DataSetName = 'frxDBMasterPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          GapX = 4
          Memo.UTF8 = (
            'LABA BERSIH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 396.85065
          Top = 7.55906
          Width = 151.18113898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataSet = frxDBDetailPrint
          DataSetName = 'frxDBDetailPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDetailPrint."tahun_ini">,DetailData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 548.03185
          Top = 7.55906
          Width = 151.18113898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataSet = frxDBDetailPrint
          DataSetName = 'frxDBDetailPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDetailPrint."tahun_lalu">,DetailData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        Height = 26.45671
        Top = 279.68522
        Width = 699.21305
        DataSet = frxDBDetailPrint
        DataSetName = 'frxDBDetailPrint'
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Left = 37.7953
          Width = 359.05528898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'descriptions'
          DataSet = frxDBDetailPrint
          DataSetName = 'frxDBDetailPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          GapX = 4
          Memo.UTF8 = (
            '[frxDBDetailPrint."descriptions"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 396.85065
          Width = 151.18113898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'tahun_ini'
          DataSet = frxDBDetailPrint
          DataSetName = 'frxDBDetailPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetailPrint."tahun_ini"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 548.03185
          Width = 151.18113898
          Height = 22.67716535
          StretchMode = smMaxHeight
          DataField = 'tahun_lalu'
          DataSet = frxDBDetailPrint
          DataSetName = 'frxDBDetailPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetailPrint."tahun_lalu"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 26.45671
        Top = 328.81911
        Width = 699.21305
        object Memo14: TfrxMemoView
          Left = 37.7953
          Width = 359.05528898
          Height = 22.67716535
          StretchMode = smMaxHeight
          Color = 15593713
          DataSet = frxDBMasterPrint
          DataSetName = 'frxDBMasterPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          Memo.UTF8 = (
            'JUMLAH [frxDBMasterPrint."descriptions"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 396.85065
          Width = 151.18113898
          Height = 22.67716535
          StretchMode = smMaxHeight
          Color = 15593713
          DataSet = frxDBDetailPrint
          DataSetName = 'frxDBDetailPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDetailPrint."tahun_ini">,DetailData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 548.03185
          Width = 151.18113898
          Height = 22.67716535
          StretchMode = smMaxHeight
          Color = 15593713
          DataSet = frxDBDetailPrint
          DataSetName = 'frxDBDetailPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDetailPrint."tahun_lalu">,DetailData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_arus=id_arus'
      'id_parent=id_parent'
      'deskripsi=deskripsi'
      'isdetail=isdetail'
      'bulan_ini=bulan_ini'
      'tahun_berjalan=tahun_berjalan')
    DataSet = kmtMaster
    Left = 384
    Top = 2
  end
  object kmtMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_arus'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'id_parent'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'deskripsi'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'isdetail'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'bulan_ini'
        DataType = ftFloat
      end
      item
        Name = 'tahun_berjalan'
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
    Left = 358
    Top = 2
    object kmtMasterid_arus: TStringField
      FieldName = 'id_arus'
    end
    object kmtMasterid_parent: TStringField
      FieldName = 'id_parent'
    end
    object kmtMasterdeskripsi: TStringField
      FieldName = 'deskripsi'
      Size = 255
    end
    object kmtMasterisdetail: TStringField
      FieldName = 'isdetail'
      Size = 1
    end
    object kmtMasterbulan_ini: TFloatField
      FieldName = 'bulan_ini'
    end
    object kmtMastertahun_berjalan: TFloatField
      FieldName = 'tahun_berjalan'
    end
  end
  object qPrintRL: TZQuery
    Connection = DM.conn
    BeforeOpen = qPrintRLBeforeOpen
    SQL.Strings = (
      'select a.id_rek_gl, a.id_parent, a.descriptions,'
      
        '(select sum(b.saldo) from accfin.fn_gen_rl(:ptgl_now) b where b.' +
        'id_rek_lvl_4=a.id_rek_gl) as tahun_ini,'
      
        '(select sum(b.saldo) from accfin.fn_gen_rl(:pthn_last) b where b' +
        '.id_rek_lvl_4=a.id_rek_gl) as tahun_lalu'
      'from master.mrek_gl a'
      'where a.golongan='#39'RL'#39' and a.lvl=4 and a.id_parent=:id_rek_gl')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl_now'
        ParamType = ptUnknown
        Value = '31/12/2010'
      end
      item
        DataType = ftString
        Name = 'pthn_last'
        ParamType = ptUnknown
        Value = '31/12/2009'
      end
      item
        DataType = ftUnknown
        Name = 'id_rek_gl'
        ParamType = ptUnknown
      end>
    DataSource = dsqMasterPrint
    MasterFields = 'id_rek_gl'
    LinkedFields = 'id_parent'
    Left = 263
    Top = 69
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl_now'
        ParamType = ptUnknown
        Value = '31/12/2010'
      end
      item
        DataType = ftString
        Name = 'pthn_last'
        ParamType = ptUnknown
        Value = '31/12/2009'
      end
      item
        DataType = ftUnknown
        Name = 'id_rek_gl'
        ParamType = ptUnknown
      end>
    object qPrintRLid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
      Size = 15
    end
    object qPrintRLid_parent: TStringField
      FieldName = 'id_parent'
      Size = 15
    end
    object qPrintRLdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object qPrintRLtahun_ini: TFloatField
      FieldName = 'tahun_ini'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object qPrintRLtahun_lalu: TFloatField
      FieldName = 'tahun_lalu'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
  end
  object qMasterPrint: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.id_rek_gl, a.descriptions'
      'from master.mrek_gl a'
      'where a.golongan='#39'RL'#39' and a.lvl=3')
    Params = <>
    Left = 263
    Top = 36
    object qMasterPrintid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
      Size = 15
    end
    object qMasterPrintdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
  end
  object dsqMasterPrint: TDataSource
    DataSet = qMasterPrint
    Left = 276
    Top = 48
  end
  object frxDBMasterPrint: TfrxDBDataset
    UserName = 'frxDBMasterPrint'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rek_gl=id_rek_gl'
      'descriptions=descriptions')
    DataSet = qMasterPrint
    Left = 233
    Top = 32
  end
  object frxDBDetailPrint: TfrxDBDataset
    UserName = 'frxDBDetailPrint'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rek_gl=id_rek_gl'
      'id_parent=id_parent'
      'descriptions=descriptions'
      'tahun_ini=tahun_ini'
      'tahun_lalu=tahun_lalu')
    DataSet = qPrintRL
    Left = 234
    Top = 68
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
    Left = 624
    Top = 11
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
    Left = 656
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
    Left = 686
    Top = 13
  end
end

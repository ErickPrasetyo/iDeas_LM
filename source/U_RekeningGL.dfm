object RekeningGLFrm: TRekeningGLFrm
  Left = 326
  Top = 160
  Width = 722
  Height = 485
  Caption = 'Rekening Perkiraan'
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
  object dbtlDivision: TcxDBTreeList
    Left = 0
    Top = 81
    Width = 706
    Height = 143
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = dsMaster
    DataController.ParentField = 'id_parent'
    DataController.KeyField = 'id_rek_gl'
    OptionsCustomizing.ColumnMoving = False
    OptionsData.CancelOnExit = False
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsView.Indicator = True
    RootValue = 255
    Styles.Selection = cxStyle2
    Styles.ColumnHeader = cxStyle1
    Styles.ContentEven = cxStyle3
    Styles.Indicator = cxStyle4
    TabOrder = 0
    object dbtlDivisionid_rek_gl: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.GlyphAlignHorz = taCenter
      Caption.Text = 'KDOE REKENING'
      DataBinding.FieldName = 'id_rek_gl'
      Options.Editing = False
      Width = 165
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlDivisiondescriptions: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.GlyphAlignHorz = taCenter
      Caption.Text = 'DISKRIPSI'
      DataBinding.FieldName = 'descriptions'
      Options.Editing = False
      Width = 235
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlDivisionlvl: TcxDBTreeListColumn
      PropertiesClassName = 'TcxLabelProperties'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.GlyphAlignHorz = taCenter
      Caption.Text = 'LEVEL'
      DataBinding.FieldName = 'lvl'
      Options.Editing = False
      Width = 61
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlDivisionisdetail: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.GlyphAlignHorz = taCenter
      Caption.Text = 'DETAIL'
      DataBinding.FieldName = 'isdetail'
      Options.Editing = False
      Width = 53
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlDivisiongolongan: TcxDBTreeListColumn
      PropertiesClassName = 'TcxLabelProperties'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Caption.AlignHorz = taCenter
      Caption.AlignVert = vaCenter
      Caption.Text = 'JENIS'
      DataBinding.FieldName = 'golongan'
      Options.Editing = False
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 81
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
    CollapsColor = clNone
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
    Styler = apsDivision
    FullHeight = 41
    object ariHeader: TAdvReflectionImage
      Left = 15
      Top = 10
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
      Top = 32
      Width = 262
      Height = 42
      AutoSize = False
      Caption = 'Form ini berisi daftar Master Kode Rekening Perkiraan'
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
      Left = 68
      Top = 8
      Width = 136
      Height = 23
      Caption = 'Rekening GL'
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
    Top = 406
    Width = 706
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
    CollapsColor = clNone
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
    Styler = apsDivision
    FullHeight = 40
    object btnCancel: TSCButton
      Left = 350
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Batal'
      Images = DM.ImageList1
      ImageIndex = 2
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 10
      TabStop = False
      OnClick = actCancelExecute
    end
    object btnSave: TSCButton
      Left = 272
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Simpan'
      Images = DM.ImageList1
      ImageIndex = 3
      RoundColor = 13616833
      Spacing = 2
      Style = scbsCorel
      TabOrder = 9
      TabStop = False
      OnClick = actSaveExecute
    end
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
    object btnClose: TSCButton
      Left = 15
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Tutup'
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
      Left = 272
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Tambah'
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
      Left = 350
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Koreksi'
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
      Left = 428
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Hapus'
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
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Refresh'
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
      Left = 582
      Top = 7
      Width = 72
      Height = 25
      Caption = 'Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsCorel
      TabOrder = 11
      OnClick = btnPrintClick
    end
  end
  object pnlDataBackground: TPanel
    Left = 0
    Top = 224
    Width = 706
    Height = 182
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    TabOrder = 4
    object pnlData: TSCPanel
      Left = 10
      Top = 3
      Width = 523
      Height = 165
      Color = 16315891
      GradientMid = 15845560
      GradientUsesMid = True
      ParentColor = False
      TabOrder = 0
      object Shape11: TShape
        Left = 8
        Top = 92
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Shape9: TShape
        Left = 113
        Top = 119
        Width = 40
        Height = 28
        Brush.Color = 16710899
      end
      object Shape7: TShape
        Left = 8
        Top = 119
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Shape6: TShape
        Left = 86
        Top = 65
        Width = 430
        Height = 28
      end
      object Shape5: TShape
        Left = 8
        Top = 65
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Shape4: TShape
        Left = 86
        Top = 38
        Width = 129
        Height = 28
      end
      object Shape3: TShape
        Left = 8
        Top = 38
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Shape1: TShape
        Left = 8
        Top = 11
        Width = 79
        Height = 28
        Brush.Color = 16710899
      end
      object Label1: TLabel
        Left = 15
        Top = 19
        Width = 25
        Height = 13
        Caption = 'Kode'
        Transparent = True
      end
      object Label2: TLabel
        Left = 15
        Top = 45
        Width = 55
        Height = 13
        Caption = 'Kode Induk'
        Transparent = True
      end
      object Label3: TLabel
        Left = 15
        Top = 73
        Width = 39
        Height = 13
        Caption = 'Diskripsi'
        Transparent = True
      end
      object Label4: TLabel
        Left = 15
        Top = 127
        Width = 27
        Height = 13
        Caption = 'Detail'
        Transparent = True
      end
      object Shape2: TShape
        Left = 86
        Top = 11
        Width = 129
        Height = 28
      end
      object Shape8: TShape
        Left = 86
        Top = 119
        Width = 28
        Height = 28
      end
      object Label5: TLabel
        Left = 120
        Top = 126
        Width = 26
        Height = 13
        Caption = 'Level'
        Transparent = True
      end
      object Shape10: TShape
        Left = 152
        Top = 119
        Width = 63
        Height = 28
      end
      object Label6: TLabel
        Left = 15
        Top = 101
        Width = 46
        Height = 13
        Caption = 'Golongan'
        Transparent = True
      end
      object Shape12: TShape
        Left = 86
        Top = 92
        Width = 129
        Height = 28
      end
      object edtKode: TcxDBTextEdit
        Left = 90
        Top = 14
        DataBinding.DataField = 'id_rek_gl'
        DataBinding.DataSource = dsMaster
        Style.Shadow = False
        StyleFocused.BorderStyle = ebsThick
        StyleHot.BorderStyle = ebsThick
        TabOrder = 0
        Width = 121
      end
      object edtKode_Parent: TcxDBTextEdit
        Left = 90
        Top = 40
        DataBinding.DataField = 'id_parent'
        DataBinding.DataSource = dsMaster
        Style.Shadow = False
        StyleFocused.BorderStyle = ebsThick
        StyleHot.BorderStyle = ebsThick
        TabOrder = 1
        Width = 121
      end
      object edtDescription: TcxDBTextEdit
        Left = 89
        Top = 68
        DataBinding.DataField = 'descriptions'
        DataBinding.DataSource = dsMaster
        Style.Shadow = False
        StyleFocused.BorderStyle = ebsThick
        StyleHot.BorderStyle = ebsThick
        TabOrder = 2
        Width = 422
      end
      object ckbDetail: TcxDBCheckBox
        Left = 89
        Top = 123
        DataBinding.DataField = 'isdetail'
        DataBinding.DataSource = dsMaster
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 3
        Transparent = True
        Width = 23
      end
      object edtLevel: TcxDBSpinEdit
        Left = 159
        Top = 122
        DataBinding.DataField = 'lvl'
        DataBinding.DataSource = dsMaster
        TabOrder = 4
        Width = 43
      end
      object edtGolongan: TcxDBComboBox
        Left = 92
        Top = 95
        DataBinding.DataField = 'golongan'
        DataBinding.DataSource = dsMaster
        Properties.Items.Strings = (
          'AKTIVA'
          'PASIVA'
          'RL')
        TabOrder = 5
        Width = 118
      end
    end
  end
  object Master: TZQuery
    Connection = DM.conn
    BeforePost = MasterBeforePost
    OnNewRecord = MasterNewRecord
    SQL.Strings = (
      'select * from master.mrek_gl'
      'order by id_rek_gl')
    Params = <>
    Left = 83
    Top = 25
    object Masterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Required = True
      Size = 30
    end
    object Masterid_parent: TStringField
      FieldName = 'id_parent'
      Size = 30
    end
    object Masterlvl: TIntegerField
      FieldName = 'lvl'
    end
    object Masterisdetail: TStringField
      FieldName = 'isdetail'
      Required = True
      Size = 1
    end
    object Masterdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object Masterusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object Masterusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
    object Mastergolongan: TStringField
      FieldName = 'golongan'
      Size = 10
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 99
    Top = 40
  end
  object srDivision: TcxStyleRepository
    Left = 222
    Top = 39
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
      Font.Color = clBlack
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
      AssignedValues = [svColor]
      Color = 15587527
    end
  end
  object afsDivision: TAdvFormStyler
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 164
    Top = 13
  end
  object apsDivision: TAdvPanelStyler
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
    Left = 192
    Top = 35
  end
  object aclDivison: TActionList
    Left = 244
    Top = 36
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
  object qryClvl: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 376
    Top = 34
  end
  object kmtMaster: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_rek_gl'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 30
        Size = 30
      end
      item
        Name = 'id_parent'
        DataType = ftString
        Precision = 30
        Size = 30
      end
      item
        Name = 'lvl'
        DataType = ftInteger
        Precision = 4
      end
      item
        Name = 'isdetail'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 1
        Size = 1
      end
      item
        Name = 'descriptions'
        DataType = ftString
        Precision = 255
        Size = 255
      end
      item
        Name = 'budget'
        Attributes = [faRequired]
        DataType = ftFloat
        Precision = 1114114
      end
      item
        Name = 'dt_budget'
        DataType = ftDateTime
        Precision = 8
      end
      item
        Name = 'usr_ins'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 30
        Size = 30
      end
      item
        Name = 'usr_upd'
        Attributes = [faRequired]
        DataType = ftString
        Precision = 30
        Size = 30
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
    Left = 252
    Top = 19
    object kmtMasterid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object kmtMasterid_parent: TStringField
      FieldName = 'id_parent'
      Size = 30
    end
    object kmtMasterlvl: TIntegerField
      FieldName = 'lvl'
    end
    object kmtMasterisdetail: TStringField
      FieldName = 'isdetail'
      Size = 1
    end
    object kmtMasterdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object kmtMasterbudget: TFloatField
      FieldName = 'budget'
    end
    object kmtMasterdt_budget: TDateTimeField
      FieldName = 'dt_budget'
    end
    object kmtMasterusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object kmtMasterusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
    object kmtMasterdetail: TBooleanField
      FieldName = 'detail'
    end
  end
  object frMaster: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39213.076118148200000000
    ReportOptions.LastChange = 40043.495564050900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 287
    Top = 19
    Datasets = <
      item
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 15.000000000000000000
      ColumnWidth = 200.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object PageHeader1: TfrxPageHeader
        Height = 42.559060000000000000
        Top = 18.897650000000000000
        Width = 699.213050000000000000
        object Memo1: TfrxMemoView
          Top = 8.456710000000000000
          Width = 699.213050000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'MASTER REKENING')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 31.574830000000000000
        ParentFont = False
        Top = 275.905690000000000000
        Width = 699.213050000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object SysMemo1: TfrxSysMemoView
          Left = 1.000000000000000000
          Top = 5.873840000000000000
          Width = 697.669140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Page [PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object HeaderPRDetail: TfrxHeader
        Height = 49.472480000000000000
        Top = 120.944960000000000000
        Width = 699.213050000000000000
        object Memo29: TfrxMemoView
          Top = 11.000000000000000000
          Width = 30.236240000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 30.236240000000000000
          Top = 11.000000000000000000
          Width = 122.181200000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 151.803340000000000000
          Top = 11.000000000000000000
          Width = 441.370440000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DISKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 593.386210000000000000
          Top = 11.338590000000000000
          Width = 48.299320000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LEVEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 642.520100000000000000
          Top = 11.338590000000000000
          Width = 55.858380000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DETAIL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataPRDetail: TfrxMasterData
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 699.213050000000000000
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        Stretched = True
        object Memo37: TfrxMemoView
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 30.236240000000000000
          Width = 122.181200000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'id_rek_gl'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBMaster."id_rek_gl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 151.803340000000000000
          Width = 441.370440000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'descriptions'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBMaster."descriptions"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 593.386210000000000000
          Width = 48.299320000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'lvl'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."lvl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 642.520100000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'detail'
          DataSet = frxDBMaster
          DataSetName = 'frxDBMaster'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
    end
  end
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rek_gl=id_rek_gl'
      'id_parent=id_parent'
      'lvl=lvl'
      'isdetail=isdetail'
      'descriptions=descriptions'
      'budget=budget'
      'dt_budget=dt_budget'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'detail=detail')
    DataSet = kmtMaster
    Left = 321
    Top = 19
  end
  object qryPrint: TZQuery
    Connection = DM.conn
    BeforePost = MasterBeforePost
    OnNewRecord = MasterNewRecord
    SQL.Strings = (
      'select * from master.vmrek_gl')
    Params = <>
    Left = 101
    Top = 101
    object qryPrintvid_rek_gl: TStringField
      FieldName = 'vid_rek_gl'
      Size = 50
    end
    object qryPrintdescriptions: TStringField
      FieldName = 'descriptions'
      Size = 255
    end
    object qryPrintisdetail: TStringField
      FieldName = 'isdetail'
      Size = 1
    end
    object qryPrintid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
  end
end

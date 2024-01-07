object ChangePasswordFrm: TChangePasswordFrm
  Left = 495
  Top = 319
  BorderStyle = bsToolWindow
  Caption = 'Ubah Password'
  ClientHeight = 281
  ClientWidth = 349
  Color = 16514043
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape6: TShape
    Left = 27
    Top = 199
    Width = 122
    Height = 29
    Brush.Color = 16710387
  end
  object Shape5: TShape
    Left = 27
    Top = 171
    Width = 122
    Height = 29
    Brush.Color = 16710387
  end
  object Shape4: TShape
    Left = 27
    Top = 143
    Width = 122
    Height = 29
    Brush.Color = 16710387
  end
  object Label1: TLabel
    Left = 33
    Top = 150
    Width = 89
    Height = 13
    Caption = 'Password Lama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 34
    Top = 178
    Width = 85
    Height = 13
    Caption = 'Password Baru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 33
    Top = 206
    Width = 85
    Height = 13
    Caption = 'Password Baru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 148
    Top = 143
    Width = 181
    Height = 29
  end
  object Shape2: TShape
    Left = 148
    Top = 171
    Width = 181
    Height = 29
  end
  object Shape3: TShape
    Left = 148
    Top = 199
    Width = 181
    Height = 29
  end
  object lblHeaderComment: TLabel
    Left = 16
    Top = 91
    Width = 152
    Height = 16
    Caption = 'Ubah Password User '
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = 15437112
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lblDescription: TLabel
    Left = 27
    Top = 111
    Width = 280
    Height = 31
    AutoSize = False
    Caption = 
      'Silahkan memasukkan password lama dan password baru untuk proses' +
      ' perubahan password :'
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
  object edtOldPassword: TcxTextEdit
    Left = 153
    Top = 148
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Shadow = False
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 0
    OnKeyPress = edtOldPasswordKeyPress
    Width = 173
  end
  object edtNewPassword: TcxTextEdit
    Left = 153
    Top = 176
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Shadow = False
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 1
    OnKeyPress = edtOldPasswordKeyPress
    Width = 173
  end
  object edtConfirmPassword: TcxTextEdit
    Left = 153
    Top = 203
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Shadow = False
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 2
    OnKeyPress = edtConfirmPasswordKeyPress
    Width = 173
  end
  object SCPanel1: TSCPanel
    Left = 28
    Top = 237
    Width = 301
    Height = 1
    Color = 16514043
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Gradient = scgLeftToRight
    GradientEnd = clBlack
    GradientMid = 14869218
    GradientUsesMid = True
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
  end
  object btnOK: TAdvGlowButton
    Left = 182
    Top = 244
    Width = 72
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
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
  end
  object btnCancel: TAdvGlowButton
    Left = 258
    Top = 244
    Width = 72
    Height = 25
    Caption = 'Batal'
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 5
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
  end
  object pnlHeader: TAdvPanel
    Left = 0
    Top = 0
    Width = 349
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
    TabOrder = 6
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
    Styler = AdvPanelStyler1
    FullHeight = 41
    object AdvReflectionImage1: TAdvReflectionImage
      Left = 11
      Top = 4
      Width = 53
      Height = 79
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        8700000DE44944415478DAED59097454D519FE5E66261B212B098424446D400A
        092420018B880281848A014104E1A0A24629A2B6200D430849444B402AB614AD
        804544A13988D4969E6A37AB95252C0934B22484AD04921026CBE425939979F3
        FAFFF7BD992430696B38D4F69CDE9C9BB7DD77EFFFDDFFFB97F78F84FFF1267D
        D302FC1FC0372DC0AD0420FD1B63BEF1E655B88F7F8858BB1309361B8C2E1724
        970A882E694728DA38277517FF3368D776A7F64C8CD3C7D0FBEDEF41BBEF8276
        EDE4312E7D6E7EEEA38DF7DCA3F79C0EFD3D557BCF33870AE7D1F338E60D80F4
        DB6578C9603014F22B8A9D464AFAC42CB44B17AAE3629206C42384B35DA84EC2
        BBDACF9D4A87F77429547D271427ADA96A0BAA92098AD100073D73EAE38CF48E
        B54E6E385A8929DE00F8EC5A8CEC90888857C6BE58095555E0B435D34276D86D
        2D74ED804A5BA09224AAAA92404E21199F8BCECFE8CFC5D292102E168484E679
        B8BB9CFA5852954BD17640D5D575E6AB6234541723E5DE67E074DA881E12CE55
        5D805F51218645DE85DE274B70F5CE241C6E2AC3C78AD3FAD7523CEF0D80A1E8
        FB58161C1AF8F284EC5AA88E565C2BFF0BE9C5472CA609C65BE3D4764B51E891
        A40182A20150556D8C2E1C3F5115FDBEA403D0AF556D2089AAE2C29943A8AD3A
        81B15397C1EE70C26430A0E4C0FB88FCD527B87BFB05A8A74A202524A1386B00
        361914F9F352E47905F0C10B3087060716A42DAB82CB6123007F26BD18C58EBA
        7759A8D7AD0171719D1604085D030C44D1006A43DB8F2E553B126571B1A218D5
        574EE091E50705754C26133EDEF820A276FC0EA39F580967561E8C9B5FC5FE1D
        CBF1B62FE47DC7F08A5700DB17C21C161952909E7D89D6B6C372E6735A9C14AA
        0B280412E78AD849E67DBB50FA7DF7CEBB7420D02825C6B9B5E39E838EA44454
        9E3A82DA9A1348BD67269C6D36F8D0BCA74F7F81E8BD5F60C4AADF03EFAD011E
        791E87564FC346A753DE57D605806D0B600E8F0A2A80E24F06E5209AC8B4B041
        D04888E2D48C5988A848BA26AE3356568C0F3901B23C97E4D20DDB4718A7378F
        E422AFD0D6E680D18FF02926B1AE446BB61A14F8D401C1F580CD0EF892182DF1
        C0653BE4E2F22E00BCF314CC635FFC63419FB841C2592A8A156DAD56CFEEF36E
        A982B58AB009897791AF25CD50DD949224CD980302FDA0B8F46792EECE04F55C
        BA0DB8E7A0597C68569743685BDC9774A7A05351D890D28665B317CBFBCE7501
        60F3E3304F7BF574411B4270E4C8219C3F5F8EE6C606F81954F40C9010161280
        9E3D03E0EFEBEB31443666EE6EFE2B4ECDB89B2D7598B1606E673F2DF5F09CAB
        EA951BFDB864F52256538777AA3027F525F9F025EF007CD73F3768BD2376CE02
        DF80200C183000D1D1D130184D68A86F40794539CE9DADC4C041FD70FFD814F4
        EA150E5FDF406D77A01BB4E7087CB8690BA63DF9B0E7DA627915DD6D1111D348
        F8463AABC623C3F3E5D22B3702301614AC5A17D433E8B9871E7AC827BE5F5C07
        D42A5A5B5BC5797373337EFDEBBDA8AC3C8D79F3262226360A3D8382BD02D8B9
        F16DCC7C76AE47F85FACFEAADB0016AF59C4AB8BFE704ABE7CBCA63300434141
        410EEDF6CAB973E74ACC5D87C34186D5067F7F7F040505C16E27CB9165CF0BFB
        F7EFC781039F0B10F1F1D1F0F3F3D335E1EE3ED8F93302B0601ED1E2A4FED65D
        DDA64D7B6BC6F4E47CB9EC5A3B002927276768484848F133CF3C636A6969C1D6
        AD5B91969686E0901EE4DAAE222C3C1277DC7E1BAC56AB16BC2489DC9C0F8A8A
        76D1793DA64C198DD8D83E1D34A019EB8E0D5B306B612A09F06D2190C5B2A1DB
        1A080F4FD535004C1B962F9FA86A07E0939F9FBF67CE9C39536EBFFD766CD8B0
        01770EE88F49E919E261D9C1225C95C3D02BAA2FA2FBF4A630EF149462104CAB
        356B5EC3B3CF4EC0C08177E85A6807F0C14F3663F6A2BB0500A6D0271F440AB7
        2C76CDEE00797B9A8FDCB3D2E211B4516E235F791E35F515F0B96217F7068E4F
        C0D3D9B33D63A60CCD97CBAB75008B172F8E898A8A2A5BBA7469A8C562C1BAB5
        3FC2ECE91948BC6B9C10E4F8FE22C80E3F7C7EE00C9E7A72BEA095F0FD44338E
        963B7716212ACA8549938693A185A1DDA08DD8FEFA5B78F485595EF6339836A0
        8AE6E9298E1A4D1A3D14E9DC3A5F4B52232627AE974F5DD50048D9D9D9631213
        13FF421A405D5D1DD6BD568847A6A52179E444F1C2570776E0B2C589E2924BB4
        D359B0519EED06C034FADBDFBE227BD84BCF1E44DFBE7D3A68C088F75EDF8439
        2F3C29E8C33CBF76EDDD9BA0D020AF007C08C09C51A3466DCBCCCC04F37FF3E6
        CDE8D3A70FD2D3C721383814A55F1661D7DEE318F59D7B3062C40861CC6E00DC
        AAAAAA480BDBB064C98364CC71BAF036EA76AC9A4F4165F3525A348484FF08E6
        87F7A0A9D9E85540B94DE9746D6FB67BCEC74C8D86F9B52C0F80F4C1EBE5F23A
        0D808128343D3535F5973367CE140098460C825B5858082E5CF83BC58381C8CC
        9CE209582E3D85E6C6CFF7ECD98EECECA9143302E88E4508CF5E6871DA6CACFD
        E44D7DE1906EEFBE46B1D342786E1306AC97CFBA012C58B02075F0E0C15F2E5C
        B85072BB4A76A167CF9E45434303626262101919E9115ED1536106C159E4D1A3
        4789467BF1F4D3C3696C64070A31803904602D9D0789852D963F751B4044448C
        E77C1C01385FAF532823232372C8902125797979D16C94AC05EEEEC6825EBFF3
        7CE4CE5E67DBB66DC20E1E7F3C01C38747A377EF10B8BDD0F7273E8675BFD300
        B0F0EFAE3B7883606D6DAD37DC7391FDD85B5C9EEBA4D430CC78225DD78415F7
        DFB945BEA803E0EE47BB5F3871E2C4E71F78E001B1FB6CA8AC89EB05E67376A3
        DC7C2917E2A8BC7EFD7ACC9AF528DE7C73137EFAD3D164C8C11E0D2C4A7B0C6F
        E81AB8590A01C51E00636EDB225F6E698F03260A5A770C1D3A741F0109EFDBB7
        AF10923BFB79A6159FBBA9C3B4090808102EB4B0B010494949484949C15A72BF
        6FBF7D1F0133A2A6B681624638164D78026F7CEAA650F33F11EEC6676EBE5FDF
        048078D2405B8740463D60C68C19E9090909EF676565F931EF59136EFA880C53
        8FC00C809F6DDCB8515C73F063301FED7E171346D6E14A7D247A981A317D5E06
        D665ADD03540FCAFB3A0B2FC9A57A18C86861BEE99FC3A03484C8EF59C8FEEB7
        45BE64EF9C0B197BF4E8119C96362933262E66DDB8FBC7858DB96734E85E2797
        C9DA282B2BA314A288B8DE1BE47E45B67AF8F061FA7AAA406949090625A5A0AC
        F404F2560DC28E953F42DE073F266FA6E0DDB53FC7B97356C4F4BB914ACD569B
        5760ADF49113E067C23BAB2FE2F7558F917BD75CF0C8BE5BE4EAD6CE00F8DC44
        02872C1C27AF881D9BBBE8CCC52684868653B6192376B8B6A60E15151594D8F9
        63F2E474F20A11A8A9A9110059630C223E3E1E717171C8C9C98339E736143EBB
        16D91BB23074D8B7B069F526248F4EC6883123BAA49337DA30653293DFC32FFE
        9449C12C58DC1B41006A5B6F4CA78541674FC6F2056FECCFE997908AFA8633D8
        B3B51061313D307C54126A89DB6FBE5589E5E66564E4563435355180BA2640B8
        35C1C0DE79E72744AD007CF9651B72F38270DF3DC9F870F3873A806F7F2DBE73
        CB48D882F78B1F160038A20FEB5D24D7B9BC7FD018CD19303FBEF6B3FCFE8347
        8353801DAB472369FC74343658F1190976CDD11B978DE3B062C50AB285363436
        368A78C1346310870E1D22AA9C4342C20011C977EDDA89DDBB9349033BBC02F8
        57C277041011A1893C8400347401C0909D0EF3FCD73E2BE83FF86EBABC84F75E
        198F21E36761E8A81412B259540B4A4BAB5150709C7A2EC58C6611376A6B6BC5
        044CA712B28561C3865144DF8A91232B31E1DE44ACCEDD83A98FF6414666C6D7
        12DE1B80C45E457293D40580A59308C09A3F14DC3964245D9E47D1EBF331E8DE
        0790387C08B414416B274F5D24AE1F44EE8A1C110F3876309D3A6AE2E4C9D338
        7FAE14D5357602E9C40F9EF7C7BCF9F7D13775CFAF05C26D031E006104C0DE15
        8034D600036055DB70645F09EAAA2D62E71D0E45943C4405813EF22B4E55E00F
        072E213F7F8500C15195732906111B1B8BE2E262A11D8E15ACA10D1BDEC2F4B4
        78040686D37D8B6751D9A65571AD36BD3EDA5AD349A8835FB4E1D3C3C3841762
        1B18185224931BE80200D9C0536B3E2DE89F98027756A9BA5AF5928853AB754A
        76485C29F45171BCAC1CCB977F84DC1C33EAEBEB45D0636139D5663A1D3B764C
        78A7E0E060BCF8E212ECD8FE5DF48D3B83EE348F0D4417C99696AE6CE0412C8B
        ED3FE8E590A80828AA56C815FE89831A9FA8DA5154EAE899298013BA6A94370C
        445E6EAEC72BB9E9C4919DBF9F93939361CECEC694FB1DE81D69825D69AFCEF1
        9C9C7D2806D553A2E45A914BD4A0545157E2C2B0D844EABBB736C9CD4EE47BAD
        4E7F6F1246D064E39B6C0827B604702D8BDF85844E153874289773BBE41A181E
        161937353737C79735C1D1DAED9D5813FBF6EDE3AF379BD27CE137D13D1D8D9C
        9D40AB6E794AF6EE828628BFBBB40AA0BBB9D8FC0CFAB71EE77A7538E8F5F701
        EAFE1CD0E8C8DF87FED0528D7FD5446ADEAF5FBFF45EBD7A2DA76F6CD3D5AB57
        058D984E9C72B0612F59B2C44AF75FA2B4E43C8D67EB75748B4B7A8DBCAB9F8F
        D8924CD47D0988E1DF9C50D2810612656650305BBD72E54A0122303050A4209C
        4399CD662B51EB39D2CE311ACB96DAD64D009E45FFD933095FEF37324F3A429F
        A473C3C2C256D137861FBB57AE2D1D397284BFF49AAD56EBD304E030A5EB976F
        25809B99D397FC7C3869616E6868E82B442BE3C993275BC9CD9E210FF55772AB
        BB69CC6902C091CF7EB38BDD8A26722AD24428696132091DCCBBEDE2304EAE9E
        FA55EA353227531DEB90FF4500B8B13DB00DF1970CA7906C536CB03659AB4FB6
        EAD76AF797B8F5BF01F3FC46BD332045EFEEE2E94D09FF9F00E06D8D9B16FA3F
        0DE096B6FF7900FF00CCDFD2C93CC6E6560000000049454E44AE426082}
      Version = '1.0.0.1'
    end
    object EllipsLabel1: TEllipsLabel
      Left = 76
      Top = 7
      Width = 165
      Height = 23
      Caption = 'Ubah Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = 10901530
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object lblComments: TLabel
      Left = 79
      Top = 32
      Width = 262
      Height = 39
      AutoSize = False
      Caption = 
        'User bisa merubah password sesuai keinginan. Password yang biasa' +
        ' digunakan (tgl lahir, nama dll) bisa meningkatkan resiko keaman' +
        'an data.'
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
  end
  object AdvPanelStyler1: TAdvPanelStyler
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
    Left = 258
    Top = 37
  end
  object AdvFormStyler1: TAdvFormStyler
    AutoThemeAdapt = False
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 290
    Top = 38
  end
end

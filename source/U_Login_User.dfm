object Login_UserFrm: TLogin_UserFrm
  Left = 340
  Top = 217
  BorderStyle = bsToolWindow
  Caption = 'User Logon'
  ClientHeight = 247
  ClientWidth = 314
  Color = clWhite
  Ctl3D = False
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
  object Shape4: TShape
    Left = 111
    Top = 169
    Width = 193
    Height = 28
  end
  object Shape3: TShape
    Left = 25
    Top = 169
    Width = 87
    Height = 28
    Brush.Color = 16710387
  end
  object Shape1: TShape
    Left = 25
    Top = 142
    Width = 87
    Height = 28
    Brush.Color = 16710387
  end
  object Label1: TLabel
    Left = 35
    Top = 148
    Width = 63
    Height = 13
    Caption = 'Nama User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 36
    Top = 176
    Width = 55
    Height = 13
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 111
    Top = 142
    Width = 193
    Height = 28
  end
  object lblHeaderComment: TLabel
    Left = 14
    Top = 88
    Width = 214
    Height = 16
    Caption = 'Enter User Logon Information'
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
    Left = 25
    Top = 108
    Width = 280
    Height = 31
    AutoSize = False
    Caption = 'Masukan  user name dan  password untuk proses  otorisasi user :'
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
  object edtUsername: TcxTextEdit
    Left = 116
    Top = 145
    ParentFont = False
    Style.BorderStyle = ebsOffice11
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.HotTrack = True
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 0
    OnKeyPress = edtUsernameKeyPress
    Width = 184
  end
  object edtPassword: TcxTextEdit
    Left = 116
    Top = 172
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '#'
    Style.BorderStyle = ebsOffice11
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.HotTrack = True
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 1
    OnKeyPress = edtPasswordKeyPress
    Width = 184
  end
  object pnlBottom: TSCPanel
    Left = 27
    Top = 207
    Width = 278
    Height = 1
    Color = clWhite
    Gradient = scgLeftToRight
    GradientMid = 16707038
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 2
  end
  object pnlTop: TAdvPanel
    Left = 0
    Top = 0
    Width = 314
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
    TabOrder = 3
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
    Styler = AdvPanelStyler1
    FullHeight = 41
    object EllipsLabel1: TEllipsLabel
      Left = 60
      Top = 6
      Width = 120
      Height = 23
      Caption = 'User Logon'
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
      Left = 72
      Top = 32
      Width = 219
      Height = 42
      AutoSize = False
      Caption = 
        'Untuk mengakses system, user harus logon. System akan memberikan' +
        ' hak akses setelah proses authentifikasi.'
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
    object AdvReflectionImage1: TAdvReflectionImage
      Left = 9
      Top = 10
      Width = 53
      Height = 72
      AutoSize = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        870000002B744558744372656174696F6E2054696D6500446F203134204E6F76
        20323030322031363A34333A3036202B30313030DB0550ED0000000774494D45
        07D30A06141837162CB5A6000000097048597300000B1100000B11017F645F91
        0000000467414D410000B18F0BFC610500000A444944415478DAD55AEB6F5B67
        197F8EEDF89638CEC5B1935E923A691B5A755D9AB44943B7552AD326A44DB07D
        2B547C41203E021F105FF80B080C248484F8001F405529A2156388B28DA1B12A
        6BBBD2AE5DDB75234D7AAFD3A471ECF8EE63F3FB1D9F373D788E1D3B5181233D
        7ACFCDE7FC7ECFED7D9EF758E4FF7CD3D6EB414343434E87C33192CFE707344D
        6B2D168BA95C2E772F1E8F5FBE75EBD62C6ED121C5FF39027BF7EE0D160A85EF
        01F011A7D31974BBDD9ACD66135DD70504248B0DFBA73399CCCFAF5DBB760A3F
        499A64FEFB044647475F06C85F75620B06830202067010324658C310584162B1
        58219D4E1FBB7EFDFA0FC0E90E7E9E590F02F63568FE30B47EB4BFBFBF25140A
        09DCC7384FF056C13DD2D4D4241E8F4703A9A75A5A5A7645A3D1B3B8B6B81E96
        6888C0D8D8D85E0038110E87DD5EAF57E8322400DF5FBE87C01521EE732411EC
        6FC1BD4D0B0B0B577139C65BD642C0D1C06F6C70819FF5F4F478A155033C7D7D
        71715152A9147DDE38266012B2DBEDC6A8083637376BB8E708889F492693B402
        03BCE1E0AE9BC0C8C8C8F300334A6DDEBD7B97BE6DF83B5C4310C086965D2E97
        4180FE4F32086083182D412220E541CC1C9A9999B9844746650DF150970BEDDE
        BDBB035AFC09C0F5437B42F7D9B871A3F4F5F549575797F87C3EFABA41804414
        190AEF355DC8208780DF81E33928E03A1E9D90065DA92E0B00C877F0D22F0402
        01BA82A14DBA1037E5F3D6912EC35181E6313395E9560E901DC2AD3B4C2BC41A
        2160ABE76680F8625B5B9B0142815260AD2E93365C067380190BC68B405405B9
        22036574E3B00FE26D047CDD16C04B5D0A0441269329594A24259160F06684C6
        F0799AC4D7EC042B4DB2795D62C9ACA47220A0D9C4ED6A12A7C32E0EBB8D0F23
        719ACB0F697A2204A0B9EBF30BD15D4B7722D2EC123938BC49F6EDDC26BB06BB
        6563A005C0090C1ACF03B19EC698457866445F4AC9ADD9985CBCB120EF7DBC28
        6F5F89C1E1354E70B7658D25465D0492E9ECEBBB02FA33DFFEDAE7427B0E8E23
        05407136E4812244CF9BC0013A87FD42BE34C20A76874DC221AF84830E7965AC
        43F468545E7BFD46F4FB47EFD3F71FD0A08D12A82B063EBEFAD11FBE319E3AB6
        A70707F0714921FBA508385D2280742A3A2C50C45828323894E94A92C3711684
        345D9EDB9A9ED2F379CE035390F813B1008DE0773A3F9174A204A8684A0116D0
        00AEA09784C0ADD74591314704FBDDF93CB53F077948753C29027ACE51B82489
        8522B4AD199E4B805ABE04CC20A397AC412B140B8FB5AFC8F037B0D8D9E924C1
        93445AD6100375B9D09EE191E0577FE33A2219582013271DD3F7B3E6BE29F47F
        9E37ACA15BC81027F6F30939FD492A69126858FB7511D8BF7FFF57A0F26B1E8F
        F79B17224D9AC4EE0310C0E633A5E0250923884D0B58492821F86C12E957977B
        8EFEC3030303C804D2DA80272C6FAB2A25C6C7C70FA19639817AC7CB19B80959
        653C84F86BDB08CDE61FBB48C104BE0CDA4AC2BC2F764FDE890D8ABB779F23BE
        B8B00FCFDBF0F0E1C3F378CD9234505EAF8A008AB139BC683776B7B1AEBFB1E4
        96C3BD0FC5E66B87FF3B2CC1AB972CB00CD8428204D371C9C616E558EC59F1B8
        9B64DBB66D1AC0EFC42C6D33CB6B66A3BA6AA2551140E186D41D9D04F80D9840
        773ADD5E2D83C973C41FC1D41B32ADA09749FEB1103C5D6D71467E173F2831CD
        2F1E97D3E8D4666767656969C90E229FE255F0CBFAE684D556A34594CCC9F9F9
        F98B70A3E662411F9ACE06B4E7BAE2D2E64040BBFCA6050A9F751B9EE3E4B678
        53FE7C3F2C53AE618947E7E5F4E9F7E4CC9933B35353537FB979F3E6A7A82AA0
        0D999652CFBCEE04B8D13FE32071B9A3A37D30934E6E7D77AE430E34DF3149B4
        9A29D392753826916862B7E5A7FF28C8C4BB69598ACECAFB939305003F313D3D
        7D05DA9F01F8737836E3202275C6415DFDC0E0E060736F6FEF8FE04A5F6AF3FB
        B5DB77EF4B62E0CBF2EC608FD867DE2ECDC874951C94987C04E077249971C81B
        8597E4D7EF3F92EC521421926735AB417A50565F801BBD81477F00B9270DA4D4
        551340271644F9FBD7F6F6F617B66EDDAAB1AC4EA1A9415A9543DF9A90B9C041
        49EB0E885D1205AF441CFD72A5F905391ED92EBF3DF9A6C417E6842B176C6CD8
        E040096E8C7B3B3B3B37A7D3E949248AF97AB5BF6A0200DF8C4AF414BAAE7DB0
        C0F2F9D6D656F9E0DC391908F74978F029897A0764AE758F445A876526D72DBF
        3CFA4779E7AD53E26BF11AE0D9C858FB0310606D1E06996740E243663B1CE7D6
        9DC0860D1B7E01B02FB175541B01506889E3C78FCBABAFBE222CF36DA889FEFE
        B7B7E4B51F4F605ECB4A6FEFE6E51ED9DAADA98E8D6D26C620483C8DF6F23C9A
        A2F97A48D424303636F622861F6EDFBE5D53C0ADCB270407ED4924129103070E
        C8C4C4849C3C7952C2E1B0C0DD96BBB572F05621096C3D187D8F1E3D62A3CFF6
        7255EE548B802D140AFD7ED3A64D3DF45DA535B554A27A5ECECE93939372FEFC
        79B97CF9B280ACD12F2BE04ACA09588FD9A6E2FE4158E036E69D1B529A996B16
        7955098C8E8EBE0820DF05014DF5B1DCCA9B7512E29A10522C6757E31E6BBFBC
        1A02A6756D785F2726B70FA594526B66A5AAC51C407CBDA3A3432B7F995AFF2C
        07E3F7FB3FE32ED6ADFCB8FC1A5DC9ED760F21AE3E8F53C15AF8AA1240E07AF1
        D0E7996908D80AB67CED93C295392E6C956BD5BA5F4EA2D23E48D80281C00876
        B7403C0D13E8EEEE1EC6C3FC748F95402B37E1CA1BF72B659BD502372D6EC40E
        626A0CDE445FF4498D15F41509E001FBB8D65F296B58897064162251BEBCD2FD
        95ACB1120933B57621698471D856CB8D56BC08B709ABF5FE4AAE6325C1754F33
        8B540DDA4AAB77E5243842791AACC018E88238AB1158B113822642CCF9D64947
        651F958DD43E49AAB4594E6225D02BDDA3DE030201290532032B5537016C1E2B
        602B70E5FBEAA52AC59683AF44A61631F52CB82F1A0DE9AC6581955C48B38253
        DFBB50FE1AEB9F9502DA6A95D58057842B598596471CD002FE465D884F4C29FF
        571660B6294F8BD649ADD2FC504DEB4CBDEA0B8FF5BA39393203359B18355961
        565E3188F1B00B68368A0A94DA786CB58E157025DFAE660D662E3E4F29E13F80
        D96C2E0C94AAD5C28A171F3C78701593581029F269BC48E32CC9AF319CD8AC2F
        5496A18BF1E3462D0B58E709FEC6006196D92AA34116D166FE09E509D74D2FD2
        587513E0F3D1685F80862278780788702D5FE364C5175A5D487D4252055F35F7
        B1FABD8A276EFC3DDE119F9B9B7B13EDE63F1389043FC59E85FC4BAA64A15ADF
        8959E7321BEC409DB31F75D16E9FCF378C9CBF0562539F91A8490AAE2F83B406
        AA351910348F793FF6E9A25928E0125725500CA6701FFB017E7662593D035990
        2AA5F56A3E7453DDFC82C2ACB0193200F07DC8D35D2D2D2D01689DAD66109609
        E1E52C3DECE5E9D724958744013A024D47A0E139C4D812469EE74A047BE21BA6
        3C3081B31AAD5A52D7F3A59E01CF49A5454A354ABB94664A12A3EA5B01D80BFC
        6E8CCB3E06022C478A00C9312FA52F925CC0A25FA3F33756A7674DC03CCF0F7E
        B95AC01B2150FE1BBA97CB223C66CA739AFB76799CE5E8E8BAA9D19C4532A6A4
        A5C12F35EBF16F15ADC2B1ADC2F9A249A458766E4DDBBF01FB5BF0B2DB48F940
        0000000049454E44AE426082}
      Version = '1.5.0.2'
    end
  end
  object btnOK: TAdvGlowButton
    Left = 157
    Top = 215
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
    Left = 233
    Top = 215
    Width = 72
    Height = 25
    Caption = 'Batal'
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 6
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
    Left = 190
    Top = 6
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2007Obsidian
    AppStyle = DM.apsMain
    Left = 220
    Top = 6
  end
end

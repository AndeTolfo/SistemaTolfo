object FrmRelSubGrupo: TFrmRelSubGrupo
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio SubGrupo'
  ClientHeight = 398
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 398
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 598
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 228
        Top = 32
        Width = 41
        Height = 14
        Caption = 'Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 34
        Top = 32
        Width = 69
        Height = 14
        Caption = 'Cod Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inline FrameEdtPadrao1: TFrameEdtPadrao
        Left = 0
        Top = -1
        Width = 488
        Height = 28
        TabOrder = 0
        ExplicitTop = -1
        ExplicitHeight = 28
        inherited lblCod: TLabel
          Width = 93
          Caption = 'Cod SubGrupo:'
          ExplicitWidth = 93
        end
        inherited lblNome: TLabel
          Left = 204
          Top = 8
          Width = 65
          Caption = 'SubGrupo:'
          ExplicitLeft = 204
          ExplicitTop = 8
          ExplicitWidth = 65
        end
        inherited edtCod: TEdit
          Left = 106
          Width = 94
          ParentFont = False
          ExplicitLeft = 106
          ExplicitWidth = 94
        end
        inherited edtNome: TEdit
          Left = 272
          Top = 6
          Width = 181
          ParentFont = False
          ExplicitLeft = 272
          ExplicitTop = 6
          ExplicitWidth = 181
        end
      end
      object edtCodGrupo: TEdit
        Left = 106
        Top = 30
        Width = 94
        Height = 21
        TabOrder = 1
      end
      object edtNomeGrupo: TEdit
        Left = 272
        Top = 30
        Width = 181
        Height = 21
        TabOrder = 2
      end
      object pnlLimpar: TPanel
        Left = 464
        Top = 10
        Width = 71
        Height = 36
        BevelKind = bkFlat
        BevelOuter = bvNone
        Caption = 'Limpar'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        OnClick = pnlLimparClick
        OnMouseEnter = pnlLimparMouseEnter
        OnMouseLeave = pnlLimparMouseLeave
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 347
      Width = 598
      Height = 51
      Align = alBottom
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 353
      inline FrameBtnPadrao1: TFrameBtnPadrao
        Left = 97
        Top = -6
        Width = 416
        Height = 64
        TabOrder = 0
        ExplicitLeft = 97
        ExplicitTop = -6
        ExplicitWidth = 416
        inherited pnlAtualizar: TPanel
          OnClick = FrameBtnPadrao1pnlAtualizarClick
        end
        inherited pnlEditar: TPanel
          Left = 115
          OnClick = FrameBtnPadrao1pnlEditarClick
          ExplicitLeft = 115
        end
        inherited pnlSair: TPanel
          Left = 310
          OnClick = FrameBtnPadrao1pnlSairClick
          ExplicitLeft = 310
        end
      end
      object pnlRel: TPanel
        Left = 309
        Top = 5
        Width = 89
        Height = 41
        Caption = 'Relat'#243'rios'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = pnlRelClick
        OnMouseEnter = pnlLimparMouseEnter
        OnMouseLeave = pnlLimparMouseLeave
      end
    end
    object dbListagem: TDBGrid
      Left = 0
      Top = 57
      Width = 598
      Height = 290
      Align = alClient
      DataSource = DtsRelSubgrupo
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbListagemCellClick
      OnDblClick = dbListagemDblClick
      OnMouseEnter = pnlLimparMouseEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_SUBCLASSE'
          Title.Caption = 'CodSubGrupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_SUBCLASSE'
          Title.Caption = 'SubGrupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCLASSE_SUBCLASSE'
          Title.Caption = 'CodGrupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLASSE'
          Title.Caption = 'Grupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 234
          Visible = True
        end>
    end
  end
  object DtsRelSubgrupo: TDataSource
    DataSet = QryRelSubGrupo
    Left = 432
    Top = 128
  end
  object QryRelSubGrupo: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select s.cod_subclasse, s.nome_subclasse, s.codclasse_subclasse,' +
        ' c.nome_classe from subclasse s'
      'join classes c on c.cod_classe = s.codclasse_subclasse')
    Transaction = DM.TransRead
    Database = DM.DB
    SQL.Strings = (
      
        'select s.cod_subclasse, s.nome_subclasse, s.codclasse_subclasse,' +
        ' c.nome_classe from subclasse s'
      'join classes c on c.cod_classe = s.codclasse_subclasse')
    DefaultFormats.DisplayFormatTime = 'HH:MM'
    Left = 504
    Top = 128
    object QryRelSubGrupoCOD_SUBCLASSE: TFIBIntegerField
      FieldName = 'COD_SUBCLASSE'
    end
    object QryRelSubGrupoNOME_SUBCLASSE: TFIBStringField
      FieldName = 'NOME_SUBCLASSE'
      Size = 30
      EmptyStrToNull = True
    end
    object QryRelSubGrupoCODCLASSE_SUBCLASSE: TFIBIntegerField
      FieldName = 'CODCLASSE_SUBCLASSE'
    end
    object QryRelSubGrupoNOME_CLASSE: TFIBStringField
      FieldName = 'NOME_CLASSE'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object PopRel: TPopupMenu
    Left = 521
    Top = 354
    object Listagem1: TMenuItem
      Caption = 'Listagem'
      OnClick = Listagem1Click
    end
  end
  object ppDB: TppDBPipeline
    DataSource = DtsRelSubgrupo
    UserName = 'DB'
    Left = 64
    Top = 355
  end
  object ppRel: TppReport
    AutoStop = False
    DataPipeline = ppDB
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Users\ander\Documents\GitHub\Delphi\FibPlus\Win32\Debug\Relat' +
      'orios\Rel_ListagemSubGrupos.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 18
    Top = 355
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 190
        mmTop = 12695
        mmWidth = 197702
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CodSubGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 7938
        mmWidth = 29570
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SubGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 34350
        mmTop = 7938
        mmWidth = 54591
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Listagem SubGrupos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 265
        mmTop = 794
        mmWidth = 64827
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 156410
        mmTop = 794
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CodGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 91017
        mmTop = 7938
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 125413
        mmTop = 7938
        mmWidth = 54504
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'COD_SUBCLASSE'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4762
        mmLeft = 265
        mmTop = 265
        mmWidth = 29760
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'NOME_SUBCLASSE'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4763
        mmLeft = 36773
        mmTop = 265
        mmWidth = 52317
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CODCLASSE_SUBCLASSE'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4762
        mmLeft = 91017
        mmTop = 265
        mmWidth = 27296
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'NOME_CLASSE'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4763
        mmLeft = 126811
        mmTop = 265
        mmWidth = 67102
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

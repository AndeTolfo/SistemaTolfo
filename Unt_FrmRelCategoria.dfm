object FrmRelCategoria: TFrmRelCategoria
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio Categorias'
  ClientHeight = 374
  ClientWidth = 600
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
    Width = 600
    Height = 374
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 600
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 0
      inline FrameEdtPadrao: TFrameEdtPadrao
        Left = 0
        Top = 7
        Width = 488
        Height = 34
        TabOrder = 0
        ExplicitTop = 7
        inherited lblCod: TLabel
          Width = 91
          Caption = 'Cod Categoria:'
          ExplicitWidth = 91
        end
        inherited lblNome: TLabel
          Left = 220
          ExplicitLeft = 220
        end
        inherited edtCod: TEdit
          Left = 108
          ExplicitLeft = 108
        end
        inherited edtNome: TEdit
          Left = 264
          ExplicitLeft = 264
        end
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 312
      Width = 600
      Height = 62
      Align = alBottom
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 1
      inline FrameBtnPadrao: TFrameBtnPadrao
        Left = 121
        Top = 5
        Width = 440
        Height = 51
        TabOrder = 0
        ExplicitLeft = 121
        ExplicitTop = 5
        ExplicitWidth = 440
        ExplicitHeight = 51
        inherited pnlAtualizar: TPanel
          Left = 3
          Top = 8
          OnClick = FrameBtnPadrao1pnlAtualizarClick
          ExplicitLeft = 3
          ExplicitTop = 8
        end
        inherited pnlEditar: TPanel
          Left = 98
          Top = 8
          OnClick = FrameBtnPadraopnlEditarClick
          ExplicitLeft = 98
          ExplicitTop = 8
        end
        inherited pnlSair: TPanel
          Left = 291
          Top = 8
          OnClick = FrameBtnPadrao1pnlSairClick
          ExplicitLeft = 291
          ExplicitTop = 8
        end
      end
      object pnlRel: TPanel
        Left = 316
        Top = 13
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
        OnMouseEnter = pnlRelMouseEnter
        OnMouseLeave = pnlRelMouseLeave
      end
    end
    object dblistagem: TDBGrid
      Left = 0
      Top = 49
      Width = 600
      Height = 263
      Align = alClient
      DataSource = DtsCategoria
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dblistagemCellClick
      OnDblClick = dblistagemDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_FORMULA'
          Title.Caption = 'CodFormula'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FORMULA'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTUPDATE_FORMULA'
          Title.Caption = 'Data Altera'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 130
          Visible = True
        end>
    end
  end
  object DtsCategoria: TDataSource
    DataSet = QryRelCategoria
    Left = 480
    Top = 8
  end
  object QryRelCategoria: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from formulas')
    Transaction = DM.TransRead
    Database = DM.DB
    SQL.Strings = (
      'select * from formulas')
    DefaultFormats.DisplayFormatTime = 'HH:MM'
    Left = 536
    Top = 8
    object QryRelCategoriaCOD_FORMULA: TFIBIntegerField
      FieldName = 'COD_FORMULA'
    end
    object QryRelCategoriaNOME_FORMULA: TFIBStringField
      FieldName = 'NOME_FORMULA'
      Size = 60
      EmptyStrToNull = True
    end
    object QryRelCategoriaDTUPDATE_FORMULA: TFIBDateTimeField
      FieldName = 'DTUPDATE_FORMULA'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
  end
  object PopRel: TPopupMenu
    Left = 521
    Top = 322
    object Listagem1: TMenuItem
      Caption = 'Listagem'
      OnClick = Listagem1Click
    end
  end
  object ppDB: TppDBPipeline
    DataSource = DtsCategoria
    UserName = 'DB'
    Left = 16
    Top = 320
  end
  object ppRel: TppReport
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
      'orios\Rel_ListagemCategoria.rtm'
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
    Left = 72
    Top = 320
    Version = '22.0'
    mmColumnWidth = 0
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
        Caption = 'CodCategoria'
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
        Caption = 'Categoria'
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
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data Altera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 94986
        mmTop = 7938
        mmWidth = 46567
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Listagem Categorias'
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
        mmWidth = 52885
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
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'COD_FORMULA'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4762
        mmLeft = 265
        mmTop = 794
        mmWidth = 27296
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'NOME_FORMULA'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4763
        mmLeft = 34350
        mmTop = 794
        mmWidth = 54591
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'DTUPDATE_FORMULA'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4763
        mmLeft = 94986
        mmTop = 794
        mmWidth = 58208
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

object FrmPesquisa: TFrmPesquisa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa'
  ClientHeight = 396
  ClientWidth = 527
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 396
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 527
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = clAppWorkSpace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      inline FrameEdtPadrao1: TFrameEdtPadrao
        Left = 0
        Top = 9
        Width = 488
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 9
        ExplicitHeight = 26
        inherited lblCod: TLabel
          Top = 6
          ExplicitTop = 6
        end
        inherited lblNome: TLabel
          Left = 154
          Top = 6
          ExplicitLeft = 154
          ExplicitTop = 6
        end
        inherited edtCod: TEdit
          Left = 42
          Top = 3
          ParentFont = False
          ExplicitLeft = 42
          ExplicitTop = 3
        end
        inherited edtNome: TEdit
          Left = 196
          Top = 3
          ParentFont = False
          ExplicitLeft = 196
          ExplicitTop = 3
        end
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 336
      Width = 527
      Height = 60
      Align = alBottom
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 1
      inline FrameBtnPadrao1: TFrameBtnPadrao
        Left = 92
        Top = -2
        Width = 331
        Height = 53
        TabOrder = 0
        ExplicitLeft = 92
        ExplicitTop = -2
        ExplicitHeight = 53
        inherited pnlAtualizar: TPanel
          OnClick = FrameBtnPadrao1pnlAtualizarClick
          OnMouseLeave = FrameBtnPadrao1pnlAtualizarMouseLeave
        end
        inherited pnlEditar: TPanel
          Caption = 'Relat'#243'rio'
        end
        inherited pnlSair: TPanel
          OnClick = FrameBtnPadrao1pnlSairClick
        end
      end
    end
    object dbListagem: TDBGrid
      Left = 0
      Top = 49
      Width = 527
      Height = 287
      Align = alClient
      DataSource = DtsPesquisa
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbListagemDblClick
    end
  end
  object QryPesquisa: TpFIBDataSet
    Transaction = DM.TransRead
    Database = DM.DB
    DefaultFormats.DisplayFormatTime = 'HH:MM'
    Left = 432
    Top = 72
  end
  object DtsPesquisa: TDataSource
    DataSet = QryPesquisa
    Left = 368
    Top = 72
  end
end

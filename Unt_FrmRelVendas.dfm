object FrmRelVendas: TFrmRelVendas
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Vendas'
  ClientHeight = 474
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 474
    Align = alClient
    TabOrder = 0
    object pnlBottom: TPanel
      Left = 1
      Top = 411
      Width = 786
      Height = 62
      Align = alBottom
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 0
      inline FrameBtnPadrao1: TFrameBtnPadrao
        Left = 103
        Top = 2
        Width = 331
        Height = 57
        TabOrder = 0
        ExplicitLeft = 103
        ExplicitTop = 2
        ExplicitHeight = 57
        inherited pnlAtualizar: TPanel
          OnClick = FrameBtnPadrao1pnlAtualizarClick
        end
        inherited pnlEditar: TPanel
          Left = 118
          Caption = 'Relat'#243'rios'
          OnClick = FrameBtnPadrao1pnlEditarClick
          ExplicitLeft = 118
        end
        inherited pnlSair: TPanel
          Left = 224
          OnClick = FrameBtnPadrao1pnlSairClick
          ExplicitLeft = 224
        end
      end
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 786
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 2
        Top = 9
        Width = 40
        Height = 14
        Caption = 'DT Ini:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 0
        Top = 33
        Width = 44
        Height = 14
        Caption = 'DT Fim:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCod: TLabel
        Left = 150
        Top = 9
        Width = 70
        Height = 14
        Caption = 'Cod Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 150
        Top = 35
        Width = 74
        Height = 14
        Caption = 'Cod Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 366
        Top = 9
        Width = 67
        Height = 14
        Caption = 'Cod Condi:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 361
        Top = 35
        Width = 73
        Height = 14
        Caption = 'Cod Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnCondi: TSpeedButton
        Left = 548
        Top = 4
        Width = 25
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E6E6E6CBCBCBA5A5
          A57D7D7D797979F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
          F7F7E1E1E1CACACAB7B7B7A8A8A8A0A0A03030302D2D2D9D9D9EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9F8F8F8FBFBFBF3F3F34F4E
          4E2D2C2D797979F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF3F3F35150502D2C2D797979F3F3F3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F45150502D2C2D7979
          79F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9D98964A4848797979F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D5D5D5979695969594969694939392BBBBBABCB9B8908A88B1ADACF4F4F4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBDA6A6A3C7C7C5C5C5C4C5C4C3C6C6C5B6
          B6B3787574C7C5C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5999997
          B9B9B7B4B4B2B2B2AFB2B2AFB4B4B1B7B7B4ADADAABDBDBCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA6A6A6A9A9A6A7A7A4A7A7A4A7A7A4A7A7A4A7A8A4A8
          A8A4A9A9A691918FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9292919F9F9C
          9FA09DA0A09DA0A09DA0A09DA0A19EA1A19EA1A19E848583FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF939492A0A19EA3A3A1A4A5A2A5A5A3A5A6A3A5A6A3A5
          A5A3A5A5A2838482FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0ABABA9
          B9B9B8B9B9B8B9BAB8B9BAB8B9BAB8B9BAB8B6B6B5929291FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F4F4868786CCCDCCD3D3D3D3D4D3D3D4D3D3D4D3D3
          D3D2989998D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC
          898A89CCCDCCEEEEEEF1F2F2D9D9D9999A99BDBDBDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4B1B1B1959595929392A7A7A7E4
          E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnCondiClick
      end
      object btnCidade: TSpeedButton
        Left = 548
        Top = 30
        Width = 25
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E6E6E6CBCBCBA5A5
          A57D7D7D797979F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
          F7F7E1E1E1CACACAB7B7B7A8A8A8A0A0A03030302D2D2D9D9D9EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9F8F8F8FBFBFBF3F3F34F4E
          4E2D2C2D797979F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF3F3F35150502D2C2D797979F3F3F3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F45150502D2C2D7979
          79F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9D98964A4848797979F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D5D5D5979695969594969694939392BBBBBABCB9B8908A88B1ADACF4F4F4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBDA6A6A3C7C7C5C5C5C4C5C4C3C6C6C5B6
          B6B3787574C7C5C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5999997
          B9B9B7B4B4B2B2B2AFB2B2AFB4B4B1B7B7B4ADADAABDBDBCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA6A6A6A9A9A6A7A7A4A7A7A4A7A7A4A7A7A4A7A8A4A8
          A8A4A9A9A691918FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9292919F9F9C
          9FA09DA0A09DA0A09DA0A09DA0A19EA1A19EA1A19E848583FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF939492A0A19EA3A3A1A4A5A2A5A5A3A5A6A3A5A6A3A5
          A5A3A5A5A2838482FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0ABABA9
          B9B9B8B9B9B8B9BAB8B9BAB8B9BAB8B9BAB8B6B6B5929291FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F4F4868786CCCDCCD3D3D3D3D4D3D3D4D3D3D4D3D3
          D3D2989998D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC
          898A89CCCDCCEEEEEEF1F2F2D9D9D9999A99BDBDBDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4B1B1B1959595929392A7A7A7E4
          E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnCidadeClick
      end
      object btnCliente: TSpeedButton
        Left = 334
        Top = 30
        Width = 25
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E6E6E6CBCBCBA5A5
          A57D7D7D797979F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
          F7F7E1E1E1CACACAB7B7B7A8A8A8A0A0A03030302D2D2D9D9D9EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9F8F8F8FBFBFBF3F3F34F4E
          4E2D2C2D797979F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF3F3F35150502D2C2D797979F3F3F3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F45150502D2C2D7979
          79F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9D98964A4848797979F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D5D5D5979695969594969694939392BBBBBABCB9B8908A88B1ADACF4F4F4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBDA6A6A3C7C7C5C5C5C4C5C4C3C6C6C5B6
          B6B3787574C7C5C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5999997
          B9B9B7B4B4B2B2B2AFB2B2AFB4B4B1B7B7B4ADADAABDBDBCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA6A6A6A9A9A6A7A7A4A7A7A4A7A7A4A7A7A4A7A8A4A8
          A8A4A9A9A691918FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9292919F9F9C
          9FA09DA0A09DA0A09DA0A09DA0A19EA1A19EA1A19E848583FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF939492A0A19EA3A3A1A4A5A2A5A5A3A5A6A3A5A6A3A5
          A5A3A5A5A2838482FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0ABABA9
          B9B9B8B9B9B8B9BAB8B9BAB8B9BAB8B9BAB8B6B6B5929291FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F4F4868786CCCDCCD3D3D3D3D4D3D3D4D3D3D4D3D3
          D3D2989998D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC
          898A89CCCDCCEEEEEEF1F2F2D9D9D9999A99BDBDBDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4B1B1B1959595929392A7A7A7E4
          E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnClienteClick
      end
      object dtIni: TDateTimePicker
        Left = 44
        Top = 5
        Width = 97
        Height = 21
        Date = 45166.000000000000000000
        Time = 0.587541909721039700
        TabOrder = 0
      end
      object DtFim: TDateTimePicker
        Left = 44
        Top = 31
        Width = 97
        Height = 21
        Date = 45166.000000000000000000
        Time = 0.587541909721039700
        TabOrder = 1
      end
      object edtCodVenda: TEdit
        Left = 226
        Top = 5
        Width = 108
        Height = 21
        TabOrder = 2
      end
      object edtCodCliente: TEdit
        Left = 226
        Top = 31
        Width = 108
        Height = 21
        TabOrder = 3
      end
      object edtCodCond: TEdit
        Left = 438
        Top = 5
        Width = 108
        Height = 21
        TabOrder = 4
      end
      object edtCodCidade: TEdit
        Left = 438
        Top = 31
        Width = 108
        Height = 21
        TabOrder = 5
      end
    end
    object dblistagem: TDBGrid
      Left = 1
      Top = 57
      Width = 786
      Height = 354
      Align = alClient
      DataSource = DtsRelVendas
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_VENDA'
          Title.Caption = 'CodVenda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENDA'
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODVENDEDOR_VENDA'
          Title.Caption = 'CodVendedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCLIENTE_VENDA'
          Title.Caption = 'CodCliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLCOMISSAO_VENDA'
          Title.Caption = 'Comiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODFPG_VENDA'
          Title.Caption = 'CodCondi'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS_VENDA'
          Title.Caption = 'Observa'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCONTA_VENDA'
          Title.Caption = 'CodConta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTAIMPRESSA_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'STATUS_VENDA'
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCONTACOMISSAO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TOTAL_VENDA'
          Title.Caption = 'TotalVenda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA_VENDA'
          Title.Caption = 'HoraVenda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCONVENIO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIPOOPERACAO'
          Title.Caption = 'TipoOpera'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCUPOM_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCFPGTO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCCLIENTE_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODSERVICO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IDENTIFICACAO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODAUTORIZACAO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TOTALDEVOLVIDO_VENDA'
          Title.Caption = 'TotalDevolvido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPRADOR_VENDA'
          Title.Caption = 'Comprador'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLCOMISDEV_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODNOTAF_VENDA'
          Title.Caption = 'CodNF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KM_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FROTA_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IDECF_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODREFVENDA_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SITUACAOPED_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTENTREGA_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODINDICACAO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODTERMINAL_VENDA'
          Title.Caption = 'CodPC'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODOPERADOR_VENDA'
          Title.Caption = 'CodOperador'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODOPERCONFERIU_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CCFCUPOM_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DATACUPOM_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ_VENDA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HEVENDANORMAL_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ENQUADRAMENTOSERVICO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODNFSE_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIPOBENEF_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'OBS2_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODNFCE_VENDA'
          Title.Caption = 'CodNFCe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCARGA_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODAUXNFE_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ORIGEM_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TROCO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODPEDPALM_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODPEDCLI_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'AJUSTOU_ESTOQUE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'INDPRES_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODENTREGA_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'HEVENDAPDV_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CALCPARTICMSPORDENTRO_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODMOTIVOSNGPC_VENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODPREVENDAS_VENDA'
          Visible = False
        end>
    end
  end
  object QryRelVendas: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from vendas')
    Transaction = DM.TransRead
    Database = DM.DB
    SQL.Strings = (
      'select * from vendas')
    DefaultFormats.DisplayFormatTime = 'HH:MM'
    Left = 689
    Top = 105
    object QryRelVendasCOD_VENDA: TFIBIntegerField
      FieldName = 'COD_VENDA'
    end
    object QryRelVendasDATA_VENDA: TFIBDateField
      FieldName = 'DATA_VENDA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryRelVendasCODVENDEDOR_VENDA: TFIBSmallIntField
      FieldName = 'CODVENDEDOR_VENDA'
    end
    object QryRelVendasCODCLIENTE_VENDA: TFIBIntegerField
      FieldName = 'CODCLIENTE_VENDA'
    end
    object QryRelVendasVLCOMISSAO_VENDA: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'VLCOMISSAO_VENDA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object QryRelVendasCODFPG_VENDA: TFIBSmallIntField
      FieldName = 'CODFPG_VENDA'
    end
    object QryRelVendasOBS_VENDA: TFIBStringField
      FieldName = 'OBS_VENDA'
      Size = 300
      EmptyStrToNull = True
    end
    object QryRelVendasCODCONTA_VENDA: TFIBIntegerField
      FieldName = 'CODCONTA_VENDA'
    end
    object QryRelVendasNOTAIMPRESSA_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'NOTAIMPRESSA_VENDA'
    end
    object QryRelVendasSTATUS_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'STATUS_VENDA'
    end
    object QryRelVendasCODCONTACOMISSAO_VENDA: TFIBIntegerField
      FieldName = 'CODCONTACOMISSAO_VENDA'
    end
    object QryRelVendasTOTAL_VENDA: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'TOTAL_VENDA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object QryRelVendasHORA_VENDA: TFIBTimeField
      DefaultExpression = 'NOW'
      FieldName = 'HORA_VENDA'
      DisplayFormat = 'HH:MM'
    end
    object QryRelVendasCODCONVENIO_VENDA: TFIBSmallIntField
      FieldName = 'CODCONVENIO_VENDA'
    end
    object QryRelVendasTIPOOPERACAO: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'TIPOOPERACAO'
    end
    object QryRelVendasCODCUPOM_VENDA: TFIBIntegerField
      FieldName = 'CODCUPOM_VENDA'
    end
    object QryRelVendasDESCFPGTO_VENDA: TFIBFloatField
      FieldName = 'DESCFPGTO_VENDA'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
    end
    object QryRelVendasDESCCLIENTE_VENDA: TFIBFloatField
      FieldName = 'DESCCLIENTE_VENDA'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
    end
    object QryRelVendasCODSERVICO_VENDA: TFIBIntegerField
      FieldName = 'CODSERVICO_VENDA'
    end
    object QryRelVendasIDENTIFICACAO_VENDA: TFIBStringField
      FieldName = 'IDENTIFICACAO_VENDA'
      Size = 30
      EmptyStrToNull = True
    end
    object QryRelVendasCODAUTORIZACAO_VENDA: TFIBSmallIntField
      FieldName = 'CODAUTORIZACAO_VENDA'
    end
    object QryRelVendasTOTALDEVOLVIDO_VENDA: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'TOTALDEVOLVIDO_VENDA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object QryRelVendasCOMPRADOR_VENDA: TFIBStringField
      FieldName = 'COMPRADOR_VENDA'
      Size = 60
      EmptyStrToNull = True
    end
    object QryRelVendasVLCOMISDEV_VENDA: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'VLCOMISDEV_VENDA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object QryRelVendasCODNOTAF_VENDA: TFIBIntegerField
      FieldName = 'CODNOTAF_VENDA'
    end
    object QryRelVendasKM_VENDA: TFIBStringField
      FieldName = 'KM_VENDA'
      Size = 30
      EmptyStrToNull = True
    end
    object QryRelVendasFROTA_VENDA: TFIBStringField
      FieldName = 'FROTA_VENDA'
      Size = 100
      EmptyStrToNull = True
    end
    object QryRelVendasIDECF_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'IDECF_VENDA'
    end
    object QryRelVendasCODREFVENDA_VENDA: TFIBStringField
      FieldName = 'CODREFVENDA_VENDA'
      EmptyStrToNull = True
    end
    object QryRelVendasSITUACAOPED_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'SITUACAOPED_VENDA'
    end
    object QryRelVendasDTENTREGA_VENDA: TFIBDateTimeField
      FieldName = 'DTENTREGA_VENDA'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object QryRelVendasCODINDICACAO_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'CODINDICACAO_VENDA'
    end
    object QryRelVendasCODTERMINAL_VENDA: TFIBSmallIntField
      FieldName = 'CODTERMINAL_VENDA'
    end
    object QryRelVendasCODOPERADOR_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'CODOPERADOR_VENDA'
    end
    object QryRelVendasCODOPERCONFERIU_VENDA: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'CODOPERCONFERIU_VENDA'
    end
    object QryRelVendasCCFCUPOM_VENDA: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'CCFCUPOM_VENDA'
    end
    object QryRelVendasDATACUPOM_VENDA: TFIBDateTimeField
      FieldName = 'DATACUPOM_VENDA'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object QryRelVendasCPFCNPJ_VENDA: TFIBStringField
      FieldName = 'CPFCNPJ_VENDA'
      Size = 14
      EmptyStrToNull = True
    end
    object QryRelVendasHEVENDANORMAL_VENDA: TFIBIntegerField
      FieldName = 'HEVENDANORMAL_VENDA'
    end
    object QryRelVendasENQUADRAMENTOSERVICO_VENDA: TFIBStringField
      FieldName = 'ENQUADRAMENTOSERVICO_VENDA'
      Size = 1
      EmptyStrToNull = True
    end
    object QryRelVendasCODNFSE_VENDA: TFIBIntegerField
      FieldName = 'CODNFSE_VENDA'
    end
    object QryRelVendasTIPOBENEF_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'TIPOBENEF_VENDA'
    end
    object QryRelVendasOBS2_VENDA: TFIBMemoField
      FieldName = 'OBS2_VENDA'
      BlobType = ftMemo
      Size = 8
    end
    object QryRelVendasCODNFCE_VENDA: TFIBIntegerField
      FieldName = 'CODNFCE_VENDA'
    end
    object QryRelVendasCODCARGA_VENDA: TFIBStringField
      FieldName = 'CODCARGA_VENDA'
      Size = 40
      EmptyStrToNull = True
    end
    object QryRelVendasCODAUXNFE_VENDA: TFIBIntegerField
      FieldName = 'CODAUXNFE_VENDA'
    end
    object QryRelVendasORIGEM_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ORIGEM_VENDA'
    end
    object QryRelVendasTROCO_VENDA: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'TROCO_VENDA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object QryRelVendasCODPEDPALM_VENDA: TFIBStringField
      FieldName = 'CODPEDPALM_VENDA'
      Size = 30
      EmptyStrToNull = True
    end
    object QryRelVendasCODPEDCLI_VENDA: TFIBStringField
      FieldName = 'CODPEDCLI_VENDA'
      Size = 15
      EmptyStrToNull = True
    end
    object QryRelVendasAJUSTOU_ESTOQUE: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'AJUSTOU_ESTOQUE'
      Size = 1
      EmptyStrToNull = True
    end
    object QryRelVendasINDPRES_VENDA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'INDPRES_VENDA'
    end
    object QryRelVendasCODENTREGA_VENDA: TFIBIntegerField
      FieldName = 'CODENTREGA_VENDA'
    end
    object QryRelVendasHEVENDAPDV_VENDA: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'HEVENDAPDV_VENDA'
      Size = 1
      EmptyStrToNull = True
    end
    object QryRelVendasCALCPARTICMSPORDENTRO_VENDA: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'CALCPARTICMSPORDENTRO_VENDA'
      Size = 1
      EmptyStrToNull = True
    end
    object QryRelVendasCODMOTIVOSNGPC_VENDA: TFIBSmallIntField
      FieldName = 'CODMOTIVOSNGPC_VENDA'
    end
    object QryRelVendasCODPREVENDAS_VENDA: TFIBStringField
      FieldName = 'CODPREVENDAS_VENDA'
      Size = 500
      EmptyStrToNull = True
    end
  end
  object DtsRelVendas: TDataSource
    DataSet = QryRelVendas
    Left = 633
    Top = 105
  end
  object PopRel: TPopupMenu
    Left = 489
    Top = 419
    object Listagem1: TMenuItem
      Caption = 'Listagem'
      OnClick = Listagem1Click
    end
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
      'orios\Rel_ListagemVendas.rtm'
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
    Left = 585
    Top = 419
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 4349
        mmLeft = 190
        mmTop = 13666
        mmWidth = 197893
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CodVenda'
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
        mmTop = 8603
        mmWidth = 22178
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DataVenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 23259
        mmTop = 8644
        mmWidth = 23125
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CodCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 46917
        mmTop = 8731
        mmWidth = 22367
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Listagem de Vendas'
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
        mmTop = 1852
        mmWidth = 50536
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 157427
        mmTop = 529
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Total R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 69783
        mmTop = 8731
        mmWidth = 21799
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CodNFCe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 91743
        mmTop = 8731
        mmWidth = 21988
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'COD_VENDA'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4762
        mmLeft = 2275
        mmTop = 265
        mmWidth = 19145
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'DATA_VENDA'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4763
        mmLeft = 24090
        mmTop = 264
        mmWidth = 23125
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CODCLIENTE_VENDA'
        DataPipeline = ppDB
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4763
        mmLeft = 51667
        mmTop = 190
        mmWidth = 17060
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'TOTAL_VENDA'
        DataPipeline = ppDB
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB'
        mmHeight = 4763
        mmLeft = 69783
        mmTop = 190
        mmWidth = 21799
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CODNFCE_VENDA'
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
        mmLeft = 91553
        mmTop = 265
        mmWidth = 21988
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
  object ppDB: TppDBPipeline
    DataSource = DtsRelVendas
    UserName = 'DB'
    Left = 657
    Top = 419
  end
end

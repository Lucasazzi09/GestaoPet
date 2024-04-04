inherited ViewProdutos: TViewProdutos
  Caption = 'Produtos'
  PixelsPerInch = 96
  TextHeight = 15
  inherited panTopo: TPanel
    inherited lblTituloTela: TLabel
      Width = 873
      Height = 41
      Caption = 'Produtos'
      ExplicitWidth = 873
    end
    inherited panFechar: TPanel
      inherited btnSair: TSpeedButton
        OnClick = btnSairClick
      end
    end
  end
  inherited panRodape: TPanel
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
    end
  end
  inherited panFundo: TPanel
    inherited cardPanel_Listas: TCardPanel
      inherited card_cadastro: TCard
        ExplicitTop = 6
        object lblCodProd: TLabel
          Left = 72
          Top = 56
          Width = 45
          Height = 15
          Caption = 'C'#211'DIGO'
          FocusControl = edtCodProd
        end
        object lblNomeProd: TLabel
          Left = 216
          Top = 56
          Width = 91
          Height = 15
          Caption = 'NOME PRODUTO'
          FocusControl = edtNomeProd
        end
        object lblDescricaoProd: TLabel
          Left = 72
          Top = 136
          Width = 63
          Height = 15
          Caption = 'DESCRI'#199#195'O'
          FocusControl = edtDescricao
        end
        object lblCodBarra: TLabel
          Left = 632
          Top = 56
          Width = 108
          Height = 15
          Caption = 'C'#211'DIGO DE BARRAS'
          FocusControl = edtCodBarra
        end
        object lblGrupo: TLabel
          Left = 488
          Top = 136
          Width = 39
          Height = 15
          Caption = 'GRUPO'
          FocusControl = edtGrupoProd
        end
        object lblSubgrupo: TLabel
          Left = 639
          Top = 136
          Width = 60
          Height = 15
          Caption = 'SUBGRUPO'
          FocusControl = edtSubgrupoProd
        end
        object lblTribProd: TLabel
          Left = 72
          Top = 219
          Width = 69
          Height = 15
          Caption = 'TRIBUTA'#199#195'O'
        end
        object lblNcmProd: TLabel
          Left = 250
          Top = 219
          Width = 28
          Height = 15
          Caption = 'NCM'
        end
        object edtCodProd: TDBEdit
          Left = 72
          Top = 77
          Width = 89
          Height = 23
          DataField = 'COD_PROD'
          DataSource = dsDados
          Enabled = False
          TabOrder = 0
        end
        object edtNomeProd: TDBEdit
          Left = 225
          Top = 77
          Width = 401
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NOME_PROD'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtDescricao: TDBEdit
          Left = 72
          Top = 157
          Width = 369
          Height = 23
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtCodBarra: TDBEdit
          Left = 632
          Top = 77
          Width = 153
          Height = 23
          CharCase = ecUpperCase
          DataField = 'COD_BARRA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtGrupoProd: TDBEdit
          Left = 488
          Top = 157
          Width = 129
          Height = 23
          CharCase = ecUpperCase
          DataField = 'GRUPO'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtSubgrupoProd: TDBEdit
          Left = 639
          Top = 157
          Width = 146
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SUBGRUPO'
          DataSource = dsDados
          TabOrder = 5
        end
        object LComboBoxTribut: TDBLookupComboBox
          Left = 72
          Top = 240
          Width = 145
          Height = 23
          KeyField = 'COD_SIT_TRIB'
          ListField = 'DESCRICAO'
          TabOrder = 6
        end
        object LComboBoxNcm: TDBLookupComboBox
          Left = 250
          Top = 240
          Width = 145
          Height = 23
          KeyField = 'NUM_NCM'
          ListField = 'DESCRICAO'
          TabOrder = 7
        end
      end
      inherited card_pesquisa: TCard
        inherited DBG_Dados: TDBGrid
          Top = 108
          Height = 221
          Align = alNone
          BorderStyle = bsSingle
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_PROD'
              Title.Caption = 'C'#211'DIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_PROD'
              Title.Caption = 'NOME PRODUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_BARRA'
              Title.Caption = 'C'#211'DIGO BARRAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRUPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBGRUPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SIT_TRIBUTARIA'
              Title.Caption = 'TRIBUTA'#199#195'O'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              Visible = True
            end>
        end
        object panDetalheProd: TPanel
          Left = 0
          Top = 337
          Width = 994
          Height = 127
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object DBG_Detalhe: TDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 127
            Align = alBottom
            DataSource = dsDados
            FixedColor = clHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'CUSTO'
                Title.Color = clHotLight
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECO_VENDA'
                Title.Caption = 'PRE'#199'O DE VENDA'
                Width = 127
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTOQUE'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DMcadastro.QryProdutos
    Left = 723
    Top = 249
  end
end

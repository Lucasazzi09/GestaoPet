inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  ExplicitLeft = 2
  PixelsPerInch = 96
  TextHeight = 15
  inherited panTopo: TPanel
    inherited lblTituloTela: TLabel
      Caption = 'Fornecedores'
      ExplicitWidth = 115
    end
    inherited panIcone: TPanel
      inherited ImgIcone: TImage
        Center = True
      end
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
      ExplicitLeft = 570
      ExplicitTop = 3
      ExplicitHeight = 45
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
      ActiveCard = card_cadastro
      inherited card_cadastro: TCard
        ExplicitLeft = 16
        ExplicitTop = -24
        object lblCodForn: TLabel
          Left = 61
          Top = 144
          Width = 45
          Height = 15
          Caption = 'C'#211'DIGO'
          FocusControl = edtCodForn
        end
        object lblNomeForn: TLabel
          Left = 180
          Top = 144
          Width = 133
          Height = 15
          Caption = 'NOME DO FORNECEDOR'
          FocusControl = edtNomeForn
        end
        object lblCnpj: TLabel
          Left = 61
          Top = 237
          Width = 27
          Height = 15
          Caption = 'CNPJ'
          FocusControl = edtCnpj
        end
        object lblTelefone: TLabel
          Left = 255
          Top = 237
          Width = 54
          Height = 15
          Caption = 'TELEFONE'
          FocusControl = edtTelefone
        end
        object panTituloCadForn: TPanel
          Left = 0
          Top = 0
          Width = 994
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Color = 15854050
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            Left = 0
            Top = 6
            Width = 241
            Height = 30
            Caption = 'Cadastro de Fornecedores'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = 11842740
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
        end
        object edtCodForn: TDBEdit
          Left = 61
          Top = 165
          Width = 80
          Height = 23
          CharCase = ecUpperCase
          DataField = 'COD_FORN'
          DataSource = dsDados
          Enabled = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 1
        end
        object edtNomeForn: TDBEdit
          Left = 180
          Top = 165
          Width = 559
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NOME_FORN'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtCnpj: TDBEdit
          Left = 61
          Top = 258
          Width = 164
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtTelefone: TDBEdit
          Left = 255
          Top = 258
          Width = 262
          Height = 23
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = dsDados
          TabOrder = 4
        end
      end
      inherited card_pesquisa: TCard
        inherited DBG_Dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_FORN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_FORN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CEP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDERECO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIRRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO'
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DMcadastro.QryFornecedores
    Left = 691
    Top = 49
  end
end

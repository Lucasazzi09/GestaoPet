inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  ExplicitLeft = 2
  PixelsPerInch = 96
  TextHeight = 15
  inherited panTopo: TPanel
    inherited lblTituloTela: TLabel
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
    inherited panIcone: TPanel
      inherited ImgIcone: TImage
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Center = True
        ExplicitLeft = 0
        ExplicitWidth = 35
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
      ExplicitLeft = 564
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
        ParentCtl3D = False
        object lblCodCli: TLabel
          Left = 61
          Top = 144
          Width = 47
          Height = 15
          Caption = 'COD_CLI'
          FocusControl = edtCodCli
        end
        object lblNomeCli: TLabel
          Left = 180
          Top = 144
          Width = 57
          Height = 15
          Caption = 'NOME_CLI'
          FocusControl = edtNomeCli
        end
        object lblCpf_Cnpj: TLabel
          Left = 280
          Top = 253
          Width = 53
          Height = 15
          Caption = 'CPF/CNPJ'
          FocusControl = edtCpf_Cnpj
        end
        object lblTelefone: TLabel
          Left = 487
          Top = 253
          Width = 54
          Height = 15
          Caption = 'TELEFONE'
          FocusControl = edtTelefone
        end
        object panTituloCadCliente: TPanel
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
            Width = 190
            Height = 30
            Caption = 'Cadastro de Clientes'
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
        object edtCodCli: TDBEdit
          Left = 61
          Top = 165
          Width = 80
          Height = 23
          CharCase = ecUpperCase
          DataField = 'COD_CLI'
          DataSource = dsDados
          Enabled = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 1
        end
        object edtNomeCli: TDBEdit
          Left = 180
          Top = 165
          Width = 559
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NOME_CLI'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtCpf_Cnpj: TDBEdit
          Left = 280
          Top = 274
          Width = 164
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CPF/CNPJ'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtTelefone: TDBEdit
          Left = 487
          Top = 274
          Width = 252
          Height = 23
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = dsDados
          TabOrder = 4
        end
        object rgTipoCliente: TRadioGroup
          Left = 52
          Top = 226
          Width = 185
          Height = 71
          Caption = 'TIPO CLIENTE'
          Columns = 2
          Items.Strings = (
            'F'#237'sico'
            'jur'#237'dico')
          TabOrder = 5
        end
      end
      inherited card_pesquisa: TCard
        inherited panTituloPesquisa: TPanel
          inherited caixaPesquisa: TSearchBox
            Color = clWhite
            TextHint = 'Digite aqui a sua pesquisa'
          end
        end
        inherited DBG_Dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_CLI'
              Title.Caption = 'C'#211'DIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLI'
              Title.Caption = 'NOME DO CLIENTE'
              Width = 178
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF/CNPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_CLI'
              Title.Caption = 'TIPO CLIENTE'
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
              Title.Caption = 'ENDERE'#199'O'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIRRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Caption = 'N'#218'MERO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACAO'
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DMcadastro.QryClientes
    Left = 867
    Top = 73
  end
end

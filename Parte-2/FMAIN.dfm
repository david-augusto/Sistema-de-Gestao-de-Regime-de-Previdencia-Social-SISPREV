object FMAIN_: TFMAIN_
  Left = 192
  Top = 124
  Width = 696
  Height = 375
  Caption = 'Sistema de Gest'#227'o de Regime de Previd'#234'ncia Social'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 24
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object Cadastro1: TMenuItem
        Caption = '&Cadastro'
        object Usurio1: TMenuItem
          Caption = '&Usu'#225'rio'
          OnClick = Usurio1Click
        end
        object Gerente1: TMenuItem
          Caption = '&Gerente'
          OnClick = Gerente1Click
        end
        object Segurado1: TMenuItem
          Caption = '&Segurado'
          OnClick = Segurado1Click
        end
        object Pensionista1: TMenuItem
          Caption = '&Pensionista'
          OnClick = Pensionista1Click
        end
        object Excluido1: TMenuItem
          Caption = '&Excluido'
          OnClick = Excluido1Click
        end
        object RepresentanteLegal1: TMenuItem
          Caption = '&RepresentanteLegal'
          OnClick = RepresentanteLegal1Click
        end
        object Orgo1: TMenuItem
          Caption = '&Org'#227'o'
          OnClick = Orgo1Click
        end
        object FontePagadora1: TMenuItem
          Caption = '&FontePagadora'
          OnClick = FontePagadora1Click
        end
        object Exsegurado1: TMenuItem
          Caption = 'E&xSegurado'
          OnClick = Exsegurado1Click
        end
        object Obito1: TMenuItem
          Caption = '&Obito'
          OnClick = Obito1Click
        end
      end
      object Endereo1: TMenuItem
        Caption = '&Endere'#231'o'
        object Estado1: TMenuItem
          Caption = 'E&stado'
          OnClick = Estado1Click
        end
        object Cidade1: TMenuItem
          Caption = '&Cidade'
          OnClick = Cidade1Click
        end
        object Bairro1: TMenuItem
          Caption = '&Bairro'
          OnClick = Bairro1Click
        end
        object ipoLogradouro1: TMenuItem
          Caption = '&TipoLogradouro'
          OnClick = ipoLogradouro1Click
        end
        object Logradouro1: TMenuItem
          Caption = '&Logradouro'
          OnClick = Logradouro1Click
        end
      end
      object Folha1: TMenuItem
        Caption = '&FolhaPagamento'
        object FolhaPagamento1: TMenuItem
          Caption = '&FolhaPagamento'
          OnClick = FolhaPagamento1Click
        end
        object EntidadeFolha1: TMenuItem
          Caption = 'E&ntidade_Folha'
          OnClick = EntidadeFolha1Click
        end
        object EventoEntFol1: TMenuItem
          Caption = '&Evento_Ent_Fol'
          OnClick = EventoEntFol1Click
        end
      end
      object E1: TMenuItem
        Caption = 'C&adastrosGerais'
        object EstadoCivil1: TMenuItem
          Caption = '&EstadoCivil'
          OnClick = EstadoCivil1Click
        end
        object TipoAposentadoria1: TMenuItem
          Caption = '&TipoAposentadoria'
          OnClick = TipoAposentadoria1Click
        end
        object Relacao1: TMenuItem
          Caption = '&Rela'#231#227'o'
          OnClick = Relacao1Click
        end
        object Evento1: TMenuItem
          Caption = 'E&vento'
          OnClick = Evento1Click
        end
        object Categoria1: TMenuItem
          Caption = '&Categoria'
          OnClick = Categoria1Click
        end
        object Verba1: TMenuItem
          Caption = '&Verba'
          OnClick = Verba1Click
        end
        object Lei1: TMenuItem
          Caption = '&Lei'
          OnClick = Lei1Click
        end
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Categoria2: TMenuItem
        Caption = '&Categoria'
        OnClick = Categoria2Click
      end
    end
    object G1: TMenuItem
      Caption = '&Gr'#225'ficos'
      object QuantidadeEntRel1: TMenuItem
        Caption = '&Quantidade_Ent_Rel'
        OnClick = QuantidadeEntRel1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Aj&uda'
      object Sobre1: TMenuItem
        Caption = '&Sobre'
        OnClick = Sobre1Click
      end
    end
  end
end

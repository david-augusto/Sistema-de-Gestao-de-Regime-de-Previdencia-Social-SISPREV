object FEN_: TFEN_
  Left = 192
  Top = 88
  Width = 1040
  Height = 508
  Caption = 'ENTIDADE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 224
      Height = 41
      DataSource = DMSISPREV_.DSENTIDADERELACAO
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 220
      Top = 0
      Width = 228
      Height = 41
      DataSource = DMSISPREV_.DSENTIDADE
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 1
      BeforeAction = DBNavigator2BeforeAction
      OnClick = DBNavigator2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1024
    Height = 429
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 1024
      Height = 429
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBENNCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDENNCODG
      end
      object LBENCDESC: TLabel
        Left = 8
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDENCDESC
      end
      object LBENCAPEL: TLabel
        Left = 8
        Top = 88
        Width = 35
        Height = 13
        Caption = 'Apelido'
        FocusControl = DBEDENCAPEL
      end
      object LBENOFOTO: TLabel
        Left = 552
        Top = 16
        Width = 21
        Height = 13
        Caption = 'Foto'
        FocusControl = DBIMENOFOTO
      end
      object LBENDNASC: TLabel
        Left = 8
        Top = 128
        Width = 56
        Height = 13
        Caption = 'Nascimento'
        FocusControl = DBEDENDNASC
      end
      object LBENNCADT: TLabel
        Left = 576
        Top = 216
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
        FocusControl = DBEDENNCADT
      end
      object LBENDCADT: TLabel
        Left = 576
        Top = 136
        Width = 68
        Height = 13
        Caption = 'Data Cadastro'
        FocusControl = DBEDENDCADT
      end
      object LBENHCADT: TLabel
        Left = 576
        Top = 176
        Width = 68
        Height = 13
        Caption = 'Hora Cadastro'
        FocusControl = DBEDENHCADT
      end
      object LBENNIDAD: TLabel
        Left = 8
        Top = 168
        Width = 27
        Height = 13
        Caption = 'Idade'
        FocusControl = DBEDENNIDAD
      end
      object Label3: TLabel
        Left = 8
        Top = 208
        Width = 81
        Height = 13
        Caption = 'C'#243'digo Categoria'
        FocusControl = DBEDERNCGCR
      end
      object LBERDCADT: TLabel
        Left = 8
        Top = 248
        Width = 68
        Height = 13
        Caption = 'Data Cadastro'
        FocusControl = DBEDERDCADT
      end
      object LBERDCANC: TLabel
        Left = 8
        Top = 288
        Width = 94
        Height = 13
        Caption = 'Data Cancelamento'
        FocusControl = DBEDERDCANC
      end
      object DBEDENNCODG: TDBEdit
        Left = 8
        Top = 24
        Width = 145
        Height = 21
        DataField = 'ENNCODG'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 0
      end
      object DBEDENCDESC: TDBEdit
        Left = 8
        Top = 64
        Width = 145
        Height = 21
        DataField = 'ENCDESC'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 1
      end
      object DBEDENCAPEL: TDBEdit
        Left = 8
        Top = 104
        Width = 145
        Height = 21
        DataField = 'ENCAPEL'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 2
      end
      object DBIMENOFOTO: TDBImage
        Left = 576
        Top = 16
        Width = 105
        Height = 105
        DataField = 'ENOFOTO'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 3
      end
      object DBEDENDNASC: TDBEdit
        Left = 8
        Top = 144
        Width = 134
        Height = 21
        DataField = 'ENDNASC'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 4
      end
      object DBEDENNCADT: TDBEdit
        Left = 576
        Top = 232
        Width = 134
        Height = 21
        DataField = 'ENNCADT'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 5
      end
      object DBEDENDCADT: TDBEdit
        Left = 576
        Top = 152
        Width = 105
        Height = 21
        DataField = 'ENDCADT'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 6
      end
      object DBEDENHCADT: TDBEdit
        Left = 576
        Top = 192
        Width = 105
        Height = 21
        DataField = 'ENHCADT'
        DataSource = DMSISPREV_.DSENTIDADE
        TabOrder = 7
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 384
        Width = 865
        Height = 105
        DataSource = DMSISPREV_.DSENTIDADE
        ReadOnly = True
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ENNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCDESC'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCTIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCCPF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCRG'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCCNPJ'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCIE'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCIM'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCAPEL'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCSEXO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDNASC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENNCGEC'
            Visible = True
          end>
      end
      object BTFOTO: TButton
        Left = 688
        Top = 16
        Width = 33
        Height = 25
        Hint = 'Escolha a Foto'
        Caption = 'J'
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Wingdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = BTFOTOClick
      end
      object DBEDENNIDAD: TDBEdit
        Left = 8
        Top = 184
        Width = 134
        Height = 21
        DataField = 'ENNIDAD'
        DataSource = DMSISPREV_.DSENTIDADE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBRDENATIPO: TDBRadioGroup
        Left = 168
        Top = 16
        Width = 137
        Height = 105
        Caption = 'Tipo'
        DataField = 'ENCTIPO'
        DataSource = DMSISPREV_.DSENTIDADE
        Items.Strings = (
          'Fisica'
          'Juridica')
        TabOrder = 11
        Values.Strings = (
          'F'
          'J')
        OnChange = DBRDENATIPOChange
      end
      object DBRGENNSEXO: TDBRadioGroup
        Left = 168
        Top = 128
        Width = 137
        Height = 81
        Caption = 'Sexo'
        DataField = 'ENCSEXO'
        DataSource = DMSISPREV_.DSENTIDADE
        Items.Strings = (
          'Feminino'
          'Masculino')
        TabOrder = 12
        Values.Strings = (
          'M'
          'F')
      end
      object PageControl1: TPageControl
        Left = 336
        Top = 16
        Width = 217
        Height = 169
        ActivePage = TabSheet1Fisica
        MultiLine = True
        TabOrder = 13
        object TabSheet1Fisica: TTabSheet
          Caption = 'Pessoa Fisica'
          object LBENCCPF: TLabel
            Left = 24
            Top = 8
            Width = 20
            Height = 13
            Caption = 'CPF'
            FocusControl = DBEDENCCPF
          end
          object LBENCRG: TLabel
            Left = 24
            Top = 48
            Width = 16
            Height = 13
            Caption = 'RG'
            FocusControl = DBEDENCRG
          end
          object LBENNCGEC: TLabel
            Left = 24
            Top = 88
            Width = 91
            Height = 13
            Caption = 'C'#243'digo Estado Civil'
            FocusControl = DBEDENNCGEC
          end
          object DBEDENCCPF: TDBEdit
            Left = 24
            Top = 24
            Width = 147
            Height = 21
            DataField = 'ENCCPF'
            DataSource = DMSISPREV_.DSENTIDADE
            TabOrder = 0
          end
          object DBEDENCRG: TDBEdit
            Left = 24
            Top = 64
            Width = 153
            Height = 21
            DataField = 'ENCRG'
            DataSource = DMSISPREV_.DSENTIDADE
            TabOrder = 1
          end
          object DBEDENNCGEC: TDBEdit
            Left = 128
            Top = 104
            Width = 49
            Height = 21
            DataField = 'ENNCGEC'
            DataSource = DMSISPREV_.DSENTIDADE
            TabOrder = 2
          end
          object DBLKCBENCDCEC: TDBLookupComboBox
            Left = 24
            Top = 104
            Width = 97
            Height = 21
            DataField = 'ENCDCEC'
            DataSource = DMSISPREV_.DSENTIDADE
            TabOrder = 3
          end
        end
        object TabSheet1Juridica: TTabSheet
          Caption = 'Pessoa Juridica'
          ImageIndex = 1
          object LBENCCNPJ: TLabel
            Left = 16
            Top = 8
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            FocusControl = DBEDENCCNPJ
          end
          object LBENCIE: TLabel
            Left = 16
            Top = 48
            Width = 82
            Height = 13
            Caption = 'Incri'#231#227'o Estadual'
            FocusControl = DBEDENCIE
          end
          object LBENCIM: TLabel
            Left = 16
            Top = 88
            Width = 85
            Height = 13
            Caption = 'Inscri'#231#227'o Muicipal'
            FocusControl = DBEDENCIM
          end
          object DBEDENCCNPJ: TDBEdit
            Left = 16
            Top = 24
            Width = 186
            Height = 21
            DataField = 'ENCCNPJ'
            DataSource = DMSISPREV_.DSENTIDADE
            TabOrder = 0
          end
          object DBEDENCIE: TDBEdit
            Left = 16
            Top = 64
            Width = 185
            Height = 21
            DataField = 'ENCIE'
            DataSource = DMSISPREV_.DSENTIDADE
            TabOrder = 1
          end
          object DBEDENCIM: TDBEdit
            Left = 16
            Top = 104
            Width = 185
            Height = 21
            DataField = 'ENCIM'
            DataSource = DMSISPREV_.DSENTIDADE
            TabOrder = 2
          end
        end
      end
      object DBEDERNCGCR: TDBEdit
        Left = 96
        Top = 224
        Width = 41
        Height = 21
        DataField = 'ERNCGCR'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 14
      end
      object DBLKCBERCDCCR: TDBLookupComboBox
        Left = 8
        Top = 224
        Width = 81
        Height = 21
        DataField = 'ERCDCCR'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 15
      end
      object PageControl2: TPageControl
        Left = 144
        Top = 216
        Width = 185
        Height = 121
        ActivePage = TabSheet1RE7
        TabOrder = 16
        object TabSheet1RE34: TTabSheet
          Caption = 'Rela'#231#227'o'
          object LBERNCGTA: TLabel
            Left = 8
            Top = 8
            Width = 128
            Height = 13
            Caption = 'C'#243'digo Tipo Aposentadoria'
            FocusControl = DBEDERNCGTA
          end
          object DBEDERNCGTA: TDBEdit
            Left = 104
            Top = 24
            Width = 57
            Height = 21
            DataField = 'ERNCGTA'
            DataSource = DMSISPREV_.DSENTIDADERELACAO
            TabOrder = 0
          end
          object DBLKCBERCDCTA: TDBLookupComboBox
            Left = 8
            Top = 24
            Width = 89
            Height = 21
            DataField = 'ERCDCTA'
            DataSource = DMSISPREV_.DSENTIDADERELACAO
            TabOrder = 1
          end
        end
        object TabSheet1RE7: TTabSheet
          Caption = 'Rela'#231#227'o'
          ImageIndex = 1
          object LBERNC2EN: TLabel
            Left = 16
            Top = 8
            Width = 29
            Height = 13
            Caption = 'Org'#227'o'
            FocusControl = DBEDERNC2EN
          end
          object LBERNCGCA: TLabel
            Left = 16
            Top = 48
            Width = 64
            Height = 13
            Caption = 'C'#243'digo Cargo'
            FocusControl = DBEDERNCGCA
          end
          object DBEDERNC2EN: TDBEdit
            Left = 104
            Top = 24
            Width = 57
            Height = 21
            DataField = 'ERNC2EN'
            DataSource = DMSISPREV_.DSENTIDADERELACAO
            TabOrder = 0
          end
          object DBEDERNCGCA: TDBEdit
            Left = 104
            Top = 64
            Width = 57
            Height = 21
            DataField = 'ERNCGCA'
            DataSource = DMSISPREV_.DSENTIDADERELACAO
            TabOrder = 1
          end
          object DBLKCBERCD2EN: TDBLookupComboBox
            Left = 0
            Top = 24
            Width = 97
            Height = 21
            DataField = 'ERCD2EN'
            DataSource = DMSISPREV_.DSENTIDADERELACAO
            TabOrder = 2
          end
          object DBLKCBERCDCCA: TDBLookupComboBox
            Left = 0
            Top = 64
            Width = 97
            Height = 21
            DataField = 'ERCDCCA'
            DataSource = DMSISPREV_.DSENTIDADERELACAO
            TabOrder = 3
          end
        end
      end
      object BTCARGO: TButton
        Left = 336
        Top = 200
        Width = 217
        Height = 25
        Caption = 'CADASTRAR CARGO'
        TabOrder = 17
        OnClick = BTCARGOClick
      end
      object BTENDERECO: TButton
        Left = 336
        Top = 248
        Width = 217
        Height = 25
        Caption = 'CADASTRAR ENDERE'#199'O'
        TabOrder = 18
        OnClick = BTENDERECOClick
      end
      object BTEMAIL: TButton
        Left = 336
        Top = 296
        Width = 217
        Height = 25
        Caption = 'CADASTRAR EMAIL'
        TabOrder = 19
        OnClick = BTEMAILClick
      end
      object DBEDERDCADT: TDBEdit
        Left = 8
        Top = 264
        Width = 134
        Height = 21
        DataField = 'ERDCADT'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 20
      end
      object DBEDERDCANC: TDBEdit
        Left = 8
        Top = 304
        Width = 134
        Height = 21
        DataField = 'ERDCANC'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 21
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 688
    Top = 97
  end
end

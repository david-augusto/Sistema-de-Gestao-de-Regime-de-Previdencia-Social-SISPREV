object FEE_: TFEE_
  Left = 208
  Top = 130
  Width = 696
  Height = 439
  Caption = 'EVENTO ENTIDADE FOLHA'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 680
      Height = 25
      DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 680
    Height = 360
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 680
      Height = 360
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBEENCGFP: TLabel
        Left = 16
        Top = 0
        Width = 134
        Height = 13
        Caption = 'C'#243'digo Folha de Pagamento'
        FocusControl = DBEDEENCGFP
      end
      object LBEENCGEF: TLabel
        Left = 16
        Top = 48
        Width = 107
        Height = 13
        Caption = 'C'#243'digo Entidade Folha'
        FocusControl = DBEDEENCGEF
      end
      object LBEENCODG: TLabel
        Left = 16
        Top = 96
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDEENCODG
      end
      object LBEENCGEV: TLabel
        Left = 16
        Top = 144
        Width = 70
        Height = 13
        Caption = 'C'#243'digo Evento'
        FocusControl = DBEDEENCGEV
      end
      object LBEEYVALR: TLabel
        Left = 16
        Top = 184
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEDEEYVALR
      end
      object LBEEMOBS: TLabel
        Left = 280
        Top = 0
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
        FocusControl = DBMMEEMOBS
      end
      object DBEDEENCGFP: TDBEdit
        Left = 184
        Top = 16
        Width = 73
        Height = 21
        DataField = 'EENCGFP'
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        TabOrder = 0
      end
      object DBEDEENCGEF: TDBEdit
        Left = 184
        Top = 64
        Width = 73
        Height = 21
        DataField = 'EENCGEF'
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        TabOrder = 1
      end
      object DBEDEENCODG: TDBEdit
        Left = 16
        Top = 112
        Width = 241
        Height = 21
        DataField = 'EENCODG'
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        TabOrder = 2
      end
      object DBEDEENCGEV: TDBEdit
        Left = 184
        Top = 160
        Width = 73
        Height = 21
        DataField = 'EENCGEV'
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        TabOrder = 3
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 232
        Width = 417
        Height = 105
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EENCGFP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EENCGEF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EENCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EENCGEV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EEYVALR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EEMOBS'
            Visible = True
          end>
      end
      object DBEDEEYVALR: TDBEdit
        Left = 16
        Top = 200
        Width = 161
        Height = 21
        DataField = 'EEYVALR'
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        TabOrder = 5
      end
      object DBMMEEMOBS: TDBMemo
        Left = 280
        Top = 16
        Width = 121
        Height = 113
        DataField = 'EEMOBS'
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        TabOrder = 6
      end
      object DBLKCBEECDCFP: TDBLookupComboBox
        Left = 16
        Top = 16
        Width = 161
        Height = 21
        KeyField = 'FPNCODG'
        ListField = 'FPDDATA'
        ListSource = DMSISPREV_.DSFOLHAPAGAMENTO
        TabOrder = 7
      end
      object DBLKCBEECDCEF: TDBLookupComboBox
        Left = 16
        Top = 64
        Width = 161
        Height = 21
        KeyField = 'EFNCODG'
        ListField = 'EFCDCEN'
        ListSource = DMSISPREV_.DSENTIDADEFOLHA
        TabOrder = 8
      end
      object DBLKCBEECDCEV: TDBLookupComboBox
        Left = 16
        Top = 160
        Width = 161
        Height = 21
        DataField = 'EECDCEV'
        DataSource = DMSISPREV_.DSEVENTO_ENT_FOL
        TabOrder = 9
      end
    end
  end
end

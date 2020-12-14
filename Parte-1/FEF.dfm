object FEF_: TFEF_
  Left = 218
  Top = 138
  Width = 696
  Height = 423
  Caption = 'ENTIDADE FOLHA'
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
      DataSource = DMSISPREV_.DSENTIDADEFOLHA
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 680
    Height = 344
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 680
      Height = 344
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBEFNCGFP: TLabel
        Left = 8
        Top = 40
        Width = 134
        Height = 13
        Caption = 'C'#243'digo Folha de Pagamento'
        FocusControl = DBEDEFNCGFP
      end
      object LBEFNCODG: TLabel
        Left = 8
        Top = 80
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object LBEFNCGEN: TLabel
        Left = 8
        Top = 120
        Width = 78
        Height = 13
        Caption = 'C'#243'digo Entidade'
      end
      object DBEDEFNCGFP: TDBEdit
        Left = 112
        Top = 56
        Width = 65
        Height = 21
        DataField = 'EFNCGFP'
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 168
        Width = 225
        Height = 120
        DataSource = DMSISPREV_.DSENTIDADEFOLHA
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EFNCGFP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EFNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EFNCGEN'
            Visible = True
          end>
      end
      object DBLKCBEFCDCFP: TDBLookupComboBox
        Left = 8
        Top = 56
        Width = 97
        Height = 21
        KeyField = 'FPNCODG'
        ListField = 'FPDDATA'
        ListSource = DMSISPREV_.DSFOLHAPAGAMENTO
        TabOrder = 2
      end
      object DBLKCBEFCDCEN: TDBLookupComboBox
        Left = 136
        Top = 136
        Width = 97
        Height = 21
        DataField = 'EFCDCEN'
        DataSource = DMSISPREV_.DSENTIDADEFOLHA
        TabOrder = 3
      end
      object DBEDEFNCODG: TDBEdit
        Left = 8
        Top = 96
        Width = 134
        Height = 21
        DataField = 'EFNCODG'
        DataSource = DMSISPREV_.DSENTIDADEFOLHA
        TabOrder = 4
      end
      object DBEDEFNCGEN: TDBEdit
        Left = 8
        Top = 136
        Width = 113
        Height = 21
        DataField = 'EFNCGEN'
        DataSource = DMSISPREV_.DSENTIDADEFOLHA
        TabOrder = 5
      end
    end
  end
end

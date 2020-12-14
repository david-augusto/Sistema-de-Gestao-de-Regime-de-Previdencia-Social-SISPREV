object FER_: TFER_
  Left = 219
  Top = 162
  Width = 696
  Height = 375
  Caption = 'ENTIDADE RELA'#199#195'O'
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
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = DMSISPREV_.DSENTIDADERELACAO
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 680
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 680
      Height = 296
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBERNCGRE: TLabel
        Left = 16
        Top = 8
        Width = 76
        Height = 13
        Caption = 'Codigo Rela'#231#227'o'
        FocusControl = DBEDERNCGRE
      end
      object LBERNCGEN: TLabel
        Left = 16
        Top = 48
        Width = 78
        Height = 13
        Caption = 'C'#243'digo Entidade'
        FocusControl = DBEDERNCGEN
      end
      object LBERNCGCR: TLabel
        Left = 24
        Top = 120
        Width = 54
        Height = 13
        Caption = 'C'#243'digo(CR)'
        FocusControl = DBEDERNCGCR
      end
      object LBERDCADT: TLabel
        Left = 528
        Top = 88
        Width = 68
        Height = 13
        Caption = 'Data Cadastro'
        FocusControl = DBEDERDCADT
      end
      object LBERDCANC: TLabel
        Left = 520
        Top = 128
        Width = 94
        Height = 13
        Caption = 'Data Cancelamento'
        FocusControl = DBEDERDCANC
      end
      object DBEDERNCGRE: TDBEdit
        Left = 16
        Top = 24
        Width = 134
        Height = 21
        DataField = 'ERNCGRE'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 0
      end
      object DBEDERNCGEN: TDBEdit
        Left = 16
        Top = 64
        Width = 134
        Height = 21
        DataField = 'ERNCGEN'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 1
      end
      object DBEDERNCGCR: TDBEdit
        Left = 16
        Top = 136
        Width = 134
        Height = 21
        DataField = 'ERNCGCR'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 2
      end
      object DBEDERDCADT: TDBEdit
        Left = 528
        Top = 104
        Width = 134
        Height = 21
        DataField = 'ERDCADT'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 3
      end
      object DBEDERDCANC: TDBEdit
        Left = 528
        Top = 144
        Width = 134
        Height = 21
        DataField = 'ERDCANC'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 168
        Width = 593
        Height = 120
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ERNCGRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ERNCGEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ERNCGTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ERNC2EN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ERNCGCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ERNCGCR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ERDCADT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ERDCANC'
            Width = 64
            Visible = True
          end>
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 160
        Top = 24
        Width = 97
        Height = 21
        KeyField = 'RENCODG'
        ListField = 'RECDESC'
        ListSource = DMSISPREV_.DSRELACAO
        TabOrder = 6
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 160
        Top = 64
        Width = 97
        Height = 21
        KeyField = 'ENNCODG'
        ListField = 'ENCDCEC'
        ListSource = DMSISPREV_.DSENTIDADE
        TabOrder = 7
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 16
        Top = 96
        Width = 241
        Height = 21
        DataField = 'ERCDCEN'
        DataSource = DMSISPREV_.DSENTIDADERELACAO
        TabOrder = 8
      end
    end
  end
end

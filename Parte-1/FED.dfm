object FED_: TFED_
  Left = 242
  Top = 130
  Width = 692
  Height = 420
  Caption = 'ENDERE'#199'O'
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
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 676
    Height = 341
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 676
      Height = 341
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBEDNCGEN: TLabel
        Left = 16
        Top = 0
        Width = 78
        Height = 13
        Caption = 'C'#243'digo Entidade'
        FocusControl = DBEDEDNCGEN
      end
      object LBEDNCODG: TLabel
        Left = 16
        Top = 80
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDEDNCODG
      end
      object LBEDCDESC: TLabel
        Left = 16
        Top = 120
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDEDCDESC
      end
      object LBEDCCEP: TLabel
        Left = 16
        Top = 40
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEDEDCCEP
      end
      object LBEDNNUMR: TLabel
        Left = 17
        Top = 176
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEDEDNNUMR
      end
      object LBEDCOBS: TLabel
        Left = 160
        Top = 176
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEDEDCOBS
      end
      object LBEDMOBS: TLabel
        Left = 296
        Top = 0
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBMMEDMOBS
      end
      object DBEDEDNCGEN: TDBEdit
        Left = 208
        Top = 16
        Width = 73
        Height = 21
        DataField = 'EDNCGEN'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 0
      end
      object DBEDEDNCODG: TDBEdit
        Left = 16
        Top = 96
        Width = 97
        Height = 21
        DataField = 'EDNCODG'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 1
      end
      object DBEDEDCDESC: TDBEdit
        Left = 16
        Top = 136
        Width = 489
        Height = 21
        DataField = 'EDCDESC'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 2
      end
      object DBEDEDCCEP: TDBEdit
        Left = 208
        Top = 56
        Width = 73
        Height = 21
        DataField = 'EDCCEP'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 3
      end
      object DBEDEDNNUMR: TDBEdit
        Left = 16
        Top = 192
        Width = 134
        Height = 21
        DataField = 'EDCNUMR'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 4
      end
      object DBEDEDCOBS: TDBEdit
        Left = 160
        Top = 192
        Width = 345
        Height = 21
        DataField = 'EDCOBS'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 5
      end
      object DBMMEDMOBS: TDBMemo
        Left = 296
        Top = 16
        Width = 153
        Height = 73
        DataField = 'EDMOBS'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 6
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 256
        Width = 537
        Height = 120
        DataSource = DMSISPREV_.DSENDERECO
        ReadOnly = True
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EDNCGEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDCDESC'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDCCEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDCNUMR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDCOBS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDMOBS'
            Visible = True
          end>
      end
      object DBLKCBEDCDCEN: TDBLookupComboBox
        Left = 16
        Top = 16
        Width = 177
        Height = 21
        KeyField = 'ENNCODG'
        ListField = 'ENCDESC'
        ListSource = DMSISPREV_.DSENTIDADE
        TabOrder = 8
      end
      object DBLKCBEDCDCLG: TDBLookupComboBox
        Left = 16
        Top = 56
        Width = 177
        Height = 21
        DataField = 'EDCDCLG'
        DataSource = DMSISPREV_.DSENDERECO
        TabOrder = 9
      end
      object BTCONTATO: TButton
        Left = 296
        Top = 104
        Width = 153
        Height = 25
        Caption = 'CADASTRAR CONTATO'
        TabOrder = 10
        OnClick = BTCONTATOClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 676
      Height = 25
      DataSource = DMSISPREV_.DSENDERECO
      Align = alTop
      TabOrder = 0
    end
  end
end

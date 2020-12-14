object FBR_: TFBR_
  Left = 215
  Top = 124
  Width = 696
  Height = 409
  Caption = 'BAIRRO'
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
      DataSource = DMSISPREV_.DSBAIRRO
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 680
    Height = 330
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 680
      Height = 330
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBBRNCGES: TLabel
        Left = 8
        Top = 16
        Width = 50
        Height = 13
        Caption = 'C'#243'digo UF'
        FocusControl = DBEDBRCUF
      end
      object LBBRNCGCD: TLabel
        Left = 8
        Top = 56
        Width = 69
        Height = 13
        Caption = 'C'#243'digo Cidade'
        FocusControl = DBEDBRNCGCD
      end
      object LBBRNCODG: TLabel
        Left = 8
        Top = 96
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDBRNCODG
      end
      object LBBRCDESC: TLabel
        Left = 8
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDBRCDESC
      end
      object DBEDBRCUF: TDBEdit
        Left = 120
        Top = 32
        Width = 30
        Height = 21
        DataField = 'BRCUF'
        DataSource = DMSISPREV_.DSBAIRRO
        MaxLength = 2
        TabOrder = 0
      end
      object DBEDBRNCGCD: TDBEdit
        Left = 112
        Top = 72
        Width = 41
        Height = 21
        DataField = 'BRNCGCD'
        DataSource = DMSISPREV_.DSBAIRRO
        TabOrder = 1
      end
      object DBEDBRNCODG: TDBEdit
        Left = 8
        Top = 112
        Width = 145
        Height = 21
        DataField = 'BRNCODG'
        DataSource = DMSISPREV_.DSBAIRRO
        TabOrder = 2
      end
      object DBEDBRCDESC: TDBEdit
        Left = 8
        Top = 152
        Width = 329
        Height = 21
        DataField = 'BRCDESC'
        DataSource = DMSISPREV_.DSBAIRRO
        TabOrder = 3
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 192
        Width = 513
        Height = 120
        DataSource = DMSISPREV_.DSBAIRRO
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
            FieldName = 'BRCUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BRNCGCD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BRNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BRCDESC'
            Visible = True
          end>
      end
      object DBLKCBBRCDCES: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 97
        Height = 21
        KeyField = 'ESCUF'
        ListField = 'ESCDESC'
        ListSource = DMSISPREV_.DSESTADO
        TabOrder = 5
      end
      object DBLKCBBRCDCCD: TDBLookupComboBox
        Left = 8
        Top = 72
        Width = 97
        Height = 21
        KeyField = 'CDNCODG'
        ListField = 'CDCDESC'
        ListSource = DMSISPREV_.DSCIDADE
        TabOrder = 6
      end
    end
  end
end

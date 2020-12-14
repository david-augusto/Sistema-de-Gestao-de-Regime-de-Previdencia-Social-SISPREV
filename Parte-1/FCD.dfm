object FCD_: TFCD_
  Left = 192
  Top = 124
  Width = 696
  Height = 375
  Caption = 'CIDADE'
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
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 680
      Height = 25
      DataSource = DMSISPREV_.DSCIDADE
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 680
    Height = 296
    Align = alClient
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 678
      Height = 294
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBCDCUF: TLabel
        Left = 24
        Top = 24
        Width = 56
        Height = 13
        Caption = 'Estado (UF)'
        FocusControl = DBEDCDCUF
      end
      object LBCDNCODG: TLabel
        Left = 24
        Top = 64
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDCDNCODG
      end
      object LBCDCDESC: TLabel
        Left = 24
        Top = 104
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDCDCDESC
      end
      object DBEDCDCUF: TDBEdit
        Left = 128
        Top = 40
        Width = 30
        Height = 21
        DataField = 'CDCUF'
        DataSource = DMSISPREV_.DSCIDADE
        MaxLength = 2
        TabOrder = 0
      end
      object DBEDCDNCODG: TDBEdit
        Left = 24
        Top = 80
        Width = 134
        Height = 21
        DataField = 'CDNCODG'
        DataSource = DMSISPREV_.DSCIDADE
        TabOrder = 1
      end
      object DBEDCDCDESC: TDBEdit
        Left = 24
        Top = 120
        Width = 137
        Height = 21
        DataField = 'CDCDESC'
        DataSource = DMSISPREV_.DSCIDADE
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 24
        Top = 152
        Width = 353
        Height = 120
        DataSource = DMSISPREV_.DSCIDADE
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CDCUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDCDESC'
            Visible = True
          end>
      end
      object DBLKCBCDCDCES: TDBLookupComboBox
        Left = 24
        Top = 40
        Width = 97
        Height = 21
        KeyField = 'ESCUF'
        ListField = 'ESCDESC'
        ListSource = DMSISPREV_.DSESTADO
        TabOrder = 4
      end
    end
  end
end

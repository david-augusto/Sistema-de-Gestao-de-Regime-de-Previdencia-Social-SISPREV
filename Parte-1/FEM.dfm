object FEM_: TFEM_
  Left = 221
  Top = 163
  Width = 696
  Height = 375
  Caption = 'EMAIL'
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
      DataSource = DMSISPREV_.DSEMAIL
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
      object LBEMNCGEN: TLabel
        Left = 8
        Top = 8
        Width = 78
        Height = 13
        Caption = 'C'#243'digo Entidade'
        FocusControl = DBEDEMNCGEN
      end
      object LBCTNCODG: TLabel
        Left = 8
        Top = 48
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDEMNCODG
      end
      object LBEMNDESC: TLabel
        Left = 8
        Top = 88
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDEMCDESC
      end
      object DBEDEMNCGEN: TDBEdit
        Left = 112
        Top = 24
        Width = 49
        Height = 21
        DataField = 'EMNCGEN'
        DataSource = DMSISPREV_.DSEMAIL
        TabOrder = 0
      end
      object DBEDEMNCODG: TDBEdit
        Left = 8
        Top = 64
        Width = 153
        Height = 21
        DataField = 'EMNCODG'
        DataSource = DMSISPREV_.DSEMAIL
        TabOrder = 1
      end
      object DBEDEMCDESC: TDBEdit
        Left = 8
        Top = 104
        Width = 369
        Height = 21
        DataField = 'EMCDESC'
        DataSource = DMSISPREV_.DSEMAIL
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 128
        Width = 320
        Height = 120
        DataSource = DMSISPREV_.DSEMAIL
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
            FieldName = 'EMNCGEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMCDESC'
            Visible = True
          end>
      end
      object DBLKCBEMCDCEN: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 97
        Height = 21
        KeyField = 'ENNCODG'
        ListField = 'ENCDESC'
        ListSource = DMSISPREV_.DSENTIDADE
        TabOrder = 4
      end
    end
  end
end

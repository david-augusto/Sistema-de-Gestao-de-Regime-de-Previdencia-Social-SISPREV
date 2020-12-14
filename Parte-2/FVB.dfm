object FVB_: TFVB_
  Left = 221
  Top = 163
  Width = 696
  Height = 375
  Caption = 'VERBA'
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
      DataSource = DMSISPREV_.DSVERBA
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
      object LBVBNCODG: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDVBNCODG
      end
      object LBVBNCGEN: TLabel
        Left = 16
        Top = 56
        Width = 78
        Height = 13
        Caption = 'C'#243'digo Entidade'
        FocusControl = DBEDVBNCGEN
      end
      object LBVBCDESC: TLabel
        Left = 16
        Top = 104
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDVBCDESC
      end
      object DBEDVBNCODG: TDBEdit
        Left = 16
        Top = 24
        Width = 134
        Height = 21
        DataField = 'VBNCODG'
        DataSource = DMSISPREV_.DSVERBA
        TabOrder = 0
      end
      object DBEDVBNCGEN: TDBEdit
        Left = 104
        Top = 72
        Width = 49
        Height = 21
        DataField = 'VBNCGEN'
        DataSource = DMSISPREV_.DSVERBA
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 152
        Width = 337
        Height = 120
        DataSource = DMSISPREV_.DSVERBA
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'VBNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VBCDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VBNCGEN'
            Visible = True
          end>
      end
      object DBEDVBCDESC: TDBEdit
        Left = 16
        Top = 120
        Width = 337
        Height = 21
        DataField = 'VBCDESC'
        DataSource = DMSISPREV_.DSVERBA
        TabOrder = 3
      end
      object DBLKCBVBCDCEN: TDBLookupComboBox
        Left = 16
        Top = 72
        Width = 81
        Height = 21
        DataField = 'VBCDCEN'
        DataSource = DMSISPREV_.DSVERBA
        TabOrder = 4
      end
    end
  end
end

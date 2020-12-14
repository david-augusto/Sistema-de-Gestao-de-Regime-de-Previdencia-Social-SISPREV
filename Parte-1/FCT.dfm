object FCT_: TFCT_
  Left = 196
  Top = 147
  Width = 696
  Height = 377
  Caption = 'CONTATO'
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
      Left = 0
      Top = 0
      Width = 680
      Height = 25
      DataSource = DMSISPREV_.DSCONTATO
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 680
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 680
      Height = 298
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBCTNCODG: TLabel
        Left = 24
        Top = 64
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDCTNCODG
      end
      object LBCTCDESC: TLabel
        Left = 8
        Top = 128
        Width = 48
        Height = 13
        Caption = 'Descri'#231'ao'
        FocusControl = DBEDCTDDESC
      end
      object LBCTNNUMR: TLabel
        Left = 16
        Top = 96
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEDCTNNUMR
      end
      object ENCDESC: TLabel
        Left = 8
        Top = 0
        Width = 42
        Height = 13
        Caption = 'Entidade'
      end
      object LBEDCDESC: TLabel
        Left = 8
        Top = 32
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object DBEDCTNCGEN: TDBEdit
        Left = 72
        Top = 0
        Width = 129
        Height = 21
        DataField = 'CTNCGEN'
        DataSource = DMSISPREV_.DSCONTATO
        TabOrder = 0
      end
      object DBEDCTNCGED: TDBEdit
        Left = 72
        Top = 32
        Width = 129
        Height = 21
        DataField = 'CTNCGED'
        DataSource = DMSISPREV_.DSCONTATO
        TabOrder = 1
      end
      object DBEDCTNCODG: TDBEdit
        Left = 72
        Top = 64
        Width = 134
        Height = 21
        DataField = 'CTNCODG'
        DataSource = DMSISPREV_.DSCONTATO
        TabOrder = 2
      end
      object DBEDCTDDESC: TDBEdit
        Left = 72
        Top = 128
        Width = 257
        Height = 21
        DataField = 'CTCDESC'
        DataSource = DMSISPREV_.DSCONTATO
        TabOrder = 3
      end
      object DBEDCTNNUMR: TDBEdit
        Left = 72
        Top = 96
        Width = 137
        Height = 21
        DataField = 'CTCNUMR'
        DataSource = DMSISPREV_.DSCONTATO
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 160
        Width = 473
        Height = 120
        DataSource = DMSISPREV_.DSCONTATO
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
            FieldName = 'CTNCGEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTNCGED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTCDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTCNUMR'
            Visible = True
          end>
      end
    end
  end
end

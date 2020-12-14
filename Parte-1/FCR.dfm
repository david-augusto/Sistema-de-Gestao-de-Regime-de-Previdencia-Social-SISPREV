object FCR_: TFCR_
  Left = 221
  Top = 163
  Width = 696
  Height = 375
  Caption = 'CATEGORIA'
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
      DataSource = DMSISPREV_.DSCATEGORIA
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
      object LBCRNCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDCRNCODG
      end
      object LBCRCDESC: TLabel
        Left = 8
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDCRCDESC
      end
      object DBEDCRNCODG: TDBEdit
        Left = 8
        Top = 24
        Width = 134
        Height = 21
        DataField = 'CRNCODG'
        DataSource = DMSISPREV_.DSCATEGORIA
        TabOrder = 0
      end
      object DBEDCRCDESC: TDBEdit
        Left = 8
        Top = 64
        Width = 265
        Height = 21
        DataField = 'CRCDESC'
        DataSource = DMSISPREV_.DSCATEGORIA
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 104
        Width = 273
        Height = 120
        DataSource = DMSISPREV_.DSCATEGORIA
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
            FieldName = 'CRNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCDESC'
            Visible = True
          end>
      end
      object EDCODIGO: TEdit
        Left = 288
        Top = 64
        Width = 145
        Height = 21
        TabOrder = 3
        Text = 'Digite o C'#243'digo'
        OnChange = EDCODIGOChange
      end
      object EDDESCRICAO: TEdit
        Left = 288
        Top = 104
        Width = 145
        Height = 21
        TabOrder = 4
        Text = 'Digite a Descri'#231#227'o'
        OnChange = EDDESCRICAOChange
      end
      object CBINDEXES: TComboBox
        Left = 288
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        Text = 'Escolha o Indice'
        OnChange = CBINDEXESChange
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o')
      end
    end
  end
end

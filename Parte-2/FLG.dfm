object FLG_: TFLG_
  Left = 202
  Top = 149
  Width = 696
  Height = 375
  Caption = 'LOGRADOURO'
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
      DataSource = DMSISPREV_.DSLOGRADOURO
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
      object LBLGCCEP: TLabel
        Left = 8
        Top = 0
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEDLGCCEP
      end
      object LBLGCDESC: TLabel
        Left = 8
        Top = 40
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDLGCDESC
      end
      object LBLGNCGTL: TLabel
        Left = 8
        Top = 80
        Width = 114
        Height = 13
        Caption = 'C'#243'digo Tipo Logradouro'
        FocusControl = DBEDLGNCGTL
      end
      object LBLGNCGES: TLabel
        Left = 208
        Top = 80
        Width = 50
        Height = 13
        Caption = 'C'#243'digo UF'
        FocusControl = DBEDLGCUF
      end
      object LBLGNCGCD: TLabel
        Left = 8
        Top = 120
        Width = 69
        Height = 13
        Caption = 'C'#243'digo Cidade'
        FocusControl = DBEDLGNCGCD
      end
      object LBLGNCGBR: TLabel
        Left = 208
        Top = 120
        Width = 63
        Height = 13
        Caption = 'C'#243'digo Bairro'
        FocusControl = DBEDLGNCGBR
      end
      object DBEDLGCCEP: TDBEdit
        Left = 8
        Top = 16
        Width = 108
        Height = 21
        DataField = 'LGCCEP'
        DataSource = DMSISPREV_.DSLOGRADOURO
        MaxLength = 9
        TabOrder = 0
      end
      object DBEDLGCDESC: TDBEdit
        Left = 8
        Top = 56
        Width = 249
        Height = 21
        DataField = 'LGCDESC'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 1
      end
      object DBEDLGNCGTL: TDBEdit
        Left = 136
        Top = 96
        Width = 57
        Height = 21
        DataField = 'LGNCGTL'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 2
      end
      object DBEDLGCUF: TDBEdit
        Left = 336
        Top = 96
        Width = 30
        Height = 21
        DataField = 'LGCUF'
        DataSource = DMSISPREV_.DSLOGRADOURO
        MaxLength = 2
        TabOrder = 3
      end
      object DBEDLGNCGCD: TDBEdit
        Left = 136
        Top = 136
        Width = 57
        Height = 21
        DataField = 'LGNCGCD'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 168
        Width = 633
        Height = 201
        DataSource = DMSISPREV_.DSLOGRADOURO
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
            FieldName = 'LGCCEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGCDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGNCGTL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGCUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGNCGCD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGNCGBR'
            Visible = True
          end>
      end
      object DBEDLGNCGBR: TDBEdit
        Left = 336
        Top = 136
        Width = 57
        Height = 21
        DataField = 'LGNCGBR'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 6
      end
      object DBLKCBLGCDCTL: TDBLookupComboBox
        Left = 8
        Top = 96
        Width = 121
        Height = 21
        DataField = 'LGCDCTL'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 7
      end
      object DBLKCBLGCDCCD: TDBLookupComboBox
        Left = 8
        Top = 136
        Width = 121
        Height = 21
        DataField = 'LGCDCCD'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 8
      end
      object DBLKCBLGCDCBR: TDBLookupComboBox
        Left = 208
        Top = 136
        Width = 121
        Height = 21
        DataField = 'LGCDCBR'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 9
      end
      object DBLKCBLGCDCES: TDBLookupComboBox
        Left = 208
        Top = 96
        Width = 121
        Height = 21
        DataField = 'LGCDCUF'
        DataSource = DMSISPREV_.DSLOGRADOURO
        TabOrder = 10
      end
    end
  end
end

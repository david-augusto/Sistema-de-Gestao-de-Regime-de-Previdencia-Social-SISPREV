object FTL_: TFTL_
  Left = 202
  Top = 149
  Width = 696
  Height = 375
  Caption = 'TIPO LOGRADOURO'
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
      DataSource = DMSISPREV_.DSTIPOLOGRADOURO
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
      object LBTLNCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDTLNCODG
      end
      object LBTLCDESC: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDTLCDESC
      end
      object DBEDTLNCODG: TDBEdit
        Left = 8
        Top = 24
        Width = 134
        Height = 21
        DataField = 'TLNCODG'
        DataSource = DMSISPREV_.DSTIPOLOGRADOURO
        TabOrder = 0
      end
      object DBEDTLCDESC: TDBEdit
        Left = 8
        Top = 72
        Width = 393
        Height = 21
        DataField = 'TLCDESC'
        DataSource = DMSISPREV_.DSTIPOLOGRADOURO
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 120
        Width = 393
        Height = 120
        DataSource = DMSISPREV_.DSTIPOLOGRADOURO
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
            FieldName = 'TLNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TLCDESC'
            Visible = True
          end>
      end
    end
  end
end

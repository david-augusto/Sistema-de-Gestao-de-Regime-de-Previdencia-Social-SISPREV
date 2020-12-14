object FEV_: TFEV_
  Left = 221
  Top = 163
  Width = 696
  Height = 375
  Caption = 'EVENTO'
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
      DataSource = DMSISPREV_.DSEVENTO
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
      object LBEVNCODG: TLabel
        Left = 8
        Top = 0
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDEVNCODG
      end
      object LBEVCDESC: TLabel
        Left = 8
        Top = 64
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDEVCDESC
      end
      object DBEDEVNCODG: TDBEdit
        Left = 8
        Top = 16
        Width = 134
        Height = 21
        DataField = 'EVNCODG'
        DataSource = DMSISPREV_.DSEVENTO
        TabOrder = 0
      end
      object DBEDEVCDESC: TDBEdit
        Left = 8
        Top = 80
        Width = 321
        Height = 21
        DataField = 'EVCDESC'
        DataSource = DMSISPREV_.DSEVENTO
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 112
        Width = 320
        Height = 120
        DataSource = DMSISPREV_.DSEVENTO
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
            FieldName = 'EVNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EVCDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EVCTIPO'
            Visible = True
          end>
      end
      object DBRGEVCTIPO: TDBRadioGroup
        Left = 152
        Top = 0
        Width = 185
        Height = 73
        Caption = 'Tipo'
        DataField = 'EVCTIPO'
        DataSource = DMSISPREV_.DSEVENTO
        Items.Strings = (
          'Cr'#233'dito'
          'D'#233'bito')
        TabOrder = 3
        Values.Strings = (
          '+'
          '-')
      end
    end
  end
end

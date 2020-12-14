object FCA_: TFCA_
  Left = 204
  Top = 167
  Width = 696
  Height = 377
  Caption = 'CARGO'
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
      DataSource = DMSISPREV_.DSCARGO
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
      object LBCANCGEN: TLabel
        Left = 8
        Top = 40
        Width = 54
        Height = 13
        Caption = 'C'#243'digo(EN)'
        FocusControl = DBEDCANCGEN
      end
      object LBCANCODG: TLabel
        Left = 184
        Top = 40
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDCANCODG
      end
      object LBCACDESC: TLabel
        Left = 8
        Top = 80
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDCACDESC
      end
      object DBEDCANCGEN: TDBEdit
        Left = 8
        Top = 56
        Width = 134
        Height = 21
        DataField = 'CANCGEN'
        DataSource = DMSISPREV_.DSCARGO
        TabOrder = 0
      end
      object DBEDCANCODG: TDBEdit
        Left = 184
        Top = 56
        Width = 134
        Height = 21
        DataField = 'CANCODG'
        DataSource = DMSISPREV_.DSCARGO
        TabOrder = 1
      end
      object DBEDCACDESC: TDBEdit
        Left = 8
        Top = 96
        Width = 337
        Height = 21
        DataField = 'CACDESC'
        DataSource = DMSISPREV_.DSCARGO
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 136
        Width = 337
        Height = 120
        DataSource = DMSISPREV_.DSCARGO
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
            FieldName = 'CANCGEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CACDESC'
            Visible = True
          end>
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 16
        Width = 113
        Height = 21
        DataField = 'CACDCEN'
        DataSource = DMSISPREV_.DSCARGO
        TabOrder = 4
      end
    end
  end
end

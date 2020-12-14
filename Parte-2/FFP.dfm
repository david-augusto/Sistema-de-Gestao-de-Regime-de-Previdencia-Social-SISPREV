object FFP_: TFFP_
  Left = 221
  Top = 163
  Width = 696
  Height = 375
  Caption = 'FOLHA PAGAMENTO'
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
      DataSource = DMSISPREV_.DSFOLHAPAGAMENTO
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
      object LBFPNCODG: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDFPNCODG
      end
      object LBFPDDATA: TLabel
        Left = 16
        Top = 56
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEDFPDDATA
      end
      object DBEDFPNCODG: TDBEdit
        Left = 16
        Top = 24
        Width = 134
        Height = 21
        DataField = 'FPNCODG'
        DataSource = DMSISPREV_.DSFOLHAPAGAMENTO
        TabOrder = 0
      end
      object DBEDFPDDATA: TDBEdit
        Left = 16
        Top = 72
        Width = 134
        Height = 21
        DataField = 'FPDDATA'
        DataSource = DMSISPREV_.DSFOLHAPAGAMENTO
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 112
        Width = 153
        Height = 120
        DataSource = DMSISPREV_.DSFOLHAPAGAMENTO
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
            FieldName = 'FPNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPDDATA'
            Visible = True
          end>
      end
    end
  end
end

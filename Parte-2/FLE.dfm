object FLE_: TFLE_
  Left = 221
  Top = 163
  Width = 696
  Height = 375
  Caption = 'LEI'
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
      DataSource = DMSISPREV_.DSLEI
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
      object LBLENCODG: TLabel
        Left = 16
        Top = 0
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDLENCODG
      end
      object LBLECDESC: TLabel
        Left = 16
        Top = 40
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDLECDESC
      end
      object LBLENNUM: TLabel
        Left = 16
        Top = 80
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEDLENNUM
      end
      object LBLEDDATA: TLabel
        Left = 16
        Top = 120
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEDLEDDATA
      end
      object LBLEMFUND: TLabel
        Left = 184
        Top = 80
        Width = 77
        Height = 13
        Caption = 'Fundamenta'#231#227'o'
        FocusControl = DBMMLEMFUND
      end
      object DBEDLENCODG: TDBEdit
        Left = 16
        Top = 16
        Width = 134
        Height = 21
        DataField = 'LENCODG'
        DataSource = DMSISPREV_.DSLEI
        TabOrder = 0
      end
      object DBEDLECDESC: TDBEdit
        Left = 16
        Top = 56
        Width = 521
        Height = 21
        DataField = 'LECDESC'
        DataSource = DMSISPREV_.DSLEI
        TabOrder = 1
      end
      object DBEDLENNUM: TDBEdit
        Left = 16
        Top = 96
        Width = 134
        Height = 21
        DataField = 'LECNUMR'
        DataSource = DMSISPREV_.DSLEI
        TabOrder = 2
      end
      object DBEDLEDDATA: TDBEdit
        Left = 16
        Top = 136
        Width = 134
        Height = 21
        DataField = 'LEDDATA'
        DataSource = DMSISPREV_.DSLEI
        TabOrder = 3
      end
      object DBMMLEMFUND: TDBMemo
        Left = 184
        Top = 96
        Width = 185
        Height = 65
        DataField = 'LEMFUND'
        DataSource = DMSISPREV_.DSLEI
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 168
        Width = 633
        Height = 120
        DataSource = DMSISPREV_.DSLEI
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'LENCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LECDESC'
            Width = 336
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LECNUMR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LEDDATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LEMFUND'
            Visible = True
          end>
      end
    end
  end
end

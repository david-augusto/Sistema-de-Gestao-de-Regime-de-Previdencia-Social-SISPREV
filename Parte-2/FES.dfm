object FES_: TFES_
  Left = 205
  Top = 154
  Width = 696
  Height = 375
  Caption = 'ESTADO'
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
      DataSource = DMSISPREV_.DSESTADO
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
      object LBESNCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDESCUF
      end
      object LBESCDESC: TLabel
        Left = 56
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDESCDESC
      end
      object DBEDESCUF: TDBEdit
        Left = 8
        Top = 24
        Width = 25
        Height = 21
        DataField = 'ESCUF'
        DataSource = DMSISPREV_.DSESTADO
        MaxLength = 2
        TabOrder = 0
      end
      object DBEDESCDESC: TDBEdit
        Left = 56
        Top = 24
        Width = 169
        Height = 21
        DataField = 'ESCDESC'
        DataSource = DMSISPREV_.DSESTADO
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 72
        Width = 320
        Height = 120
        DataSource = DMSISPREV_.DSESTADO
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
            FieldName = 'ESCUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESCDESC'
            Visible = True
          end>
      end
    end
  end
end

unit FCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons;

type
  TFCR_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBCRNCODG: TLabel;
    DBEDCRNCODG: TDBEdit;
    LBCRCDESC: TLabel;
    DBEDCRCDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    EDCODIGO: TEdit;
    EDDESCRICAO: TEdit;
    CBINDEXES: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDCODIGOChange(Sender: TObject);
    procedure EDDESCRICAOChange(Sender: TObject);
    procedure CBINDEXESChange(Sender: TObject);
    procedure BBPRINTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCR_: TFCR_;

implementation

uses DMSISPREV, QRCR;

{$R *.dfm}

procedure TFCR_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

procedure TFCR_.EDCODIGOChange(Sender: TObject);
begin
  IF NOT (EDCODIGO.TEXT = '') then // Apóstrofes
  BEGIN
      DMSISPREV_.TBCATEGORIA.indexname := ''; // Indice Primário
    TRY
      DMSISPREV_.TBCATEGORIA.FindKey([EDCODIGO.TEXT]);
    EXCEPT
      SHOWMESSAGE ('Código Inválido');
    END; // Try
  END; // IF
end;

procedure TFCR_.EDDESCRICAOChange(Sender: TObject);
begin
 IF NOT ((SENDER AS TEDIT).TEXT = '') then
BEGIN
  DMSISPREV_.TBCATEGORIA.indexname := 'SICRCDESC';
  TRY
  DMSISPREV_.TBCATEGORIA.FindNearest([
  (SENDER AS TEDIT).TEXT]);
  EXCEPT
  SHOWMESSAGE ('Descrição Inválida');
  END; // Try
END; // IF
end;

procedure TFCR_.CBINDEXESChange(Sender: TObject);
begin
  DMSISPREV_.TBCATEGORIA.IndexName :=
  DMSISPREV_.TBCATEGORIA.IndexDefs.Items
  [CBINDEXES.ITEMINDEX].NAME;
end;

procedure TFCR_.BBPRINTClick(Sender: TObject);
begin
DMSISPREV_.QRYCR.CLOSE;
DMSISPREV_.QRYCR.OPEN;
 QRCR_ := TQRCR_.CREATE(FCR_);
//  CAPTION := SELF.Caption;
    QRCR_.QRLabel1.CAPTION := 'SISPREV';
//  QREP.ReportTitle := SELF.Caption;
  QRCR_.QREP.PREVIEW;  //  QREP.PRINT;
end;

end.

unit FCT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFCT_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    DBEDCTNCGEN: TDBEdit;
    DBEDCTNCGED: TDBEdit;
    LBCTNCODG: TLabel;
    DBEDCTNCODG: TDBEdit;
    LBCTCDESC: TLabel;
    DBEDCTDDESC: TDBEdit;
    LBCTNNUMR: TLabel;
    DBEDCTNNUMR: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ENCDESC: TLabel;
    LBEDCDESC: TLabel;
    procedure BRCTNCGEMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCT_: TFCT_;

implementation

uses DMSISPREV, FEM;

{$R *.dfm}

procedure TFCT_.BRCTNCGEMClick(Sender: TObject);
begin
FEM_ := TFEM_.CREATE(FCT_);
FEM_.SHOW;         // Abre de forma não Modal
end;

end.

unit FEC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFEC_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBECNCODG: TLabel;
    DBEDECNCODG: TDBEdit;
    LBECCDESC: TLabel;
    DBEDECCDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEC_: TFEC_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFEC_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

unit FCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TFCD_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBCDCUF: TLabel;
    DBEDCDCUF: TDBEdit;
    LBCDNCODG: TLabel;
    DBEDCDNCODG: TDBEdit;
    LBCDCDESC: TLabel;
    DBEDCDCDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLKCBCDCDCES: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCD_: TFCD_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFCD_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FREE; //DESTRUINDO FORMULARIO
end;

end.

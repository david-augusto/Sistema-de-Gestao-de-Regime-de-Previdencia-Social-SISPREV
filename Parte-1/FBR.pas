unit FBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFBR_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBBRNCGES: TLabel;
    DBEDBRCUF: TDBEdit;
    LBBRNCGCD: TLabel;
    DBEDBRNCGCD: TDBEdit;
    LBBRNCODG: TLabel;
    DBEDBRNCODG: TDBEdit;
    LBBRCDESC: TLabel;
    DBEDBRCDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLKCBBRCDCES: TDBLookupComboBox;
    DBLKCBBRCDCCD: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBR_: TFBR_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFBR_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

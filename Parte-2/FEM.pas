unit FEM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFEM_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBEMNCGEN: TLabel;
    DBEDEMNCGEN: TDBEdit;
    LBCTNCODG: TLabel;
    DBEDEMNCODG: TDBEdit;
    LBEMNDESC: TLabel;
    DBEDEMCDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLKCBEMCDCEN: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEM_: TFEM_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFEM_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

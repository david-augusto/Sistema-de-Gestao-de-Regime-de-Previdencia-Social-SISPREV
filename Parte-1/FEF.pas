unit FEF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFEF_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBEFNCGFP: TLabel;
    DBEDEFNCGFP: TDBEdit;
    LBEFNCODG: TLabel;
    LBEFNCGEN: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLKCBEFCDCFP: TDBLookupComboBox;
    DBLKCBEFCDCEN: TDBLookupComboBox;
    DBEDEFNCODG: TDBEdit;
    DBEDEFNCGEN: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEF_: TFEF_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFEF_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

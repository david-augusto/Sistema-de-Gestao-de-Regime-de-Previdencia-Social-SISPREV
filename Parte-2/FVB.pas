unit FVB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFVB_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBVBNCODG: TLabel;
    DBEDVBNCODG: TDBEdit;
    LBVBNCGEN: TLabel;
    DBEDVBNCGEN: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    LBVBCDESC: TLabel;
    DBEDVBCDESC: TDBEdit;
    DBLKCBVBCDCEN: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVB_: TFVB_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFVB_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

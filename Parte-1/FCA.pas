unit FCA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFCA_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBCANCGEN: TLabel;
    DBEDCANCGEN: TDBEdit;
    LBCANCODG: TLabel;
    DBEDCANCODG: TDBEdit;
    LBCACDESC: TLabel;
    DBEDCACDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCA_: TFCA_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFCA_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

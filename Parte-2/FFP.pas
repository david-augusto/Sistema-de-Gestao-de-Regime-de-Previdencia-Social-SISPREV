unit FFP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFFP_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBFPNCODG: TLabel;
    DBEDFPNCODG: TDBEdit;
    LBFPDDATA: TLabel;
    DBEDFPDDATA: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFP_: TFFP_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFFP_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

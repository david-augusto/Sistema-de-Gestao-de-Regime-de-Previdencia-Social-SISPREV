unit FES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFES_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBESNCODG: TLabel;
    DBEDESCUF: TDBEdit;
    LBESCDESC: TLabel;
    DBEDESCDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FES_: TFES_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFES_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

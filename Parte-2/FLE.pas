unit FLE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids;

type
  TFLE_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBLENCODG: TLabel;
    DBEDLENCODG: TDBEdit;
    LBLECDESC: TLabel;
    DBEDLECDESC: TDBEdit;
    LBLENNUM: TLabel;
    DBEDLENNUM: TDBEdit;
    LBLEDDATA: TLabel;
    DBEDLEDDATA: TDBEdit;
    LBLEMFUND: TLabel;
    DBMMLEMFUND: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLE_: TFLE_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFLE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

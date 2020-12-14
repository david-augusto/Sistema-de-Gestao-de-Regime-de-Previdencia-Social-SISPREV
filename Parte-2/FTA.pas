unit FTA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFTA_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBTANCODG: TLabel;
    DBEDTANCODG: TDBEdit;
    LBTACDESC: TLabel;
    DBEDTACDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTA_: TFTA_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFTA_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

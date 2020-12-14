unit FED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids;

type
  TFED_ = class(TForm)
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    LBEDNCGEN: TLabel;
    DBEDEDNCGEN: TDBEdit;
    LBEDNCODG: TLabel;
    DBEDEDNCODG: TDBEdit;
    LBEDCDESC: TLabel;
    DBEDEDCDESC: TDBEdit;
    LBEDCCEP: TLabel;
    DBEDEDCCEP: TDBEdit;
    LBEDNNUMR: TLabel;
    DBEDEDNNUMR: TDBEdit;
    LBEDCOBS: TLabel;
    DBEDEDCOBS: TDBEdit;
    LBEDMOBS: TLabel;
    DBMMEDMOBS: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLKCBEDCDCEN: TDBLookupComboBox;
    DBLKCBEDCDCLG: TDBLookupComboBox;
    BTCONTATO: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTCONTATOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FED_: TFED_;

implementation

uses DMSISPREV, FCT;

{$R *.dfm}

procedure TFED_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

procedure TFED_.BTCONTATOClick(Sender: TObject);
begin
FCT_ := TFCT_.CREATE(FED_);
FCT_.SHOW;         // Abre de forma não Modal
end;

end.

unit FLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFLG_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBLGCCEP: TLabel;
    DBEDLGCCEP: TDBEdit;
    LBLGCDESC: TLabel;
    DBEDLGCDESC: TDBEdit;
    LBLGNCGTL: TLabel;
    DBEDLGNCGTL: TDBEdit;
    LBLGNCGES: TLabel;
    DBEDLGCUF: TDBEdit;
    LBLGNCGCD: TLabel;
    DBEDLGNCGCD: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    LBLGNCGBR: TLabel;
    DBEDLGNCGBR: TDBEdit;
    DBLKCBLGCDCTL: TDBLookupComboBox;
    DBLKCBLGCDCCD: TDBLookupComboBox;
    DBLKCBLGCDCBR: TDBLookupComboBox;
    DBLKCBLGCDCES: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLG_: TFLG_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFLG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

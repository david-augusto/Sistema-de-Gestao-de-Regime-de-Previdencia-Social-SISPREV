unit FER;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ComCtrls;

type
  TFER_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBERNCGRE: TLabel;
    DBEDERNCGRE: TDBEdit;
    LBERNCGEN: TLabel;
    DBEDERNCGEN: TDBEdit;
    LBERNCGCR: TLabel;
    DBEDERNCGCR: TDBEdit;
    LBERDCADT: TLabel;
    DBEDERDCADT: TDBEdit;
    LBERDCANC: TLabel;
    DBEDERDCANC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FER_: TFER_;

implementation

uses DMSISPREV;

{$R *.dfm}

end.

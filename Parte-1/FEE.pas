unit FEE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids;

type
  TFEE_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBEENCGFP: TLabel;
    DBEDEENCGFP: TDBEdit;
    LBEENCGEF: TLabel;
    DBEDEENCGEF: TDBEdit;
    LBEENCODG: TLabel;
    DBEDEENCODG: TDBEdit;
    LBEENCGEV: TLabel;
    DBEDEENCGEV: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    LBEEYVALR: TLabel;
    DBEDEEYVALR: TDBEdit;
    LBEEMOBS: TLabel;
    DBMMEEMOBS: TDBMemo;
    DBLKCBEECDCFP: TDBLookupComboBox;
    DBLKCBEECDCEF: TDBLookupComboBox;
    DBLKCBEECDCEV: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEE_: TFEE_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFEE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

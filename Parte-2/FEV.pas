unit FEV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFEV_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBEVNCODG: TLabel;
    DBEDEVNCODG: TDBEdit;
    LBEVCDESC: TLabel;
    DBEDEVCDESC: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBRGEVCTIPO: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEV_: TFEV_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFEV_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

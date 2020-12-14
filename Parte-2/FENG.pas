unit FENG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart;

type
  TFENG_ = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FENG_: TFENG_;

implementation

uses DMSISPREV;

{$R *.dfm}

procedure TFENG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

end.

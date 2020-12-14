unit FEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ExtDlgs,
  Buttons, ComCtrls;

type
  TFEN_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LBENNCODG: TLabel;
    DBEDENNCODG: TDBEdit;
    LBENCDESC: TLabel;
    DBEDENCDESC: TDBEdit;
    LBENCAPEL: TLabel;
    DBEDENCAPEL: TDBEdit;
    LBENOFOTO: TLabel;
    DBIMENOFOTO: TDBImage;
    LBENDNASC: TLabel;
    DBEDENDNASC: TDBEdit;
    LBENNCADT: TLabel;
    DBEDENNCADT: TDBEdit;
    LBENDCADT: TLabel;
    DBEDENDCADT: TDBEdit;
    LBENHCADT: TLabel;
    DBEDENHCADT: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    OpenPictureDialog1: TOpenPictureDialog;
    BTFOTO: TButton;
    LBENNIDAD: TLabel;
    DBEDENNIDAD: TDBEdit;
    DBRDENATIPO: TDBRadioGroup;
    DBRGENNSEXO: TDBRadioGroup;
    DBNavigator2: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1Fisica: TTabSheet;
    TabSheet1Juridica: TTabSheet;
    LBENCCPF: TLabel;
    DBEDENCCPF: TDBEdit;
    LBENCRG: TLabel;
    DBEDENCRG: TDBEdit;
    LBENCCNPJ: TLabel;
    DBEDENCCNPJ: TDBEdit;
    LBENCIE: TLabel;
    DBEDENCIE: TDBEdit;
    LBENCIM: TLabel;
    DBEDENCIM: TDBEdit;
    LBENNCGEC: TLabel;
    DBEDENNCGEC: TDBEdit;
    DBLKCBENCDCEC: TDBLookupComboBox;
    Label3: TLabel;
    DBEDERNCGCR: TDBEdit;
    DBLKCBERCDCCR: TDBLookupComboBox;
    PageControl2: TPageControl;
    TabSheet1RE34: TTabSheet;
    TabSheet1RE7: TTabSheet;
    LBERNCGTA: TLabel;
    DBEDERNCGTA: TDBEdit;
    DBLKCBERCDCTA: TDBLookupComboBox;
    LBERNC2EN: TLabel;
    DBEDERNC2EN: TDBEdit;
    LBERNCGCA: TLabel;
    DBEDERNCGCA: TDBEdit;
    DBLKCBERCD2EN: TDBLookupComboBox;
    DBLKCBERCDCCA: TDBLookupComboBox;
    BTCARGO: TButton;
    BTENDERECO: TButton;
    BTEMAIL: TButton;
    LBERDCADT: TLabel;
    DBEDERDCADT: TDBEdit;
    LBERDCANC: TLabel;
    DBEDERDCANC: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTFOTOClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure DBRDENATIPOChange(Sender: TObject);
    procedure BTCARGOClick(Sender: TObject);
    procedure BTENDERECOClick(Sender: TObject);
    procedure BTENNCGCTClick(Sender: TObject);
    procedure BTEMAILClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEN_: TFEN_;

implementation

uses DMSISPREV, FENG, FCA, FED, FCT, FEM;

{$R *.dfm}

procedure TFEN_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FREE;
end;

procedure TFEN_.BTFOTOClick(Sender: TObject);
begin
IF (self.OpenPictureDialog1.Execute) THEN

BEGIN
SELF.DBIMENOFOTO.Picture.LoadFromFile(
SELF.OpenPictureDialog1.FileName);

END;
end;

procedure TFEN_.BitBtn1Click(Sender: TObject);
begin
DMSISPREV_.QRYER.CLOSE;
DMSISPREV_.QRYER.OPEN;
FENG_ := TFENG_.CREATE(FEN_);
FENG_.SHOW;
end;

procedure TFEN_.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
IF (button in [nbfirst, nbprior, nbnext, nblast,
nbcancel, nbrefresh]) then
begin
        inserindo := false;
end;
if (button in [nbpost]) and inserindo then
begin
//CODIGO := DMSISPREV_.tbentidadeenncodg.asinteger;
DMSISPREV_.Query1.close;
DMSISPREV_.Query1.open;
DMSISPREV_.Query1.last; // vai para o último

codigo := DMSISPREV_.Query1enncodg.asinteger + 1;
DMSISPREV_.tbentidadeenncodg.value := codigo;

end;
end;

procedure TFEN_.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
IF (button in [nbinsert]) then
begin
        inserindo := true;
end;
end;

procedure TFEN_.FormCreate(Sender: TObject);
begin
inserindo := false;
self.Caption := DMSISPREV_.TBRELACAORECDESC.Value;
end;

procedure TFEN_.DBRDENATIPOChange(Sender: TObject);
begin

if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
TabSheet1Fisica.TabVisible := true;
TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
TabSheet1Fisica.TabVisible := false;
TabSheet1Juridica.TabVisible := true;
end
else
begin
TabSheet1Fisica.TabVisible := false;
TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFEN_.BTCARGOClick(Sender: TObject);
begin
FCA_ := TFCA_.CREATE(FEN_);
FCA_.SHOW;         // Abre de forma não Modal
end;

procedure TFEN_.BTENDERECOClick(Sender: TObject);
begin
FED_ := TFED_.CREATE(FEN_);
FED_.SHOW;         // Abre de forma não Modal
end;

procedure TFEN_.BTENNCGCTClick(Sender: TObject);
begin
FCT_ := TFCT_.CREATE(FEN_);
FCT_.SHOW;         // Abre de forma não Modal
end;

procedure TFEN_.BTEMAILClick(Sender: TObject);
begin
FEM_ := TFEM_.CREATE(FEN_);
FEM_.SHOW;         // Abre de forma não Modal
end;

end.

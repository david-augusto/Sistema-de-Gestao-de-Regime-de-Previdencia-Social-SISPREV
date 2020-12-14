unit FMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFMAIN_ = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cidade1: TMenuItem;
    Sair1: TMenuItem;
    Estado1: TMenuItem;
    Bairro1: TMenuItem;
    ipoLogradouro1: TMenuItem;
    Logradouro1: TMenuItem;
    EstadoCivil1: TMenuItem;
    TipoAposentadoria1: TMenuItem;
    Categoria1: TMenuItem;
    Relacao1: TMenuItem;
    Lei1: TMenuItem;
    Verba1: TMenuItem;
    Evento1: TMenuItem;
    FolhaPagamento1: TMenuItem;
    EntidadeFolha1: TMenuItem;
    EventoEntFol1: TMenuItem;
    Endereo1: TMenuItem;
    Folha1: TMenuItem;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Gerente1: TMenuItem;
    Segurado1: TMenuItem;
    Pensionista1: TMenuItem;
    Excluido1: TMenuItem;
    RepresentanteLegal1: TMenuItem;
    Orgo1: TMenuItem;
    FontePagadora1: TMenuItem;
    Exsegurado1: TMenuItem;
    Obito1: TMenuItem;
    E1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    G1: TMenuItem;
    QuantidadeEntRel1: TMenuItem;
    Relatrios1: TMenuItem;
    Categoria2: TMenuItem;
    procedure Cidade1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure ipoLogradouro1Click(Sender: TObject);
    procedure Logradouro1Click(Sender: TObject);
    procedure EstadoCivil1Click(Sender: TObject);
    procedure TipoAposentadoria1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Relacao1Click(Sender: TObject);
    procedure Entidade1Click(Sender: TObject);
    procedure EntidadeRelacao1Click(Sender: TObject);
    procedure Endereco1Click(Sender: TObject);
    procedure Contato1Click(Sender: TObject);
    procedure Email1Click(Sender: TObject);
    procedure Lei1Click(Sender: TObject);
    procedure Verba1Click(Sender: TObject);
    procedure Cargo1Click(Sender: TObject);
    procedure Evento1Click(Sender: TObject);
    procedure FolhaPagamento1Click(Sender: TObject);
    procedure EntidadeFolha1Click(Sender: TObject);
    procedure EventoEntFol1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Gerente1Click(Sender: TObject);
    procedure Segurado1Click(Sender: TObject);
    procedure Pensionista1Click(Sender: TObject);
    procedure Excluido1Click(Sender: TObject);
    procedure RepresentanteLegal1Click(Sender: TObject);
    procedure Orgo1Click(Sender: TObject);
    procedure FontePagadora1Click(Sender: TObject);
    procedure Exsegurado1Click(Sender: TObject);
    procedure Obito1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure EntidadeRelao1Click(Sender: TObject);
    procedure QuantidadeEntRel1Click(Sender: TObject);
    procedure Categoria2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMAIN_: TFMAIN_;

implementation

uses FCD, FES, FBR, FTL, FLG, FEC, FTA, FCR, FRE, FEN, FER, FED, FCT, FEM,
  FLE, FVB, FCA, FEV, FFP, FEF, FEE, DMSISPREV, FSOBRE, FENG, QRCR;

{$R *.dfm}

procedure TFMAIN_.Cidade1Click(Sender: TObject);
begin
  FCD_ := TFCD_.CREATE(APPLICATION);
  FCD_.SHOW;
end;

procedure TFMAIN_.Sair1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure TFMAIN_.Estado1Click(Sender: TObject);
begin
FES_ := TFES_.CREATE(APPLICATION);
FES_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Bairro1Click(Sender: TObject);
begin
FBR_ := TFBR_.CREATE(APPLICATION);
FBR_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.ipoLogradouro1Click(Sender: TObject);
begin
FTL_ := TFTL_.CREATE(APPLICATION);
FTL_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Logradouro1Click(Sender: TObject);
begin
FLG_ := TFLG_.CREATE(APPLICATION);
FLG_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.EstadoCivil1Click(Sender: TObject);
begin
FEC_ := TFEC_.CREATE(APPLICATION);
FEC_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.TipoAposentadoria1Click(Sender: TObject);
begin
FTA_ := TFTA_.CREATE(APPLICATION);
FTA_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Categoria1Click(Sender: TObject);
begin
FCR_ := TFCR_.CREATE(APPLICATION);
FCR_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Relacao1Click(Sender: TObject);
begin
FRE_ := TFRE_.CREATE(APPLICATION);
FRE_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Entidade1Click(Sender: TObject);
begin
FEN_ := TFEN_.CREATE(APPLICATION);
FEN_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.EntidadeRelacao1Click(Sender: TObject);
begin
FER_ := TFER_.CREATE(APPLICATION);
FER_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Endereco1Click(Sender: TObject);
begin
FED_ := TFED_.CREATE(APPLICATION);
FED_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Contato1Click(Sender: TObject);
begin
FCT_ := TFCT_.CREATE(APPLICATION);
FCT_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Email1Click(Sender: TObject);
begin
FEM_ := TFEM_.CREATE(APPLICATION);
FEM_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Lei1Click(Sender: TObject);
begin
FLE_ := TFLE_.CREATE(APPLICATION);
FLE_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Verba1Click(Sender: TObject);
begin
DMSISPREV_.QRYVB.CLOSE;
DMSISPREV_.QRYVB.OPEN;
FVB_ := TFVB_.CREATE(APPLICATION);
FVB_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Cargo1Click(Sender: TObject);
begin
FCA_ := TFCA_.CREATE(APPLICATION);
FCA_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Evento1Click(Sender: TObject);
begin
FEV_ := TFEV_.CREATE(APPLICATION);
FEV_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.FolhaPagamento1Click(Sender: TObject);
begin
FFP_ := TFFP_.CREATE(APPLICATION);
FFP_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.EntidadeFolha1Click(Sender: TObject);
begin
DMSISPREV_.QRYEF.CLOSE;
DMSISPREV_.QRYEF.OPEN;
FEF_ := TFEF_.CREATE(APPLICATION);
FEF_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.EventoEntFol1Click(Sender: TObject);
begin
FEE_ := TFEE_.CREATE(APPLICATION);
FEE_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.Usurio1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([1]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Gerente1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([2]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Segurado1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([3]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := true;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Pensionista1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([4]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := true;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Excluido1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([5]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.RepresentanteLegal1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([6]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Orgo1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([7]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := true;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.FontePagadora1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([8]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Exsegurado1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([9]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Obito1Click(Sender: TObject);
begin
DMSISPREV_.tbrelacao.findkey ([10]);
FEN_:=TFEN_.CREATE(APPLICATION);
FEN_.TabSheet1RE34.TabVisible := false;
FEN_.TabSheet1RE7.TabVisible := false;
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'F') then
begin
FEN_.TabSheet1Fisica.TabVisible := true;
FEN_.TabSheet1Juridica.TabVisible := false;
end else
if (DMSISPREV_.TBENTIDADEENCTIPO.value = 'J') then
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := true;
end
else
begin
FEN_.TabSheet1Fisica.TabVisible := false;
FEN_.TabSheet1Juridica.TabVisible := false;
end
end;

procedure TFMAIN_.Sobre1Click(Sender: TObject);
begin
FSOBRE_ := TFSOBRE_.CREATE(SELF);
FSOBRE_.SHOWMODAL;
FSOBRE_.FREE;

end;

procedure TFMAIN_.EntidadeRelao1Click(Sender: TObject);
begin
FER_ := TFER_.CREATE(APPLICATION);
FER_.SHOW;         // Abre de forma não Modal
end;

procedure TFMAIN_.QuantidadeEntRel1Click(Sender: TObject);
begin
DMSISPREV_.QRYER.CLOSE;
DMSISPREV_.QRYER.OPEN;
FENG_ := TFENG_.CREATE(APPLICATION);
FENG_.SHOW;
end;

procedure TFMAIN_.Categoria2Click(Sender: TObject);
begin
DMSISPREV_.QRYCR.CLOSE;
DMSISPREV_.QRYCR.OPEN;
 QRCR_ := TQRCR_.CREATE(APPLICATION);
//  CAPTION := SELF.Caption;
    QRCR_.QRLabel1.CAPTION := 'SISPREV';
//  QREP.ReportTitle := SELF.Caption;
  QRCR_.QREP.PREVIEW;  //  QREP.PRINT;
end;

end.

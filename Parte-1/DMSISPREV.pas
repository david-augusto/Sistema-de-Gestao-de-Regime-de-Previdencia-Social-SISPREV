unit DMSISPREV;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDMSISPREV_ = class(TDataModule)
    DBSISPREV: TDatabase;
    TBCIDADE: TTable;
    DSCIDADE: TDataSource;
    TBCIDADECDCUF: TStringField;
    TBCIDADECDNCODG: TFloatField;
    TBCIDADECDCDESC: TStringField;
    TBESTADO: TTable;
    DSESTADO: TDataSource;
    TBBAIRRO: TTable;
    DSBAIRRO: TDataSource;
    TBTIPOLOGRADOURO: TTable;
    DSTIPOLOGRADOURO: TDataSource;
    TBLOGRADOURO: TTable;
    DSLOGRADOURO: TDataSource;
    TBESTADOCIVIL: TTable;
    DSESTADOCIVIL: TDataSource;
    TBTIPOAPOSENTADORIA: TTable;
    DSTIPOAPOSENTADORIA: TDataSource;
    TBCATEGORIA: TTable;
    DSCATEGORIA: TDataSource;
    TBRELACAO: TTable;
    DSRELACAO: TDataSource;
    TBENTIDADE: TTable;
    DSENTIDADE: TDataSource;
    TBENTIDADERELACAO: TTable;
    DSENTIDADERELACAO: TDataSource;
    TBENDERECO: TTable;
    DSENDERECO: TDataSource;
    TBCONTATO: TTable;
    DSCONTATO: TDataSource;
    TBEMAIL: TTable;
    DSEMAIL: TDataSource;
    TBLEI: TTable;
    DSLEI: TDataSource;
    TBVERBA: TTable;
    DSVERBA: TDataSource;
    TBCARGO: TTable;
    DSCARGO: TDataSource;
    TBEVENTO: TTable;
    DSEVENTO: TDataSource;
    TBFOLHAPAGAMENTO: TTable;
    DSFOLHAPAGAMENTO: TDataSource;
    TBENTIDADE_FOLHA: TTable;
    DSENTIDADEFOLHA: TDataSource;
    TBEVENTO_ENT_FOL: TTable;
    DSEVENTO_ENT_FOL: TDataSource;
    TBESTADOESCUF: TStringField;
    TBESTADOESCDESC: TStringField;
    TBBAIRROBRCUF: TStringField;
    TBBAIRROBRNCGCD: TFloatField;
    TBBAIRROBRNCODG: TFloatField;
    TBBAIRROBRCDESC: TStringField;
    TBTIPOLOGRADOUROTLNCODG: TFloatField;
    TBTIPOLOGRADOUROTLCDESC: TStringField;
    TBLOGRADOUROLGCCEP: TStringField;
    TBLOGRADOUROLGCDESC: TStringField;
    TBLOGRADOUROLGNCGTL: TFloatField;
    TBLOGRADOUROLGCUF: TStringField;
    TBLOGRADOUROLGNCGCD: TFloatField;
    TBLOGRADOUROLGNCGBR: TFloatField;
    TBESTADOCIVILECNCODG: TFloatField;
    TBESTADOCIVILECCDESC: TStringField;
    TBTIPOAPOSENTADORIATANCODG: TFloatField;
    TBTIPOAPOSENTADORIATACDESC: TStringField;
    TBCATEGORIACRNCODG: TFloatField;
    TBCATEGORIACRCDESC: TStringField;
    TBRELACAORENCODG: TFloatField;
    TBRELACAORECDESC: TStringField;
    TBENTIDADEENNCODG: TFloatField;
    TBENTIDADEENCDESC: TStringField;
    TBENTIDADEENCTIPO: TStringField;
    TBENTIDADEENCCPF: TStringField;
    TBENTIDADEENCRG: TStringField;
    TBENTIDADEENCCNPJ: TStringField;
    TBENTIDADEENCIE: TStringField;
    TBENTIDADEENCIM: TStringField;
    TBENTIDADEENCAPEL: TStringField;
    TBENTIDADEENOFOTO: TBlobField;
    TBENTIDADEENCSEXO: TStringField;
    TBENTIDADEENDNASC: TDateField;
    TBENTIDADEENNCGEC: TFloatField;
    TBENTIDADEENNCADT: TFloatField;
    TBENTIDADEENDCADT: TDateField;
    TBENTIDADEENHCADT: TTimeField;
    TBENTIDADERELACAOERNCGRE: TFloatField;
    TBENTIDADERELACAOERNCGEN: TFloatField;
    TBENTIDADERELACAOERNCGTA: TFloatField;
    TBENTIDADERELACAOERNC2EN: TFloatField;
    TBENTIDADERELACAOERNCGCA: TFloatField;
    TBENTIDADERELACAOERNCGCR: TFloatField;
    TBENTIDADERELACAOERDCADT: TDateField;
    TBENTIDADERELACAOERDCANC: TDateField;
    TBENDERECOEDNCGEN: TFloatField;
    TBENDERECOEDNCODG: TFloatField;
    TBENDERECOEDCDESC: TStringField;
    TBENDERECOEDCCEP: TStringField;
    TBENDERECOEDCNUMR: TStringField;
    TBENDERECOEDCOBS: TStringField;
    TBENDERECOEDMOBS: TMemoField;
    TBCONTATOCTNCGEN: TFloatField;
    TBCONTATOCTNCGED: TFloatField;
    TBCONTATOCTNCODG: TFloatField;
    TBCONTATOCTCDESC: TStringField;
    TBCONTATOCTCNUMR: TStringField;
    TBEMAILEMNCGEN: TFloatField;
    TBEMAILEMNCODG: TFloatField;
    TBEMAILEMCDESC: TStringField;
    TBLEILENCODG: TFloatField;
    TBLEILECDESC: TStringField;
    TBLEILECNUMR: TStringField;
    TBLEILEDDATA: TDateField;
    TBLEILEMFUND: TMemoField;
    TBVERBAVBNCODG: TFloatField;
    TBVERBAVBNCGEN: TFloatField;
    TBCARGOCANCGEN: TFloatField;
    TBCARGOCANCODG: TFloatField;
    TBCARGOCACDESC: TStringField;
    TBEVENTOEVNCODG: TFloatField;
    TBEVENTOEVCDESC: TStringField;
    TBEVENTOEVCTIPO: TStringField;
    TBFOLHAPAGAMENTOFPNCODG: TFloatField;
    TBFOLHAPAGAMENTOFPDDATA: TDateField;
    TBENTIDADE_FOLHAEFNCGFP: TFloatField;
    TBENTIDADE_FOLHAEFNCODG: TFloatField;
    TBENTIDADE_FOLHAEFNCGEN: TFloatField;
    TBEVENTO_ENT_FOLEENCGFP: TFloatField;
    TBEVENTO_ENT_FOLEENCGEF: TFloatField;
    TBEVENTO_ENT_FOLEENCODG: TFloatField;
    TBEVENTO_ENT_FOLEENCGEV: TFloatField;
    TBENTIDADEENNIDAD: TFloatField;
    TBVERBAVBCDESC: TStringField;
    TBEVENTO_ENT_FOLEEYVALR: TCurrencyField;
    QRYCR: TQuery;
    QRYCRCRNCODG: TFloatField;
    QRYCRCRCDESC: TStringField;
    DSQRYCR: TDataSource;
    TBEVENTO_ENT_FOLEEMOBS: TMemoField;
    TBLOGRADOUROLGCDCTL: TStringField;
    TBLOGRADOUROLGCDCCD: TStringField;
    TBLOGRADOUROLGCDCBR: TStringField;
    TBLOGRADOUROLGCDCUF: TStringField;
    Query1: TQuery;
    Query1enncodg: TFloatField;
    TBENDERECOEDCDCLG: TStringField;
    TBVERBAVBCDCEN: TStringField;
    QRYER: TQuery;
    QRYERQUANTIDADE: TIntegerField;
    QRYERRECDESC: TStringField;
    TBENTIDADEENCDCEC: TStringField;
    DSQRYER: TDataSource;
    QRYVB: TQuery;
    DSQRYVB: TDataSource;
    QRYEF: TQuery;
    DSQRYEF: TDataSource;
    QRYEFENNCODG: TFloatField;
    QRYEFENCDESC: TStringField;
    TBENTIDADE_FOLHAEFCDCEN: TStringField;
    TBEVENTO_ENT_FOLEECDCEV: TStringField;
    TBENTIDADERELACAOERCDCTA: TStringField;
    TBENTIDADERELACAOERCD2EN: TStringField;
    TBENTIDADERELACAOERCDCCA: TStringField;
    TBENTIDADERELACAOERCDCCR: TStringField;
    QRYVBENNCODG: TFloatField;
    QRYVBENCDESC: TStringField;
    TBCARGOCACDCEN: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure TBENTIDADECalcFields(DataSet: TDataSet);
    procedure TBENTIDADEBeforePost(DataSet: TDataSet);
    procedure TBENTIDADEAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSISPREV_: TDMSISPREV_;
  inserindo:boolean;
  codigo:integer;

implementation

{$R *.dfm}

procedure TDMSISPREV_.DataModuleCreate(Sender: TObject);
begin
  TBESTADO.Open;
  TBCIDADE.Open;
  TBBAIRRO.Open;
  TBTIPOLOGRADOURO.Open;
  TBLOGRADOURO.Open;
  TBESTADOCIVIL.Open;
  TBTIPOAPOSENTADORIA.Open;
  TBCATEGORIA.Open;
  TBRELACAO.Open;
  TBENTIDADE.Open;
  TBENTIDADERELACAO.Open;
  TBENDERECO.Open;
  TBCONTATO.Open;
  TBEMAIL.Open;
  TBLEI.Open;
  TBVERBA.Open;
  TBCARGO.Open;
  TBEVENTO.Open;
  TBFOLHAPAGAMENTO.Open;
  TBENTIDADE_FOLHA.Open;
  TBEVENTO_ENT_FOL.Open;

  inserindo:= FALSE;


end;

procedure TDMSISPREV_.DataModuleDestroy(Sender: TObject);
begin
  TBEVENTO_ENT_FOL.Close;
  TBENTIDADE_FOLHA.Close;
  TBFOLHAPAGAMENTO.Close;
  TBEVENTO.Close;
  TBCARGO.Close;
  TBVERBA.Close;
  TBLEI.Close;
  TBEMAIL.Close;
  TBCONTATO.Close;
  TBENDERECO.Close;
  TBENTIDADERELACAO.Close;
  TBENTIDADE.Close;
  TBRELACAO.Close;
  TBCATEGORIA.Close;
  TBTIPOAPOSENTADORIA.Close;
  TBESTADOCIVIL.Close;
  TBLOGRADOURO.Close;
  TBTIPOLOGRADOURO.Close;
  TBBAIRRO.Close;
  TBCIDADE.Close;
  TBESTADO.Close;

end;

procedure TDMSISPREV_.TBENTIDADECalcFields(DataSet: TDataSet);
begin
TBENTIDADEENNIDAD.VALUE := ( DATE -
TBENTIDADEENDNASC.VALUE ) / 365;
end;

procedure TDMSISPREV_.TBENTIDADEBeforePost(DataSet: TDataSet);
begin
IF(Inserindo) THEN
BEGIN
SELF.TBENTIDADEENDCADT.VALUE := DATE;
SELF.TBENTIDADEENHCADT.VALUE := TIME;
END;
end;

procedure TDMSISPREV_.TBENTIDADEAfterPost(DataSet: TDataSet);
begin
IF (inserindo ) THEN
// Gravar quando for nova entidade
BEGIN
SELF.TBENTIDADERELACAO.Insert;
SELF.TBENTIDADERELACAOERNCGEN.VALUE := CODIGO;
SELF.TBENTIDADERELACAO.POST;
inserindo := false;
END;
end;

end.

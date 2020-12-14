object DMSISPREV_: TDMSISPREV_
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 185
  Top = 124
  Height = 384
  Width = 833
  object DBSISPREV: TDatabase
    AliasName = 'ALSISPREV'
    Connected = True
    DatabaseName = 'BSSISPREV'
    SessionName = 'Default'
    Left = 768
    Top = 272
  end
  object TBCIDADE: TTable
    Active = True
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'CDCUF;CDNCODG'
    MasterFields = 'ESCUF'
    MasterSource = DSESTADO
    TableName = 'CIDADE.db'
    Left = 112
    Top = 64
    object TBCIDADECDCUF: TStringField
      DisplayLabel = 'Estado (UF)'
      FieldName = 'CDCUF'
      Required = True
      EditMask = '>LL<;0;_'
      Size = 2
    end
    object TBCIDADECDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDNCODG'
      Required = True
    end
    object TBCIDADECDCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CDCDESC'
      Size = 50
    end
  end
  object DSCIDADE: TDataSource
    DataSet = TBCIDADE
    Left = 24
    Top = 64
  end
  object TBESTADO: TTable
    Active = True
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'ESCUF'
    TableName = 'ESTADO.DB'
    Left = 112
    Top = 8
    object TBESTADOESCUF: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ESCUF'
      Required = True
      EditMask = '>LL<;0;_'
      Size = 2
    end
    object TBESTADOESCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ESCDESC'
      Size = 50
    end
  end
  object DSESTADO: TDataSource
    DataSet = TBESTADO
    Left = 24
    Top = 8
  end
  object TBBAIRRO: TTable
    Active = True
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'BRCUF;BRNCGCD;BRNCODG'
    MasterFields = 'CDCUF;CDNCODG'
    MasterSource = DSCIDADE
    TableName = 'BAIRRO.DB'
    Left = 112
    Top = 128
    object TBBAIRROBRCUF: TStringField
      DisplayLabel = 'C'#243'digo(UF)'
      FieldName = 'BRCUF'
      Required = True
      EditMask = '>LL<;0;_'
      Size = 2
    end
    object TBBAIRROBRNCGCD: TFloatField
      DisplayLabel = 'C'#243'digo(CD)'
      FieldName = 'BRNCGCD'
      Required = True
    end
    object TBBAIRROBRNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BRNCODG'
      Required = True
    end
    object TBBAIRROBRCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BRCDESC'
      Size = 50
    end
  end
  object DSBAIRRO: TDataSource
    DataSet = TBBAIRRO
    Left = 24
    Top = 128
  end
  object TBTIPOLOGRADOURO: TTable
    Active = True
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'TLNCODG'
    TableName = 'TIPOLOGRADOURO.DB'
    Left = 112
    Top = 192
    object TBTIPOLOGRADOUROTLNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TLNCODG'
      Required = True
    end
    object TBTIPOLOGRADOUROTLCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TLCDESC'
      Size = 50
    end
  end
  object DSTIPOLOGRADOURO: TDataSource
    DataSet = TBTIPOLOGRADOURO
    Left = 24
    Top = 192
  end
  object TBLOGRADOURO: TTable
    Active = True
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'LGCCEP'
    TableName = 'LOGRADOURO.DB'
    Left = 112
    Top = 256
    object TBLOGRADOUROLGCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'LGCCEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object TBLOGRADOUROLGCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LGCDESC'
      Size = 50
    end
    object TBLOGRADOUROLGNCGTL: TFloatField
      DisplayLabel = 'C'#243'digo(TL)'
      FieldName = 'LGNCGTL'
    end
    object TBLOGRADOUROLGCUF: TStringField
      DisplayLabel = 'C'#243'digo(UF)'
      FieldName = 'LGCUF'
      EditMask = '>LL<;0;_'
      Size = 2
    end
    object TBLOGRADOUROLGNCGCD: TFloatField
      DisplayLabel = 'C'#243'digo(CD)'
      FieldName = 'LGNCGCD'
    end
    object TBLOGRADOUROLGNCGBR: TFloatField
      DisplayLabel = 'C'#243'digo(BR)'
      FieldName = 'LGNCGBR'
    end
    object TBLOGRADOUROLGCDCTL: TStringField
      FieldKind = fkLookup
      FieldName = 'LGCDCTL'
      LookupDataSet = TBTIPOLOGRADOURO
      LookupKeyFields = 'TLNCODG'
      LookupResultField = 'TLCDESC'
      KeyFields = 'LGNCGTL'
      Size = 50
      Lookup = True
    end
    object TBLOGRADOUROLGCDCUF: TStringField
      FieldKind = fkLookup
      FieldName = 'LGCDCUF'
      LookupDataSet = TBESTADO
      LookupKeyFields = 'ESCUF'
      LookupResultField = 'ESCDESC'
      KeyFields = 'LGCUF'
      Size = 50
      Lookup = True
    end
    object TBLOGRADOUROLGCDCCD: TStringField
      FieldKind = fkLookup
      FieldName = 'LGCDCCD'
      LookupDataSet = TBCIDADE
      LookupKeyFields = 'CDNCODG'
      LookupResultField = 'CDCDESC'
      KeyFields = 'LGNCGCD'
      Size = 50
      Lookup = True
    end
    object TBLOGRADOUROLGCDCBR: TStringField
      FieldKind = fkLookup
      FieldName = 'LGCDCBR'
      LookupDataSet = TBBAIRRO
      LookupKeyFields = 'BRNCODG'
      LookupResultField = 'BRCDESC'
      KeyFields = 'LGNCGBR'
      Size = 50
      Lookup = True
    end
  end
  object DSLOGRADOURO: TDataSource
    DataSet = TBLOGRADOURO
    Left = 24
    Top = 256
  end
  object TBESTADOCIVIL: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'ECNCODG'
    TableName = 'ESTADOCIVIL.DB'
    Left = 296
    Top = 8
    object TBESTADOCIVILECNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ECNCODG'
      Required = True
    end
    object TBESTADOCIVILECCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ECCDESC'
      Size = 30
    end
  end
  object DSESTADOCIVIL: TDataSource
    DataSet = TBESTADOCIVIL
    Left = 208
    Top = 8
  end
  object TBTIPOAPOSENTADORIA: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'TANCODG'
    TableName = 'TIPOAPOSENTADORIA.DB'
    Left = 296
    Top = 64
    object TBTIPOAPOSENTADORIATANCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TANCODG'
      Required = True
    end
    object TBTIPOAPOSENTADORIATACDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TACDESC'
      Size = 30
    end
  end
  object DSTIPOAPOSENTADORIA: TDataSource
    DataSet = TBTIPOAPOSENTADORIA
    Left = 208
    Top = 64
  end
  object TBCATEGORIA: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'CRNCODG'
    TableName = 'CATEGORIA.DB'
    Left = 296
    Top = 128
    object TBCATEGORIACRNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CRNCODG'
      Required = True
    end
    object TBCATEGORIACRCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CRCDESC'
      Size = 30
    end
  end
  object DSCATEGORIA: TDataSource
    DataSet = TBCATEGORIA
    Left = 208
    Top = 128
  end
  object TBRELACAO: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'RENCODG'
    TableName = 'RELACAO.db'
    Left = 296
    Top = 192
    object TBRELACAORENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RENCODG'
      Required = True
    end
    object TBRELACAORECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'RECDESC'
      Size = 30
    end
  end
  object DSRELACAO: TDataSource
    DataSet = TBRELACAO
    Left = 208
    Top = 192
  end
  object TBENTIDADE: TTable
    BeforePost = TBENTIDADEBeforePost
    AfterPost = TBENTIDADEAfterPost
    OnCalcFields = TBENTIDADECalcFields
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'ENNCODG'
    MasterFields = 'ERNCGEN'
    MasterSource = DSENTIDADERELACAO
    TableName = 'ENTIDADE.db'
    Left = 296
    Top = 256
    object TBENTIDADEENNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ENNCODG'
      Required = True
    end
    object TBENTIDADEENCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ENCDESC'
      Size = 50
    end
    object TBENTIDADEENCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ENCTIPO'
      EditMask = '>L<;0;_'
      Size = 1
    end
    object TBENTIDADEENCCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ENCCPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 11
    end
    object TBENTIDADEENCRG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'ENCRG'
      Size = 15
    end
    object TBENTIDADEENCCNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ENCCNPJ'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 14
    end
    object TBENTIDADEENCIE: TStringField
      DisplayLabel = 'Incri'#231#227'o Estadual'
      FieldName = 'ENCIE'
      EditMask = '00000000000000;0;_'
    end
    object TBENTIDADEENCIM: TStringField
      DisplayLabel = 'Inscri'#231#227'o Muicipal'
      FieldName = 'ENCIM'
      EditMask = '00000000000000;0;_'
      Size = 15
    end
    object TBENTIDADEENCAPEL: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'ENCAPEL'
      Size = 30
    end
    object TBENTIDADEENOFOTO: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'ENOFOTO'
      BlobType = ftParadoxOle
    end
    object TBENTIDADEENCSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'ENCSEXO'
      EditMask = '>L<;0;_'
      Size = 1
    end
    object TBENTIDADEENDNASC: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'ENDNASC'
    end
    object TBENTIDADEENNCGEC: TFloatField
      DisplayLabel = 'C'#243'digo(EC)'
      FieldName = 'ENNCGEC'
    end
    object TBENTIDADEENNCADT: TFloatField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'ENNCADT'
    end
    object TBENTIDADEENDCADT: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'ENDCADT'
    end
    object TBENTIDADEENHCADT: TTimeField
      DisplayLabel = 'Hora Cadastro'
      FieldName = 'ENHCADT'
    end
    object TBENTIDADEENNIDAD: TFloatField
      DisplayLabel = 'Idade'
      FieldKind = fkCalculated
      FieldName = 'ENNIDAD'
      DisplayFormat = '#00'
      Calculated = True
    end
    object TBENTIDADEENCDCEC: TStringField
      FieldKind = fkLookup
      FieldName = 'ENCDCEC'
      LookupDataSet = TBESTADOCIVIL
      LookupKeyFields = 'ECNCODG'
      LookupResultField = 'ECCDESC'
      KeyFields = 'ENNCGEC'
      Size = 30
      Lookup = True
    end
  end
  object DSENTIDADE: TDataSource
    DataSet = TBENTIDADE
    Left = 208
    Top = 256
  end
  object TBENTIDADERELACAO: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'ERNCGRE;ERNCGEN'
    MasterFields = 'RENCODG'
    MasterSource = DSRELACAO
    TableName = 'ENTIDADERELACAO.db'
    Left = 464
    Top = 8
    object TBENTIDADERELACAOERNCGRE: TFloatField
      DisplayLabel = 'Codigo(RE)'
      FieldName = 'ERNCGRE'
      Required = True
    end
    object TBENTIDADERELACAOERNCGEN: TFloatField
      DisplayLabel = 'C'#243'digo(EN)'
      FieldName = 'ERNCGEN'
      Required = True
    end
    object TBENTIDADERELACAOERNCGTA: TFloatField
      DisplayLabel = 'C'#243'digo(TA)'
      FieldName = 'ERNCGTA'
    end
    object TBENTIDADERELACAOERNC2EN: TFloatField
      DisplayLabel = 'Org'#227'o'
      FieldName = 'ERNC2EN'
    end
    object TBENTIDADERELACAOERNCGCA: TFloatField
      DisplayLabel = 'C'#243'digo(CA)'
      FieldName = 'ERNCGCA'
    end
    object TBENTIDADERELACAOERNCGCR: TFloatField
      DisplayLabel = 'C'#243'digo(CR)'
      FieldName = 'ERNCGCR'
    end
    object TBENTIDADERELACAOERDCADT: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'ERDCADT'
    end
    object TBENTIDADERELACAOERDCANC: TDateField
      DisplayLabel = 'Data Cancelamento'
      FieldName = 'ERDCANC'
    end
    object TBENTIDADERELACAOERCDCTA: TStringField
      FieldKind = fkLookup
      FieldName = 'ERCDCTA'
      LookupDataSet = TBTIPOAPOSENTADORIA
      LookupKeyFields = 'TANCODG'
      LookupResultField = 'TACDESC'
      KeyFields = 'ERNCGTA'
      Size = 30
      Lookup = True
    end
    object TBENTIDADERELACAOERCD2EN: TStringField
      FieldKind = fkLookup
      FieldName = 'ERCD2EN'
      LookupDataSet = TBCARGO
      LookupKeyFields = 'CANCGEN'
      LookupResultField = 'CACDCEN'
      KeyFields = 'ERNC2EN'
      Size = 50
      Lookup = True
    end
    object TBENTIDADERELACAOERCDCCA: TStringField
      FieldKind = fkLookup
      FieldName = 'ERCDCCA'
      LookupDataSet = TBCARGO
      LookupKeyFields = 'CANCODG'
      LookupResultField = 'CACDESC'
      KeyFields = 'ERNCGCA'
      Size = 30
      Lookup = True
    end
    object TBENTIDADERELACAOERCDCCR: TStringField
      FieldKind = fkLookup
      FieldName = 'ERCDCCR'
      LookupDataSet = TBCATEGORIA
      LookupKeyFields = 'CRNCODG'
      LookupResultField = 'CRCDESC'
      KeyFields = 'ERNCGCR'
      Size = 30
      Lookup = True
    end
  end
  object DSENTIDADERELACAO: TDataSource
    DataSet = TBENTIDADERELACAO
    Left = 392
    Top = 8
  end
  object TBENDERECO: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'EDNCGEN;EDNCODG'
    MasterFields = 'ENNCODG'
    MasterSource = DSENTIDADE
    TableName = 'ENDERECO.db'
    Left = 464
    Top = 64
    object TBENDERECOEDNCGEN: TFloatField
      DisplayLabel = 'C'#243'digo(EN)'
      FieldName = 'EDNCGEN'
      Required = True
    end
    object TBENDERECOEDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EDNCODG'
      Required = True
    end
    object TBENDERECOEDCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EDCDESC'
      Size = 50
    end
    object TBENDERECOEDCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EDCCEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object TBENDERECOEDCNUMR: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EDCNUMR'
      Size = 10
    end
    object TBENDERECOEDCOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'EDCOBS'
      Size = 30
    end
    object TBENDERECOEDMOBS: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'EDMOBS'
      BlobType = ftMemo
      Size = 30
    end
    object TBENDERECOEDCDCLG: TStringField
      FieldKind = fkLookup
      FieldName = 'EDCDCLG'
      LookupDataSet = TBLOGRADOURO
      LookupKeyFields = 'LGCCEP'
      LookupResultField = 'LGCDESC'
      KeyFields = 'EDCCEP'
      Size = 50
      Lookup = True
    end
  end
  object DSENDERECO: TDataSource
    DataSet = TBENDERECO
    Left = 392
    Top = 64
  end
  object TBCONTATO: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'CTNCGEN;CTNCGED;CTNCODG'
    MasterFields = 'EDNCGEN;EDNCODG'
    MasterSource = DSENDERECO
    TableName = 'CONTATO.db'
    Left = 464
    Top = 128
    object TBCONTATOCTNCGEN: TFloatField
      DisplayLabel = 'C'#243'digo(EN)'
      FieldName = 'CTNCGEN'
      Required = True
    end
    object TBCONTATOCTNCGED: TFloatField
      DisplayLabel = 'C'#243'digo(ED)'
      FieldName = 'CTNCGED'
      Required = True
    end
    object TBCONTATOCTNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTNCODG'
      Required = True
    end
    object TBCONTATOCTCDESC: TStringField
      DisplayLabel = 'Descri'#231'ao'
      FieldName = 'CTCDESC'
      Size = 30
    end
    object TBCONTATOCTCNUMR: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CTCNUMR'
      EditMask = '\(9\x\x99\) 9000-0000;0;_'
      Size = 11
    end
  end
  object DSCONTATO: TDataSource
    DataSet = TBCONTATO
    Left = 392
    Top = 128
  end
  object TBEMAIL: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'EMNCGEN;EMNCODG'
    MasterFields = 'ENNCODG'
    MasterSource = DSENTIDADE
    TableName = 'EMAIL.db'
    Left = 464
    Top = 192
    object TBEMAILEMNCGEN: TFloatField
      DisplayLabel = 'C'#243'digo(EN)'
      FieldName = 'EMNCGEN'
      Required = True
    end
    object TBEMAILEMNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EMNCODG'
      Required = True
    end
    object TBEMAILEMCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EMCDESC'
      Size = 50
    end
  end
  object DSEMAIL: TDataSource
    DataSet = TBEMAIL
    Left = 392
    Top = 192
  end
  object TBLEI: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'LENCODG'
    TableName = 'LEI.db'
    Left = 464
    Top = 256
    object TBLEILENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LENCODG'
      Required = True
    end
    object TBLEILECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LECDESC'
      Size = 60
    end
    object TBLEILECNUMR: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'LECNUMR'
      Size = 10
    end
    object TBLEILEDDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'LEDDATA'
    end
    object TBLEILEMFUND: TMemoField
      DisplayLabel = 'Fundamenta'#231#227'o'
      FieldName = 'LEMFUND'
      BlobType = ftMemo
      Size = 50
    end
  end
  object DSLEI: TDataSource
    DataSet = TBLEI
    Left = 392
    Top = 256
  end
  object TBVERBA: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'VBNCODG'
    TableName = 'VERBA.db'
    Left = 600
    Top = 8
    object TBVERBAVBNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VBNCODG'
      Required = True
    end
    object TBVERBAVBCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VBCDESC'
      Size = 30
    end
    object TBVERBAVBNCGEN: TFloatField
      DisplayLabel = 'C'#243'digo(EN)'
      FieldName = 'VBNCGEN'
    end
    object TBVERBAVBCDCEN: TStringField
      FieldKind = fkLookup
      FieldName = 'VBCDCEN'
      LookupDataSet = QRYVB
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'VBNCGEN'
      Size = 50
      Lookup = True
    end
  end
  object DSVERBA: TDataSource
    DataSet = TBVERBA
    Left = 536
    Top = 8
  end
  object TBCARGO: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'CANCGEN'
    MasterFields = 'ENNCODG'
    MasterSource = DSENTIDADE
    TableName = 'CARGO.db'
    Left = 600
    Top = 64
    object TBCARGOCANCGEN: TFloatField
      DisplayLabel = 'C'#243'digo(EN)'
      FieldName = 'CANCGEN'
      Required = True
    end
    object TBCARGOCANCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CANCODG'
      Required = True
    end
    object TBCARGOCACDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CACDESC'
      Size = 30
    end
    object TBCARGOCACDCEN: TStringField
      FieldKind = fkLookup
      FieldName = 'CACDCEN'
      LookupDataSet = QRYVB
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'CANCGEN'
      Size = 50
      Lookup = True
    end
  end
  object DSCARGO: TDataSource
    DataSet = TBCARGO
    Left = 536
    Top = 64
  end
  object TBEVENTO: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'EVNCODG'
    TableName = 'EVENTO.db'
    Left = 600
    Top = 128
    object TBEVENTOEVNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EVNCODG'
      Required = True
    end
    object TBEVENTOEVCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EVCDESC'
      Size = 30
    end
    object TBEVENTOEVCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'EVCTIPO'
      EditMask = '>L<;0;_'
      Size = 1
    end
  end
  object DSEVENTO: TDataSource
    DataSet = TBEVENTO
    Left = 536
    Top = 128
  end
  object TBFOLHAPAGAMENTO: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'FPNCODG'
    TableName = 'FOLHAPAGAMENTO.db'
    Left = 600
    Top = 192
    object TBFOLHAPAGAMENTOFPNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FPNCODG'
      Required = True
    end
    object TBFOLHAPAGAMENTOFPDDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'FPDDATA'
    end
  end
  object DSFOLHAPAGAMENTO: TDataSource
    DataSet = TBFOLHAPAGAMENTO
    Left = 536
    Top = 192
  end
  object TBENTIDADE_FOLHA: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'EFNCGFP;EFNCODG'
    MasterFields = 'FPNCODG'
    MasterSource = DSFOLHAPAGAMENTO
    TableName = 'ENTIDADE_FOLHA.db'
    Left = 600
    Top = 256
    object TBENTIDADE_FOLHAEFNCGFP: TFloatField
      DisplayLabel = 'C'#243'digo(FP)'
      FieldName = 'EFNCGFP'
      Required = True
    end
    object TBENTIDADE_FOLHAEFNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EFNCODG'
      Required = True
    end
    object TBENTIDADE_FOLHAEFNCGEN: TFloatField
      DisplayLabel = 'C'#243'digo(EN)'
      FieldName = 'EFNCGEN'
    end
    object TBENTIDADE_FOLHAEFCDCEN: TStringField
      FieldKind = fkLookup
      FieldName = 'EFCDCEN'
      LookupDataSet = QRYEF
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'EFNCGEN'
      Size = 50
      Lookup = True
    end
  end
  object DSENTIDADEFOLHA: TDataSource
    DataSet = TBENTIDADE_FOLHA
    Left = 536
    Top = 256
  end
  object TBEVENTO_ENT_FOL: TTable
    DatabaseName = 'BSSISPREV'
    IndexFieldNames = 'EENCGFP;EENCGEF;EENCODG'
    MasterFields = 'EFNCGFP;EFNCODG'
    MasterSource = DSENTIDADEFOLHA
    TableName = 'EVENTO_ENT_FOL.db'
    Left = 744
    Top = 8
    object TBEVENTO_ENT_FOLEENCGFP: TFloatField
      DisplayLabel = 'C'#243'digo(FP)'
      FieldName = 'EENCGFP'
      Required = True
    end
    object TBEVENTO_ENT_FOLEENCGEF: TFloatField
      DisplayLabel = 'C'#243'digo(EF)'
      FieldName = 'EENCGEF'
      Required = True
    end
    object TBEVENTO_ENT_FOLEENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EENCODG'
      Required = True
    end
    object TBEVENTO_ENT_FOLEENCGEV: TFloatField
      DisplayLabel = 'C'#243'digo(EV)'
      FieldName = 'EENCGEV'
    end
    object TBEVENTO_ENT_FOLEEYVALR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'EEYVALR'
    end
    object TBEVENTO_ENT_FOLEEMOBS: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'EEMOBS'
      BlobType = ftMemo
      Size = 50
    end
    object TBEVENTO_ENT_FOLEECDCEV: TStringField
      FieldKind = fkLookup
      FieldName = 'EECDCEV'
      LookupDataSet = TBEVENTO
      LookupKeyFields = 'EVNCODG'
      LookupResultField = 'EVCDESC'
      KeyFields = 'EENCGEV'
      Size = 30
      Lookup = True
    end
  end
  object DSEVENTO_ENT_FOL: TDataSource
    DataSet = TBEVENTO_ENT_FOL
    Left = 672
    Top = 8
  end
  object QRYCR: TQuery
    DatabaseName = 'BSSISPREV'
    SQL.Strings = (
      'SELECT * FROM CATEGORIA')
    Left = 768
    Top = 120
    object QRYCRCRNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CRNCODG'
      Origin = 'BSSISPREV."CATEGORIA.DB".CRNCODG'
    end
    object QRYCRCRCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CRCDESC'
      Origin = 'BSSISPREV."CATEGORIA.DB".CRCDESC'
      Size = 30
    end
  end
  object DSQRYCR: TDataSource
    DataSet = QRYCR
    Left = 712
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'BSSISPREV'
    DataSource = DSENTIDADE
    SQL.Strings = (
      'select enncodg from entidade order by enncodg')
    Left = 720
    Top = 280
    object Query1enncodg: TFloatField
      FieldName = 'enncodg'
      Origin = 'BSSISPREV."entidade.DB".ENNCODG'
    end
  end
  object QRYER: TQuery
    DatabaseName = 'BSSISPREV'
    SQL.Strings = (
      'SELECT COUNT(ER.ERNCGRE)QUANTIDADE, RE.RECDESC FROM '
      'ENTIDADERELACAO AS ER INNER JOIN RELACAO AS RE ON'
      ' RE.RENCODG = ER.ERNCGRE'
      'GROUP BY RE.RECDESC'
      ';')
    Left = 768
    Top = 64
    object QRYERQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'BSSISPREV."ENTIDADERELACAO.DB".ERNCGRE'
    end
    object QRYERRECDESC: TStringField
      FieldName = 'RECDESC'
      Origin = 'BSSISPREV."RELACAO.DB".RECDESC'
      Size = 30
    end
  end
  object DSQRYER: TDataSource
    DataSet = QRYER
    Left = 712
    Top = 64
  end
  object QRYVB: TQuery
    SQL.Strings = (
      'SELECT EN.ENNCODG, EN.ENCDESC FROM ENTIDADE AS EN'
      'INNER JOIN ENTIDADERELACAO AS ER ON EN.ENNCODG = ER.ERNCGEN'
      'WHERE ER.ERNCGRE = 7'
      'ORDER BY EN.ENNCODG'
      ';')
    Left = 776
    Top = 176
    object QRYVBENNCODG: TFloatField
      FieldName = 'ENNCODG'
    end
    object QRYVBENCDESC: TStringField
      FieldName = 'ENCDESC'
      Size = 50
    end
  end
  object DSQRYVB: TDataSource
    DataSet = QRYVB
    Left = 712
    Top = 176
  end
  object QRYEF: TQuery
    SQL.Strings = (
      'SELECT ENNCODG, ENCDESC FROM ENTIDADE;')
    Left = 776
    Top = 224
    object QRYEFENNCODG: TFloatField
      FieldName = 'ENNCODG'
    end
    object QRYEFENCDESC: TStringField
      FieldName = 'ENCDESC'
      Size = 50
    end
  end
  object DSQRYEF: TDataSource
    DataSet = QRYEF
    Left = 712
    Top = 224
  end
end

program SISPREV;

uses
  Forms,
  FMAIN in 'FMAIN.pas' {FMAIN_},
  DMSISPREV in 'DMSISPREV.pas' {DMSISPREV_: TDataModule},
  FCD in 'FCD.pas' {FCD_},
  FEE in 'FEE.pas' {FEE_},
  FES in 'FES.pas' {FES_},
  FBR in 'FBR.pas' {FBR_},
  FTL in 'FTL.pas' {FTL_},
  FLG in 'FLG.pas' {FLG_},
  FEC in 'FEC.pas' {FEC_},
  FTA in 'FTA.pas' {FTA_},
  FCR in 'FCR.pas' {FCR_},
  FRE in 'FRE.pas' {FRE_},
  FED in 'FED.pas' {FED_},
  FCT in 'FCT.pas' {FCT_},
  FEM in 'FEM.pas' {FEM_},
  FLE in 'FLE.pas' {FLE_},
  FVB in 'FVB.pas' {FVB_},
  FCA in 'FCA.pas' {FCA_},
  FEV in 'FEV.pas' {FEV_},
  FFP in 'FFP.pas' {FFP_},
  FEF in 'FEF.pas' {FEF_},
  FEN in 'FEN.pas' {FEN_},
  FER in 'FER.pas' {FER_},
  FENG in 'FENG.pas' {FENG_},
  QRCR in 'QRCR.pas' {QRCR_},
  FSOBRE in 'FSOBRE.pas' {FSOBRE_};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMAIN_, FMAIN_);
  Application.CreateForm(TDMSISPREV_, DMSISPREV_);
  Application.Run;
end.

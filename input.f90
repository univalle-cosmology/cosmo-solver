Module input

  !########################################################
  Character(len=*),parameter :: cosmological_model = 'lcdm'
  ! OPTIONS FOR cosmological_model ARE:
  ! lcdm:  STANDARD MODEL OF COSMOLOGY INCLUDING COSMOLOGICAL CONSTANT, COLD DARK MATTER (CDM), PHOTONS, MASSIVE NEUTRINOS, BARYONS, SIMPLE INFLATIONARY MODEL
  ! wcdm:  COSMOLOGICAL MODEL INCLUDING DARK ENERGY (DE) FLUID [EQUATION OF STATE, SOUND SPEED, AND ANISOTROPIC STRESS], COLD DARK MATTER, PHOTONS, MASSIVE NEUTRINOS, BARYONS, SIMPLE INFLATIONARY MODEL
  ! scdm:  SAME INGREDIENTS AS FOR wcdm, EXCEPT FOR DE WHICH IS MODELLED WITH SCALAR FIELDS
  ! mgcdm: SAME INGREDIENTS AS FOR wcdm, EXCEPT FOR DE WHICH IS REPLACED BY MODIFICATIONS TO THE THEORY OF GRAVITY.  
  !########################################################
  
  !########################################################
  Real*8,parameter :: a_ini = 5.d-1 ! INITIAL SCALE FACTOR
  Real*8,parameter :: a_fin = 1.d0  ! FINAL SCALE FACTOR

  ! COSMOLOGICAL PARAMETERS FOR cosmological_model = 'lcdm'
  !Real*8,parameter :: Omega_Lambda = ! PARAMETER DENSITY COSMOLOGICAL CONSTANT.
  
  ! COSMOLOGICAL PARAMETERS FOR cosmological_model = 'wcdm'
  !Real*8,parameter :: Omega_DE
  
  ! COSMOLOGICAL PARAMETERS FOR cosmological_model = 'scdm'

  ! COSMOLOGICAL PARAMETERS FOR cosmological_model = 'mgcdm'
  !########################################################
  
  !########################################################
  Logical,parameter :: compute_perturbations = .false. ! DECIDE WHETHER OR NOT SOLVE PERTURBATION EQUATIONS  
  Logical,parameter :: output_in_files = .false.        ! DECIDE WHETHER OR NOT WRITE OUTPUT IN FILES
  logical,parameter :: plot_output = .false.
  !########################################################
  
  !########################################################
  Integer*4,parameter :: order = 1 ! SOLVE PERTURBATION EQUATIONS UP TO ORDER order
  !########################################################
  
End module input

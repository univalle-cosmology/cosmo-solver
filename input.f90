Module input

  use fgsl

  !########################################################
  Character(len=*),parameter :: cosmological_model = 'lcdm'
  ! OPTIONS FOR cosmological_model ARE:
  ! lcdm:  STANDARD MODEL OF COSMOLOGY INCLUDING COSMOLOGICAL CONSTANT, COLD DARK MATTER (CDM), PHOTONS, MASSIVE NEUTRINOS, BARYONS, SIMPLE INFLATIONARY
  !        MODEL
  ! wcdm:  COSMOLOGICAL MODEL INCLUDING DARK ENERGY (DE) FLUID [EQUATION OF STATE, SOUND SPEED, AND ANISOTROPIC STRESS], COLD DARK MATTER, PHOTONS,
  !        MASSIVE NEUTRINOS, BARYONS, SIMPLE INFLATIONARY MODEL
  ! scdm:  SAME INGREDIENTS AS FOR wcdm, EXCEPT FOR DE WHICH IS MODELLED WITH SCALAR FIELDS
  ! mgcdm: SAME INGREDIENTS AS FOR wcdm, EXCEPT FOR DE WHICH IS REPLACED BY MODIFICATIONS TO THE THEORY OF GRAVITY.
  !########################################################

  !########################################################
  Real*8,parameter :: G_N = fgsl_const_mksa_gravitational_constant ! GRAVITATIONAL CONSTANT. UNITS: [m^3/kg/s^2]
  Real*8,parameter :: c = fgsl_const_mksa_speed_of_light  ! SPEED OF LIGHT IN VACUUM. UNITS: [m/s]
  !########################################################
  
  !########################################################
  Real*8,parameter :: a_ini = 5.d-1 ! INITIAL SCALE FACTOR
  Real*8,parameter :: a_fin = 1.d0  ! FINAL SCALE FACTOR

  ! COSMOLOGICAL PARAMETERS FOR cosmological_model = 'lcdm'
  Real*8,parameter :: Omega_m0 = 0.315d0 ! PARAMETER DENSITY MATTER FROM 2018 PLANCK PAPER ASSUMING SIX-PARAMETER LCDM MODEL
  Real*8,parameter :: Omega_Lambda = 1.d0 - Omega_m0 ! PARAMETER DENSITY COSMOLOGICAL CONSTANT ASSUMING FLATNESS
  Real*8,parameter :: H0 = 67.4d0 ! HUBBLE PARAMETER TODAY. UNITS: [km/s/Mpc]
  Real*8,parameter :: k = 2.d2*(H0/c*1.d3) ! COMOVING WAVENUMBER. UNITS: [1/Mpc]
  
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

  !########################################################
  Logical                    :: dir_exist ! CHECK EXISTENCE OF FILES
  Integer*4,parameter        :: UNIT_EXE_FILE = 91 ! UNIT FILE EXECUTION INFORMATION
  Character(len=*),parameter :: Execution_information = './output/execution_information.txt' ! FILE NAME FOR EXECUTION INFORMATION
  !########################################################
  
End module input

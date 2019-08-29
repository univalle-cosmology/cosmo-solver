Module background

  use input

contains
  
  function Hubble_parameter(a)

    Real*8 :: a,Hubble_parameter

    If (a .gt. 0.d0) then

       continue

    Else

       write(UNIT_EXE_FILE,*) 'NEGATIVE OR SINGULAR SCALE FACTOR FOUND IN HUBBLE PARAMETER FUNCTION'

       stop
       
    End If

    If (cosmological_model .eq. 'lcdm') then
       
       Hubble_parameter = H0*sqrt(Omega_m0/a**3 + Omega_Lambda)

    Else if (cosmological_model .eq. 'wcdm') then

       write(UNIT_EXE_FILE,*) 'wcdm MODEL NOT YET IMPLEMENTED'

       stop
       
    Else if (cosmological_model .eq. 'scdm') then

       write(UNIT_EXE_FILE,*) 'scdm MODEL NOT YET IMPLEMENTED'

       stop
       
    Else if (cosmological_model .eq. 'mgcdm') then

       write(UNIT_EXE_FILE,*) 'mgcdm MODEL NOT YET IMPLEMENTED'

       stop
       
    Else

       write(UNIT_EXE_FILE,*) 'WRONG INPUT VALUE FOR cosmological_model PARAMETER'

       stop
       
    End if

    If (Hubble_parameter**2 .ge. 0.d0) then

       continue

    Else

       write(UNIT_EXE_FILE,*) 'NaN FOUND IN HUBBLE PARAMETER FUNCTION'

       stop
       
    End If
    
  end function Hubble_parameter
  
  ! FUNCTIONS SUCH AS:

  ! COSMOLOGICAL CONSTANT ENERGY DENSITY

  ! COSMOLOGICAL CONSTANT PARAMETER DENSITY

  ! HUBBLE PARAMETER

  ! LUMINOSITY DISTANCE

  ! ANGULAR DIAMETER DISTANCE

  ! CONFORMAL TIME

  ! REDSHIFT
  
End module background

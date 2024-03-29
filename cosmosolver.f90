Program cosmosolver

  ! LOAD MODULES AND LIBRARIES
  use input
  use background
  use fgsl
  
  ! CREATE OUTPUT DIRECTORY IF NEEDED
  inquire(file='./output',exist=dir_exist)

  If (dir_exist) then

     continue

  Else

     call system('mkdir output')

  End if

  ! OPEN EXECUTION INFORMATION FILE FOR WRITING
  open(UNIT_EXE_FILE,file=Execution_information)
  
  ! START TIMING PERFORMANCE OF THE CODE

  write(UNIT_EXE_FILE,*) '...CODE STARTED EXECUTION'

  !  print *, 'fgsl ', fgsl_const_mksa_gravitational_constant , 'g_N ',G_N
  ! DEFINE VARIABLES, PARAMETERS, ETC.

  ! SUBROUTINE CHECKING CONSISTENCY OF INPUT VALUES

  ! SUBROUTINE CHECKING MEMORY RESOURCES

  ! SUBROUTINE SOLVING BACKGROUND EQUATIONS

  ! SUBROUTINE SOLVING PERTURBATION EQUATIONS

  ! SUBROUTINE PLOTTING OUTPUT

  ! END TIMING PERFORMANCE OF THE CODE

  close(UNIT_EXE_FILE)
  
End Program cosmosolver

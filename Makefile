FC 	= gfortran	# FORTRAN COMPILER
LC	= $(FC)		
EXE	= cosmosolver	# EXECUTABLE NAME
INCLUDE	=
LIBRARY	=
BUILD	= ./build
F_FL	= -O3 -fimplicit-none -Wall -fcheck=all # -I$(INCLUDE) -L$(LIBRARY)  #COMPILER OPTIONS. SEE GFORTRAN MANUAL FOR DETAILS: man gfortran 

OBJ = cosmosolver.o input.o background.o perturbations.o output.o

cosmosolver : $(OBJ)
	$(FC) $(F_FL) -o $(EXE) $(OBJ)

cosmosolver.o :	cosmosolver.f90
	$(FC) -c cosmosolver.f90

input.o : input.f90
	$(FC) -c input.f90 -J$(BUILD)

background.o : background.f90
	$(FC) -c background.f90 -J$(BUILD)

perturbations.o : perturbations.f90
	$(FC) -c perturbations.f90 -J$(BUILD)

output.o : output.f90
	$(FC) -c output.f90 -J$(BUILD)

clean :
	rm -f *.o *~ ./build/*.mod $(EXE)


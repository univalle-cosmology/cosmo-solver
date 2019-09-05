FC 	= gfortran	# FORTRAN COMPILER
LC	= $(FC)		
EXE	= cosmosolver	# EXECUTABLE NAME
INCLUDE	= /usr/local/include/fgsl
LIBRARY	= /usr/local/lib
#BUILD	= ./build/
F_FL	= -O3 -fimplicit-none -Wall -fcheck=all -I$(INCLUDE) -L$(LIBRARY) -lfgsl #COMPILER OPTIONS. SEE GFORTRAN MANUAL FOR DETAILS: man gfortran 

OBJ = input.o background.o perturbations.o cosmosolver.o  #  output.o 

cosmosolver : $(OBJ)
	$(FC) $(F_FL) -o $(EXE) $(OBJ) 

cosmosolver.o :	cosmosolver.f90
	$(FC) $(F_FL) -c cosmosolver.f90   

input.o : input.f90
	$(FC) $(F_FL) -c input.f90 

background.o : background.f90
	$(FC) $(F_FL) -c background.f90 

perturbations.o : perturbations.f90
	$(FC) $(F_FL) -c perturbations.f90

#output.o : output.f90
#	$(FC) -c output.f90 #-J$(BUILD)

clean :
	rm -f *.o *~ *.mod $(EXE)


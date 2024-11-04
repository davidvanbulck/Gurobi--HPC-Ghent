#Makefile to solve gurobi with sudoku

#Declaration of parameters
# Note: check which versions are availabe
# module spider Gurobi
# Note: then choose a specific Gurobi version, and execute the following command where you enter your specific Gurobi version
# $ module show Gurobi/11.0.0-GCCcore-12.3.0
# This will show the required Gurobi variables are all defined!

CC		= g++
CARGS    	= -m64 -g
TAR		= main
OBJ		= $(SRC:.cpp=.o)

# Update -lgurobi9 with the appropriate version
CPPLIB		= -lgurobi_c++ -lgurobi110

# Specify below the path were your gurobi code is
DIR		= ~/Gurobi--HPC-Ghent
	
sudoku: $(DIR)/*.cpp
	$(CC) $(CARGS) $(DIR)/*.cpp $(CPPLIB) -lm -o sudoku

clean:
	rm -rf *o sudoku




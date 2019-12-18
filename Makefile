#Makefile to solve gurobi with sudoku

#Declaration of parameters
# Note: current version of gurobi and the path were the software is installed can be checked by running the following command on HPC $ module spider gurobi
# Note: depending on the cluster you compile, it may be required to load the software for a different processor architecture. In this case, try other versions in the directory /kyukon/home/apps/CO7/

GUROBI_PATH	= /kyukon/home/apps/CO7/haswell-ib/software/Gurobi/9.0.0/
INC		= $(GUROBI_PATH)/include/
CC		= g++
CARGS    	= -m64 -g
# Update -lgurobi9 when a new version comes available (concsult /kyukon/home/apps/CO7/haswell-ib/software/Gurobi/9.0.0/examples/build/Makefile with the path updated if necessary)
CPPLIB   	= -L$(GUROBI_PATH)/lib/ -lgurobi_c++ -lgurobi90
TAR		= main
OBJ		= $(SRC:.cpp=.o)
CXXFLAGS	= -D_GLIBCXX_USE_CXX11_ABI=0					#Use older version of g++ (Newer versions of Linux not yet supported)

# Specify below the path were your gurobi code is
DIR		= ~/gurobi/
	
sudoku: $(DIR)/*.cpp
	$(CC) $(CARGS) $(CXXFLAGS) $(DIR)/*.cpp -I$(INC) $(CPPLIB) -lm -o sudoku

clean:
	rm -rf *o sudoku




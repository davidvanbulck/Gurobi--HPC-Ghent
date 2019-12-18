# Job script for a minimal working example to solve a sudoku

# Define job specifications

# 1 nodes, 1 processor (note: processor = core)
# Note: do not forget to limit number of threads Gurobi can use (otherwise Gurobi thinks it has all processors available on the cluster whereas it has only one available)
#PBS -l  nodes=1:ppn=1

# Expected running time 5 seconds
#PBS -l walltime=0:00:05

# Use infiniband nodes (important when you use mulitple cores)
#PBS -l ib

# Move to the working directory
# Alternatively: $ cd  /user/gent/419/vsc41980/gurobi/sudoku_code
cd ~/Gurobi--HPC-Ghent

# Load modules
module load Gurobi/9.0.0

# Compile the program
make sudoku

# Solve instance
# "<" makes that de data of sudoku1.dat is correctly passed to Gurobi
./sudoku < ~/Gurobi--HPC-Ghent/sudoku1.dat


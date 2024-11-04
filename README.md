This readme provides additional info on how to compile the sudoku project on HPC Ghent. I intend to update this repository whenever paths on HPC change or when new versions come available.

# Requirements
- [GCC](https://gcc.gnu.org/)
- [GNU Make](https://www.gnu.org/software/make/)
- [HPC Ghent account](https://www.ugent.be/hpc/en)

# Installation

To run the gurobi code on HPC, follow the following steps.

1) Open a terminal on HPC and move to the home directory (e.g., open a terminal and type $ssh vsc[your user id]@login.hpc.ugent.be)

2) Copy the code from github via the command $ git clone git@github.com:davidvanbulck/Gurobi--HPC-Ghent.git

3) Load Gurobi: $ module load Gurobi/11.0.0-GCCcore-12.3.0

4) Compile the project via the provided make file $ make

5) Submit the job on HPC $ qsub runSudoku.sh

6) Check the output files. The standard output stream is stored in runSudoku.sh.o[job id], the standard error stream in runSudoku.sh.o[job id].


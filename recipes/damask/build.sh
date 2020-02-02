export PETSC_DIR=${PREFIX}
export FFLAGS="${FFLAGS} -lhdf5_fortran -lhdf5 -lhdf5hl_fortran -lhdf5_hl -lfftw3"

# System report 
bash DAMASK_prerequisites.sh
cat system_report.txt

# Python Installation 
cp -r python/damask ${STDLIB_DIR}

# Build Damask
mkdir build
cd build 
cmake -DDAMASK_SOLVER="SPECTRAL" ..
make install

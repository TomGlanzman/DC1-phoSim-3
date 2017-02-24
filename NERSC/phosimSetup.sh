## phosimSetup.sh - establish cori environment to run phoSim (and DMTCP)

## Select version and location
export PHOSIM_ROOT=/global/common/cori/contrib/lsst/phosim/v3.6
export DMTCP_ROOT=/global/common/cori/contrib/lsst/dmtcp/2.4.5

## Add dummy condor_submit_dag to PATH
export PATH=${DC1_ROOT}/bin:$PATH

## Add DMTCP to (MAN)PATH
export PATH=$DMTCP_ROOT/bin:$PATH
export MANPATH=$DMTCP_ROOT/share/man:$MANPATH

## Module shenanigans on cori to run phoSim and DMTCP (checkpointing)
module swap PrgEnv-intel PrgEnv-gnu
module swap gcc gcc/4.9.3
module rm craype-network-aries
module rm cray-libsci
module unload craype
module load python/2.7-anaconda
export CC=gcc

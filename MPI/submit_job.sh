#PBS -q batch
#PBS -N test_scheduler
#PBS -l mem=2mb
#PBS -l nodes=1:ppn=4
#PBS -M j.e.forero.romero@gmail.com
#PBS -m abe

module load openmpi/1.8.5
cd $PBS_O_WORKDIR
NPROCS=`wc -l < $PBS_NODEFILE`

cd /lustre/home/ciencias/fisica/je.forero/mpitutorial/tutorials/mpi-scatter-gather-and-allgather/code
mpiexec -v -n $NPROCS ./avg 10

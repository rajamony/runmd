.PHONY : run

all :
	(test -d mpidriver || git clone https://github.com/rajamony/mpidriver.git mpidriver) && (cd mpidriver; git reset --hard; git pull -f; make all)

run : 
	rm -f unhappy
	OMP_NUM_THREADS=16 mpirun -np 1 ./mpidriver/driver -d -t memory -o "-n2 -r100000"








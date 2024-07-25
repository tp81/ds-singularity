ds-singularity.sif: ds-singularity.def ds.yml
	apptainer build --force ds-singularity.sif ds-singularity.def

all: ds-singularity.sif



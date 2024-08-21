ds-singularity.sif: ds-singularity.def ds.yml
	apptainer build --force ds-singularity.sif ds-singularity.def

all: ds-singularity.sif

pixi-rocky8:
	pixi init -i ds.yml
	mv pixi.toml pixi.toml.old
	cat pixi-header-rocky8.txt pixi.toml.old >pixi.toml

pixi:
	pixi init -i ds.yml


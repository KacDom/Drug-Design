#! /bin/bash


mkdir out_dock

for f in zmieniony_*.pdbqt; do
    vina --config conf.txt --ligand $f 
    mv *out.pdbqt ./out_dock
done

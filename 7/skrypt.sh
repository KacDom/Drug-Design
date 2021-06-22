#! /bin/bash
nazwa="wynik_oddt_cli_1"
mkdir "$nazwa"

for d in *smiles*; do
	cd $nazwa
	oddt_cli ../$d --receptor ../rec.pdbqt --score_file ../RFScore_v2.pickle --score_file ../RFScore_v3.pickle --score_file ../PLEClinear.pickle --score_file ../NNScore.pickle -n 8 -O $d".sdf"
	cd ..
done
cd $nazwa
for f in *; do mv "$f" "${f/%.pdbqt.sdf/.sdf}"; done

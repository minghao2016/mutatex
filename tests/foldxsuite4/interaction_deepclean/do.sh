cwd=$(pwd)

echo -n "Now running $(basename $cwd)... "
python mutatex.py 3wim.pdb -m mutation_list.txt --np $NP --nruns=2 --binding-interface --clean deep &> mutatex.log

if [[ $? -eq 0 ]]; then
	echo "PASSED"
else
	echo "FAILED"
fi

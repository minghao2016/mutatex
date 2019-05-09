cwd=$(pwd)

echo -n "Now running $(basename $cwd)... "
python mutatex.py 3i3c_edit.pdb --foldx-version=$FOLDX_VERSION -m mutation_list.txt --np $NP --nruns=2 --binding-interface --no-multimers &> mutatex.log

if [[ $? -eq 0 ]]; then
	echo "PASSED"
else
	echo "FAILED"
fi

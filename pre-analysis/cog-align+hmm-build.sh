cog_dir="/Users/olliejarvis/Desktop/seq-data/COGs/"

cd $cog_dir
for fasta in *.fa
do
	aligned=$fasta".aligned.fasta"
	mafft $fasta > $aligned
	hmm_file=$fasta".hmm"
	hmmbuild $hmm_file $aligned
done
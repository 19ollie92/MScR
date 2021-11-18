cog_dir="/Users/olliejarvis/Desktop/seq-data/COGs/"
prot_dir="/Users/olliejarvis/Desktop/seq-data/proteomes/"
out_dir="/Users/olliejarvis/Desktop/seq-data/hmm-searches/"

cd $prot_dir

for proteome in *.fasta
do
    for cog_hmm in $cog_dir*.hmm
        do
            result=$out_dir
            hmm_name="$(basename -- $cog_hmm)"
            result=$out_dir$proteome$hmm_name".txt"
            echo $result
            hmmsearch --tblout $result $cog_hmm $proteome
        done
done
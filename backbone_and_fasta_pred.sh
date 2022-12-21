path_to_PDB="/home/aharmal1/scr16_jgray21/aharmal1/EnzymesTM/mpnn/models/wildtype_structure_prediction_af2.pdb"
path_to_fasta="/home/aharmal1/scr16_jgray21/aharmal1/EnzymesTM/mpnn/test_multiple.fasta"

output_dir="/home/aharmal1/scr16_jgray21/aharmal1/EnzymesTM/mpnn/output"
if [ ! -d $output_dir ]
then
    mkdir -p $output_dir
fi

chains_to_design="A"

python protein_mpnn_run.py \
        --path_to_fasta $path_to_fasta \
        --pdb_path $path_to_PDB \
        --pdb_path_chains "$chains_to_design" \
        --out_folder $output_dir \
        --num_seq_per_target 5 \
        --sampling_temp "0.1" \
        --score_only 1 \
        --seed 13 \
        --batch_size 1

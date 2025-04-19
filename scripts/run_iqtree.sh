#!/bin/bash

# Description: Runs IQ-TREE for phylogenetic tree construction
# Input: data/sequences_trimmed.fasta
# Output: tree/phylo.treefile, .log, .iqtree, etc.

echo " Starting IQ-TREE analysis..."

# Create output directory if it doesn't exist
mkdir -p ../tree

# Run IQ-TREE
iqtree -s ../data/sequences_trimmed.fasta -m TEST -nt AUTO -B 1000 -pre ../tree/phylo

echo " Tree construction complete. Output saved in the 'tree/' directory."

#!/bin/bash

# Description: Aligns sequences using MAFFT
# Input: data/sequences_raw.fasta
# Output: data/sequences_aligned.fasta

echo " Starting MAFFT alignment..."

mafft --auto ../data/sequences_raw.fasta > ../data/sequences_aligned.fasta

echo "Alignment complete: saved to data/sequences_aligned.fasta"

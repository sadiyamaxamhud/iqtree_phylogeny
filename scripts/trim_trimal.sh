#!/bin/bash

# Description: Trims alignment using trimAl
# Input: data/sequences_aligned.fasta
# Output: data/sequences_trimmed.fasta

echo " Trimming alignment with trimAl..."

trimal -in ../data/sequences_aligned.fasta -out ../data/sequences_trimmed.fasta -gappyout -html ..../data/sequences_trimmed.html

echo " Trimming complete: saved to data/sequences_trimmed.fasta"


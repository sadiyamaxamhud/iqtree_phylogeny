This project explores phylogenetic relationships using [IQ-TREE](http://www.iqtree.org/).  
It is separate from my [LotuS2 microbiome project](https://github.com/sadiyamaxamhud/lotus2_microbiome), and is based on a different dataset.

# Phylogenetic Tree Construction

This repository contains a phylogenetic analysis pipeline based on multiple sequence alignment and tree inference. The sequences are processed and analyzed using Linux-based tools.

## Workflow Overview

1. **Prepare Sequences**
   - All nucleotide sequences were compiled into a single FASTA file.
   - Sequences were oriented in the same direction (5' → 3').

2. **Multiple Sequence Alignment**
   - Aligned using [MAFFT](https://mafft.cbrc.jp/alignment/software/) (command-line version).
   - Alignment visualized in [AliView](https://ormbunkar.se/aliview/) for manual inspection.

3. **Alignment Trimming**
   - Performed using [trimAl](http://trimal.cgenomics.org/) to remove poorly aligned regions.

4. **Phylogenetic Tree Construction**
   - Tree built using [IQ-TREE](http://www.iqtree.org/).
   - Command used:
     ```bash
     iqtree -s sequences_trimmed.fasta -m TEST -nt AUTO -B 1000
     ```
     - `-m TEST`: automatically selects best substitution model
     - `-nt AUTO`: auto-selects number of threads
     - `-B 1000`: 1000 ultrafast bootstrap replicates

5. **Visualization**
   - Tree visualized using [FigTree](http://tree.bio.ed.ac.uk/software/figtree/).

---

## 📁 Repository Structure

| Folder      | Contents |
|-------------|----------|
| `data/`     | Input FASTA files (raw, aligned, trimmed) |
| `scripts/`  | Bash scripts used to run each step |
| `tree/`     | Output files from IQ-TREE |
| `figs/`     | Final tree images or visualizations |
| `README.md` | This file |

---

## 🧰 Dependencies

- `mafft`
- `trimal`
- `iqtree`
- (Optional) `aliview`, `figtree`

Install via conda (recommended):
```bash
conda install -c bioconda mafft trimal iqtree

Notes

    Ensure your sequences are properly labeled and consistently oriented before alignment.

    You can adjust trimming and tree parameters based on your dataset size and quality.


---

## Bonus: Simple `align_mafft.sh` Script

```bash
#!/bin/bash
# Align sequences with MAFFT

mafft --auto data/sequences_raw.fasta > data/sequences_aligned.fasta
echo "Alignment complete."

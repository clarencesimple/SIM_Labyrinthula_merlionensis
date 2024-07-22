# Labyrinthula_merlionensis

Scripts and data for:  
Clarence Wei Hung Sim, Marie Walde, Hanna Strindberg, Avneet Kaur, Sophie Le Panse, Priscilla Gourvil, Jens Jahren, Daniel Vaulot & Adriana Lopes dos Santos (in prep). A novel Labyrinthulid Labyrinthula merlionensis n. sp. and its interaction with marine diatoms

## Generating full 18S sequence from RCC7798 (Labyrinthula - Biddulphia co culture)
1. Under the [pacbio folder](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/pacbio/), the fastQ files of CCS reads generated from pacbio sequencing of RCC7798 (Labyrinthula-diatom co-culture) [Laby_Pacbio.Rmd](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/pacbio/Laby_Pacbio.Rmd). Please make sure to install packages before running. Scripts are written using relative file paths, no changes any file paths are required upon cloning this repository.
2. Taxonomic and sequence tables were produced containing ASVs assigned to PR2 taxa. [Clarence_PacBio_Overall.csv ](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/pacbio/Clarence_PacBio_Overall.csv) contains ASVs from all samples in this pacbio run (including those not relevant to this study). [pacbio_taxon_table.csv](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/pacbio/pacbio_taxon_table.csv) contains ASVs in RCC7798.
3. ASVs were clustered at 99% in [sbatch_cluster.sh](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/pacbio/sbatch_cluster.sh), resulting in the final sequences used for this study to describe the two taxa in the co-culture, in  [clusters_0.99_Laby_18S_Canada.pacbio.centroids.fasta](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/pacbio/clusters_0.99_Laby_18S_Canada.pacbio.centroids.fasta)


## [Phylogenetic analyses](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/)

1. Sequences of [Labyrinthula spp.](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/PR2_Labyrinthula) and [Labyrinthulomycetes LAB1](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/PR2_Labyrinthulomycetes_LAB1) were obtained from PR2.
2. Sequences were dereplicated in [Labyrinthula_tree.Rmd](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/Labyrinthula_tree.Rmd) and then clustered at 99% in [sbatch_cluster.sh](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/sbatch_cluster.sh).
3. Clustered sequences were used in tree construction, with manual adding and removal of sequences in [Labyrinthula_tree.Rmd](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/Labyrinthula_tree.Rmd) to best represent diversity of Labyrinthula spp.
4. The final list of sequences were then aligned in [sbatch_alignment.sh](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/sbatch_alignment.sh)
5. Manually curated metadata of the final list of sequences can be found here: [Labyrinthula_tree_metadata_curated.csv](https://github.com/clarencesimple/SIM_Labyrinthula_merlionensis/blob/main/phylogenetic_tree_18S/Labyrinthula_tree_metadata_curated.csv)
6. Average cell size of Labyrinthula merlionensis vegetative cell was also plotted in this RMD file.

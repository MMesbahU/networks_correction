#!/bin/sh
#SBATCH --time=30:0:0
#SBATCH --mem=80G

cd /home-3/pparsan1@jhu.edu/work2/princy/claire_network/Network-Inference/gtex_networks/src/
mkdir log


## expeff
#Rscript infer_networks_updated.R expeff WGCNA >log/expeff_wgcna.log
Rscript infer_networks_updated.R expeff glasso Thyroid >log/expeff_thyroid.log 
Rscript infer_networks_updated.R expeff glasso Subcutaneous >log/expeff_sub.log
Rscript infer_networks_updated.R expeff glasso Lung >log/expeff_lung.log
Rscript infer_networks_updated.R expeff glasso Blood >log/expeff_blood.log
Rscript infer_networks_updated.R expeff glasso Muscle >log/expeff_muscle.log

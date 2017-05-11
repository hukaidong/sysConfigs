#! /bin/bash


alias init='source README.ini'
# alias init_try(){
# cwd=`pwd`
# while [ `pwd` != '\' ] 
# do
#     if [ -f 'README.ini' ]
#     then
# 	source README.ini; cat README.ini
# 	break
#     fi
# done
# cd $cwd
# }

alias ssh='ssh -Y'
alias sqsum="squeue| tr -s ' ' |cut -f 3-6 -d ' ' |sort -k3 | uniq -c|tr -s ' ' '\t'|expand -t10"
alias sq='squeue -u kh621'
alias pickle='python -m pickle'
alias spynb='ssh -N -L localhost:8888:localhost:8888'
alias vpeek='vim -Mn'

export jnm=XXX
sline(){

echo '#!/bin/bash

####### Job submission for fen2
#SBATCH --partition=main           # Partition (job queue)
#SBATCH --job-name='$jnm'          # Assign an 8-character name to your job
#SBATCH --nodes=1                  # Number of nodes
#SBATCH --ntasks=8                # Number of tasks (usually = cores) on each node
#SBATCH --time=2-0            # Total run time limit (HH:MM:SS)
#SBATCH --output=out.%N_%j     # STDOUT output file
#SBATCH --error=out.%N_%j       # STDERR output file
#SBATCH --export=ALL               # Export you current env to the job env GMAILTY
#SBATCH --mail-type=END,FAIL      # notifications for job done & fail MAILTY
#SBATCH --mail-user={email}    # send-to address ECOUNT

' $@ | sbatch
}
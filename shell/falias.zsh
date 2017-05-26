#! /bin/bash


# Environment related commands
alias init='source README.ini'
alias sa='source activate'
alias sd='source deactivate'

# SSH related
alias ssh='ssh -Y'
alias spynb='ssh -N -L localhost:8888:localhost:8888'

# Misc
alias pickle='python -m pickle'
alias vpeek='vim -Mn'

# Depercated
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


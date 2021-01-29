#things in .bashrc get executed for every subshell
if [ -f '/usr/share/module.sh' ]; then source /usr/share/module.sh; fi
module use /vnm/containers/modules
export SINGULARITY_BINDPATH=/afm01,/afm02,/90days,/30days,/QRISdata,/RDS,/data,/short,/proc_temp,/TMPDIR,/nvme,/local,/gpfs1,/working,/winmounts,/state,/autofs,/cluster,/local_mount,/scratch,/clusterdata,/nvmescratch,/vnm

alias ll='ls -la'

if [ -f '/usr/share/module.sh' ]; then
        if [ -d /vnm/containers/modules ]; then
                echo 'These tools are currently installed - use "ml load <tool>" to use them in this shell:'
        module avail
        else
                echo 'Neurodesk tools not yet downloaded. Choose tools to install from the Application menu.'
        fi
fi

nextflow.preview.dsl=2

include {graftm_graft} from './modules/graftm_graft.nf'

Channel.from('eg.fasta').set{ ch_read }

workflow {
    graftm_graft(ch_read, path_to_dpkg)
}

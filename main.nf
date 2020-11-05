nextflow.preview.dsl=2

include {graftm_graft} from './modules/graftm_graft.nf'

workflow {
    graftm_graft(input_seq, path_to_dpkg)
}

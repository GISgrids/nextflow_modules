#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FAMAS_TRIM } from '../../../../modules/famas/trim/main.nf'

workflow test_famas_trim {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    FAMAS_TRIM ( input )
}

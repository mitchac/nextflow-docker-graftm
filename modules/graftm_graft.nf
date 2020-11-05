process graftm_graft {

container 'test:latest'

input:
file(read)
val(gpkg_path)

output:
file "*.fastq.gz"

script:
"""
graftM graft --forward ${read} --graftm_package ${gpkg_path}
"""
}

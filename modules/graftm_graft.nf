process graftm_graft {

container 'graftm:latest'

input:
file(read)

output:
file "*.fastq.gz"

script:
"""
graftM graft --forward ${read} --graftm_package /tmp/pkgdir.gpkg
"""
}

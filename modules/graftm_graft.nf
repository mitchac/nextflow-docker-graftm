process graftm_graft {

container 'mitchac/graftm'

input:
file(read)

output:
file "*.fastq.gz"

script:
"""
graftM graft --forward ${read} --graftm_package /tmp/pkgdir.gpkg
"""
}

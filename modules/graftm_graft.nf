process graftm_graft {

container 'test:latest'

input:
file(read)

output:
file "*.fastq.gz"

script:
"""
graftM graft --forward ${read} --graftm_package /tmp/pkgdir.gpkg
"""
}

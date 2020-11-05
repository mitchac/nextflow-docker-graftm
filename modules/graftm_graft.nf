process graftm_graft {

<<<<<<< HEAD
container 'graftm:latest'
=======
container 'mitchac/graftm'
>>>>>>> e65e3b1aa61003f777c023278fee51e63441d37c

input:
file(read)

output:
file "*.fastq.gz"

script:
"""
graftM graft --forward ${read} --graftm_package /tmp/pkgdir.gpkg
"""
}

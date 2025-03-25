#! /bin/bash
# adapted from https://github.com/lammpstutorials/lammpstutorials-inputs
# This job runs the md part of the second lennard jones liquid example
set -ex

run="${1}"
mkdir -p "${run}" && cd "${run}" || exit 1

commit="4e249a6f7a0f8f8057bf72c07d39841a297e69a6"
url="https://raw.githubusercontent.com/lammpstutorials/lammpstutorials-inputs/${commit}"
curl -s "${url}/level1/breaking-a-carbon-nanotube/unbreakable-bonds/input.lammps" > input.lammps
curl -s "${url}/level1/breaking-a-carbon-nanotube/unbreakable-bonds/cnt_molecular.data" > cnt_molecular.data
curl -s "${url}/level1/breaking-a-carbon-nanotube/unbreakable-bonds/parm.lammps" > parm.lammps

# need to make one mod for the older lammps
sed -i 's/^delete_atoms/#delete_atoms/' input.lammps
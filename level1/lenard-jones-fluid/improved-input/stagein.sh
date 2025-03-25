#! /bin/bash
# adapted from https://github.com/lammpstutorials/lammpstutorials-inputs
# This job runs the md part of the second lennard jones liquid example

run="${1}"
mkdir -p "${run}" && cd "${run}" || exit 1

commit="e249a6f7a0f8f8057bf72c07d39841a297e69a6"
url="https://raw.githubusercontent.com/lammpstutorials/lammpstutorials-inputs/${commit}"
curl "${url}/level1/lennard-jones-fluid/improved-input/input.md.lammps" > input.lammps
wget "${url}/level1/lennard-jones-fluid/improved-input/minimized_coordinate.data" > minimized_coordinate.data


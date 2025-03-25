#! /bin/bash
# adapted from https://github.com/lammpstutorials/lammpstutorials-inputs


run="${1}"
mkdir -p "${run}" && cd "${run}" || exit 1

commit="e249a6f7a0f8f8057bf72c07d39841a297e69a6"
url="https://raw.githubusercontent.com/lammpstutorials/lammpstutorials-inputs/${commit}"
curl "${url}/level1/lennard-jones-fluid/my-first-input/input.lammps" > input.lammps

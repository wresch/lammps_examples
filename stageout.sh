#! /bin/bash
set -ex

run="${1}"
dest_prefix="${2}"

aws s3 sync  "${run}" "${dest_prefix}/${run}"
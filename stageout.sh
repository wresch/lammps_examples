#! /bin/bash

run="${1}"
dest_prefix="${2}"

tarfile="${run}-${FB_WORKFLOW_ID}.tar.gz"
tar -czf "${tarfile}" "${run}"
aws s3 cp  "${tarfile}" "${dest_prefix}/${tarfile}"
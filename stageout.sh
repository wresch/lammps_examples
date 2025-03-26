#! /bin/bash
set -ex

run="${1}"
dest="${2}"

if [[ -d  "${run}" && "${dest:-none}" != "none" && -d "${dest}" ]] ; then
    tar -czf "${dest}/${FB_WORKFLOW_ID}-${run}.tar.gz" "${run}"
fi
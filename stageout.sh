#! /bin/bash
set -ex

run="${1}"
persist="${2}"
dest="/output"

if [[ -d  "${run}" && "${persist}" == "true" && -d "${dest}" ]] ; then
    tar -czf "${dest}/${FB_WORKFLOW_ID}-${run}.tar.gz" "${run}"
    echo "saved results to ${dest}/${FB_WORKFLOW_ID}-${run}.tar.gz"
else
    echo "did not save results to persistent store"
fi
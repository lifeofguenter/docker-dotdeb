#!/usr/bin/env bash

readlink_bin="${READLINK_PATH:-readlink}"
if ! "${readlink_bin}" -f test &> /dev/null; then
  __DIR__="$(dirname "$(python -c "import os,sys; print(os.path.realpath(os.path.expanduser(sys.argv[1])))" "${0}")")"
else
  __DIR__="$(dirname "$("${readlink_bin}" -f "${0}")")"
fi

# required libs
source "${__DIR__}/.bash/functions.shlib"

set -E
trap 'throw_exception' ERR

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

while IFS= read -r -d '' -u 9; do
  temp="${REPLY##*tags/}"
  temp="${temp%*/Dockerfile}"
  IFS='/' read -r -a tags <<< "${temp}"

  consolelog "pushing ${tags[0]} ${tags[1]}..."
  docker push "${DOCKER_REPO}:${tags[0]}-${tags[1]}"
done 9< <( find tags -type f -name Dockerfile -exec printf '%s\0' {} + )

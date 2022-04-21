#!/bin/bash

VERSION=3.3.1

usage () {
  echo "nave [-hV]"
  echo
  echo "Options:"
  echo "  -h|--help      Print this help dialogue and exit"
  echo "  -V|--version   Print the current version and exit"
}

nave () {
  for opt in "${@}"; do
    case "${opt}" in
      -h|--help)
        usage
        return 0
        ;;
      -V|--version)
        echo "${VERSION}"
        return 0
        ;;
    esac
  done

  ## your code here
}

if [[ ${BASH_SOURCE[0]} != "$0" ]]; then
  export -f nave
else
  nave "${@}"
  exit 0
fi


#!/usr/bin/env bash

# prevent sourcing of this script, only allow execution
$(return >/dev/null 2>&1)
test "$?" -eq "0" && { echo "This script should only be executed." >&2; exit 1; }

# exit on errors, undefined variables, ensure errors in pipes are not hidden
set -Eeuo pipefail


usage() {
  msg
  msg "Usage: $0 [-h|--help] version environment"
  msg
  msg "Sets the version of the Dappnode build & environment and builds the image. Version must be semver"
  msg
}

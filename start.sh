#! /bin/bash

set -e

bash -c "`curl -sL get.freshshell.com`"
cp ./.freshrc ~/
fresh


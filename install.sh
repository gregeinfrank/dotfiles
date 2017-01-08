#!/bin/bash

git submodule update --init
./_make_symlinks.sh
./_setup_fzf.sh
./_osx_defaults.sh

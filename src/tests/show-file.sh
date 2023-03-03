#!/bin/sh
. ./resources.sh
export CLIPBOARD_FORCETTY=1

start_test show-file

setup_dir show-file

make_files

clipboard copy testfile testdir

output="$(clipboard show)"

content_is_shown "$output" testfile

content_is_shown "$output" testdir

pass_test show-file
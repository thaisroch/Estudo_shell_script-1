#!/usr/bin/env  bash

find / -iname "*.so"\
       -user thais  \
       -type f      \
       -size +1M    \
       -exec ls{}   \;

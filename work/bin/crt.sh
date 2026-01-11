#!/usr/bin/env bash
set -euo pipefail

delim="," # CSV by default

# Join $1 and $2
while read a; 
 do while read b; 
      do echo "$a${delim}$b"; 
      done < $2;
 done < $1 

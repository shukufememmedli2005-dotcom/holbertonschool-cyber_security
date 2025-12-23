#!/bin/bash
whois "$1" | awk -F': ' '
/^(Registrant|Admin|Tech)/ {
  f=$1; v=$2
  if (f ~ /Street$/) v=v" "
  if (f ~ /Phone Ext$/) printf "%s:,%s", f, v
  else printf "%s,%s", f, v
  printf ORS
}
END { printf "" }
'

#!/bin/bash

domain="$1"

whois "$domain" | awk -F: '
BEGIN {
    section=""
}

/^Registrant/ { section="Registrant" }
/^Admin/      { section="Admin" }
/^Tech/       { section="Tech" }

section != "" && $1 ~ /(Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Fax|Email)/ {
    field=$1
    value=$2

    sub(/^ +/, "", value)

    if (field ~ /Street/) {
        value=value" "
    }

    if (field ~ /Ext$/) {
        print section" "field":," 
        next
    }

    print section" "field","value
}
' > "$domain.csv"

#!/bin/bash
decoded=$(echo "$1" | base64 --decode 2>/dev/null) && [[ "$decoded" == *"lsb_release"* ]] && echo ok || echo invalid

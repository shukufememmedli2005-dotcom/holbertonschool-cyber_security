#!/bin/bash
decoded=$(cat | base64 --decode 2>/dev/null) && [[ "$decoded" == *"lsb_release"* ]] && echo ok || echo invalid

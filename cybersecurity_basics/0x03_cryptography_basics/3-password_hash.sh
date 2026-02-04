#!/bin/bash
echo -n "$1$(openssl rand -base64 | head -c 16)" | openssl dgst -sha512 > 3_hash.txt

#!/bin/bash
echo "Enter file name(Including path):"
read filename
key = $(openssl rand -hex 32)
openssl enc -aes-256-cbc-in "$filename" -out "${filename}.enc" -pass "pass:$key"
echo "Encryption completed. The encrypted file is ${filename}.enc"
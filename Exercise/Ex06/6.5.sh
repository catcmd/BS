#!/usr/bin/env bash

#(a) Create a file text which contains a short sentence: "This is an example!"
echo "This is an example!" >> text

#(b) Convert all letters of the file text into uppercase and store the result in the file text.uppercase. p. 10
cat text | tr a-z A-Z >> text.uppercase

#(c) Convert all letters of the file text.uppercase into lowercase and store result in text.lowercase
cat text | tr A-Z a-z >> text.lowercase
#!/bin/bash

# Author	: Andreas Finck
# Date		: 15.04.2022
# Subject	: Search Google with w3m

function gsearch() {
	w3m https://www.google.com/search?q="$@"
}
gsearch "$@"

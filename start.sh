#!/bin/bash

if [[ $GLOB ]]; then glob=" --glob=$GLOB"; else glob=""; fi
if [[ $EXCLUDE ]]; then exclude=" --exclude $EXCLUDE"; else exclude=""; fi
if [[ $SPECIFIC_FILES ]]; then files=" $SPECIFIC_FILE"; else files=""; fi

/ia download "$COLLECTION""$glob""$exclude""$files"

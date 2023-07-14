#!/bin/bash

if [[ $GLOB ]]; then glob=" --glob=$GLOB"; else glob=""; fi
if [[ $EXCLUDE ]]; then exclude=" --exclude $EXCLUDE"; else exclude=""; fi

/ia download "$COLLECTION""$glob""$exclude" "$SPECIFIC_FILES"

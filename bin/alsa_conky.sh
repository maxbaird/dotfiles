#!/bin/bash
amixer get Master | awk -F'[]%[]' '/Left.*%.*on/{ printf $2 } /Left.*%.*off/{ print "muted" }'

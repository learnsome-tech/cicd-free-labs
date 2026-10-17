#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each uncommented line was typed at the prompt; the commented lines are
# what the shell answered.
ls .github/workflows
#   ci.yml
head -4 .github/workflows/ci.yml
#   name: pipeline
#   on:
#     push:
#       branches: [main]
awk 'END {print NR}' .github/workflows/ci.yml
#   9
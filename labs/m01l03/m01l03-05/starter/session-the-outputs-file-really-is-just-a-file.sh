#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each uncommented line was typed at the prompt; the commented lines are
# what the shell answered.
export GITHUB_OUTPUT=step-output.txt
echo "tag=1.4.0" >> "$GITHUB_OUTPUT"
echo "digest=9f2c1ab" >> "$GITHUB_OUTPUT"
cat step-output.txt
#   tag=1.4.0
#   digest=9f2c1ab
grep '^tag=' step-output.txt | cut -d= -f2
#   1.4.0
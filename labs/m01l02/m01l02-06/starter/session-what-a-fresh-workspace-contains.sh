#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each uncommented line was typed at the prompt; the commented lines are
# what the shell answered.
echo "$RUNNER_OS on $RUNNER_ARCH"
#   Linux on X64
echo "$GITHUB_WORKSPACE"
#   /home/runner/work/shipping-service/shipping-service
echo "$CI"
#   true
find app tests -type f
#   app/main.py
#   tests/run.sh
ls k8s
#   deployment.yaml
#   service.yaml
cat .git/HEAD
#   ref: refs/heads/main
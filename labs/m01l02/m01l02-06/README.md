# m01l02-06 · What a fresh workspace contains

**Lesson:** [Runners: Where Code Executes](https://learnsome.tech/learn/cicd-course/m01l02) (lesson 1.2, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Graded

## Goal

You can say what a runner is, choose one with the runs-on key by image label or by self-hosted labels, and explain why two jobs in the same workflow never see each other's files.

## Files

- [`starter/dot-git/HEAD`](starter/dot-git/HEAD) (`.git/HEAD` when the lab runs)
- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/app/main.py`](starter/app/main.py)
- [`starter/k8s/deployment.yaml`](starter/k8s/deployment.yaml)
- [`starter/k8s/service.yaml`](starter/k8s/service.yaml)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session-what-a-fresh-workspace-contains.sh`](starter/session-what-a-fresh-workspace-contains.sh): the listing from the lesson
- [`starter/tests/run.sh`](starter/tests/run.sh)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-06/starter`
2. Read `session-what-a-fresh-workspace-contains.sh`.
3. The session types these commands, in order:

   ```sh
   echo "$RUNNER_OS on $RUNNER_ARCH"
   echo "$GITHUB_WORKSPACE"
   echo "$CI"
   find app tests -type f
   ls k8s
   cat .git/HEAD
   ```
4. Run it: `CI=true RUNNER_OS=Linux RUNNER_ARCH=X64 GITHUB_WORKSPACE=/home/runner/work/shipping-service/shipping-service bash session-what-a-fresh-workspace-contains.sh`.
5. Check it from the repository root: `./check m01l02-06`.

## Expected output

```text
Linux on X64
/home/runner/work/shipping-service/shipping-service
true
app/main.py
tests/run.sh
deployment.yaml
service.yaml
ref: refs/heads/main
```

## How to check

`./check m01l02-06` copies `starter/` into a scratch directory and runs `CI=true RUNNER_OS=Linux RUNNER_ARCH=X64 GITHUB_WORKSPACE=/home/runner/work/shipping-service/shipping-service bash session-what-a-fresh-workspace-contains.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

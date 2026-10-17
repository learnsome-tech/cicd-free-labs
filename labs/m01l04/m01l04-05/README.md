# m01l04-05 · Reading the event payload for real

**Lesson:** [Triggers and the Event Model](https://learnsome.tech/learn/cicd-course/m01l04) (lesson 1.4, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Graded

## Goal

You can choose the right event and filters for a workflow, read the event payload and the github context that every run carries, keep fork code out of a privileged trigger, and stop two deploys racing with a concurrency group.

## Files

- [`starter/event.json`](starter/event.json)
- [`starter/read_event.sh`](starter/read_event.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-05/starter`
2. Read `read_event.sh` the way the lesson builds it:
   - Lines 1–6: straight out of the environment
   - Lines 7–10: opens the payload itself with jq
3. Notes from the lesson:
   - Line 8: the event path variable points at the whole event, as JSON, on disk
4. Run it: `GITHUB_EVENT_NAME=pull_request GITHUB_EVENT_PATH=event.json GITHUB_ACTOR=octocat GITHUB_REF=refs/pull/42/merge GITHUB_SHA=9f2c1ab3d4e5f60718293a4b5c6d7e8f90123456 bash read_event.sh`.
5. Check it from the repository root: `./check m01l04-05`.

## Expected output

```text
event: pull_request
actor: octocat
ref: refs/pull/42/merge
sha: 9f2c1ab
action: synchronize
pr: 42 onto main
fork: true
```

## How to check

`./check m01l04-05` copies `starter/` into a scratch directory and runs `GITHUB_EVENT_NAME=pull_request GITHUB_EVENT_PATH=event.json GITHUB_ACTOR=octocat GITHUB_REF=refs/pull/42/merge GITHUB_SHA=9f2c1ab3d4e5f60718293a4b5c6d7e8f90123456 bash read_event.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

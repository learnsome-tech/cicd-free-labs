# m01l04-03 · Filters: branches, tags and paths

**Lesson:** [Triggers and the Event Model](https://learnsome.tech/learn/cicd-course/m01l04) (lesson 1.4, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can choose the right event and filters for a workflow, read the event payload and the github context that every run carries, keep fork code out of a privileged trigger, and stop two deploys racing with a concurrency group.

## Files

- [`starter/app-ci.yml`](starter/app-ci.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-03/starter`
2. Read `app-ci.yml` the way the lesson builds it:
   - Lines 1–4: name the branches
   - Lines 5–8: name the paths that matter
   - Lines 9–13: branches ignore, tags ignore, paths ignore
   - Lines 14–19: the one that never starts
3. Notes from the lesson:
   - Line 8: the workflow watches itself, so editing it still triggers a run
   - Line 11: the negated twin: skip the run when only these paths changed
4. Edit `app-ci.yml` and check it: `actionlint app-ci.yml`.
5. Check it from the repository root: `./check m01l04-03`.

## How to check

`./check m01l04-03` copies `starter/` into a scratch directory and runs `actionlint app-ci.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

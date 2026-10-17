# m01l04-07 · Two deploys racing, and the fix

**Lesson:** [Triggers and the Event Model](https://learnsome.tech/learn/cicd-course/m01l04) (lesson 1.4, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can choose the right event and filters for a workflow, read the event payload and the github context that every run carries, keep fork code out of a privileged trigger, and stop two deploys racing with a concurrency group.

## Files

- [`starter/ship.yml`](starter/ship.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-07/starter`
2. Read `ship.yml` the way the lesson builds it:
   - Lines 1–4: Somebody pushes twice in a minute
   - Lines 5–7: cancel in progress
   - Lines 8–16: the same group
3. Notes from the lesson:
   - Line 6: one group per branch, so main and a feature branch never collide
4. Edit `ship.yml` and check it: `actionlint ship.yml`.
5. Check it from the repository root: `./check m01l04-07`.

## How to check

`./check m01l04-07` copies `starter/` into a scratch directory and runs `actionlint ship.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

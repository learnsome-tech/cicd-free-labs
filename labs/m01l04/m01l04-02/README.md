# m01l04-02 · One workflow, four ways in

**Lesson:** [Triggers and the Event Model](https://learnsome.tech/learn/cicd-course/m01l04) (lesson 1.4, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can choose the right event and filters for a workflow, read the event payload and the github context that every run carries, keep fork code out of a privileged trigger, and stop two deploys racing with a concurrency group.

## Files

- [`starter/pipeline.yml`](starter/pipeline.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-02/starter`
2. Read `pipeline.yml` the way the lesson builds it:
   - Lines 1–5: A push to the main branch
   - Lines 6–7: A pull request aimed at main
   - Lines 8–10: a manual button
   - Lines 11–20: the step summary
3. Notes from the lesson:
   - Line 17: the github context names the event that started this run
   - Line 20: the step summary is a real file, so the next step can read it back
4. Edit `pipeline.yml` and check it: `actionlint pipeline.yml`.
5. Check it from the repository root: `./check m01l04-02`.

## How to check

`./check m01l04-02` copies `starter/` into a scratch directory and runs `actionlint pipeline.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

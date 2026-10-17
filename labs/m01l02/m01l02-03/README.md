# m01l02-03 · Two jobs, two machines

**Lesson:** [Runners: Where Code Executes](https://learnsome.tech/learn/cicd-course/m01l02) (lesson 1.2, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can say what a runner is, choose one with the runs-on key by image label or by self-hosted labels, and explain why two jobs in the same workflow never see each other's files.

## Files

- [`starter/build.yml`](starter/build.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-03/starter`
2. Read `build.yml` the way the lesson builds it:
   - Lines 1–2: at the top
   - Lines 3–9: the first job
   - Lines 10–18: the second job
3. Notes from the lesson:
   - Line 5: a pinned image: this build does not move when the label does
   - Line 13: each job checks out for itself, because each job starts empty
4. Edit `build.yml` and check it: `actionlint build.yml`.
5. Check it from the repository root: `./check m01l02-03`.

## How to check

`./check m01l02-03` copies `starter/` into a scratch directory and runs `actionlint build.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

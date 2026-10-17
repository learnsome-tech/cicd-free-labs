# m01l02-05 · Jobs do not share a filesystem

**Lesson:** [Runners: Where Code Executes](https://learnsome.tech/learn/cicd-course/m01l02) (lesson 1.2, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can say what a runner is, choose one with the runs-on key by image label or by self-hosted labels, and explain why two jobs in the same workflow never see each other's files.

## Files

- [`starter/isolation.yml`](starter/isolation.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-05/starter`
2. Read `isolation.yml` the way the lesson builds it:
   - Lines 1–3: this workflow is an experiment
   - Lines 4–12: the first job prints
   - Lines 13–22: The second job
3. Notes from the lesson:
   - Line 12: a file written in the workspace of job one, dying with job one
   - Line 20: if the disk were shared, this line would fail the whole workflow
4. Edit `isolation.yml` and check it: `actionlint isolation.yml`.
5. Check it from the repository root: `./check m01l02-05`.

## How to check

`./check m01l02-05` copies `starter/` into a scratch directory and runs `actionlint isolation.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

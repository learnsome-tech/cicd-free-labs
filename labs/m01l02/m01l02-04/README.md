# m01l02-04 · Self-hosted: your hardware, your risk

**Lesson:** [Runners: Where Code Executes](https://learnsome.tech/learn/cicd-course/m01l02) (lesson 1.2, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can say what a runner is, choose one with the runs-on key by image label or by self-hosted labels, and explain why two jobs in the same workflow never see each other's files.

## Files

- [`starter/bench.yml`](starter/bench.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-04/starter`
2. Read `bench.yml` the way the lesson builds it:
   - Lines 1–5: you select it with labels
   - Lines 6–11: the price
3. Notes from the lesson:
   - Line 5: self-hosted, plus tags you gave the machine when you registered it
   - Line 10: this machine keeps its disk between jobs: treat that as a risk
4. Edit `bench.yml` and check it: `actionlint bench.yml`.
5. Check it from the repository root: `./check m01l02-04`.

## How to check

`./check m01l02-04` copies `starter/` into a scratch directory and runs `actionlint bench.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

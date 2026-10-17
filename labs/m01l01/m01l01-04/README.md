# m01l01-04 · The same three steps, as a workflow

**Lesson:** [What Is a Pipeline?](https://learnsome.tech/learn/cicd-course/m01l01) (lesson 1.1, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can describe a pipeline as a trigger, an ordered set of steps, a machine to run them on and the artifacts they leave behind, and you can point at the same three steps written first as a shell script and then as a workflow file.

## Files

- [`starter/ci.yml`](starter/ci.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-04/starter`
2. Read `ci.yml` the way the lesson builds it:
   - Lines 1–4: the trigger
   - Lines 5–8: one job
   - Lines 9–11: the same test command
   - Lines 12–17: build and package
3. Notes from the lesson:
   - Line 9: checkout: the runner starts empty, so fetch the repo first
4. Edit `ci.yml` and check it: `actionlint ci.yml`.
5. Check it from the repository root: `./check m01l01-04`.

## How to check

`./check m01l01-04` copies `starter/` into a scratch directory and runs `actionlint ci.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

# m01l03-02 · One workflow, three jobs, two of them at once

**Lesson:** [Workflows, Jobs, Steps, and Actions](https://learnsome.tech/learn/cicd-course/m01l03) (lesson 1.3, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can name the four levels of a workflow file, read a needs key as an edge in a graph of jobs, tell a run step from a uses step, choose between a version tag and a pinned commit, and move a value from one step to another through the outputs file.

## Files

- [`starter/ci.yml`](starter/ci.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-02/starter`
2. Read `ci.yml` the way the lesson builds it:
   - Lines 1–2: the trigger
   - Lines 3–8: the first job
   - Lines 9–13: the second job
   - Lines 14–19: the third one
3. Notes from the lesson:
   - Line 9: no needs key here, so lint and test start together
   - Line 15: needs: this job waits for both of the jobs it names
4. Edit `ci.yml` and check it: `actionlint ci.yml`.
5. Check it from the repository root: `./check m01l03-02`.

## How to check

`./check m01l03-02` copies `starter/` into a scratch directory and runs `actionlint ci.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

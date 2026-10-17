# m01l03-04 · A step writes a value, later steps read it

**Lesson:** [Workflows, Jobs, Steps, and Actions](https://learnsome.tech/learn/cicd-course/m01l03) (lesson 1.3, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can name the four levels of a workflow file, read a needs key as an edge in a graph of jobs, tell a run step from a uses step, choose between a version tag and a pinned commit, and move a value from one step to another through the outputs file.

## Files

- [`starter/outputs.yml`](starter/outputs.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-04/starter`
2. Read `outputs.yml` the way the lesson builds it:
   - Lines 1–9: the first step
   - Lines 10–11: the second step
   - Lines 12–13: its own outputs block
   - Lines 14–19: the needs context
3. Notes from the lesson:
   - Line 9: one appended line: the key becomes the name of the output
   - Line 11: substituted before bash starts, so the shell sees a string
   - Line 15: this job waits for build, and may read what build published
4. Edit `outputs.yml` and check it: `actionlint outputs.yml`.
5. Check it from the repository root: `./check m01l03-04`.

## How to check

`./check m01l03-04` copies `starter/` into a scratch directory and runs `actionlint outputs.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

# m01l03-07 · A tag can move, a commit cannot

**Lesson:** [Workflows, Jobs, Steps, and Actions](https://learnsome.tech/learn/cicd-course/m01l03) (lesson 1.3, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Checker

## Goal

You can name the four levels of a workflow file, read a needs key as an edge in a graph of jobs, tell a run step from a uses step, choose between a version tag and a pinned commit, and move a value from one step to another through the outputs file.

## Files

- [`starter/pin.yml`](starter/pin.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-07/starter`
2. Read `pin.yml` the way the lesson builds it:
   - Lines 1–8: pins the checkout action to a tag
   - Lines 9–12: pins the setup node action
3. Notes from the lesson:
   - Line 10: a commit cannot be moved under you; the tag above can
4. Edit `pin.yml` and check it: `actionlint pin.yml`.
5. Check it from the repository root: `./check m01l03-07`.

## How to check

`./check m01l03-07` copies `starter/` into a scratch directory and runs `actionlint pin.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

# m01l01-05 · The pipeline is a file in your repository

**Lesson:** [What Is a Pipeline?](https://learnsome.tech/learn/cicd-course/m01l01) (lesson 1.1, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Graded

## Goal

You can describe a pipeline as a trigger, an ordered set of steps, a machine to run them on and the artifacts they leave behind, and you can point at the same three steps written first as a shell script and then as a workflow file.

## Files

- [`starter/.github/workflows/ci.yml`](starter/.github/workflows/ci.yml)
- [`starter/session-the-pipeline-is-a-file-in-your-repository.sh`](starter/session-the-pipeline-is-a-file-in-your-repository.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-05/starter`
2. Read `session-the-pipeline-is-a-file-in-your-repository.sh`.
3. The session types these commands, in order:

   ```sh
   ls .github/workflows
   head -4 .github/workflows/ci.yml
   awk 'END {print NR}' .github/workflows/ci.yml
   ```
4. Run it: `bash session-the-pipeline-is-a-file-in-your-repository.sh`.
5. Check it from the repository root: `./check m01l01-05`.

## Expected output

```text
ci.yml
name: pipeline
on:
  push:
    branches: [main]
9
```

## How to check

`./check m01l01-05` copies `starter/` into a scratch directory and runs `bash session-the-pipeline-is-a-file-in-your-repository.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

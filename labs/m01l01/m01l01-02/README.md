# m01l01-02 · The release, written down as a script

**Lesson:** [What Is a Pipeline?](https://learnsome.tech/learn/cicd-course/m01l01) (lesson 1.1, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Graded

## Goal

You can describe a pipeline as a trigger, an ordered set of steps, a machine to run them on and the artifacts they leave behind, and you can point at the same three steps written first as a shell script and then as a workflow file.

## Files

- [`starter/app/main.py`](starter/app/main.py)
- [`starter/release.sh`](starter/release.sh): the listing from the lesson
- [`starter/tests/run.sh`](starter/tests/run.sh)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-02/starter`
2. Read `release.sh` the way the lesson builds it:
   - Lines 1: the first line
   - Lines 2–4: test
   - Lines 5–8: build
   - Lines 9–12: package
3. Notes from the lesson:
   - Line 1: stop on the first failure, and on any unset variable
4. Run it: `bash release.sh`.
5. Check it from the repository root: `./check m01l01-02`.

## Expected output

```text
step one: test
ok
step two: build
step three: package
artifact: dist/app.tar
```

## How to check

`./check m01l01-02` copies `starter/` into a scratch directory and runs `bash release.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

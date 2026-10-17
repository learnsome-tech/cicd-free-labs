# m01l03-05 · The outputs file really is just a file

**Lesson:** [Workflows, Jobs, Steps, and Actions](https://learnsome.tech/learn/cicd-course/m01l03) (lesson 1.3, module 1: Introduction to Pipelines and Runners) · Free  
**Check:** Graded

## Goal

You can name the four levels of a workflow file, read a needs key as an edge in a graph of jobs, tell a run step from a uses step, choose between a version tag and a pinned commit, and move a value from one step to another through the outputs file.

## Files

- [`starter/session-the-outputs-file-really-is-just-a-file.sh`](starter/session-the-outputs-file-really-is-just-a-file.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-05/starter`
2. Read `session-the-outputs-file-really-is-just-a-file.sh`.
3. The session types these commands, in order:

   ```sh
   export GITHUB_OUTPUT=step-output.txt
   echo "tag=1.4.0" >> "$GITHUB_OUTPUT"
   echo "digest=9f2c1ab" >> "$GITHUB_OUTPUT"
   cat step-output.txt
   grep '^tag=' step-output.txt | cut -d= -f2
   ```
4. Run it: `bash session-the-outputs-file-really-is-just-a-file.sh`.
5. Check it from the repository root: `./check m01l03-05`.

## Expected output

```text
tag=1.4.0
digest=9f2c1ab
1.4.0
```

## How to check

`./check m01l03-05` copies `starter/` into a scratch directory and runs `bash session-the-outputs-file-really-is-just-a-file.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/cicd-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)

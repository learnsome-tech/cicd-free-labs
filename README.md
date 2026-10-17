<p>
  <a href="https://learnsome.tech/courses/cicd-course">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset=".github/assets/wordmark-inverse.svg">
      <img src=".github/assets/wordmark.svg" alt="LearnSome.tech" width="260">
    </picture>
  </a>
</p>

# Continuous Integration & Continuous Delivery Pipelines

**GitHub Actions, GitLab CI, Artifact Caching & Blue-Green Rollouts**

A complete course on delivery pipelines and GitOps as IDE-style videos, built from one set of lesson scripts. 6 modules, 30 lessons, five to ten minutes each. Intermediate level, about 2 hours.

This repository holds the labs of the free lessons of the LearnSome.tech course [Continuous Integration & Continuous Delivery Pipelines](https://learnsome.tech/courses/cicd-course): each lab's starter files, a README with the goal, the steps and the expected output, and `./check`, which tests your work the way the site does.

## Start

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/learnsome-tech/cicd-free-labs?quickstart=1)

- **Codespaces:** the badge opens this repository in a dev container with Python 3.14.7, kubeconform 0.8.0, hadolint 2.15.1 and actionlint 1.7.12, as in the site's lab sandbox.
- **On your machine:**

  ```sh
  git clone https://github.com/learnsome-tech/cicd-free-labs.git
  cd cicd-free-labs
  ./check m01l01-02
  ```

  You need Python 3 for `./check`, and for the labs themselves Python 3.14.7, kubeconform 0.8.0, hadolint 2.15.1 and actionlint 1.7.12. Other versions mostly work, but only the sandbox's versions are sure to print what the site prints. VS Code's Dev Containers extension builds the same container as Codespaces (x86-64).

## Doing a lab

1. Open the lesson on LearnSome.tech and the lab folder beside it: `labs/<lesson>/<lab>/`. The lab README has the goal, the steps and the expected output.
2. Work in the lab's `starter/` folder.
3. From the repository root, run `./check <lab>` (for example `./check m01l01-02`), or `./check <lesson>` for all labs of a lesson, or `./check --all`. `./check --list` shows every lab and how it is checked.

`./check` runs your starter the way the site's lab sandbox does: in a scratch copy that is its working directory and `HOME`, with `LANG=C.UTF-8`, `TZ=UTC`, `input.txt` on standard input, 10 seconds and 256 KiB of output per stream. It then compares the output with the site's own rules, so a pass here is a pass on the site.

| Check | What `./check` does | Labs |
| --- | --- | --- |
| Graded | Runs the program and compares its output with `expected.txt`. | 5 |
| Checker | Validates the file with the checker the site uses (hadolint, kubeconform, actionlint, yamllint, `ansible-playbook --syntax-check` or `terraform validate`); passes when it finds no errors. | 11 |
| Runs, not graded | Runs the program and shows its output; the site gives no pass or fail, and the lab README says why. | 1 |
| Read along | Nothing to run here: the site shows the listing read-only, and the lab README says honestly what it needs (Docker, a cluster, a cloud account...). | 1 |

## What is published, and what is not

This is the **free edition**: the labs of the course's free lessons, the ones anyone with a free LearnSome.tech account can watch. Each lab's starter is the code the lesson shows on screen. There are no reference solutions, no Pro lessons' labs or expected outputs, no narration and no quiz or exercise answers.

The labs of the Pro lessons are on [the course page](https://learnsome.tech/courses/cicd-course), where LearnSome.tech runs and grades them in its sandbox with a Pro membership. The full labs repository is private and stays private.

## Modules and lessons

### Module 1: Introduction to Pipelines and Runners

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 1.1 | [What Is a Pipeline?](https://learnsome.tech/learn/cicd-course/m01l01) | [3 labs](labs/m01l01/) | Free |
| 1.2 | [Runners: Where Code Executes](https://learnsome.tech/learn/cicd-course/m01l02) | [4 labs](labs/m01l02/) | Free |
| 1.3 | [Workflows, Jobs, Steps, and Actions](https://learnsome.tech/learn/cicd-course/m01l03) | [5 labs](labs/m01l03/) | Free |
| 1.4 | [Triggers and the Event Model](https://learnsome.tech/learn/cicd-course/m01l04) | [5 labs](labs/m01l04/) | Free |

**Free** lessons are open to anyone with a free LearnSome.tech account. The rest of the course is on [LearnSome.tech](https://learnsome.tech/courses/cicd-course) with Pro.

## Licence

- **Code** (starter files, `check` and `.learnsome/`, the dev container and the workflows) is under the [MIT licence](LICENSE).
- **Written text** (the READMEs and lab instructions) is under [CC BY-NC-SA 4.0](LICENSE-text.md): share and adapt it with attribution to LearnSome.tech, not commercially, under the same licence.
- The LearnSome.tech name and logo are not covered by either licence.

## Contributing and security

This repository is generated from the course. Report a broken lab or a content error [as an issue](../../issues/new/choose); see [CONTRIBUTING.md](CONTRIBUTING.md). Security reports go to [SECURITY.md](SECURITY.md).

© 2026 LearnSome.tech

# Go Project Template

Use this to skeleton a Go project

## CI/CD

The template provide CI/CD workflow based on GitHub Actions. The scripts are found here:

* `.github/workflows/develop.yaml`reponsible for running CI for the develop branch
* `.github/workflows/release.yaml` responsible for running CD responsible for generating version tags

The release CD auto-tagging relies on these commit message format:

| Commit Message | Release Type |
| --- | --- |
| fix(item): remove bug | Patch Release |
| feat(item): add some feature | Feature Release |
| BREAKING CHANGE: Moved to a new version | Breaking Release |

NOTE:
* `item` in the parenthesis is a placeholder use a word that fits your intention
* Message format is `[fix|feat|BREAKING CHANGE](<descriptor>)`: <Message phrase>

Create a PR merging from develop to master and get someone to review.
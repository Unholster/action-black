# Action-black

This Github Action performs a code reformatting using [black](https://github.com/psf/black) on Pull requests.
If a commit contains non-black formatted code, it will automatically run black and warn the user to do it beforehand.

![screenshot_image](https://github.com/Unholster/action-black/blob/master/screenshot.png)

## Usage

```
name: Assign reviewers based on assignees
on:
  pull_request:
    types: [assigned, unassigned]

jobs:
  assignee_to_reviewer:
    runs-on: ubuntu-latest
    steps:
      - name: Assignee to Reviewer
        uses: pullreminders/assignee-to-reviewer-action@v1.0.4
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

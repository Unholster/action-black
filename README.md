# Action-black

This Github Action performs a code reformatting using [black](https://github.com/psf/black) on Pull requests.
If a commit contains non-black formatted code, it will automatically run black and warn the user to do it beforehand.

![screenshot_image](https://github.com/Unholster/action-black/blob/master/screenshot.png)

## Usage

In `/.github/workflows/exemple.yaml`
```
name: Black
on:
  pull_request:
    types: [opened, synchronize, reopened]

jobs:
  build:
    name: Code Formatter
    runs-on: ubuntu-latest
    steps:
    - name: Code Formatter
      uses: Unholster/action-black@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        BLACK_ARGS: "."
```

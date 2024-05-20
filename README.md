# Gitleaks Integration

This repository includes the integration of `gitleaks` for scanning secrets in your code. By using a reusable pre-commit, we ensure an automatic check for secrets on each commit and pull request.

## How the Scanner Works

`gitleaks` scans your code for secrets (e.g., API keys, passwords, tokens) and rejects commits if it finds any. This helps prevent the accidental exposure of confidential information.

## Configuration Usage
1. `pip install pre-commit`
2. `pre-commit install`
3.  add & commit your changes.


If you want to disable the pre-commit hook, you can pass env variable:
```SKIP=gitleaks {{your git command here}}```
# Gitleaks Integration

This repository includes the integration of `gitleaks` for scanning secrets in your code. By using a reusable workflow, we ensure an automatic check for secrets on each commit and pull request.

## How the Scanner Works

`gitleaks` scans your code for secrets (e.g., API keys, passwords, tokens) and rejects commits if it finds any. This helps prevent the accidental exposure of confidential information.

## Configuration Usage

```yaml
jobs:
  # Enabling the gitleaks-check job from the reusable workflow
  gitleaks-check:
    uses: ./.github/workflows/gitleaks-check.yml
```

If you want to disable the pre-commit hook, you can use the following command:
```git config hooks.gitleaks-enable true/false```
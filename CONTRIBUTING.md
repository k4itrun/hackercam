# Contributing to [hackercam](https://github.com/k4itrun/hackercam)

Thank you for your interest in contributing to this project! We welcome all contributions — whether it's reporting bugs, suggesting new features, or submitting pull requests. Please read the following guidelines to ensure a smooth and effective contribution process.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Types of Contributions](#types-of-contributions)
   - [Reporting Bugs](#reporting-bugs)
   - [Feature Requests](#feature-requests)
   - [Pull Requests](#pull-requests)
3. [Coding Standards](#coding-standards)
4. [Testing](#testing)
5. [License](#license)

---

## Getting Started

1. Fork the repository and clone your fork.
2. Create a new branch for your feature or bugfix:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Make sure to update your fork frequently by syncing with the main branch.

   ```bash
   git fetch origin
   git rebase origin/main
   ```

## Types of Contributions

### Reporting Bugs

If you've found a bug, please [open a new issue](.github/ISSUE_TEMPLATE/bug_report.md) using our bug report template. Ensure your bug report includes:

- A clear description of the bug.
- Steps to reproduce the issue.
- Expected and actual behavior.
- Environment details (e.g., operating system, browser, etc.).
- Any error messages or logs.

### Feature Requests

We are open to new ideas! If you have a feature in mind, please submit a [feature request](.github/ISSUE_TEMPLATE/feature_request.md) using our template. Make sure to include:

- A description of the feature and its purpose.
- Any relevant use cases or scenarios.
- Why this feature would benefit the project.

### Pull Requests

We appreciate code contributions! Follow these steps when submitting a pull request:

1. Make sure your code is aligned with our [coding standards](#coding-standards).
2. Write clear, concise commit messages.
3. Link any related issues in your pull request description.
4. Submit a pull request against the `main` branch, with a descriptive title and detailed description of the changes.

Before submitting, ensure that your pull request:

- Passes all tests.
- Adds or updates tests as needed.
- Includes documentation if new features or significant changes are introduced.

## Coding Standards

- Use consistent indentation and formatting.
- Keep your code clean and readable.
- Follow the project’s existing code style.
- Document code where necessary, especially for complex logic.

## Testing

Before submitting any changes, ensure that your code passes all existing tests. If you're adding new features or fixing bugs, please write or update the tests accordingly.

- Run the test suite:
  ```bash
  npm test
  ```
- For new features, include unit tests that cover the edge cases.

## License

By contributing to this project, you agree that your contributions will be licensed under the project's [LICENSE](LICENSE).

---

By following these guidelines, you help ensure that the project remains well-organized and easy to maintain. We appreciate every contribution, large or small, and look forward to working together to make this project even better!

Thank you for contributing!

---

This template can be customized further to fit the specific needs of your project!

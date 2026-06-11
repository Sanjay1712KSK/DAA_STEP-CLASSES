---
name: "\U0001F41B Bug Report"
about: Report an error in SQL queries or documentation
title: ''
labels: ''
assignees: ''

---

body:
  - type: markdown
    attributes:
      value: |
        Thank you for reporting a bug! Please fill out the details below.
  
  - type: dropdown
    id: category
    attributes:
      label: Bug Category
      options:
        - SQL Query Error
        - Database Issue
        - Documentation Typo
        - Workflow Problem
        - Other
    validations:
      required: true

  - type: textarea
    id: description
    attributes:
      label: Describe the Bug
      description: What went wrong?
      placeholder: "The query in Day1.sql line X returns..."
    validations:
      required: true

  - type: textarea
    id: reproduce
    attributes:
      label: Steps to Reproduce
      description: How can we reproduce this issue?
      placeholder: |
        1. Open MySQL/Day1.sql
        2. Run the query...
        3. See the error...
    validations:
      required: true

  - type: textarea
    id: expected
    attributes:
      label: Expected Behavior
      description: What should happen?
    validations:
      required: true

  - type: textarea
    id: actual
    attributes:
      label: Actual Behavior
      description: What actually happens?
    validations:
      required: true

  - type: input
    id: file
    attributes:
      label: File Name
      description: Which file has the issue?
      placeholder: "MySQL/Day1.sql"

  - type: textarea
    id: error-message
    attributes:
      label: Error Message (if any)
      description: Paste any error messages
      render: sql

  - type: textarea
    id: additional
    attributes:
      label: Additional Context
      description: Anything else?

---
name: "❓ Question"
about: Ask a question about the content
title: ''
labels: ''
assignees: ''

---

body:
  - type: markdown
    attributes:
      value: |
        Have a question? Ask away! This helps us improve the materials.

  - type: dropdown
    id: topic
    attributes:
      label: Topic Area
      options:
        - SQL Fundamentals
        - JOINs
        - GROUP BY
        - Subqueries
        - Knime Workflows
        - GDP360
        - Database Setup
        - Other
    validations:
      required: true

  - type: textarea
    id: question
    attributes:
      label: Your Question
      description: What do you want to know?
      placeholder: "How do I use LEFT JOIN for..."
    validations:
      required: true

  - type: textarea
    id: context
    attributes:
      label: Context/What You've Tried
      description: What have you already attempted?
      placeholder: "I tried using INNER JOIN but..."

  - type: textarea
    id: file-reference
    attributes:
      label: File Reference (if any)
      description: Which file or line number?
      placeholder: "MySQL/Day1.sql line 15"

  - type: textarea
    id: additional
    attributes:
      label: Additional Info
      description: Anything else?

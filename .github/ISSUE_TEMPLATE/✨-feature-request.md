---
name: "✨ Feature Request"
about: Suggest an improvement or new content
title: ''
labels: ''
assignees: ''

---

body:
  - type: markdown
    attributes:
      value: |
        Have an idea to improve this learning repository? We'd love to hear it!

  - type: dropdown
    id: type
    attributes:
      label: Type of Enhancement
      options:
        - New SQL Examples
        - Better Documentation
        - Additional Workflows
        - Hackathon Problems
        - Video/Tutorial Content
        - Other
    validations:
      required: true

  - type: textarea
    id: description
    attributes:
      label: Describe Your Idea
      description: What would you like to add or improve?
      placeholder: "It would be great to have more examples about..."
    validations:
      required: true

  - type: textarea
    id: why
    attributes:
      label: Why is This Needed?
      description: How does this help learners?
    validations:
      required: true

  - type: textarea
    id: example
    attributes:
      label: Example or Implementation
      description: Do you have an example?
      render: sql

  - type: dropdown
    id: difficulty
    attributes:
      label: Learning Level
      options:
        - Beginner
        - Intermediate
        - Advanced
        - All Levels
    validations:
      required: true

  - type: textarea
    id: additional
    attributes:
      label: Additional Details
      description: Anything else to add?

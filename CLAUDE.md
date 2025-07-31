# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Dart algorithms repository containing coding exercises focused on logic, problem-solving, and clean code practices. Each exercise is implemented in a separate file in the `exos/` directory.

## Commands

### Running exercises
To run any individual exercise:
```bash
dart exos/exos_XX_exercise_name.dart
```

For example:
```bash
dart exos/exos_01_most_frequent_element.dart
```

## Code Architecture

### Structure
- All exercises are standalone Dart files in the `exos/` directory
- Each file contains a main function with the problem implementation and a `main()` function with test cases
- Files follow the naming pattern: `exos_XX_exercise_description.dart` where XX is the exercise number

### Code Style
- French comments are used throughout the codebase
- Each file starts with a description comment including the exercise number, title, author (Phuvatat), and date
- Functions are typically named in camelCase English (e.g., `mostFrequentElement`)
- Clear variable names and step-by-step implementations with comments explaining the logic

### Common Patterns
- Heavy use of Dart collections: `List`, `Map`, `Set`
- Frequent use of Map for frequency counting and grouping operations
- String manipulation with case-insensitive comparisons
- Algorithms avoid using built-in sort methods when specified in the exercise

## Development Notes

This is a pure Dart project without external dependencies. The focus is on algorithm implementation and problem-solving rather than production code, so there's no testing framework, linting configuration, or build process configured.
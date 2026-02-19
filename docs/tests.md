\page tests tests
# tests

This directory contains all **unit tests** for the project. Tests are organized by module and executed through a single **test driver** located at `test.cpp`. The project uses the **doctest** framework, which is included in this directory as `doctest.h` [1].

## Structure

```
tests/
├── test_algo.h       # tests for algo directory
├── test_data.h       # tests for data directory
├── test_src.h        # tests for src directory
├── test_utils.h      # tests for utils directory
├── tests.h           # Aggregates all test files
└── doctest.h         # Doctest framework header
```

## Adding New Tests

1. Identify the module (`algo`, `data`, `src`, etc.) related to your new code.
2. Add your tests to the corresponding file (e.g., `test_algo.h` for algorithm tests).
3. Follow the **doctest** syntax for consistency.

For example:

```cpp
TEST_CASE("Description of what you're testing") {
    CHECK(condition == expected);
}
```

## Compiling and Running Tests

From the root of the repository, run:

```bash
make test
```

This command:
- Compiles `test.cpp` along with all module-specific test files
- Generates a single **test executable** that runs all tests
- Reports results to the console

--- 

[1] https://github.com/doctest/doctest

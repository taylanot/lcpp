\mainpage

<p align="center">
  <img src="logo.svg" width="300">
</p>

**A C++20 Header Only Library for Learning Curve Generation**

**lcpp** is a lightweight C++20 header only library for generating learning curves for supervised machine learning algorithms.  
It requires no separate compilation and is designed for fast integration into existing workflows.

The library is particularly suited for:

- performance estimation
- data efficiency analysis
- rapid machine learning experimentation
- scalable evaluation of supervised models

For installation instructions and source code, visit:  
https://github.com/taylanot/lcpp/

---

# Documentation Overview

The documentation mirrors the project directory structure and is organized into the following sections. The main components of the project are divided into four parts:

- \ref src "src" : Core implementation of learning curve generation, including both fixed-learner evaluation and hyperparameter-tuned variants.

- \ref algo "algo" : Additional learning algorithms not available in <a href="https://mlpack.org/">mlpack</a>.

- \ref data "data" : Provides <a href="https://www.openml.org/">OpenML</a> integration, internal data containers, and data manipulation utilities.

- \ref utils "utils" : Utility components such as progress tracking and serialization tools.

Two more sections provide insights into the functionality of the project:

- \ref tests "tests" : Testing suite for validating functionality and ensuring correctness.

- \ref examples "examples" : Practical examples demonstrating how to generate learning curves for any model, including learners from `lcpp` in the \subpage algo "algo" directory and <a href="https://mlpack.org/">mlpack</a>.

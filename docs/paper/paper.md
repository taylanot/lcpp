---
title: 'LCPP: Learning Curve Plus Plus'
tags:
  - C++
  - hyper-parameter tuning
  - mlpack
  - ensmallen
  - armadillo
  - learning curve
  - generalization performance
  - openml
  - pattern recognition
  - machine learning

authors:
  - name: Ozgur Taylan Turan
    orcid: 0009-0004-1022-6334
    corresponding: true 
    affiliation: 1
  - name: David M.J. Tax
    affiliation: 1
affiliations:
 - name: Delft University of Technology, The Netherlands
   index: 1
date: 27 September 2025
bibliography: ref.bib
--- 
# Summary

A learning algorithm is said to learn if its performance on a given task improves with experience [@mitchell1997]. This fundamental definition links the size of training data to the generalization performance of the model. In supervised learning, a **learning curve** depicts how generalization performance evolves as a function of the training set size. Collections of such data, known as **learning curve databases**, track the performance of diverse machine learning algorithms (learners) across multiple tasks as they observe increasing amounts of training data.

Learning curve databases are valuable for **model selection** and for **estimating the amount of data needed** to achieve a target performance. These applications typically assume learning curves are monotonic and convex. However, recent findings [@yan2025] and [@mohr2023] show that learning curves often exhibit more complex and irregular behavior. Sparse sampling of training sizes limits the ability to fully characterize these behaviors, highlighting the need for **high-fidelity learning curves** to investigate them.


**LCPP (Learning Curve Plus Plus)** is a C++ library that allows for learning curve creation of machine learning models. LCPP enables its users to obtain learning curves for variety of learners on any supervised learning dataset with/out hyper-parameter tuning, enabling more accurate model selection and more precise training data requirement determination.

# Statement of need

Generally, creating learning curves is computationally expensive because it requires repeatedly training algorithms on many subsets of varying training sizes. Consequently, learning curves are often computed for a limited number of training set sizes. For example, while creating learning curve databases [@mohr2023] and [@yan2025] limited number of training set-sizes are investigated, moroever, these generations are done only for fixed learners without hyper-parameter tuning.

To empower the machine learning community to generate richer, more detailed learning curves, we propose LCPP, a C++ library for scalable learning curve generation. LCPP offers several features; first several approaches for splitting a given dataset into training and test sets of varying sizes (where training sets can be drawn randomly or incrementally, where test sets can be fixed or vary in size). Next, unlike most existing tools that fix hyper-parameters during learning curve creation, LCPP integrates hyperparameter optimization routines from mlpack, enabling more realistic and optimized learner evaluations. 

LCPP also includes a simple dataset container for access to OpenML datasets [@vanschoren], with built-in support for complete dataset transformations and train/test splits, allowing users to directly measure the generalization performance of models available in mlpack and some other learning algorithms included in itself, such as kernel ridge regression, discriminant classifiers, multi-class classification extensions of binary classifiers. 

Designed for easy deployment on high-performance computing (HPC) environments, LCPP can efficiently run large-scale experiments in parallel, ensuring reproducibility and scalability. This combination of features has already been demonstrated in [@turan2025] and [@turan2025b], where large-scale learning curve databases are generated.

By capturing generalization performance across many learners and tasks, LCPP facilitates systematic benchmarking, fair algorithm comparisons, and meta-analysis for understanding broader patterns in learning behaviors of machine learning models. 


# References


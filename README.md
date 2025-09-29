# lcpp [LearningCurvePlusPlus]

![](docs/figures/logo.svg)

**C++ Header-Only Learning Curve Generation Tool**  

Generate learning curves for supervised machine learning algorithms with just header files — no separate compilation needed!  

`lcpp` is designed to help you easily generate learning curves for supervised ML algorithms.  
It provides a clean C++ header-only implementation, making it easy to integrate into your own projects without heavy build setup.  

---

 
## Quick Start  

Get started quickly with **lcpp**. First, install the dependencies, then you can install lcpp locally:
```bash
./install.sh
```
However, I highly recommend using the pre-built image with your preferred container platform. You can pull the pre-built image from Docker Hub:
```bash
singularity pull lcpp.sif docker://taylanot/lcpp
```
Once installed, include lcpp in your program by adding the following at the top of your source file:
```cpp
#include <lcpp.h>
```

You can build your project using the provided sample Makefile or your own. The sample Makefile will create a build directory and place your executable there:
```bash
singularity lcpp.sif make your_project
```
Now, you are ready to run you program...
```bash
build/your_project
```
---

## Detailed Documentations

[examples](docs/examples.md)
---
[src](docs/src.md)
---
[algo](docs/algo.md)
---
[data](docs/data.md)
---
[utils](docs/utils.md)
---


## Contributions

Any contributions are welcome. Please make sure you test what your contributions in the related test files.

- Feature Curves generation is on the roadmap of this project.
- New learning algorithms are always welcome.
- New sampling strategies can be useful.

## Dependencies

- [C++20>= ](https://en.cppreference.com/w/cpp/20.html)
- [Armadillo 14.0.0>=](https://arma.sourceforge.net/docs.html)  
- [mlpack 4.4.1>=](https://github.com/mlpack/mlpack/tree/master)  
- [ensmallen 2.21.1>=](https://github.com/mlpack/ensmallen)  
- [libcurl 7.81.0>=](https://curl.se/libcurl/)

> ** These libraries may have their own dependencies. Make sure they are properly installed before use.** 

## Project History and Development

This work has been developed since 2023 and was previously used in [Turan et al. (2025)](#turan2025) under the name *mlcxx*. The name has since changed from *mlcxx* to *lcpp*. While the majority of the code remains the same, improvements in usability have been made, and unused parts of the code have been removed.  

### Reference
<a id="turan2025"></a>  
Turan, O. T., Tax, D. M. J., Viering, T. J., & Loog, M. (2025). *Learning learning curves*. Pattern Analysis and Applications, 28, 15. [https://doi.org/10.1007/s10044-024-01394-6](https://doi.org/10.1007/s10044-024-01394-6)


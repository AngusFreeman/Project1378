
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Project1378

<!-- badges: start -->

[![R-CMD-check](https://github.com/AngusFreeman/Project1378/workflows/R-CMD-check/badge.svg)](https://github.com/AngusFreeman/Project1378/actions)
<!-- badges: end -->

The goal of Project1378 is to provide functions to use to do complete
statistical tests.

## Installation

You can install the released version of Project1378 from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Project1378")
```

And the development version from [GitHub](https://github.com/) with:

``` r
install.packages("devtools")
devtools::install_github("AngusFreeman/Project1378")
```

## Example

``` r
library(Project1378)
myttest(project)
#> Step 1: Stating the test hypotheses.
#> H0 -> There is no difference in the average height between genders
#> H1 -> There is a difference in the average height between genders
#> 
#> Step 3: Gathering relevent data using the t.test() function, which is summarised in the list below.
#> 
#> [[1]]
#>         t 
#> -39.94716 
#> 
#> [[2]]
#>  df 
#> 998 
#> 
#> [[3]]
#> [[3]]$p.value
#> [1] 3.321387e-209
#> 
#> 
#> [[4]]
#> [[4]]$conf.int
#> [1] -10.385723  -9.413134
#> attr(,"conf.level")
#> [1] 0.95
#> 
#> 
#> [[5]]
#> [[5]]$estimate
#> mean of x mean of y 
#>  168.0707  177.9701 
#> 
#> 
#> 
#> Step 4: Deciding the test result.
#> [1] "Decision: Reject null hypothesis"
#> 
#> Step 5: Concluding the test.
#> [1] "Conclusion: Since the p-value is less than 0.05, i.e. 0 does not lie withinn the 95% confidence interval for the difference in mean, it is statistically unlikely that the null hypothesis is correct, so we reject the null hypothesis in favour of the alternative hypothesis and assume that there is a difference in mean height between gender."
```

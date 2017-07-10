# Setup

## Platform

|setting  |value                                       |
|:--------|:-------------------------------------------|
|version  |R version 3.4.0 Patched (2017-05-10 r72669) |
|system   |x86_64, darwin15.6.0                        |
|ui       |X11                                         |
|language |(EN)                                        |
|collate  |en_US.UTF-8                                 |
|tz       |America/New_York                            |
|date     |2017-05-12                                  |

## Packages

|package    |*  |version |date       |source          |
|:----------|:--|:-------|:----------|:---------------|
|bitops     |   |1.0-6   |2013-08-17 |cran (@1.0-6)   |
|covr       |   |2.2.2   |2017-01-05 |cran (@2.2.2)   |
|crayon     |   |1.3.2   |2016-06-28 |cran (@1.3.2)   |
|curl       |   |2.6     |2017-04-27 |CRAN (R 3.4.0)  |
|devtools   |*  |1.13.0  |2017-05-08 |CRAN (R 3.4.0)  |
|digest     |   |0.6.12  |2017-01-27 |CRAN (R 3.4.0)  |
|evaluate   |   |0.10    |2016-10-11 |cran (@0.10)    |
|git2r      |   |0.18.0  |2017-01-01 |CRAN (R 3.4.0)  |
|gmailr     |   |0.7.1   |2016-04-12 |cran (@0.7.1)   |
|httr       |   |1.2.1   |2016-07-03 |CRAN (R 3.4.0)  |
|hunspell   |   |2.4     |2017-04-30 |cran (@2.4)     |
|jsonlite   |   |1.4     |2017-04-08 |CRAN (R 3.4.0)  |
|knitr      |   |1.15.1  |2016-11-22 |cran (@1.15.1)  |
|lintr      |   |1.0.0   |2016-04-16 |cran (@1.0.0)   |
|memoise    |   |1.1.0   |2017-04-21 |CRAN (R 3.4.0)  |
|Rcpp       |   |0.12.10 |2017-03-19 |cran (@0.12.10) |
|rmarkdown  |   |1.5     |2017-04-26 |cran (@1.5)     |
|roxygen2   |   |6.0.1   |2017-02-06 |cran (@6.0.1)   |
|rstudioapi |   |0.6     |2016-06-27 |CRAN (R 3.4.0)  |
|rversions  |   |1.0.3   |2016-08-02 |cran (@1.0.3)   |
|testthat   |   |1.0.2   |2016-04-23 |cran (@1.0.2)   |
|whisker    |   |0.3-2   |2013-04-28 |CRAN (R 3.4.0)  |
|withr      |   |1.0.2   |2016-06-20 |CRAN (R 3.4.0)  |

# Check results

20 packages with problems

|package   |version | errors| warnings| notes|
|:---------|:-------|------:|--------:|-----:|
|abjutils  |0.0.1   |      1|        0|     0|
|BEACH     |1.1.2   |      1|        0|     0|
|biomartr  |0.4.0   |      1|        0|     0|
|BrailleR  |0.24.2  |      1|        0|     0|
|checkmate |1.8.2   |      0|        1|     1|
|CluMix    |1.3.1   |      1|        0|     0|
|demi      |1.1.2   |      1|        0|     0|
|elementR  |1.3.1   |      1|        0|     1|
|gsrc      |1.1     |      1|        0|     0|
|KoNLP     |0.80.1  |      1|        0|     0|
|modules   |0.5.0   |      1|        0|     0|
|mptools   |1.0.1   |      0|        1|     0|
|msgtools  |0.2.7   |      1|        1|     0|
|myTAI     |0.5.0   |      1|        0|     0|
|pacman    |0.4.5   |      1|        0|     0|
|plotly    |4.6.0   |      1|        0|     1|
|REDCapR   |0.9.7   |      0|        1|     0|
|rsoi      |0.2.1   |      1|        0|     0|
|umx       |1.7.5   |      2|        0|     0|
|vortexR   |1.0.3   |      1|        0|     0|

## abjutils (0.0.1)
Maintainer: Fernando Correa <fcorrea@abj.org.br>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  rm_accent(umlaut) not equal to `nudeUmlaut`.
  1/1 mismatches
  x[1]: "\"a\"e\"i\"o\"u\"A\"E\"I\"O\"U\"y"
  y[1]: "aeiouAEIOUy"
  
  
  testthat results ================================================================
  OK: 10 SKIPPED: 0 FAILED: 4
  1. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#30) 
  2. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#32) 
  3. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#33) 
  4. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#34) 
  
  Error: testthat unit tests failed
  Execution halted
```

## BEACH (1.1.2)
Maintainer: Danni Yu <danni.yu@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘BEACH’ can be installed ... ERROR
Installation failed.
See ‘/Users/jhester/Dropbox/projects/devtools/revdep/checks/BEACH.Rcheck/00install.out’ for details.
```

## biomartr (0.4.0)
Maintainer: Hajk-Georg Drost <hgd23@cam.ac.uk>  
Bug reports: https://github.com/HajkD/biomartr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘biomaRt’ ‘Biostrings’ ‘downloader’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## BrailleR (0.24.2)
Maintainer: A. Jonathan R. Godfrey <a.j.godfrey@massey.ac.nz>  
Bug reports: http://github.com/ajrgodfrey/BrailleR/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available:
  ‘gridGraphics’ ‘gridSVG’ ‘moments’ ‘nortest’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## checkmate (1.8.2)
Maintainer: Michel Lang <michellang@gmail.com>  
Bug reports: https://github.com/mllg/checkmate/issues

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning in (function (filename = if (onefile) "Rplots.svg" else "Rplot%03d.svg",  :
  unable to load shared object '/Library/Frameworks/R.framework/Resources/library/grDevices/libs//cairo.so':
  dlopen(/Library/Frameworks/R.framework/Resources/library/grDevices/libs//cairo.so, 6): Library not loaded: /opt/X11/lib/libfontconfig.1.dylib
  Referenced from: /Library/Frameworks/R.framework/Resources/library/grDevices/libs//cairo.so
  Reason: Incompatible library version: cairo.so requires version 11.0.0 or later, but libfontconfig.1.dylib provides version 10.0.0
Warning in (function (filename = if (onefile) "Rplots.svg" else "Rplot%03d.svg",  :
  failed to load cairo DLL
Warning in (function (filename = if (onefile) "Rplots.svg" else "Rplot%03d.svg",  :
  failed to load cairo DLL
Warning in (function (filename = if (onefile) "Rplots.svg" else "Rplot%03d.svg",  :
  failed to load cairo DLL
Warning in (function (filename = if (onefile) "Rplots.svg" else "Rplot%03d.svg",  :
  failed to load cairo DLL
Warning in (function (filename = if (onefile) "Rplots.svg" else "Rplot%03d.svg",  :
  failed to load cairo DLL
pandoc: Could not fetch checkmate_files/figure-html/unnamed-chunk-7-1.svg
checkmate_files/figure-html/unnamed-chunk-7-1.svg: openBinaryFile: does not exist (No such file or directory)
Error: processing vignette 'checkmate.Rmd' failed with diagnostics:
pandoc document conversion failed with error 67
Execution halted


checking compiled code ... NOTE
File ‘checkmate/libs/checkmate.so’:
  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```

## CluMix (1.3.1)
Maintainer: Manuela Hummel <m.hummel@dkfz.de>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available:
  ‘ClustOfVar’ ‘DescTools’ ‘extracat’ ‘marray’ ‘FD’

Package suggested but not available for checking: ‘dendextend’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## demi (1.1.2)
Maintainer: Sten Ilmjarv <sten.ilmjarv@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘affxparser’ ‘affy’ ‘oligo’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## elementR (1.3.1)
Maintainer: Charlotte Sirot <charlott.sirot@gmail.com>  
Bug reports: https://github.com/charlottesirot/elementR/issues

1 error  | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘elementR-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: elementR_project
> ### Title: Object elementR_project
> ### Aliases: elementR_project
> 
> ### ** Examples
> 
> ## create a new elementR_repStandard object based on the "filePath" 
> ## from a folder containing sample replicate
> 
> filePath <- system.file("Example_Session", package="elementR")
> 
> exampleProject <- elementR_project$new(filePath)
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "toplevel".
Calls: <Anonymous> ... tktoplevel -> tkwidget -> tcl -> .Tcl.objv -> structure
Execution halted

checking installed package size ... NOTE
  installed size is  6.2Mb
  sub-directories of 1Mb or more:
    R         1.7Mb
    Results   3.2Mb
```

## gsrc (1.1)
Maintainer: Fabian Grandke <grafabian@gmail.com>  
Bug reports: http://github.com/grafab/gsrc/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available:
  ‘illuminaio’ ‘limma’ ‘preprocessCore’ ‘Ckmeans.1d.dp’ ‘DNAcopy’

Packages suggested but not available for checking:
  ‘brassicaData’ ‘mixtools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## KoNLP (0.80.1)
Maintainer: Heewon Jeon <madjakarta@gmail.com>  
Bug reports: https://github.com/haven-jeon/KoNLP/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘KoNLP’ can be installed ... ERROR
Installation failed.
See ‘/Users/jhester/Dropbox/projects/devtools/revdep/checks/KoNLP.Rcheck/00install.out’ for details.
```

## modules (0.5.0)
Maintainer: Sebastian Warnholz <wahani@gmail.com>  
Bug reports: https://github.com/wahani/modules/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’ [38s/40s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
                                           ~^~
  tests/testthat/testS4import/R/all.r:1:29: style: Put spaces around all infix operators.
  setClass('derived', contains='class_to_export')
                             ~^~
  tests/testthat/testVignettesBuilt/R/code.r:1:1: style: Variable and function names should not be longer than 20 characters.
  function_with_unusual_name <- function() {
  ^~~~~~~~~~~~~~~~~~~~~~~~~~
  
  
  testthat results ================================================================
  OK: 65 SKIPPED: 0 FAILED: 1
  1. Failure: Package Style (@test-lintr.R#2) 
  
  Error: testthat unit tests failed
  Execution halted
```

## mptools (1.0.1)
Maintainer: John Baumgartner <johnbaums@gmail.com>  
Bug reports: https://github.com/johnbaums/mptools/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Extracting simulation results from file:
/Users/jhester/Dropbox/projects/devtools/revdep/checks/mptools.Rcheck/mptools/example.mp
Extracting population metadata from file:
/Users/jhester/Dropbox/projects/devtools/revdep/checks/mptools.Rcheck/mptools/example.mp
Extracting simulation results from file:
/Users/jhester/Dropbox/projects/devtools/revdep/checks/mptools.Rcheck/mptools/example.mp
rgdal: version: 1.2-7, (SVN revision 660)
... 8 lines ...
/Users/jhester/Dropbox/projects/devtools/revdep/checks/mptools.Rcheck/mptools/example.mp
Creating gif animation.
Executing: 
convert -loop 0 -dispose Background -delay 'dynamics.gif'
convert: invalid argument for option '-delay': dynamics.gif @ error/convert.c/ConvertImageCommand/1277.
an error occurred in the conversion... see Notes in ?im.convert
pandoc: Could not fetch dynamics.gif
dynamics.gif: openBinaryFile: does not exist (No such file or directory)
Error: processing vignette 'intro.Rmd' failed with diagnostics:
pandoc document conversion failed with error 67
Execution halted
```

## msgtools (0.2.7)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/RL10N/msgtools/issues

1 error  | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘msgtools-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: msgtools
> ### Title: Tools for developing diagnostic messages
> ### Aliases: msgtools msgtools-package use_localization
> ### Keywords: package
> 
... 52 lines ...

>   install_translations(pkg = pkg)
sh: msgfmt: command not found
Warning in install_translations(pkg = pkg) :
  running msgfmt on R-es.po failed
Updating the PO-Revision-Date to ‘2017-05-12 15:55:01-0400’.
Updating the Language-Team to ‘’.
sh: msgconv: command not found
Error in install_translations(pkg = pkg) : 
  running msgconv on 'R-en@quot' UTF-8 localization failed
Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
sh: xgettext: command not found
sh: msgmerge: command not found
sh: msgmerge: command not found
sh: msgfmt: command not found
sh: msgconv: command not found
Quitting from lines 136-138 (Tutorial.Rmd) 
Error: processing vignette 'Tutorial.Rmd' failed with diagnostics:
running msgconv on 'R-en@quot' UTF-8 localization failed
Execution halted

```

## myTAI (0.5.0)
Maintainer: Hajk-Georg Drost <hgd23@cam.ac.uk>  
Bug reports: https://github.com/HajkD/myTAI/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘nortest’ ‘taxize’ ‘edgeR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## pacman (0.4.5)
Maintainer: Tyler Rinker <tyler.rinker@gmail.com>  
Bug reports: https://github.com/trinker/pacman/issues?state=open

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > library("pacman")
  > options(repos="http://cran.rstudio.com/")
  > 
  > 
  > test_check("pacman")
  1. Failure: p_install_gh works (@test-p_install_gh.R#5) ------------------------
  p_install_gh("greg/iDontExistAnywhere") isn't false.
  
  
  testthat results ================================================================
  OK: 55 SKIPPED: 1 FAILED: 1
  1. Failure: p_install_gh works (@test-p_install_gh.R#5) 
  
  Error: testthat unit tests failed
  Execution halted
```

## plotly (4.6.0)
Maintainer: Carson Sievert <cpsievert1@gmail.com>  
Bug reports: https://github.com/ropensci/plotly/issues

1 error  | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘plotly-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: plot_dendro
> ### Title: Plot an interactive dendrogram
> ### Aliases: plot_dendro
> 
> ### ** Examples
> 
> 
> hc <- hclust(dist(USArrests), "ave")
> dend1 <- as.dendrogram(hc)
> plot_dendro(dend1, height = 600) %>% 
+   hide_legend() %>% 
+   highlight(off = "plotly_deselect", persistent = TRUE, dynamic = TRUE)
Error in loadNamespace(name) : there is no package called ‘dendextend’
Calls: %>% ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted

checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘Cairo’ ‘dendextend’ ‘RSelenium’ ‘IRdisplay’
```

## REDCapR (0.9.7)
Maintainer: Will Beasley <wibeasley@hotmail.com>  
Bug reports: https://github.com/OuhscBbmc/REDCapR/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 42-45 (BasicREDCapROperations.Rmd) 
Error: processing vignette 'BasicREDCapROperations.Rmd' failed with diagnostics:
object 'ds' not found
Execution halted

```

## rsoi (0.2.1)
Maintainer: Sam Albers <sam.albers@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > 
  > test_check("rsoi")
  1. Failure: Test whether ONI values have not changed from February 2017. (@test_download_soi.R#29) 
  enso_df_current$ONI not equal to enso$ONI.
  2/807 mismatches (average diff: 0.0633)
  [806] -0.123 - -0.187 == 0.0633
  [807]  0.143 -     NA ==     NA
  
  
  testthat results ================================================================
  OK: 2 SKIPPED: 1 FAILED: 1
  1. Failure: Test whether ONI values have not changed from February 2017. (@test_download_soi.R#29) 
  
  Error: testthat unit tests failed
  Execution halted
```

## umx (1.7.5)
Maintainer: Timothy C Bates <timothy.c.bates@gmail.com>  
Bug reports: http://github.com/tbates/umx/issues

2 errors | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘umx-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: logLik.MxModel
> ### Title: logLik.MxModel
> ### Aliases: logLik.MxModel
> 
> ### ** Examples
... 8 lines ...
+ 	mxPath(from = latents, to = manifests),
+ 	mxPath(from = manifests, arrows = 2),
+ 	mxPath(from = latents, arrows = 2, free = FALSE, values = 1.0),
+ 	mxData(cov(demoOneFactor), type = "cov", numObs = 500)
+ )
> m1 = umxRun(m1, setLabels = TRUE, setValues = TRUE)
Running One Factor with 10 parameters
Error in runHelper(model, frontendStart, intervals, silent, suppressWarnings,  : 
  c++ exception (unknown reason)
Calls: umxRun -> mxRun -> runHelper
Execution halted

checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Attaching package: 'umx'
  
  The following object is masked from 'package:stats':
  
      loadings
  
  > 
  > test_check("umx")
  Running One Factor with 10 parameters
  Error in runHelper(model, frontendStart, intervals, silent, suppressWarnings,  : 
    c++ exception (unknown reason)
  Calls: test_check ... eval -> eval -> umxRun -> mxRun -> runHelper -> .Call
  testthat results ================================================================
  OK: 0 SKIPPED: 0 FAILED: 0
  Execution halted
```

## vortexR (1.0.3)
Maintainer: Carlo Pacioni <C.Pacioni@Murdoch.edu.au>  
Bug reports: https://github.com/carlopacioni/vortexR/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘vortexR’ can be installed ... ERROR
Installation failed.
See ‘/Users/jhester/Dropbox/projects/devtools/revdep/checks/vortexR.Rcheck/00install.out’ for details.
```


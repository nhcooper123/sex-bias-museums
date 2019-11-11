# Sex biases in bird and mammal natural history collections 

Author(s): [Natalie Cooper](mailto:natalie.cooper.@nhm.ac.uk)

This repository contains all the code and some data used in the [paper](http://dx.doi.org/10.1098/rspb.2019.2025). 

To cite the paper: 
> Natalie Cooper, Alexander L. Bond, Joshua L. Davis, Roberto Portela Miguez, Louise Tomsett, and Kristofer M. Helgen. 2019. Sex biases in bird and mammal natural history collections. Proceedings of the Royal Society Series B: Biological Sciences. 286, 20192025. DOI:10.1098/rspb.2019.2025.

To cite this repo: 
> Natalie Cooper. 2019. GitHub: nhcooper123/sex-bias-museums: code for the paper. Zenodo. DOI: 10.5281/zenodo.3459138.

[![DOI](https://zenodo.org/badge/161480153.svg)](https://zenodo.org/badge/latestdoi/161480153)

![alt text](https://github.com/nhcooper123/sex-bias-museums/raw/master/manuscript/figures/orders-density-birds-six.png)


## Data
All cleaned data are available from the [NHM Data Portal](https://doi.org/10.5519/0065209).
For reproducibility purposes download this and place it into a `rawdata/` or `data/` folder as appropriate to rerun our analyses. 
We were unable to upload this to GitHub because the files are too large.

* `data/` should include `all-specimen-data.csv` and `all-extra-data.csv`. These are the datasets required to run the analyses.
* For the sensitivity analyses you will also need `genera-specimen-data.csv` and `szekely2014.csv`.
* `rawdata/` should contain all other data. Note that we did not upload raw data that can be accessed from the original data sources due to copyright issues, but these can be downloaded from GBIF (references and links below). The raw data are only necessary if you want to repeat the data wrangling steps.

If you use the cleaned data please cite as follows: 
> Natalie Cooper, Alexander L Bond, Joshua L. Davis, Roberto Portela Miguez, Louise Tomsett and Kristofer M Helgen (2019). Dataset: Sex biases in natural history collections of birds and mammals. Natural History Museum Data Portal (data.nhm.ac.uk). [https://doi.org/10.5519/0065209](https://doi.org/10.5519/0065209).

Please also cite the original sources of the data as follows:

Specimen data
> GBIF: The Global Biodiversity Information Facility. https://www.gbif.org/ (2018).

> AMNH birds: Trombone, T., AMNH Bird Collection. American Museum of Natural History. Occurrence dataset https://doi.org/10.15468/xvzdcm accessed via GBIF.org on 2018-08-03 (2013). Trombone, T., 
> AMNH mammals: AMNH Mammal Collections. American Museum of Natural History. Occurrence Dataset https://doi.org/10.15468/wu3poe accessed via GBIF.org on 2018-08-09 (2016).

> FMNH birds: Grant, S. & Marks, B., Field Museum of Natural History (Zoology) Bird Collection. Version 14.4. Field Museum. Occurrence dataset https://doi.org/10.15468/exkxdx accessed via GBIF.org on 2018-08-03. (2018). 
> FMNH mammals: Grant, S. & Ferguson, A., Field Museum of Natural History (Zoology) Mammal Collection. Version 9.3. Field Museum. Occurrence Dataset https://doi.org/10.15468/n4zgxw accessed via GBIF.org on 2018-08-09 (2018).

> MNHN birds: Museum National d’Histoire Naturelle, The birds collection (ZO) of the Muse´um national d’Histoire Naturelle (MNHN - Paris). Version 42.70. Occurrence dataset https://doi.org/10.15468/h0xtwv accessed via GBIF.org on 2018-08-03 (2018). 
> MNHN mammals: Museum National d’Histoire Naturelle, The mammals collection (ZM) of the Muse´um national d’Histoire naturelle (MNHN - Paris). Version 43.55. Occurrence Dataset https://doi.org/10.15468/j0xw9i accessed via GBIF.org on 2018-08-09 (2018).

> NMNH: Orrell, T. & Hollowell, T., NMNH Extant Specimen Records. Version 1.16. National Museum of Natural History, Smithsonian Institution. Occurrence Dataset https://doi.org/10.15468/hnhrg3 accessed via GBIF.org on 2018-08-09 (2018).

> NHMUK: Natural History Museum, Natural History Museum (London) Collection Specimens. Collection Specimens. Occurrence dataset https://doi.org/10.5519/0002965 accessed via GBIF.org on 2018-08-09. (2018).

Bird mass data
> Lislevand, T., Figuerola, J. & Sze´kely, T., Avian body sizes in relation to fecundity, mating system, display behavior, and resource sharing. Ecology 88, 1605–1605 (2007).

Bird plumage data
> Dale, J., Dey, C. J., Delhey, K., Kempenaers, B. & Valcu, M., Data from: The effects of life history and sexual selection on male and female plumage colouration. Dryad Digital Repository. https://doi.org/10.5061/dryad.1rp0s (2015).
> Dale, J., Dey, C. J., Delhey, K., Kempenaers, B. & Valcu, M., The effects of life history and sexual selection on male and female plumage colouration. Nature 527, 367 (2015).

Mammal mass data
> Jones, K. E., Bielby, J., Cardillo, M., Fritz, S. A., O’Dell, J., Orme, C. D. L., Safi, K., Sechrest, W., Boakes, E. H., Carbone, C., Connolly, C., Cutts, M. J., Foster, J. K., Grenyer, R., Habib, M., Plaster, C. A., Price, S. A., Rigby, E. A., Rist, J., Teacher, A., Bininda-Emonds, O. R. P., Gittleman, J. L., Mace, G. M. & Purvis, A., PanTHERIA: a species-level database of life history, ecology, and geography of extant and recently extinct mammals. Ecology 90, 2648–2648 (2009).

Bird adult sex ratio data
>Szekely T, Liker A, Freckleton RP, Fichtel C, Kappeler PM. Sex-biased
survival predicts adult sex ratio variation in wild birds. Proceedings of
the Royal Society of London B: Biological Sciences. 2014;281(1788):20140342.


-------
## Data wrangling
Prior to analyses some intense data wrangling occurred. 
It was the best of times, it was the worst of times. 
To get from raw specimen data to `specimen-data-all.csv` you need:

* 01A-wrangling-museum-data.R
* 01B-taxonomy-check.R
* 01C-taxonomy-corrections.R

In reality, I ran script **01A** to the taxonomy check stage, then ran script **01B** to identify specimens with taxonomy that needed to be updated.
I then created script **01C** which corrects the taxonomy. To repeat the analyses you only need script **01A** because the taxonomy corrections of **01C** are sourced from that script.

To combine body size, plumage and ornamentation datasets into `extra-data-all.csv` you need:

* 02A-extract-extra-data.R
* 02B-taxonomy-corrections-mass-birds.R
* 02C-taxonomy-corrections-plumage-birds.R

Similarly to the specimen data, scripts **02B** and **02C** are called from script **02A**

There is also a `03-revision-extract-genus-level-data.R` script which extracts the data at the genus-level, rather than species-level, for sensitivity analyses.

-------
## Analyses
The analysis code is divided into `.Rmd` files that run the analyses and plot the figures for each section of the paper/supplementary materials, and more detailed scripts for the figures found in the paper and called by the `.Rmd` files.

Note that throughout I've commented out `ggsave` commands so you don't clog your machine up with excess plots you don't need.

1. **01-summary-stats.Rmd** calculates summary statistics and tables.
1. **02-specimens-per-species.Rmd** investigates % female specimens for each species.
1. **03-orders.Rmd** looks at % females across orders.
1. **04-time.Rmd** looks at how % females changes through time.
1. **05-ssd.Rmd** investigates how sexual size dimorphism is related to % female specimens.
1. **06-ornaments.Rmd**	investigates how plumage colouration and ornamentation (horns, antlers, tusks, manes etc.) are related to % female specimens.
1. **07-revision-unsexed.Rmd** investigates the unsexed specimens.
2. **08-revision-apodiformes.Rmd** looks at % females across families of Apodiformes.
3. **09-revision-gaudy-females.Rmd** looks at % females across orders where the females are larger or more showy.
4. **10-revision-wild-sex-ratios.Rmd** compares sex ratios in wild birds to those in the museum collections where we have data on both.
5. **11-revision-genus-level-summary-stats.Rmd** looks at % females using the genus-level data.

### Code for figures
* **figure-bodymass.R**
* **figure-orders.R**
* **figure-plumage-ornaments.R**
* **figure-specimens-all.R**
* **figure-ssd-all.R**
* **figure-types-all.R**
* **figure-years-all.R**

### Code for tables in LaTeX format
* **make-tables.R**

-------
## Other folders

* `/figures` contains the figures
* `/img` contains the silhouettes from from `PhyloPic.org` needed for plotting. Contributed by: Ferran Sayol (parrot, hummingbird, tit), Steven Traver (woodpecker), Alexandre Vong (shorebird), Daniel Jaron (mouse), Yan Wong (bat), Becky Barnes (shrew), Lukasiniho (tiger), Sarah Werning (monkey), and Oscar Sanisidro (deer).
* `/manuscript` contains the manuscript materials in LaTeX format

-------
## Session Info
For reproducibility purposes, here is the output of `devtools::session_info()` used to perform the analyses in the publication.

    ─ Session info ────────────────────────────────────────────────────────────────────────────────
    setting  value                       
    version  R version 3.6.1 (2019-07-05)
    os       OS X El Capitan 10.11.6     
    system   x86_64, darwin15.6.0        
    ui       RStudio                     
    language (EN)                        
    collate  en_IE.UTF-8                 
    ctype    en_IE.UTF-8                 
    tz       Europe/Dublin               
    date     2019-08-12                  

    Packages ────────────────────────────────────────────────────────────────────────────────────
    package     * version    date       lib source                              
    assertthat    0.2.1      2019-03-21 [1] CRAN (R 3.6.0)                      
    backports     1.1.4      2019-04-10 [1] CRAN (R 3.6.0)                      
    broom       * 0.5.2      2019-04-07 [1] CRAN (R 3.6.0)                      
    callr         3.3.1      2019-07-18 [1] CRAN (R 3.6.0)                      
    cellranger    1.1.0      2016-07-27 [1] CRAN (R 3.6.0)                      
    cli           1.1.0      2019-03-19 [1] CRAN (R 3.6.0)                      
    colorspace    1.4-1      2019-03-18 [1] CRAN (R 3.6.0)                      
    crayon        1.3.4      2017-09-16 [1] CRAN (R 3.6.0)                      
    crul          0.8.4      2019-08-02 [1] CRAN (R 3.6.0)                      
    curl          4.0        2019-07-22 [1] CRAN (R 3.6.0)                      
    desc          1.2.0      2018-05-01 [1] CRAN (R 3.6.0)                      
    devtools      2.1.0      2019-07-06 [1] CRAN (R 3.6.0)                      
    digest        0.6.20     2019-07-04 [1] CRAN (R 3.6.0)                      
    dplyr       * 0.8.3      2019-07-04 [1] CRAN (R 3.6.0)                      
    evaluate      0.14       2019-05-28 [1] CRAN (R 3.6.0)                      
    forcats     * 0.4.0      2019-02-17 [1] CRAN (R 3.6.0)                      
    fs            1.3.1      2019-05-06 [1] CRAN (R 3.6.0)                      
    generics      0.0.2      2018-11-29 [1] CRAN (R 3.6.0)                      
    ggfortify   * 0.4.7      2019-05-26 [1] CRAN (R 3.6.0)                      
    ggplot2     * 3.2.1      2019-08-10 [1] CRAN (R 3.6.0)                      
    glue          1.3.1      2019-03-12 [1] CRAN (R 3.6.0)                      
    gridBase      0.4-7      2014-02-24 [1] CRAN (R 3.6.0)                      
    gridExtra     2.3        2017-09-09 [1] CRAN (R 3.6.0)                      
    gtable        0.3.0      2019-03-25 [1] CRAN (R 3.6.0)                      
    haven         2.1.1      2019-07-04 [1] CRAN (R 3.6.0)                      
    here        * 0.1        2017-05-28 [1] CRAN (R 3.6.0)                      
    hexbin        1.27.3     2019-05-14 [1] CRAN (R 3.6.0)                      
    hms           0.5.0      2019-07-09 [1] CRAN (R 3.6.0)                      
    htmltools     0.3.6      2017-04-28 [1] CRAN (R 3.6.0)                      
    httpcode      0.2.0      2016-11-14 [1] CRAN (R 3.6.0)                      
    httr          1.4.1      2019-08-05 [1] CRAN (R 3.6.0)                      
    jsonlite      1.6        2018-12-07 [1] CRAN (R 3.6.0)                      
    knitr       * 1.24       2019-08-08 [1] CRAN (R 3.6.0)                      
    labeling      0.3        2014-08-23 [1] CRAN (R 3.6.0)                      
    lattice       0.20-38    2018-11-04 [1] CRAN (R 3.6.1)                      
    lazyeval      0.2.2      2019-03-15 [1] CRAN (R 3.6.0)                      
    lubridate     1.7.4      2018-04-11 [1] CRAN (R 3.6.0)                      
    magrittr      1.5        2014-11-22 [1] CRAN (R 3.6.0)                      
    memoise       1.1.0      2017-04-21 [1] CRAN (R 3.6.0)                      
    modelr        0.1.5      2019-08-08 [1] CRAN (R 3.6.0)                      
    munsell       0.5.0      2018-06-12 [1] CRAN (R 3.6.0)                      
    nlme          3.1-140    2019-05-12 [1] CRAN (R 3.6.1)                      
    patchwork   * 0.0.1      2019-08-12 [1] Github (thomasp85/patchwork@fd7958b)
    pillar        1.4.2      2019-06-29 [1] CRAN (R 3.6.0)                      
    pkgbuild      1.0.4      2019-08-05 [1] CRAN (R 3.6.0)                      
    pkgconfig     2.0.2      2018-08-16 [1] CRAN (R 3.6.0)                      
    pkgload       1.0.2      2018-10-29 [1] CRAN (R 3.6.0)                      
    png         * 0.1-7      2013-12-03 [1] CRAN (R 3.6.0)                      
    prettyunits   1.0.2      2015-07-13 [1] CRAN (R 3.6.0)                      
    processx      3.4.1      2019-07-18 [1] CRAN (R 3.6.0)                      
    ps            1.3.0      2018-12-21 [1] CRAN (R 3.6.0)                      
    purrr       * 0.3.2      2019-03-15 [1] CRAN (R 3.6.0)                      
    R6            2.4.0      2019-02-14 [1] CRAN (R 3.6.0)                      
    Rcpp          1.0.2      2019-07-25 [1] CRAN (R 3.6.0)                      
    readr       * 1.3.1      2018-12-21 [1] CRAN (R 3.6.0)                      
    readxl        1.3.1      2019-03-13 [1] CRAN (R 3.6.0)                      
    remotes       2.1.0      2019-06-24 [1] CRAN (R 3.6.0)                      
    rlang         0.4.0      2019-06-25 [1] CRAN (R 3.6.0)                      
    rmarkdown     1.14       2019-07-12 [1] CRAN (R 3.6.0)                      
    rphylopic   * 0.2.0.9100 2019-08-12 [1] Github (sckott/rphylopic@35165d6)   
    rprojroot     1.3-2      2018-01-03 [1] CRAN (R 3.6.0)                      
    rstudioapi    0.10       2019-03-19 [1] CRAN (R 3.6.0)                      
    rvest         0.3.4      2019-05-15 [1] CRAN (R 3.6.0)                      
    scales        1.0.0      2018-08-09 [1] CRAN (R 3.6.0)                      
    sessioninfo   1.1.1      2018-11-05 [1] CRAN (R 3.6.0)                      
    stringi       1.4.3      2019-03-12 [1] CRAN (R 3.6.0)                      
    stringr     * 1.4.0      2019-02-10 [1] CRAN (R 3.6.0)                      
    testthat      2.2.1      2019-07-25 [1] CRAN (R 3.6.0)                      
    tibble      * 2.1.3      2019-06-06 [1] CRAN (R 3.6.0)                      
    tidyr       * 0.8.3      2019-03-01 [1] CRAN (R 3.6.0)                      
    tidyselect    0.2.5      2018-10-11 [1] CRAN (R 3.6.0)                      
    tidyverse   * 1.2.1      2017-11-14 [1] CRAN (R 3.6.0)                      
    usethis       1.5.1      2019-07-04 [1] CRAN (R 3.6.0)                      
    vctrs         0.2.0      2019-07-05 [1] CRAN (R 3.6.0)                      
    viridisLite   0.3.0      2018-02-01 [1] CRAN (R 3.6.0)                      
    withr         2.1.2      2018-03-15 [1] CRAN (R 3.6.0)                      
    xfun          0.8        2019-06-25 [1] CRAN (R 3.6.0)                      
    xml2          1.2.2      2019-08-09 [1] CRAN (R 3.6.0)                      
    yaml          2.2.0      2018-07-25 [1] CRAN (R 3.6.0)                      
    zeallot       0.1.0      2018-01-28 [1] CRAN (R 3.6.0)

## Checkpoint for reproducibility
To rerun all the code with packages as they existed on CRAN at time of our analyses we recommend using the `checkpoint` package, and running this code prior to the analysis:

```{r}
checkpoint("2019-08-12")
```

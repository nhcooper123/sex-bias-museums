# Sex biases in natural history collections

Author(s): [Natalie Cooper](mailto:natalie.cooper.@nhm.ac.uk), Roberto Portela Miguez and Kris Helgen.

This repository contains all the code and data used in the [link to paper will appear here](). 

To cite the paper: 
> XXX

To cite this repo: 
> XXX

## Data
All raw and cleaned data are available from the [NHM Data Portal](https://doi.org/10.5519/0093278).
For reproducibilitiy purposes download this and place it into a `rawdata/` or `data/` folder as appropriate to rerun our analyses. We were unable to uplaod this to GitHub because the files are too large.

* `data/` should include `all-specimen-data.csv` and `all-extra-data.csv`
* `rawdata/` should contain all other data.

If you use the cleaned data please cite as follows: 
> Natalie Cooper (2019). Dataset: XXX . Natural History Museum Data Portal (data.nhm.ac.uk). [https://doi.org/10.5519/0093278](https://doi.org/10.5519/0093278).

Please also cite the original sources of the data as follows:

Specimen data
> GBIF

Bird mass data
>

Bird plumage data
>

Mammal mass data
>

-------
## Data wrangling
Prior to analyses some intense data wrangling occurred. It was the best of times, it was the worst of times. 
To get from raw specimen data to `specimen-data-all.csv` you need:

* 01A-wrangling-museum-data.R
* 01B-taxonomy-check.R
* 01C-taxonomy-corrections.R

In reality, I ran script **01A** to the taxonomy check stage, then ran script **01B** to identify specimens with taxonomy that needed to be updated.
I then created script **01C** which corrects the taxonomy. To repeat the analyses you only need script **01A** becaause the taxonomy corrections of **01C** are sourced from that script.

To combine body size, plumage and ornamentation datasets into `extra-data-all.csv` you need:

* 02A-extract-extra-data.R
* 02B-taxonomy-corrections-mass-birds.R
* 02C-taxonomy-corrections-plumage-birds.R

Similarly to the specimen data, scripts **02B** and **02C** are called from script **02A**

-------
## Analyses
The analysis code is divided into `.Rmd` files that run the analyses and plot the figures for each section of the paper/supplementary materials, and more detailed scripts for the figures found in the paper and called by the `.Rmd` files.

1. **01-summary-stats.Rmd** calculates summary statistics and tables.
1. **02-specimens-per-species.Rmd** investigates % female specimens for each species.
1. **03-orders.Rmd** looks at % females across orders
1. **04-time.Rmd** looks at how % females changes through time
1. **05-ssd.Rmd** investigates how sexual size dimorphism is related to % female specimens
1. **06-ornaments.Rmd**	investigates how plumage colouration and ornamentation (horns, antlers and tusks) are related to % female specimens

### Code for figures
* **figure-orders.R**
* **figure-plumage.R**
* **figure-specimens-all.R**
* **figure-ssd-all.R**
* **figure-types-all.R**
* **figure-years-all.R**
* **figure-horns.R**


## Session Info
For reproducibility purposes, here is the output of `devtools::session_info()` used to perform the analyses in the publication.

    Session info ------------------------------------------------------------------

## Checkpoint for reproducibility
To rerun all the code with packages as they existed on CRAN at time of our analyses we recommend using the `checkpoint` package, and running this code prior to the analysis:

```{r}
checkpoint("2018-12-14")
```

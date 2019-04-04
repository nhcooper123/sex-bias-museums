# Sex biases in bird and mammal natural history collections 

Author(s): [Natalie Cooper](mailto:natalie.cooper.@nhm.ac.uk), Alex Bond, Kris Helgen, Roberto Portela Miguez, and Louise Tomsett.

This repository contains all the code and some data used in the [link to paper will appear here](). 

To cite the paper: 
> XXX

To cite this repo: 
> XXX

## Data
All raw and cleaned data are available from the [NHM Data Portal](https://doi.org/10.5519/0093278).
For reproducibility purposes download this and place it into a `rawdata/` or `data/` folder as appropriate to rerun our analyses. We were unable to uplaod this to GitHub because the files are too large.

* `data/` should include `all-specimen-data.csv` and `all-extra-data.csv`
* `rawdata/` should contain all other data.

If you use the cleaned data please cite as follows: 
> Natalie Cooper (2019). Dataset: XXX . Natural History Museum Data Portal (data.nhm.ac.uk). [https://doi.org/10.5519/0093278](https://doi.org/10.5519/0093278).

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
* `/img` contains the silhouettes from from `PhyloPic.org` needed for plotting. Contributed by: Ferran Sayol (parrot, hummingbird,
tit), Steven Traver (woodpecker), Alexandre Vong (shorebird), Daniel Jaron (mouse), Yan Wong (bat), Becky
Barnes (shrew), Lukasiniho (tiger), Sarah Werning (monkey), and Oscar
Sanisidro (deer).
* `/manuscript` contains the manuscript materials in LaTeX format

-------
## Session Info [to add still]
For reproducibility purposes, here is the output of `devtools::session_info()` used to perform the analyses in the publication.

    Session info ------------------------------------------------------------------

## Checkpoint for reproducibility
To rerun all the code with packages as they existed on CRAN at time of our analyses we recommend using the `checkpoint` package, and running this code prior to the analysis:

```{r}
checkpoint("2018-12-14")
```

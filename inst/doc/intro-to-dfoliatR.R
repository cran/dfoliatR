## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 8,
  fig.height = 6,
  fig.align = "center"
)


## ---- echo=TRUE---------------------------------------------------------------
library(dfoliatR)

## ---- echo=TRUE, eval=FALSE---------------------------------------------------
#  data(dmj_h)
#  

## ---- echo=FALSE, results='asis'----------------------------------------------
knitr::kable(dmj_h[1:10, 1:10])

## ---- echo=TRUE, eval=FALSE---------------------------------------------------
#  data(dmj_nh)

## ---- echo=FALSE, results='asis'----------------------------------------------
knitr::kable(head(dmj_nh, 10))

## ---- echo=TRUE---------------------------------------------------------------
dmj_defol <- defoliate_trees(host_tree = dmj_h, nonhost_chron = dmj_nh, 
      duration_years = 8, max_reduction = -1.28, list_output = FALSE)

## ---- echo=FALSE, results='asis'----------------------------------------------
knitr::kable(head(dmj_defol, 10))

## ---- echo=TRUE---------------------------------------------------------------
plot(dmj_defol)

## ---- echo=TRUE, eval=FALSE---------------------------------------------------
#  defol_stats(dmj_defol)
#  

## ---- echo=FALSE, results='asis'----------------------------------------------
knitr::kable(head(defol_stats(dmj_defol), 10))

## ---- echo=TRUE---------------------------------------------------------------
dmj_obr <- outbreak(dmj_defol, filter_perc = 25, filter_min_series = 3)

## ---- echo=FALSE, results='asis'----------------------------------------------
knitr::kable(head(dmj_obr, 10))

## ---- echo=TRUE---------------------------------------------------------------
plot_outbreak(dmj_obr)

## ---- echo=TRUE---------------------------------------------------------------
dmj_obr_stats <- outbreak_stats(dmj_obr)

## ---- echo=TRUE, eval=FALSE---------------------------------------------------
#  head(dmj_obr_stats)

## ---- echo=FALSE, results='asis'----------------------------------------------
knitr::kable(dmj_obr_stats)

## ---- echo=TRUE---------------------------------------------------------------

dmj_interv <- diff(dmj_obr_stats$start)

# All intervals
dmj_interv

# Mean interval
mean(dmj_interv)

# Median interval
median(dmj_interv)



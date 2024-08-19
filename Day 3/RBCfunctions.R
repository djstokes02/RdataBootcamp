## DJS
## Function for R Bootcamp

bscInfo <- function(dat,char2fac="character")
{
  # dat is the dataset
  # desc is a character description wrapped in quotes
  # char2fac is TRUE or FALSE
  if(char2fac == "factor")
  {
    dat <- 
      dat %>%
      mutate(across(where(is.character), as.factor)) 
  } else {dat = dat}
  d <- dim(dat)
  nms <- colnames(dat)
  srm <- summary(dat)
  prv <- head(dat)
  
  return(
    list("data dimensions" = d,
         "variable names" = nms,
         "variable summary"= srm,
         "data preview" = prv)
  )
}


# njtcv

<!-- badges: start -->
<!-- badges: end -->

To re-create my CV you require special access to various google sheets.

The code to recreate R libraries is:

```r
capsule::reproduce_lib()
```

To create the CV, run:

```r
# optional to wipe data clean re GH stars + downloads
# targets::tar_destroy()

# create the CV
capsule::run(targets::tar_make())
```


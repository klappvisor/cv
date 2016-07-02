#!/bin/bash

rm cv.pdf
docker run -v $(pwd):/source --rm -it texlive xelatex cv.tex

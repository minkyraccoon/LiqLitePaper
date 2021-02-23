# README

## Pre-requisites

- GNU make
- Pandoc
- Inter is Tendermint font. Can download from here: https://fonts.google.com/specimen/Inter
- Korean and Chinese versions use the Noto library. Look here for install https://www.google.com/get/noto/help/cjk/


## Usage

- To create new report go just need to run 
    - `make builden` for English version
    - `make buildko` for Korean version
    - `make buildzh` for Chinese version
- To clean outputs run `make clean`

## notes

- This uses a latex template from [here](https://github.com/Wandmalfarbe/pandoc-latex-template)
- Configuration is in two places:
    - The make file - this sets the file locations for source and output
    - The top of the report markdown in LiqMod.md, which sets font, footers, backgrounds etc. Check the above template for examples. 
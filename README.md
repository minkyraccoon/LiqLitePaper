# Liquidity Module Litepaper

## Prerequisites

- GNU make
- Pandoc
- Inter is the Tendermint font and can be downloaded here: https://fonts.google.com/specimen/Inter
- Korean and Chinese versions use the Noto library. To install Noto: https://www.google.com/get/noto/help/cjk/


## Usage

- To create new report, just run:
    - `make builden` for English version
    - `make buildko` for Korean version
    - `make buildzh` for Chinese version
- To clean outputs run `make clean`

## notes

- This litepaper uses this [pandoc LaTeX template](https://github.com/Wandmalfarbe/pandoc-latex-template)
- Configuration is required in two places:
    - The make file sets the file locations for source and output
    - The top of the report markdown in LiqMod.md sets font, footers, backgrounds, and so on. See the pandoc LaTeX template for examples. 

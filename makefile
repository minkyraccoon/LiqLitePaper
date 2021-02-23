# Generate PDFs from the Markdown source files
#
# In order to use this makefile, you need some tools:
# - GNU make
# - Pandoc

# Directory containing source (Markdown) files
source_en := ./rpts/LiqMod.md
source_ko := ./rpts/LiqMod_KO.md
source_zh := ./rpts/LiqMod_ZH.md

# Directory containing pdf files
output_en := ./out/LiquidityModuleLightPaper.pdf
output_ko := ./out/LiquidityModuleLightPaper_KO.pdf
output_zh := ./out/LiquidityModuleLightPaper_ZH.pdf

# bibliography
bibliography := ./bibs/LiqMod.bib 

# template
template := ./eisvogel

clean:
	rm -f $(output)


builden:
	pandoc $(source_en) \
		--output $(output_en) \
		--from markdown \
		--listings \
 		--template $(template) \
		--bibliography=$(bibliography) \
		--citeproc \
		--toc \
		--top-level-division=chapter \
		--number-sections \
		--pdf-engine "xelatex" 


buildko:
	pandoc $(source_ko) \
		--output $(output_ko) \
		--from markdown \
		--listings \
 		--template $(template) \
		--bibliography=$(bibliography) \
		--citeproc \
		--toc \
		--number-sections \
		--top-level-division=chapter \
		--pdf-engine "xelatex"


buildzh:
	pandoc $(source_zh) \
		--output $(output_zh) \
		--from markdown \
		--listings \
 		--template $(template) \
		--bibliography=$(bibliography) \
		--citeproc \
		--toc \
		--number-sections \
 		--top-level-division=chapter \
		--pdf-engine "xelatex"
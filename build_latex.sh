pandoc --filter pandoc-citeproc --bibliography=../artigos/bib.bib relatorio.md --toc --variable urlcolor=blue -s -o relatorio.latex --template default.latex

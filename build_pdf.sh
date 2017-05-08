pandoc --filter pandoc-citeproc --bibliography=../artigos/bib.bib relatorio.md --toc --variable urlcolor=blue -s -o monitorando-fase2.pdf --template default.latex

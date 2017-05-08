pandoc --filter pandoc-citeproc --bibliography=../artigos/bib.bib relatorio.md --toc -V links-as-notes --variable urlcolor=blue -s -o monitorando-fase2.pdf --template default.latex

pandoc --filter pandoc-citeproc --bibliography=../artigos/bib.bib relatorio.md --toc -V links-as-notes --variable urlcolor=blue -s -o relatorio-monitorando.pdf --template default.latex

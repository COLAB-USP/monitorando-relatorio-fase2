pandoc --filter pandoc-citeproc --bibliography=../artigos/bib.bib relatorio.md --css pandoc.css --toc -s -t html5 -o index.html

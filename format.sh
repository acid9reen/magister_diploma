grep -oP "(?<=\\\\input{)[^}]+" main.tex | while read file; do
    latexindent --silent --overwrite -l -c ./.latexindent ${file}
done

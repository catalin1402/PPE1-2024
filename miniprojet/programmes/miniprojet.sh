#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	echo "$0 prend un argument exactement"
	exit 1
fi

fichier=$1
n=1
echo "<html>"
echo "<head>"
echo "<meta charset=\"UTF-8\" />"
echo "<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/versions/bulma-no-dark-mode.min.css\">"
echo "</head>"
echo "<body>"
echo "<section class=\"section has-background-link\">"
echo "<div class=\"container has-background-grey-light\">"
echo "<div class=\"hero has-background-grey-lighter\">"
echo "<div class=\"hero-body\">"
echo "<h1 class=\"title\">"
echo "MINIPROJET"
echo "</h1>"
echo "</div>"
echo "</div>"
echo "</div>"
echo "<nav class=\"tabs is-centered\">"
echo "<ul>"
echo "<li><a href=\"../../index.html\">Présentation</a></li>"
echo "<li class=\"is-active\"><a href=\"tableau-fr.html\">Tableau</li>"
echo "</ul>"
echo "</nav>"
echo "<div class=\"columns is-centered\">"
echo "<div class=\"column is-half\">"
echo "<div class=\"block\">"
echo "<h3 class=\"title is-3 has-text-white has-background-link\">Tableau</h3>"
echo "<table class=\"table is-bordered is-hoverable is-striped\">"
echo "<tr><th>Numero</th><th>URL</th><th>Code HTTP</th><th>Encodage</th><th>Nombre de mots</th></tr>"

while read -r line
do
	code=$(curl -o /dev/null -s -I -L -w "%{http_code}" "${line}")
	encodage=$(curl -s -I -L "$line" | grep "charset" | cut -d "=" -f2 | tr -d "\r\n")
	mots=$(lynx -dump -nolist "${line}" | wc -w)
	echo -e "<tr><td>${n}</td><td><a href=\"${line}\">${line}</a></td><td>${code}</td><td>${encodage}</td><td>${mots}</td>"
	n=$((n+1))
done < "$fichier"

echo "</table>"
echo "</div>"
echo "</div>"
echo "</div>"
echo "</section>"
echo "</body>"
echo "</html>"
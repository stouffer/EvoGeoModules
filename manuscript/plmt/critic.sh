#! /bin/sh

cat $1 > $2

# Additions
perl -pi -e 's/{\+\+@(\w+) /\\add[$1]{/gm' $2
perl -pi -e 's/{\+\+/\\add{/gm' $2
perl -pi -e 's/\+\+}/}/gm' $2
perl -pi -e 's/{\+\+@(\w+) (.+)\+\+}/\\add[$1]{$2}/gm' $2
perl -pi -e 's/{\+\+(.+)\+\+}/\\add{$1}/gm' $2

# Deletions
perl -pi -e 's/{\-\-@(\w+) /\\remove[$1]{/gm' $2
perl -pi -e 's/{\-\-/\\remove{/gm' $2
perl -pi -e 's/\-\-}/}/gm' $2
perl -pi -e 's/{\-\-@(\w+) (.+)\-\-}/\\remove[$1]{$2}/gm' $2
perl -pi -e 's/{\-\-(.+)\-\-}/\\remove{$1}/gm' $2

# Replacements
perl -pi -e 's/{~~@(\w+) (.+)~>(.+)~~}/\\remove{$2}\\add[$1]{$3}/gm' $2
perl -pi -e 's/{~~(.+)~>(.+)~~}/\\remove{$1}\\add{$2}/gm' $2

# Highlights
perl -pi -e 's/{==@(\w+) (.+)==}/\\hilight{\\small{\\color{red}$1} $2}/gm' $2
perl -pi -e 's/{==(.+)==}/\\hilight{$1}/gm' $2

# Notes
perl -pi -e 's/{>>@(\w+) (.+)<<}/\\note[$1]{$2}/gm' $2
perl -pi -e 's/{>>(.+)<<}/\\note{$1}/gm' $2

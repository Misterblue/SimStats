#! /bin/bash
# Copy all of the files to the webserver

ACCT="secondlifepdx"
SITE="dvorak.dreamhost.com"
DIR="SimStats"

DST="${ACCT}@${SITE}:${DIR}/"

FILES="index.html"
FILES="$FILES jquery-2.1.1.min.js"
FILES="$FILES jquery.sparkline.min.js"
FILES="$FILES jquery.dataTables.1.10.0.js jquery.dataTables.1.10.0.css"
FILES="$FILES SimStats.css SimStatsConfig.js"
FILES="$FILES WhiteTexture.png"

echo "rsync'ing files to $DST"
rsync $FILES "$DST"


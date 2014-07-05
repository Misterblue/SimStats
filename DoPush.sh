#! /bin/bash
# Copy all of the files to the webserver

ACCT="secondlifepdx"
SITE="dvorak.dreamhost.com"
DIR="SimStats"

DST="${ACCT}@${SITE}:${DIR}/"

FILES="index.html jquery.sparkline.min.js jquery-2.1.1.min.js SimStats.css SimStatsConfig.js WhiteTexture.png"

echo "rsync'ing files to $DST"
rsync $FILES "$DST"

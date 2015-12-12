#!/bin/bash
export NVM_DIR="/opt/sheets/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

cd `dirname $0`

tar -xzf sheets.tgz
rm sheets.tgz

forever stop sheets

rm -rf old
mv live old
mv build live

cd live
forever start -a --uid "sheets" -c "npm start" ./
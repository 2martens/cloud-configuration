#!/usr/bin/env bash
DIR=$(pwd)
cd ~/git-repos/cloud-configuration/helm/$1
helm package --sign --key "github@2martens.de" --keyring ~/.gnupg/secring.gpg .
mv *.tgz *.tgz.prov ~/git-repos/helm-charts/charts
cd ~/git-repos/helm-charts/charts
git pull
git add .
git commit -m "Upgraded $1"
git push
cd $DIR

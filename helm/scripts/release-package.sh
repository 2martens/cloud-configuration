#!/usr/bin/env bash
DIR=$(pwd)

packages=""
for package in "$@"
do
  if [ -z "$packages" ];
  then
    packages+="$package"
  else
    packages+=", $package"
  fi
  cd "$HOME/git-repos/cloud-configuration/helm/$package" || { echo "Cannot find $package under $HOME/git-repos/cloud-configuration/helm/"; exit 1; }
  helm package --sign --key "github@2martens.de" --keyring ~/.gnupg/secring.gpg .
  mv -- *.tgz *.tgz.prov ~/git-repos/helm-charts/charts
done
cd ~/git-repos/repo/charts || { echo "$HOME/git-repos/repo/charts/ does not exist"; exit 1; }
git pull
git add .
git commit -m "Upgraded $packages"
git push
cd "$DIR" || exit;

#!/usr/bin/sh

echo "old version:"
head -n 1 debian/changelog
echo "new version number?:"
read VERSION

export VERSION
export PACKAGE=tuxedo-tomte
export PREFIX=${PACKAGE}_${VERSION}

export BRANCH=$(git symbolic-ref --short HEAD)
echo "on branch: ${BRANCH}"

gbp dch --verbose --debian-branch ${BRANCH} --new-version=${VERSION}
vim debian/changelog
cp debian/changelog .

git add .
git commit -m 'added changelog'
git push

echo "##########################################"
echo "# build tarball (git archive)"
git archive --format=tar --prefix=${PREFIX}/ HEAD | gzip -c > ../${PREFIX}.orig.tar.gz
echo "# check what is inside tarball"
tar tvf ../${PREFIX}.orig.tar.gz

git branch -D debian-debian
git branch -D debian-upstream
echo "##########################################"
echo "# git checkout --orphan debian-upstream"
git checkout --orphan debian-upstream
echo "# git rm --cached -r ."
git rm --cached -r .
echo "# it clean -xfd"
git clean -xfd
echo "# git commit --allow-empty -m 'Start of debian branches.'"
git commit --allow-empty -m 'Start of debian branches.'
echo "# git checkout -b debian-debian"
git checkout -b debian-debian
echo "# git checkout preliminary -- debian/"
git checkout ${BRANCH} -- debian/
echo "# commit"
git add .
git commit -m 'packing'

echo "# create gdp.conf"
touch debian/gbp.conf
echo "[DEFAULT]" >> debian/gbp.conf
echo "upstream-branch=debian-upstream" >> debian/gbp.conf
echo "debian-branch=debian-debian" >> debian/gbp.conf

echo "# commit"
git add .
git commit -m 'packing'

echo "##########################################"
echo "# gbp import-orig --no-interactive ../${PACKAGE}_${VERSION}.orig.tar.gz"
gbp import-orig --no-interactive ../${PACKAGE}_${VERSION}.orig.tar.gz

echo "##########################################"
echo "# gbp buildpackage -us -uc"
gbp buildpackage -us -uc --git-color=on


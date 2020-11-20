!#/usr/bin/sh

echo "New version number?:"
read VERSION

export VERSION
export DEBFULLNAME="E. Mohr"
export DEBEMAIL="tux@tuxedocomputers.com"
export PACKAGE=tuxedo-tomte
export PREFIX=${PACKAGE}_${VERSION}
cd debian
debchange -v ${VERSION}
cd ..
echo "build tarball"
git archive --format=tar --prefix=${PREFIX}/ HEAD | gzip -c > ../${PREFIX}.orig.tar.gz
echo "check what is inside tarball"
tar tvf ../${PREFIX}.orig.tar.gz
echo "commit"
git add .
git commit -m 'building package'
git push
git checkout --orphan debian-upstream
git rm --cached -r .
git clean -xfd
git commit --allow-empty -m 'Start of debian branches.'
git checkout -b debian-debian
git checkout preliminary -- debian/
git add .
git commit -m 'packing'
touch debian/gbp.conf
echo "[DEFAULT]" >> debian/gbp.conf
echo "upstream-branch=debian-upstream" >> debian/gbp.conf
echo "debian-branch=debian-debian" >> debian/gbp.conf
git add .
git commit -m 'packing'
gbp import-orig --no-interactive ../${PACKAGE}_${VERSION}.orig.tar.gz
gbp buildpackage -us -uc


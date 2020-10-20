!#/bin/sh

echo "!modify version number before using this!"

DEBFULLNAME="E. Mohr"
DEBEMAIL="tux@tuxedocomputers.com"
PACKAGE=tuxedo-tomte
VERSION=2.0.5
PREFIX=${PACKAGE}_${VERSION}
cd debian
debchange -v ${VERSION}
cd ..
git archive --format=tar --prefix=${PREFIX}/ HEAD | gzip -c > ../${PREFIX}.orig.tar.gz
tar tvf ../${PREFIX}.orig.tar.gz
cd ..
git add .
git commit -m 'building package'
git push

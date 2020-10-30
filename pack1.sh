!#/usr/bin/sh

echo "New version number?:"
read VERSION

DEBFULLNAME="E. Mohr"
DEBEMAIL="tux@tuxedocomputers.com"
PACKAGE=tuxedo-tomte
PREFIX=${PACKAGE}_${VERSION}
cd debian
debchange -v ${VERSION}
cd ..
git archive --format=tar --prefix=${PREFIX}/ HEAD | gzip -c > ../${PREFIX}.orig.tar.gz
tar tvf ../${PREFIX}.orig.tar.gz
git add .
git commit -m 'building package'
git push

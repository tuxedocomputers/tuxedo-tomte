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

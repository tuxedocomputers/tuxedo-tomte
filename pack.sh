!#/usr/bin/sh

echo "New version number?:"
read VERSION

export VERSION
#export DEBFULLNAME="E. Mohr"
#export DEBEMAIL="tux@tuxedocomputers.com"
export PACKAGE=tuxedo-tomte
export PREFIX=${PACKAGE}_${VERSION}

#read -n1 -p "new entry in changelog? [y,n]" doit
#case $doit in
#  y|Y) debchange -v ${VERSION} ;;
#  n|N) echo "not changing changelog" ;;
#  *) echo dont know ;;
#esac

echo "##########################################"
echo "#build tarball (git archive)"
git archive --format=tar --prefix=${PREFIX}/ HEAD | gzip -c > ../${PREFIX}.orig.tar.gz
echo "#check what is inside tarball"
tar tvf ../${PREFIX}.orig.tar.gz
echo "#commit"
git add .
git commit -m 'building package'
git push

echo "##########################################"
echo "#git checkout --orphan debian-upstream"
git checkout --orphan debian-upstream
echo "#git rm --cached -r ."
git rm --cached -r .
echo "#it clean -xfd"
git clean -xfd
echo "#git commit --allow-empty -m 'Start of debian branches.'"
git commit --allow-empty -m 'Start of debian branches.'
echo "#git checkout -b debian-debian"
git checkout -b debian-debian
echo "#git checkout preliminary -- debian/"
git checkout preliminary -- debian/
echo "#commit"
git add .
git commit -m 'packing'

echo "#create gdp.conf"
touch debian/gbp.conf
echo "[DEFAULT]" >> debian/gbp.conf
echo "upstream-branch=debian-upstream" >> debian/gbp.conf
echo "debian-branch=debian-debian" >> debian/gbp.conf

echo "#commit"
git add .
git commit -m 'packing'

echo "##########################################"
echo "#gbp import-orig --no-interactive ../${PACKAGE}_${VERSION}.orig.tar.gz"
gbp import-orig --no-interactive ../${PACKAGE}_${VERSION}.orig.tar.gz

echo "##########################################"
echo "#gbp buildpackage -us -uc"
gbp buildpackage -us -uc --git-color=on


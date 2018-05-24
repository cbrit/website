set -x #-ex

DOCKERID=cbrit
IMAGE=website
VERSION=`cat VERSION`
MESSAGE="Version $VERSION"

git pull

echo "version: $VERSION"
./build.sh

git add -A
git commit -m "$MESSAGE"
git tag -a "$VERSION" -m "$MESSAGE"
git push
git push --tags

docker tag $DOCKERID/$IMAGE:latest $DOCKERID/$IMAGE:$VERSION

docker push $DOCKERID/$IMAGE:latest
docker push $DOCKERID/$IMAGE:$VERSION
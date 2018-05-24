set -x #-ex

DOCKERID=cbrit
IMAGE=website
VERSION=`cat VERSION`

docker image build -t $DOCKERID/$IMAGE:$VERSION .
#!/bin/bash

git clone https://gitlab.com/gitlab-org/omnibus-gitlab.git
cd omnibus-gitlab/docker


cat << EOF > RELEASE
RELEASE_PACKAGE=gitlab-ce
RELEASE_VERSION=$1-ce
TARGETARCH=arm64
DOWNLOAD_URL_arm64=https://packages.gitlab.com/gitlab/gitlab-ce/packages/ubuntu/jammy/gitlab-ce_$1-ce.0_arm64.deb/download.deb
EOF

docker build -t gitlab-arm:$1 .

cd ../..
rm -rf omnibus-gitlab

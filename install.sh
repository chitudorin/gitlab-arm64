#!/bin/bash

git clone https://gitlab.com/gitlab-org/omnibus-gitlab.git
cd omnibus-gitlab/docker


cat << EOF > RELEASE
RELEASE_PACKAGE=gitlab-ce
RELEASE_VERSION=$1-ce
DOWNLOAD_URL=https://packages.gitlab.com/gitlab/gitlab-ce/packages/ubuntu/jammy/gitlab-ce_$1-ce.0_arm64.deb/download.deb
EOF

sed -i 's|FROM ubuntu:22.04|FROM --platform=linux/arm64 ubuntu:22.04|' Dockerfile
sed -i "/libperl5.34 \\\/a libatomic1 \\\\" Dockerfile
docker build -t gitlab-ce:arm64 .

cd ../..
rm -rf omnibus-gitlab

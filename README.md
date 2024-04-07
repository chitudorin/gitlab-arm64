# Gitlab ARM64 Docker image build script

This script builds an ARM64 Gitlab (Community Edition) image. It uses [omnibus-gitlab](https://gitlab.com/gitlab-org/omnibus-gitlab) with some minor modifications to work on ARM64:
- The base image is changed to Ubuntu 22.04 ARM64
- The RELEASE file includes the ARM package

Those modifications are taken from [this](https://gitlab.com/gitlab-org/omnibus-gitlab/-/issues/5673#note_1364332357) issue.

## Usage

The script takes an argument which is the gitlab version to be built. You can find the latest versions [here](https://packages.gitlab.com/app/gitlab/gitlab-ce/search?dist=ubuntu%2Fjammy).

### Example

```
git clone https://github.com/chitudorin/gitlab-arm64.git
cd gitlab-arm64

# Make sure the script is executable
chmod +x install.sh

./install.sh 16.0.1
```

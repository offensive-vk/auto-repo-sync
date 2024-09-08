FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

LABEL \
    "name"="GitHub Sync Action" \
    "homepage"="https://github.com/marketplace/actions/auto-repo-sync" \
    "repository"="https://github.com/offensive-vk/auto-repo-sync" \
    "maintainer"="TheHamsterBot <TheHamsterBot@users.noreply.github.com>"
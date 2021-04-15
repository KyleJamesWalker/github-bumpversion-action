FROM python:3-alpine
LABEL maintainer="Zefr"
LABEL repository="https://github.com/ZEFR-INC/github-bumpversion-action"
LABEL homepage="https://github.com/ZEFR-INC/github-bumpversion-action"

# Install our pre-reqs
RUN apk add --no-cache git bash curl jq

# Check to make sure pip is fully upgraded
RUN pip install --no-cache-dir -U pip

# Install bumpversion from pypi - https://pypi.org/project/bumpversion/
RUN pip install --no-cache-dir bumpversion

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

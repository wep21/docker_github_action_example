FROM ubuntu:22.04 as builder

RUN apt-get update && apt-get install -y --no-install-recommends \
  vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

From builder as devel

RUN apt-get update && apt-get install -y --no-install-recommends \
  git\
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

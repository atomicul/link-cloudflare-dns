FROM mikefarah/yq:4.45.1 AS setup_yq

USER root
RUN cp "$(which yq)" /yq

FROM ubuntu:22.04

RUN apt-get update -qq && \
    apt-get install -y -qq curl
COPY --from=setup_yq /yq /usr/local/bin/yq

COPY bin/loop /usr/local/bin/loop
COPY bin/link_domains /usr/local/bin/link_domains
COPY bin/entrypoint /usr/local/bin/entrypoint
ENTRYPOINT [ "entrypoint" ]
CMD [ "one-time" ]

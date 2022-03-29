FROM alpine/helm

RUN apk add gpg gpg-agent
RUN wget -nv -O /usr/bin/sops https://github.com/mozilla/sops/releases/download/v3.7.2/sops-v3.7.2.linux.amd64 && \
    chmod +x /usr/bin/sops
RUN helm plugin install https://github.com/jkroepke/helm-secrets --version v3.12.0

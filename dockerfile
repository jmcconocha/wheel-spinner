FROM ubuntu
RUN apt-get update \
    && apt-get install -y git \
    && apt-get install -y npm \
    && git clone https://github.com/jmcconocha/wheel-spinner.git \
    && cd /wheel-spinner/ \
    && npm install \
    && ./build_dev.sh
ENTRYPOINT exec npx --yes serve "./wheel-spinner/dist"
# CMD ["--yes", "serve", "./wheel-spinner/dist"]

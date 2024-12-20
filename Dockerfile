FROM node:lts

WORKDIR /yaml-language-server

COPY . .

RUN pnpm install && \
    pnpm run build

ENTRYPOINT [ "node", "./out/server/src/server.js" ]
CMD [ "--stdio" ]

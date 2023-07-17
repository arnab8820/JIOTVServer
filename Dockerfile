FROM node:18-alpine

# Copy app to /src
COPY . /src

WORKDIR /src

RUN npm install

ENV PORT=3500

EXPOSE ${PORT}

ENTRYPOINT ["sh", "start.sh"]

CMD ["sh", "start.sh"]
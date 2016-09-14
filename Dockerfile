FROM pavia/headlight-sdk-base

ADD . /{{AppHash-LowerCase}}
WORKDIR /{{AppHash-LowerCase}}
RUN npm install
RUN npm rebuild node-sass
RUN gulp build

COPY Headlight-App-Config-Docker.json Headlight-App-Config.json

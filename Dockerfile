FROM pavia/headlight-sdk-base:latest

ADD . /{{AppHash-LowerCase}}
# Change configuration to work within docker
WORKDIR /{{AppHash-LowerCase}}/headlight-app
RUN fetch-rancher-metadata --applyjson "{\"AuthenticationServerURL\": \"http://headlight-api.headlight:8080/1.0/\"}" --merge Headlight-App.json

WORKDIR /{{AppHash-LowerCase}}
RUN npm install
RUN npm rebuild node-sass
RUN gulp build

FROM pavia/headlight-sdk-base

ADD . /{{AppHash-LowerCase}}
WORKDIR /{{AppHash-LowerCase}}
# Change configuration to work within docker 
RUN fetch-rancher-metadata --applyjson "{\"AuthenticationServerURL\": \"http://headlight-api.headlight:8080/1.0/\"}" --merge Headlight-App.json

RUN npm install
RUN npm rebuild node-sass
RUN gulp build

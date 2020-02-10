FROM docker:18.06.1-ce-git

LABEL MAINTAINER="iyuuya <i.yuuya@gmail.com>"

# Install dependencies
RUN apk add --update \
      curl \
      bash \
      jq \
      py2-pip=10.0.1-r0 \
 && pip install awscli==1.* \
 && curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy -o /usr/bin/ecs-deploy \
 && chmod +x /usr/bin/ecs-deploy \
 && rm -rf /var/cache/apk/*

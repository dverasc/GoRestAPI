# WORKDIR /app
FROM golang

ENV GO111MODULE=off

# WORKDIR /app

RUN go get context
RUN go get fmt
RUN go get log
RUN go get net/http
RUN go get os




RUN git clone   https://dverasc@github.com/dverasc/GoRestAPI  /go/src/github.com/dverasc/GoRestAPI

RUN /bin/bash & ls /go/src/github.com/dverasc

RUN cd /go/src/github.com/dverasc/GoRestAPI && go install

RUN /bin/bash & ls /go/src/github.com/dverasc/GoRestAPI

RUN /bin/bash && ls /go/src/github.com/dverasc
RUN /bin/bash & ls /go/bin








# RUN chmod +x /go/src/github.com/ICGteam2017/BlackLightFeedbackService-GEN
RUN /bin/bash & ls /go/bin


EXPOSE 8080
ENTRYPOINT ["/go/bin/GoRestAPI", "run  *.go"]
## base image
FROM openjdk:17-jdk-slim

## HOME DIR =================
## 이동할 경로
## 경로가 없다면, 생성 후 이동
## 이후 명령어가 실행되는 경로
WORKDIR /good

## 경로/파일명 도커에 복사할 위치
COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./demo.jar
COPY hello.sh ./hello.sh

## RUN 리눅스 명령어
## hello.sh 파일에 실행 권한 추가
RUN chmod +x ./hello.sh

ENTRYPOINT [ "sh", "./hello.sh" ]
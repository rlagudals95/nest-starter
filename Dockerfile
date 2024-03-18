# 베이스 이미지로 nodejs alpine 사용 
# 일반 nodejs보다 컴팩트해서 도커 빌드 용량이 감소한다 (1.2GB->350MB정도)
FROM node:18-alpine

# 명령어를 실행할 work directory 생성
RUN mkdir -p /app
WORKDIR /app

# 프로젝트 전체를 work directory에 추가
ADD . /app/

# 프로젝트에 사용되는 의존성 설치
RUN npm install

# NEST.JS 빌드
RUN npm run build

# PORT(8080) 개방
EXPOSE 8080

# 서버 실행
ENTRYPOINT npm run start:prod
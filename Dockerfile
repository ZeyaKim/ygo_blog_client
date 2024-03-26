# 베이스 이미지로 Ubuntu 설정
FROM ubuntu:latest

# Flutter SDK 버전 설정
ARG FLUTTER_VERSION=3.16.0

# 필요한 패키지 설치 및 환경 설정
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Flutter SDK 설치
RUN git clone https://github.com/flutter/flutter.git -b $FLUTTER_VERSION --depth 1 /usr/local/flutter

# Flutter 도구 경로 설정
ENV PATH="$PATH:/usr/local/flutter/bin"

# Flutter SDK 미리 다운로드 및 설정 확인
RUN flutter precache
RUN flutter doctor

# 작업 디렉토리 설정
WORKDIR /app

# Flutter 프로젝트의 소스 코드를 컨테이너로 복사
COPY . /app

# 컨테이너에서 사용할 포트 노출
EXPOSE 8080

# 컨테이너 시작 시 실행할 명령어 설정
CMD ["flutter", "run", "-d", "web-server", "--web-port=8080", "--web-hostname=0.0.0.0"]

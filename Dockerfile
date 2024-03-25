# 베이스 이미지로 Google에서 제공하는 Dart 이미지를 사용합니다.
FROM google/dart

# Flutter SDK 버전 지정
ARG FLUTTER_VERSION=3.16.0

# Flutter SDK 설치
RUN apt-get update && apt-get install -y git curl unzip xz-utils zip libglu1-mesa
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter -b $FLUTTER_VERSION
ENV PATH="$PATH:/usr/local/flutter/bin"

# Flutter 프리컴파일
RUN flutter precache
RUN flutter doctor

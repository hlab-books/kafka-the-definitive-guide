# 1. 도커 컨테이너 설치

## 1.1 도커 데스크탑

* 홈페이지 설치 [docker-descktop](https://www.docker.com/products/docker-desktop/)

* homebrew - `brew install --cask docker`

## 1.2 오브스택

* 홈페이지 설치 - [orbstack](https://orbstack.dev/)
* homebrew - `brew install --cask orbstack`

# 2. 도커 컴포즈로 카프카 실행

```sh
docker-compose -f docker-compose-kafka-single-broker.yaml up -d 
```

# 3. 다수의 터미널 접속
4개의 터미널 연결 권장

```sh
docker exec -it kafka-single-broker /bin/bash
```

# 4. 테스트 스크립트 디렉토리 이동

```sh
cd $TEST_HOME
```

## 4.1 토픽 생성

```sh
./create_topics.sh 
```

## 4.2 컨슈머 그룹이 지정되어 있지 않은 컨슈머 실행

```sh
./producing.sh
```

## 4.3 컨슈머 그룹이 지정된 컨슈머 실행

```sh
./group-producing.sh
```

## 4.4 프로듀서 실행

```sh
./producing.sh
```

실행 후 메시지 입력해서 각 컨슈머의 동작을 확인한다.

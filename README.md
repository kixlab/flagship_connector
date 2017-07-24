# kixflagship

Kixlab의 플래그십 AI를 위한 API 모듈

## 돌려 보기

1. Dart 설치: https://www.dartlang.org/install
2. 레포지트리 Clone 하기
3. Clone된 폴더로 들어가기
4. `dart bin/main.dart` 명령어로 실행하기
## API 규격
### 채팅방 만들기 /chat_room
Post /chat_room (at chat_room_controller)
####Parameters (* required) - Urlencoded at body
1. email * (string)
2. sessionID * (string)
3. mentalModel * (boolean = true or false)
#### Outcome
1. post localhost:8080/chat 에 room과 message를 키로하는 JSON을 application/json 컨텐츠 타입으로 보낸다 ki_apt.dart 참조
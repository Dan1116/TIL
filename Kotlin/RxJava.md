# RxJava
* rx : Reactive Extension, 반응형 확장
* rxjave 를 써야하는 경우 : 마우스 움직임, 버튼 클릭과 같은 UI 이벤트, 속성 변경, 컬렉션 업데이트, 주문 완료, 등록 승인 등의 도메인 이벤트, 메시지 버스의 브로드캐스트처럼 대기 시간이 짧은 미들웨어의 푸시 이벤트
* Rx 가 대단한 이유는 시간축이 존재하는 일련의 이벤트들을 Immutable한 List처럼 핸들링할 수 있게 만들어준다는 것이다
* subscribe하는 시점이 오기 전까지 Observable은 아무런 데이터도 방출하지 않고 기다리기 때문이다

### Observable
* rxjava 는 옵저버 패턴을 베이스로 하고 있다, 즉 옵저버가 발행 (emit)을 하면 어떠한 데이터의 흐름 (stream)이 만들어지고 리시버가 구독(consume)하는 형태이다
* 이 때 데이터를 발행하는 것은 관찰 대상자, 즉 Observable 이다

1. onNext : 새로운 데이터를 전달한다
2. onCompleted: 스트림의 종료한다
3. onError : 에러 신호를 전달한다

* rxjava에서 데이터를 구독하는 것은 Observer, 데이터의 흐름 (stream) 속에서 데이터를 건져서 소비한다는 느낌이다
* 즉 Observer가 subscribe를 시작하면 onNext 의 반복으로 n개의 데이터를 받다가, onCompleted이나 onError를 만나면 한 stream이 일단락 되었다고 생각하면 된다
* 이 때 받은 데이터를 가지고 UI에 표시를 하든 새로운 데이터를 만들어서 다시 서버에 전송을 하든 안 하든 이건 개발자의 자유이다
* Observable 을 더 이상 구독하고 있을 필요가 없다면, unsubscribe나 dispose 를 해주어야 한다
* unsubscribe는 구독을 중지하는 것이고 dispose 는 아예 더 이상 구독을 하지 않도록 처분하는 것이다
* dispose 는 안드로이드 기준에서 onDestroy 처럼 정말로 구독할 필요가 없는 시점에 해야 한다
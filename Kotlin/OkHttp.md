# OkHttp
* 개발자가 동기와 비동기를 선택할 수 있게 만들어 준다
* 동기 처리시 execute 함수 사용
* 비동기 처리, enqueue 사용
* 비동기 처리를 위해 Callback 구현

## StatusCode
* 200 ~ 299 : Success
* 400 ~ 499 : Client Error
* 500 ~ 599 : Server Error

# Retrofit
* HTTP Request에서 발생하는 보일러플레이트를 효과적으로 제거할 수 있다
* OKHttpClient 에서 설정해주어야 하는 수많은 작업
* 동기 - 별도의 스레드
* 비동기 - UI를 업데이트할 때 주의
* 응답을 Gson을 통해 객체로 변환 과정
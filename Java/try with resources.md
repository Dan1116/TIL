# try with resources
* 자바를 이용해 외부 자원에 접근하는 경우 외부자원을 사용한 뒤 제대로 자원을 닫아줘야한다
* try-with-resource가 없을 때는 finally를 사용하여 자원을 명시적으로 종료(close)시켜야 한다
* AutoCloseable 인터페이스는 Close메서드를 선언할 수 있으며, finally문의 일부인 것 처럼 try문 다음에 호출된다
* try () 구문 안에서 자원을 생성하면, 알아서 close () 를 호출해준다
* try에 전달할 수 있는 자원은 AutoCloseable 인터페이스의 구현체로 한정된다
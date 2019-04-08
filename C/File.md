# 파일 열기
* 파일을 액세스하려면 먼저 대상 파일을 열어야(Open) 한다. 파일을 오픈한다는 것은 파일 입출력을 하기 위한 준비를 한다는 뜻이다. 스트림 입출력을 위해서는 파일의 데이터를 잠시 저장하는 내부 버퍼가 필요하며 파일의 현재 위치(FP)를 초기화해야 하는데 이런 준비를 하는 과정이 오픈이다. 파일을 오픈할 때는 다음 함수를 사용한다.

## FILE *fopen(const char *filename, const char *mode);
* 이 함수는 지정한 파일을 액세스하기 위한 준비를 하며 이 정보들을 가지는FILE형 구조체를 생성하고 그 포인터를 리턴한다. 이 포인터는 잘 받아 두었다가 이후 입출력 함수로 전달해 주면 된다. fopen 함수의 인수에 대해 알아보자.

### 파일 이름
* 액세스할 대상 파일의 이름이다. 필요할 경우 드라이브와 디렉토리 경로를 전달할 수 있으며 현재 위치를 기준으로 한 상대 경로를 지정할 수도 있다. 경로가 생략되고 파일 이름만 주어질 경우 현재 디렉토리에서 파일을 찾는다. 디렉토리 구분자로 사용되는 역슬레쉬 문자는 문자열 내에서 확장열 표시에 사용되므로 반드시 \\로 써야 한다는 점을 주의하자. C:\Data\File.Ext 파일을 오픈하려면 “C:\\Data\\File.Ext”라고 써야 한다.

* 파일명의 대소문자 구분 여부는 운영체제에 따라 다르다. 도스나 윈도우즈는 대소문자를 구분하지 않으므로 아무렇게나 써도 상관없지만 유닉스의 파일 시스템은 대소문자를 구분하므로 실제 파일명의 대소문자 구성과 일치시켜야 한다. Test.txt 파일을 열고 싶을 때 TEST.TXT나 test.txt로 파일명을 지정하면 유닉스나 리눅스는 이 파일을 찾지 못할 것이다.

## 파일 형태
* fopen의 두 번째 인수 mode에는 오픈 모드외에도 파일의 형태를 지정하는 플래그를 추가로 지정할 수 있다. 열고자 하는 파일이 텍스트 파일이면 t를 붙이고 이진 파일이면 b를 붙인다. 파일 형태에 아무런 지정이 없으면 전역변수 _fnmode의 값이 사용된다. 이진 파일은 아무런 변환없이 읽혀지지만 텍스트 파일 모드로 파일을 열면 다음 두 가지 변환을 한다.

1. 개행 코드를 의미하는CR_LF 조합은 LF로 변환되어 읽혀지며 LF를 기록하면 CR_LF가 출력된다. 이런 변환을 해 주는 이유는 C 문자열 출력 함수들은 개행을 위해 확장열 LF(\n)를 사용하기 때문이다.
2. 파일의 끝을 나타내는Ctrl+Z(0x1A)는 EOF(-1)로 변환되어 읽혀진다. 단 “a+” 모드로 열었을 때는 끝부분에 데이터를 추가할 수 있도록 Ctrl+Z를 제거한다.

* 오픈 모드와 파일 형태가mode 인수에 같이 기록되는데 오픈 모드가 먼저 오고 파일 형태가 뒤에 오는 형식으로 써야 한다. 단, +문자는 파일 형태 다음에 와도 상관없다. 다음이 mode인수의 예인데 문자열이므로 반드시 겹따옴표를 싸 주어야 한다.

## 리턴값
* fopen은 지정한 파일을 지정한 모드로 열고 입출력에 필요한 FILE 구조체를 생성한 후 그 포인터를 리턴한다. 만약 에러가 발생하면 NULL을 리턴한다. 파일 입출력시에는 여러 가지 이유로 에러가 발생할 수 있으므로 이 함수의 리턴값은 반드시 점검해 보아야 한다. 파일이 없거나 디스크 용량이 부족하거나 착탈식 미디어의 문이 열려 있거나 하는 이유로 언제든지 에러가 발생할 수 있다. 그래서 fopen 함수는 통상 다음과 같은 방법으로 사용한다.

* fopen으로 파일 열기에 성공했으면 각종 입출력 함수를 활용하여 파일의 데이터를 액세스할 수 있다. 파일을 다 사용한 후에는 파일을 닫아야 하는데 이때는 다음 함수를 사용한다.

### int fclose(FILE *stream);

* 이 함수는 버퍼에 남아있는 데이터를 파일로 완전히 출력(flush)하고 파일 입출력을 위해 내부적으로 생성했던 FILE 구조체를 해제한다. 다 사용한 파일은 이 함수로 반드시 닫아야 한다.
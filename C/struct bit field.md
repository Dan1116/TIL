# struct bit field
* 1 바이트 = 8비트
* 표준에서는 비트 필드로 사용할 수 있는 자료형을_Bool,signed int,unsigned int,int로 규정하고 있지만 대부분의 컴파일러에서는 모든 정수 자료형을 사용할 수 있습니다. 보통은 비트 필드에 부호 없는(unsigned) 자료형을 주로 사용합니다. 단, 실수 자료형은 비트 필드로 사용할 수 없습니다.

<stdio.h>

struct Flags {
    unsigned int a : 1;      a는 1비트 크기
    unsigned int b : 3;      b는 3비트 크기
    unsigned int c : 7;      c는 7비트 크기
};

int main()
{
    struct Flags f1;     구조체 변수 선언

    f1.a = 1;         1: 0000 0001, 비트 1개
    f1.b = 15;       15: 0000 1111, 비트 4개
    f1.c = 255;     255: 1111 1111, 비트 8개

    printf(“%u\n”, f1.a);       1:        1, 비트 1개만 저장됨
    printf(“%u\n”, f1.b);       7:      111, 비트 3개만 저장됨
    printf(“%u\n”, f1.c);     127: 111 1111, 비트 7개만 저장됨

    return 0;
}

* 비트 필드에는 지정한 비트 수만큼 저장되며 나머지 비트는 버려집니다. 따라서a는 비트 그대로 1만 저장되었고,b는 비트 3개만 저장되었으므로 7,c는 비트 7개만 저장되었으므로 127이 됩니다.
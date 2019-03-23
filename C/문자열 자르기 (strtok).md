# 문자열 자르기 (strtok)
* csv = comma separated values
* strtok (대상문자열, 기준문자), (string tokenize)
* char * strtok (char *_String, cat const *_Delimiter)
* 자른 문자열을 반환, 더 이상 자를 문자열이 없으면 NULL을 반환
* strtok 함수는 string.h 함수에 들어있다

int main() {
	char s1[30] = “I,am,groot”;
	char *ptr = strtok(s1,",");

while (ptr != NULL) {
	printf("%s\n",ptr);
	ptr = strtok(NULL, ",");
}
return 0;
}

* strtok 함수를 사용할 때는 처음에만 자를 문자열을 넣어주고, 그 다음부터는 NULL을 넣어준다는 점을 기억해야 한다

## 문자열 포인터에 문자열 리터럴이 들어있는 경우
* 문자열 포인터에 문자열 리터럴을 할당하는 대신 동적 메모리를 할당하고, 문자열을 복사하면 문제를 해결할 수 있다

int main() {
char **s1 = malloc(sizeof(char)**30);
	strcpy(s1,”I,am,groot”);
	char *ptr = strtok(s1,",");

while (ptr != NULL) {
	printf("%s\n",ptr);
	ptr = strtok(NULL, ",");
}
free(s1);
}

## 여러개의 기준으로 문자열을 자를 때
* 위 코드의 char *ptr = strtok(s1,","); 에 "," 대신  “,-:T” 여러개를 집어넣으면 가능하다

## 자른 문자열 보관하기
* 문자열 포인터 배열에 문자열을 보관하면 된다

int main() {
	char s1[30] = "I,am,groot";
	char *cArr[10] = {NULL,};
	int i =0;
 	char *ptr = strtok(s1,",");
 		while (ptr != NULL) {
 		cArr[i] = ptr;
 		i++;
 		ptr = strtok(NULL, ",");
 	}
 13   for (int i=0; i <10; i++){
 14     if(cArr[i] != NULL)
 15       printf("%s\n", cArr[i]);
 16   }
 17   return 0;
 18 }

* char *sArr[10] = { NULL, }; 와 같이 자른 문자열을 보관할 문자열 포인터 배열을 선언하고 NULL로 초기화 했습니다. 
* 여기서 NULL뒤에 , (콤마)를 붙여주면 배열의 모든 요소가 NULL로 초기화됩니다.
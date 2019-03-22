#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// |=  아이템 추가
// &   아이템 유무 확인
// &= ~  아이템 삭제

enum {
  CELLDX,
  SPORTS_CAR,
  SUV,
  WAGON,
  MINIVAN,
  PICKUP,
  AWD,
  RWD,
  MAX_TYPE_COUNT = 8,
};

#define ADD_TYPE(car, type)\
  (car)->kind[(type)/ 32] |= 1 << ((type) % 32)

#define CHECK_TYPE(car, type)\
  (car)->kind[(type)/ 32] & 1 << ((type) % 32)

typedef unsigned int bitset[MAX_TYPE_COUNT / (sizeof(unsigned int) * 8) + 1];

struct node{
  struct node *prev;
  struct node *next;
};

struct node head = { &head, &head };

typedef struct car {
  char *vehicle_name;
  int retail_price;
  int dealer_cost;
  double engine_size;
  int weight;
  int width;
  struct node links;
  bitset kind;
}car;

void insert_data(struct node *prev, struct node *next, struct node *new) {
  new->next = next;
  new->prev = prev;
  prev->next = new;
  next->prev = new;
}

void insert_car(struct node *s, struct node *new) {
  insert_data(s, s->next, new);
}

void print_car(car *kindarr, int kindset) {

  for (int i = 0; i < kindset; ++i) {
    fprintf(stdout, "%s ", kindarr[i].vehicle_name);
    if (CHECK_TYPE(kindarr + i, 7 - CELLDX)) fprintf(stdout,"%s ","CellDx ");
    if (CHECK_TYPE(kindarr + i, 7 - SPORTS_CAR)) fprintf(stdout,"%s ","Sports Car ");
    if (CHECK_TYPE(kindarr + i, 7 - SUV)) fprintf(stdout,"%s ","SUV ");
    if (CHECK_TYPE(kindarr + i, 7 - WAGON)) fprintf(stdout,"%s ","Wagon ");
    if (CHECK_TYPE(kindarr + i, 7 - MINIVAN)) fprintf(stdout,"%s ","Minivan ");
    if (CHECK_TYPE(kindarr + i, 7 - PICKUP)) fprintf(stdout,"%s ","Pickup ");
    if (CHECK_TYPE(kindarr + i, 7 - AWD)) fprintf(stdout,"%s ","AWD ");
    if (CHECK_TYPE(kindarr + i, 7 - RWD)) fprintf(stdout,"%s ","RWD ");
    printf("%d ", kindarr[i].retail_price);
    printf("%d ", kindarr[i].dealer_cost);
    printf("%lf ", kindarr[i].engine_size);
    printf("%d ", kindarr[i].weight);
    printf("%d\n", kindarr[i].width);
  }
}

void save_car(car *kindarr, int kindset, FILE *fp) {

  for (int i = 0; i < kindset; ++i) {
    fprintf(fp, "%s,", kindarr[i].vehicle_name);
    if (CHECK_TYPE(kindarr + i, 7 - CELLDX)) fprintf(fp, "CellDx,");
    if (CHECK_TYPE(kindarr + i, 7 - SPORTS_CAR)) fprintf(fp, "Sports Car,");
    if (CHECK_TYPE(kindarr + i, 7 - SUV)) fprintf(fp, "SUV,");
    if (CHECK_TYPE(kindarr + i, 7 - WAGON)) fprintf(fp, "Wagon,");
    if (CHECK_TYPE(kindarr + i, 7 - MINIVAN)) fprintf(fp, "Minivan,");
    if (CHECK_TYPE(kindarr + i, 7 - PICKUP)) fprintf(fp, "Pickup,");
    if (CHECK_TYPE(kindarr + i, 7 - AWD)) fprintf(fp, "AWD,");
    if (CHECK_TYPE(kindarr + i, 7 - RWD)) fprintf(fp, "RWD,");
    fprintf(fp, "%d,", kindarr[i].retail_price);
    fprintf(fp, "%d,", kindarr[i].dealer_cost);
    fprintf(fp, "%lf,", kindarr[i].engine_size);
    fprintf(fp, "%d,", kindarr[i].weight);
    fprintf(fp, "%d\n", kindarr[i].width);
  }
}

void cArr(struct node *head, car *kindarr, int kind) {
  struct node *current = head->next;
  int i = 0;

  while (current != head) {
    car *currentcar = (car*)((char*)current - (unsigned long)&(((car*)0)->links));

    if (CHECK_TYPE(currentcar, kind)) {
      *(kindarr+i) = *currentcar;
      i++;
    }
    current = current->next;
  }
}

int cKind(struct node *head, int kind) {
  struct node *current = head->next;
  int count = 0;

  while (current != head) {
    car *currentcar = (car*)((char*)current - (unsigned long)&(((car*)0)->links));

    if(CHECK_TYPE(currentcar, kind))
      count++;
    current = current->next;
  }
  return count;
}

int pivot;
int tok;

int compare(const void *a, const void *b) {
  if (tok == 1)
    switch (pivot) {
      case 1:
        return ((car*)a)->retail_price - ((car*)b)->retail_price;
      case 2:
        return ((car*)a)->dealer_cost - ((car*)b)->dealer_cost;
      case 3:
        if (((car*)a)->engine_size > ((car*)b)->engine_size)
          return 1;
        else return -1;
      case 4:
        return ((car*)a)->weight - ((car*)b)->weight;
      case 5:
        return ((car*)a)->width - ((car*)b)->width;
    }else
      switch (pivot) {
        case 1:
          return ((car*)b)->retail_price - ((car*)a)->retail_price;
        case 2:
          return ((car*)b)->dealer_cost - ((car*)a)->dealer_cost;
        case 3:
          if (((car*)b)->engine_size > ((car*)a)->engine_size)
            return 1;
          else return -1;
        case 4:
          return ((car*)b)->weight - ((car*)a)->weight;
        case 5:
          return ((car*)b)->width - ((car*)a)->width;
      }
}

int main(){
  FILE* frp = fopen("car_data.csv", "r");
  char buf[512];
  int kindset;
  int data = 0;
  car *kindarr;

  while(fgets(buf, sizeof(buf), frp)) {
    if (data++ == 0)
      continue;

    car *new = malloc(sizeof(car));
    char *p = strtok(buf ,",");

    for (int i = 0; p != NULL; p = strtok(NULL, ","), ++i) {
      switch (i) {
        case 0:
          new->vehicle_name = malloc(sizeof(char) * strlen(p));
          strcpy(new->vehicle_name, p);
          break;
        case 1: case 2: case 3: case 4: case 5: case 6: case 7:
        case 8:
          if (atoi(p) == 1) ADD_TYPE(new, 8 - i);
          break;
        case 9:
          new->retail_price = atoi(p);
          break;
        case 10:
          new->dealer_cost = atoi(p);
          break;
        case 11:
          new->engine_size = atof(p);
          break;
        case 12:
          new->weight = atoi(p);
          break;
        case 13:
          new->width = atoi(p);
          break;
      }
    }
    insert_car(&head, &(new->links));
  }

  printf("%d 개의 데이터가 확인되었습니다.\n", data - 1);

  int set;
  int type;

  while (1) {
    printf("1. 검색\n");
    printf("2. 종료\n");
    scanf("%d", &set);

    if (set == 1) {
      printf("1. CellDx\n");
      printf("2. Sports Car\n");
      printf("3. SUV\n");
      printf("4. Wagon\n");
      printf("5. Minivan\n");
      printf("6. Pickup\n");

      scanf("%d", &type);
      kindset = cKind(&head, 8 - type);
      kindarr = malloc(sizeof(car) * kindset);
      cArr(&head, kindarr, 8 - type);
    }else

      return 0;

    printf("1. Retail Price\n");
    printf("2. Dealer Cost\n");
    printf("3. Engine Size\n");
    printf("4. Weight\n");
    printf("5. Width\n");
    scanf("%d", &pivot);

    printf("1. 오름차순 정렬\n");
    printf("2. 내림차순 정렬\n");
    scanf("%d", &tok);

    qsort(kindarr, kindset, sizeof(car), compare);
    printf("Vehicle Name Kind WD Retail Price Dealer Cost Engine Size Weight Width\n");
    print_car(kindarr, kindset);

    printf("선택한 정보를 파일로 저장하시겠습니까?\n");
    printf("1. 예\n");
    printf("2. 아니요\n");
    scanf("%d", &set);

    if (set == 1) {
      printf("파일이름: ");
      scanf("%s", buf);

      FILE *fwp = fopen(buf, "w");
      fputs("Vehicle Name,Kind,WD,Retail Price,Dealer Cost,Engine Size,Weight,Width\n",fwp);
      save_car(kindarr, kindset, fwp);
      printf("%s 파일로 저장되었습니다.\n", buf);
      fclose(fwp);
      return 0;

    } else {
      free(kindarr);
      return 0;
    }
    head.next = &head;
    head.prev = &head;
  }
  fclose(frp);
  free(kindarr);

  return 0;
}

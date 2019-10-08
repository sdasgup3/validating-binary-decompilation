#include<stdlib.h>
typedef struct S S;
typedef struct T T;
struct S {
  int sx;
  struct T {
    int tx;
  };
  T t;
};

void func(S *s) {
  s->sx = s->sx + s->t.tx;
}

int main() {

  S s;
  s.sx = 10;
  s.t.tx = 20;
  func(&s);
}

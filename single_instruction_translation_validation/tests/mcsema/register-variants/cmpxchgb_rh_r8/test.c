void leaf() {
  __asm__("cmpxchgb %cl, %bh");
  }

void main() {
  leaf();
}
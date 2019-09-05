void leaf() {
  __asm__("cmpxchgw %cx, %bx");
  }

void main() {
  leaf();
}